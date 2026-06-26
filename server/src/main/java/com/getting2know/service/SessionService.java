package com.getting2know.service;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ActivityEventTypeEnum;
import com.getting2know.model.enums.SessionFormatEnum;
import com.getting2know.model.enums.SessionStatusEnum;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.record.PairSessionRecord;
import com.getting2know.model.record.SessionAnswerRecord;
import com.getting2know.model.record.SessionQuestionRecord;
import com.getting2know.model.record.UserRecord;
import com.getting2know.model.record.UserSessionListRecord;
import com.getting2know.model.request.CreateSessionRequest;
import com.getting2know.model.request.JoinSessionRequest;
import com.getting2know.model.request.SessionQuestionItemRequest;
import com.getting2know.model.request.SubmitAnswerRequest;
import com.getting2know.model.response.CreateSessionResponse;
import com.getting2know.model.response.PreviouslyAskedQuestionsResponse;
import com.getting2know.model.response.SessionListItemResponse;
import com.getting2know.model.response.SessionProgressResponse;
import com.getting2know.model.response.SessionQuestionResponse;
import com.getting2know.model.response.SessionResponse;
import com.getting2know.model.enums.QuestionTypeEnum;
import com.getting2know.repository.AuthJdbcRepository;
import com.getting2know.repository.PairSessionJdbcRepository;
import com.getting2know.repository.filter.CreatePairSessionFilter;
import com.getting2know.repository.filter.InsertSessionQuestionFilter;
import com.getting2know.repository.filter.JoinSessionFilter;
import com.getting2know.repository.filter.SessionCodeFilter;
import com.getting2know.repository.filter.SessionIdFilter;
import com.getting2know.repository.filter.UpdateSessionStatusFilter;
import com.getting2know.repository.filter.UpsertSessionAnswerFilter;
import com.getting2know.repository.filter.UserEmailFilter;
import com.getting2know.repository.filter.UserIdFilter;
import com.getting2know.repository.filter.UserIdLookupFilter;
import com.getting2know.repository.filter.UserPairFilter;
import com.getting2know.utils.JsonUtils;
import com.getting2know.utils.QuestionValidationUtils;
import com.getting2know.utils.SessionValidationUtils;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

@Service
public class SessionService {

    private static final String CODE_CHARS = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789";
    private static final DateTimeFormatter ISO_FORMATTER = DateTimeFormatter.ISO_LOCAL_DATE_TIME;

    private final AuthJdbcRepository authJdbcRepository;
    private final PairSessionJdbcRepository pairSessionJdbcRepository;
    private final ActivityService activityService;

    public SessionService(AuthJdbcRepository authJdbcRepository,
                          PairSessionJdbcRepository pairSessionJdbcRepository,
                          ActivityService activityService) {
        this.authJdbcRepository = authJdbcRepository;
        this.pairSessionJdbcRepository = pairSessionJdbcRepository;
        this.activityService = activityService;
    }

    public CreateSessionResponse createSession(String email, CreateSessionRequest request) {
        UserRecord host = requireUser(email);
        SessionValidationUtils.validateCreateSessionRequest(request);

        String code = generateUniqueCode();
        String format = SessionValidationUtils.resolveFormat(request.getFormat());
        PairSessionRecord session = pairSessionJdbcRepository.create(
                new CreatePairSessionFilter(host.getId(), code, format));

        int position = 0;
        for (SessionQuestionItemRequest item : request.getQuestions()) {
            QuestionTypeEnum type = QuestionTypeEnum.fromCode(item.getType());
            List<String> options = type.needsOptions()
                    ? QuestionValidationUtils.normalizeOptions(item.getOptions())
                    : Collections.emptyList();
            String optionsJson = type.needsOptions() ? JsonUtils.toJson(options) : null;
            String categoryId = item.getCategoryId() != null && !item.getCategoryId().isBlank()
                    ? item.getCategoryId().trim()
                    : "light";

            pairSessionJdbcRepository.insertQuestion(new InsertSessionQuestionFilter(
                    session.getId(),
                    position,
                    item.getId(),
                    categoryId,
                    type.getCode(),
                    item.getText().trim(),
                    optionsJson));
            position += 1;
        }

        activityService.record(
                ActivityEventTypeEnum.SESSION_CREATE,
                "/api/v1/sessions",
                host,
                "{\"code\":\"" + session.getCode() + "\"}");

        return new CreateSessionResponse(session.getCode());
    }

    public SessionResponse joinSession(String email, JoinSessionRequest request) {
        UserRecord partner = requireUser(email);
        SessionValidationUtils.validateJoinSessionRequest(request);
        String code = SessionValidationUtils.normalizeCode(request.getCode());

        PairSessionRecord existing = pairSessionJdbcRepository.findByCode(new SessionCodeFilter(code))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.SESSION_NOT_FOUND));

        if (Objects.equals(existing.getHostUserId(), partner.getId())) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_CANNOT_JOIN_OWN);
        }

        if (existing.getPartnerUserId() != null && !Objects.equals(existing.getPartnerUserId(), partner.getId())) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_ALREADY_FULL);
        }

        if (existing.getPartnerUserId() == null) {
            pairSessionJdbcRepository.join(new JoinSessionFilter(code, partner.getId()))
                    .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.SESSION_ALREADY_FULL));
            activityService.record(
                    ActivityEventTypeEnum.SESSION_JOIN,
                    "/api/v1/sessions/join",
                    partner,
                    "{\"code\":\"" + code + "\"}");
        }

        return getSession(email, code);
    }

    public SessionResponse getSession(String email, String code) {
        UserRecord currentUser = requireUser(email);
        PairSessionRecord session = requireSession(code);
        requireParticipant(session, currentUser.getId());
        return buildResponse(session, currentUser);
    }

    public List<SessionListItemResponse> listUserSessions(String email) {
        UserRecord user = requireUser(email);
        return pairSessionJdbcRepository.listByUserId(new UserIdFilter(user.getId())).stream()
                .map(record -> toListItem(record, user.getId()))
                .collect(Collectors.toList());
    }

    public PreviouslyAskedQuestionsResponse listPreviouslyAskedQuestions(String email, Long partnerUserId) {
        UserRecord user = requireUser(email);
        if (partnerUserId == null || Objects.equals(partnerUserId, user.getId())) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_PARTNER_UNKNOWN);
        }

        List<UserSessionListRecord> sessions = pairSessionJdbcRepository.listByUserId(new UserIdFilter(user.getId()));
        List<UserSessionListRecord> sharedSessions = sessions.stream()
                .filter(record -> record.getPartnerUserId() != null)
                .filter(record -> isSharedWith(record, user.getId(), partnerUserId))
                .collect(Collectors.toList());

        if (sharedSessions.isEmpty()) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_PARTNER_UNKNOWN);
        }

        String partnerName = resolvePartnerName(sharedSessions.get(0), user.getId(), partnerUserId);
        List<String> questionIds = pairSessionJdbcRepository.listPreviouslyAskedQuestionRefs(
                new UserPairFilter(user.getId(), partnerUserId));

        return new PreviouslyAskedQuestionsResponse(
                partnerUserId,
                partnerName,
                questionIds,
                sharedSessions.size());
    }

    public SessionResponse startSession(String email, String code) {
        UserRecord currentUser = requireUser(email);
        PairSessionRecord session = requireSession(code);
        requireParticipant(session, currentUser.getId());

        if (session.getPartnerUserId() == null) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_PARTNER_REQUIRED);
        }
        if (!SessionStatusEnum.LOBBY.getCode().equals(session.getStatus())) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_INVALID_STATUS);
        }

        requireControl(session, currentUser);

        pairSessionJdbcRepository.start(new SessionIdFilter(session.getId()))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.SESSION_INVALID_STATUS));

        activityService.record(
                ActivityEventTypeEnum.SESSION_START,
                "/api/v1/sessions/" + code + "/start",
                currentUser,
                "{\"code\":\"" + code + "\"}");

        return getSession(email, code);
    }

    public SessionResponse submitAnswer(String email, String code, SubmitAnswerRequest request) {
        UserRecord currentUser = requireUser(email);
        PairSessionRecord session = requireSession(code);
        requireParticipant(session, currentUser.getId());

        if (!SessionStatusEnum.PLAYING.getCode().equals(session.getStatus())) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_INVALID_STATUS);
        }

        SessionFormatEnum format = SessionFormatEnum.fromCode(session.getFormat());
        if (format == SessionFormatEnum.ASYNC) {
            return submitAsyncAnswer(session, currentUser, request, email, code);
        }

        return submitLiveAnswer(session, currentUser, request, email, code);
    }

    private SessionResponse submitLiveAnswer(PairSessionRecord session,
                                           UserRecord currentUser,
                                           SubmitAnswerRequest request,
                                           String email,
                                           String code) {
        List<SessionQuestionRecord> questions = pairSessionJdbcRepository.listQuestions(new SessionIdFilter(session.getId()));
        if (session.getCurrentIndex() >= questions.size()) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_INVALID_STATUS);
        }

        SessionQuestionRecord currentQuestion = questions.get(session.getCurrentIndex());
        if (request == null || request.getQuestionId() == null
                || !String.valueOf(currentQuestion.getId()).equals(request.getQuestionId())) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_INVALID_STATUS);
        }

        List<SessionAnswerRecord> answers = pairSessionJdbcRepository.listAnswers(new SessionIdFilter(session.getId()));
        boolean alreadyAnswered = answers.stream()
                .anyMatch(answer -> answer.getSessionQuestionId().equals(currentQuestion.getId())
                        && answer.getUserId().equals(currentUser.getId()));
        if (alreadyAnswered) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_ALREADY_ANSWERED);
        }

        QuestionTypeEnum type = QuestionTypeEnum.fromCode(currentQuestion.getType());
        QuestionValidationUtils.validateAnswer(request, type);

        pairSessionJdbcRepository.upsertAnswer(new UpsertSessionAnswerFilter(
                session.getId(),
                currentQuestion.getId(),
                currentUser.getId(),
                JsonUtils.toJson(request.getAnswer())));

        int answerCount = pairSessionJdbcRepository.countAnswersForQuestion(currentQuestion.getId());
        String nextStatus = answerCount >= 2
                ? SessionStatusEnum.REVEAL.getCode()
                : SessionStatusEnum.PLAYING.getCode();

        pairSessionJdbcRepository.updateStatus(new UpdateSessionStatusFilter(
                session.getId(),
                nextStatus,
                session.getCurrentIndex(),
                null));

        return getSession(email, code);
    }

    private SessionResponse submitAsyncAnswer(PairSessionRecord session,
                                              UserRecord currentUser,
                                              SubmitAnswerRequest request,
                                              String email,
                                              String code) {
        List<SessionQuestionRecord> questions = pairSessionJdbcRepository.listQuestions(new SessionIdFilter(session.getId()));
        if (request == null || request.getQuestionId() == null) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_INVALID_STATUS);
        }

        SessionQuestionRecord targetQuestion = questions.stream()
                .filter(question -> String.valueOf(question.getId()).equals(request.getQuestionId()))
                .findFirst()
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.SESSION_INVALID_STATUS));

        List<SessionAnswerRecord> answers = pairSessionJdbcRepository.listAnswers(new SessionIdFilter(session.getId()));
        boolean alreadyAnswered = answers.stream()
                .anyMatch(answer -> answer.getSessionQuestionId().equals(targetQuestion.getId())
                        && answer.getUserId().equals(currentUser.getId()));
        if (alreadyAnswered) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_ALREADY_ANSWERED);
        }

        QuestionTypeEnum type = QuestionTypeEnum.fromCode(targetQuestion.getType());
        QuestionValidationUtils.validateAnswer(request, type);

        pairSessionJdbcRepository.upsertAnswer(new UpsertSessionAnswerFilter(
                session.getId(),
                targetQuestion.getId(),
                currentUser.getId(),
                JsonUtils.toJson(request.getAnswer())));

        List<SessionAnswerRecord> updatedAnswers = pairSessionJdbcRepository.listAnswers(new SessionIdFilter(session.getId()));
        int total = questions.size();
        int hostAnswered = countDistinctAnswers(updatedAnswers, session.getHostUserId());
        int partnerAnswered = session.getPartnerUserId() != null
                ? countDistinctAnswers(updatedAnswers, session.getPartnerUserId())
                : 0;

        if (hostAnswered >= total && partnerAnswered >= total) {
            pairSessionJdbcRepository.updateStatus(new UpdateSessionStatusFilter(
                    session.getId(),
                    SessionStatusEnum.FINISHED.getCode(),
                    session.getCurrentIndex(),
                    LocalDateTime.now()));
        }

        return getSession(email, code);
    }

    private int countDistinctAnswers(List<SessionAnswerRecord> answers, Long userId) {
        return (int) answers.stream()
                .filter(answer -> answer.getUserId().equals(userId))
                .map(SessionAnswerRecord::getSessionQuestionId)
                .distinct()
                .count();
    }

    public SessionResponse nextQuestion(String email, String code) {
        UserRecord currentUser = requireUser(email);
        PairSessionRecord session = requireSession(code);
        requireParticipant(session, currentUser.getId());

        SessionFormatEnum format = SessionFormatEnum.fromCode(session.getFormat());
        if (format == SessionFormatEnum.ASYNC) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_INVALID_STATUS);
        }

        if (!SessionStatusEnum.REVEAL.getCode().equals(session.getStatus())) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_INVALID_STATUS);
        }

        requireControl(session, currentUser);

        List<SessionQuestionRecord> questions = pairSessionJdbcRepository.listQuestions(new SessionIdFilter(session.getId()));
        int nextIndex = session.getCurrentIndex() + 1;
        LocalDateTime finishedAt = null;
        String nextStatus;

        if (nextIndex >= questions.size()) {
            nextStatus = SessionStatusEnum.FINISHED.getCode();
            finishedAt = LocalDateTime.now();
        } else {
            nextStatus = SessionStatusEnum.PLAYING.getCode();
        }

        pairSessionJdbcRepository.updateStatus(new UpdateSessionStatusFilter(
                session.getId(),
                nextStatus,
                nextIndex,
                finishedAt));

        return getSession(email, code);
    }

    private SessionResponse buildResponse(PairSessionRecord session, UserRecord currentUser) {
        UserRecord host = authJdbcRepository.findById(new UserIdLookupFilter(session.getHostUserId()))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.FAILED_LOAD_USER));
        UserRecord partner = session.getPartnerUserId() != null
                ? authJdbcRepository.findById(new UserIdLookupFilter(session.getPartnerUserId())).orElse(null)
                : null;

        List<SessionQuestionRecord> questionRecords = pairSessionJdbcRepository.listQuestions(new SessionIdFilter(session.getId()));
        List<SessionAnswerRecord> answerRecords = pairSessionJdbcRepository.listAnswers(new SessionIdFilter(session.getId()));

        String role = Objects.equals(session.getHostUserId(), currentUser.getId()) ? "host" : "partner";
        SessionStatusEnum status = SessionStatusEnum.fromCode(session.getStatus());
        SessionFormatEnum format = SessionFormatEnum.fromCode(session.getFormat());
        boolean canControl = canControlSession(session, currentUser);

        Map<String, Object> hostAnswers = new HashMap<>();
        Map<String, Object> partnerAnswers = new HashMap<>();
        Map<String, Object> answersByQuestionAndUser = new HashMap<>();

        for (SessionAnswerRecord answer : answerRecords) {
            Object parsed = JsonUtils.parseAnswer(answer.getAnswerJson());
            answersByQuestionAndUser.put(answerKey(answer.getSessionQuestionId(), answer.getUserId()), parsed);
        }

        int answeredPairs = 0;
        for (int index = 0; index < questionRecords.size(); index += 1) {
            SessionQuestionRecord question = questionRecords.get(index);
            boolean revealed = isQuestionRevealed(index, session.getCurrentIndex(), status, format);
            if (!revealed) {
                continue;
            }

            Object hostAnswer = answersByQuestionAndUser.get(answerKey(question.getId(), session.getHostUserId()));
            Object partnerAnswer = session.getPartnerUserId() != null
                    ? answersByQuestionAndUser.get(answerKey(question.getId(), session.getPartnerUserId()))
                    : null;

            String questionKey = String.valueOf(question.getId());
            if (hostAnswer != null) {
                hostAnswers.put(questionKey, hostAnswer);
            }
            if (partnerAnswer != null) {
                partnerAnswers.put(questionKey, partnerAnswer);
            }
            if (hostAnswer != null && partnerAnswer != null) {
                answeredPairs += 1;
            }
        }

        Map<String, Object> myAnswers = new HashMap<>();
        for (SessionQuestionRecord question : questionRecords) {
            Object answer = answersByQuestionAndUser.get(answerKey(question.getId(), currentUser.getId()));
            if (answer != null) {
                myAnswers.put(String.valueOf(question.getId()), answer);
            }
        }

        int myAnswered = countDistinctAnswers(answerRecords, currentUser.getId());
        Long partnerUserId = session.getPartnerUserId() != null
                ? (Objects.equals(currentUser.getId(), session.getHostUserId())
                ? session.getPartnerUserId()
                : session.getHostUserId())
                : null;
        int partnerAnswered = partnerUserId != null
                ? countDistinctAnswers(answerRecords, partnerUserId)
                : 0;

        SessionQuestionRecord currentQuestion = session.getCurrentIndex() < questionRecords.size()
                ? questionRecords.get(session.getCurrentIndex())
                : null;

        Object myCurrentAnswer = null;
        Object partnerCurrentAnswer = null;
        boolean iAnsweredCurrent = false;
        boolean partnerAnsweredCurrent = false;

        if (currentQuestion != null && status != SessionStatusEnum.FINISHED && status != SessionStatusEnum.LOBBY) {
            myCurrentAnswer = answersByQuestionAndUser.get(answerKey(currentQuestion.getId(), currentUser.getId()));
            iAnsweredCurrent = myCurrentAnswer != null;

            if (session.getPartnerUserId() != null && partnerUserId != null) {
                partnerCurrentAnswer = answersByQuestionAndUser.get(answerKey(currentQuestion.getId(), partnerUserId));
                partnerAnsweredCurrent = partnerCurrentAnswer != null;
            }

            if (status != SessionStatusEnum.REVEAL || format == SessionFormatEnum.ASYNC) {
                partnerCurrentAnswer = null;
            }
        }

        int total = questionRecords.size();
        boolean waitingForPartner;
        if (format == SessionFormatEnum.ASYNC) {
            waitingForPartner = status == SessionStatusEnum.PLAYING
                    && myAnswered >= total
                    && partnerAnswered < total;
        } else {
            waitingForPartner = status == SessionStatusEnum.PLAYING && iAnsweredCurrent && !partnerAnsweredCurrent;
        }
        int current = total == 0 ? 0 : Math.min(session.getCurrentIndex() + 1, total);

        List<SessionQuestionResponse> questions = questionRecords.stream()
                .map(this::toQuestionResponse)
                .collect(Collectors.toList());

        return new SessionResponse(
                session.getCode(),
                status.getCode().toLowerCase(),
                format.getCode().toLowerCase(),
                canControl,
                session.getCurrentIndex(),
                host.getName(),
                partner != null ? partner.getName() : null,
                host.getEmail(),
                partner != null ? partner.getEmail() : null,
                session.getPartnerUserId() != null,
                role,
                questions,
                hostAnswers,
                partnerAnswers,
                myAnswers,
                myCurrentAnswer,
                partnerCurrentAnswer,
                waitingForPartner,
                iAnsweredCurrent,
                partnerAnsweredCurrent,
                formatDateTime(session.getCreatedAt()),
                formatDateTime(session.getFinishedAt()),
                new SessionProgressResponse(current, total, answeredPairs, myAnswered, partnerAnswered));
    }

    private SessionListItemResponse toListItem(UserSessionListRecord record, Long userId) {
        String role = Objects.equals(record.getHostUserId(), userId) ? "host" : "partner";
        Long otherUserId = Objects.equals(record.getHostUserId(), userId)
                ? record.getPartnerUserId()
                : record.getHostUserId();
        return new SessionListItemResponse(
                record.getCode(),
                SessionStatusEnum.fromCode(record.getStatus()).getCode().toLowerCase(),
                SessionFormatEnum.fromCode(record.getFormat()).getCode().toLowerCase(),
                role,
                record.getHostName(),
                record.getPartnerName(),
                record.getHostEmail(),
                record.getPartnerEmail(),
                otherUserId,
                formatDateTime(record.getCreatedAt()),
                formatDateTime(record.getFinishedAt()),
                record.getQuestionCount(),
                record.getAnsweredPairs());
    }

    private boolean isSharedWith(UserSessionListRecord record, Long userId, Long partnerUserId) {
        return (Objects.equals(record.getHostUserId(), userId)
                && Objects.equals(record.getPartnerUserId(), partnerUserId))
                || (Objects.equals(record.getHostUserId(), partnerUserId)
                && Objects.equals(record.getPartnerUserId(), userId));
    }

    private String resolvePartnerName(UserSessionListRecord record, Long userId, Long partnerUserId) {
        if (Objects.equals(record.getHostUserId(), partnerUserId)) {
            return record.getHostName() != null ? record.getHostName() : "Parceiro";
        }
        if (Objects.equals(record.getPartnerUserId(), partnerUserId)) {
            return record.getPartnerName() != null ? record.getPartnerName() : "Parceiro";
        }
        return "Parceiro";
    }

    private SessionQuestionResponse toQuestionResponse(SessionQuestionRecord record) {
        QuestionTypeEnum type = QuestionTypeEnum.fromCode(record.getType());
        List<String> options = type.needsOptions()
                ? JsonUtils.parseStringList(record.getOptionsJson())
                : Collections.emptyList();
        return new SessionQuestionResponse(
                String.valueOf(record.getId()),
                record.getCategoryId(),
                record.getType(),
                record.getText(),
                options.isEmpty() ? null : options);
    }

    private boolean isQuestionRevealed(int questionIndex,
                                       int currentIndex,
                                       SessionStatusEnum status,
                                       SessionFormatEnum format) {
        if (format == SessionFormatEnum.ASYNC) {
            return status == SessionStatusEnum.FINISHED;
        }
        if (questionIndex < currentIndex) {
            return true;
        }
        return questionIndex == currentIndex && status == SessionStatusEnum.REVEAL;
    }

    private String answerKey(Long questionId, Long userId) {
        return questionId + ":" + userId;
    }

    private void requireControl(PairSessionRecord session, UserRecord currentUser) {
        if (!canControlSession(session, currentUser)) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_LIVE_HOST_ONLY);
        }
    }

    private boolean canControlSession(PairSessionRecord session, UserRecord currentUser) {
        SessionFormatEnum format = SessionFormatEnum.fromCode(session.getFormat());
        if (format == SessionFormatEnum.ASYNC) {
            return true;
        }
        return Objects.equals(session.getHostUserId(), currentUser.getId());
    }

    private PairSessionRecord requireSession(String code) {
        return pairSessionJdbcRepository.findByCode(new SessionCodeFilter(SessionValidationUtils.normalizeCode(code)))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.SESSION_NOT_FOUND));
    }

    private void requireParticipant(PairSessionRecord session, Long userId) {
        boolean isHost = Objects.equals(session.getHostUserId(), userId);
        boolean isPartner = Objects.equals(session.getPartnerUserId(), userId);
        if (!isHost && !isPartner) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_NOT_PARTICIPANT);
        }
    }

    private UserRecord requireUser(String email) {
        return authJdbcRepository.findByEmail(new UserEmailFilter(email))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.UNAUTHORIZED));
    }

    private String generateUniqueCode() {
        for (int attempt = 0; attempt < 20; attempt += 1) {
            String code = randomCode();
            if (!pairSessionJdbcRepository.findByCode(new SessionCodeFilter(code)).isPresent()) {
                return code;
            }
        }
        throw GlobalException.of(ValidationMessageEnum.FAILED_SAVE_SESSION);
    }

    private String randomCode() {
        StringBuilder builder = new StringBuilder(4);
        for (int i = 0; i < 4; i += 1) {
            int index = (int) (Math.random() * CODE_CHARS.length());
            builder.append(CODE_CHARS.charAt(index));
        }
        return builder.toString();
    }

    private String formatDateTime(LocalDateTime value) {
        return value != null ? value.format(ISO_FORMATTER) : null;
    }
}
