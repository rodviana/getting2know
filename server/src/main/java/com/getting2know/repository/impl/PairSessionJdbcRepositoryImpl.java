package com.getting2know.repository.impl;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.record.PairSessionRecord;
import com.getting2know.model.record.SessionAnswerRecord;
import com.getting2know.model.record.SessionQuestionRecord;
import com.getting2know.model.record.UserSessionListRecord;
import com.getting2know.repository.PairSessionJdbcRepository;
import com.getting2know.repository.filter.CreatePairSessionFilter;
import com.getting2know.repository.filter.InsertSessionQuestionFilter;
import com.getting2know.repository.filter.JoinSessionFilter;
import com.getting2know.repository.filter.SessionCodeFilter;
import com.getting2know.repository.filter.SessionIdFilter;
import com.getting2know.repository.filter.UpdateSessionStatusFilter;
import com.getting2know.repository.filter.UpsertSessionAnswerFilter;
import com.getting2know.repository.filter.UserIdFilter;
import com.getting2know.repository.filter.UserPairFilter;
import com.getting2know.repository.mapper.PairSessionRowMapper;
import com.getting2know.repository.mapper.SessionAnswerRowMapper;
import com.getting2know.repository.mapper.SessionQuestionRowMapper;
import com.getting2know.repository.mapper.UserSessionListRowMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;

@Repository
public class PairSessionJdbcRepositoryImpl implements PairSessionJdbcRepository {

    private static final Logger log = LoggerFactory.getLogger(PairSessionJdbcRepositoryImpl.class);

    private final NamedParameterJdbcTemplate jdbc;

    public PairSessionJdbcRepositoryImpl(NamedParameterJdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    @Override
    public PairSessionRecord create(CreatePairSessionFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("hostUserId", filter.getHostUserId())
                .addValue("code", filter.getCode())
                .addValue("format", filter.getFormat());
        try {
            jdbc.query(P_CREATE_PAIR_SESSION, params, (rs, rowNum) -> rs.getLong("session_id"));
            return findByCode(new SessionCodeFilter(filter.getCode()))
                    .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.FAILED_SAVE_SESSION));
        } catch (GlobalException e) {
            throw e;
        } catch (DataAccessException e) {
            log.error("[sessions] create error hostUserId={}: {}", filter.getHostUserId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_SAVE_SESSION);
        }
    }

    @Override
    public Optional<PairSessionRecord> findByCode(SessionCodeFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource("code", filter.getCode());
        try {
            List<PairSessionRecord> rows = jdbc.query(P_FIND_PAIR_SESSION_BY_CODE, params, PairSessionRowMapper.INSTANCE);
            return rows.stream().findFirst();
        } catch (DataAccessException e) {
            log.error("[sessions] find error code={}: {}", filter.getCode(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_LOAD_SESSION);
        }
    }

    @Override
    public Optional<PairSessionRecord> join(JoinSessionFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("code", filter.getCode())
                .addValue("partnerUserId", filter.getPartnerUserId());
        try {
            List<PairSessionRecord> rows = jdbc.query(P_JOIN_PAIR_SESSION, params, PairSessionRowMapper.INSTANCE);
            return rows.stream().findFirst();
        } catch (DataAccessException e) {
            log.error("[sessions] join error code={}: {}", filter.getCode(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_SAVE_SESSION);
        }
    }

    @Override
    public Optional<PairSessionRecord> start(SessionIdFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource("sessionId", filter.getSessionId());
        try {
            List<PairSessionRecord> rows = jdbc.query(P_START_PAIR_SESSION, params, PairSessionRowMapper.INSTANCE);
            return rows.stream().findFirst();
        } catch (DataAccessException e) {
            log.error("[sessions] start error sessionId={}: {}", filter.getSessionId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_SAVE_SESSION);
        }
    }

    @Override
    public PairSessionRecord updateStatus(UpdateSessionStatusFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("sessionId", filter.getSessionId())
                .addValue("status", filter.getStatus())
                .addValue("currentIndex", filter.getCurrentIndex())
                .addValue("finishedAt", filter.getFinishedAt() != null ? Timestamp.valueOf(filter.getFinishedAt()) : null);
        try {
            List<PairSessionRecord> rows = jdbc.query(P_UPDATE_PAIR_SESSION_STATUS, params, PairSessionRowMapper.INSTANCE);
            return rows.stream().findFirst()
                    .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.FAILED_SAVE_SESSION));
        } catch (GlobalException e) {
            throw e;
        } catch (DataAccessException e) {
            log.error("[sessions] update status error sessionId={}: {}", filter.getSessionId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_SAVE_SESSION);
        }
    }

    @Override
    public Long insertQuestion(InsertSessionQuestionFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("sessionId", filter.getSessionId())
                .addValue("position", filter.getPosition())
                .addValue("sourceRef", filter.getSourceRef())
                .addValue("categoryId", filter.getCategoryId())
                .addValue("type", filter.getType())
                .addValue("text", filter.getText())
                .addValue("optionsJson", filter.getOptionsJson());
        try {
            return jdbc.queryForObject(P_INSERT_SESSION_QUESTION, params, Long.class);
        } catch (DataAccessException e) {
            log.error("[sessions] insert question error sessionId={}: {}", filter.getSessionId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_SAVE_SESSION);
        }
    }

    @Override
    public List<SessionQuestionRecord> listQuestions(SessionIdFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource("sessionId", filter.getSessionId());
        try {
            return jdbc.query(P_LIST_SESSION_QUESTIONS, params, SessionQuestionRowMapper.INSTANCE);
        } catch (DataAccessException e) {
            log.error("[sessions] list questions error sessionId={}: {}", filter.getSessionId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_LOAD_SESSION);
        }
    }

    @Override
    public Long upsertAnswer(UpsertSessionAnswerFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("sessionId", filter.getSessionId())
                .addValue("sessionQuestionId", filter.getSessionQuestionId())
                .addValue("userId", filter.getUserId())
                .addValue("answerJson", filter.getAnswerJson());
        try {
            return jdbc.queryForObject(P_UPSERT_SESSION_ANSWER, params, Long.class);
        } catch (DataAccessException e) {
            log.error("[sessions] upsert answer error sessionId={}: {}", filter.getSessionId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_SAVE_SESSION);
        }
    }

    @Override
    public List<SessionAnswerRecord> listAnswers(SessionIdFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource("sessionId", filter.getSessionId());
        try {
            return jdbc.query(P_LIST_SESSION_ANSWERS, params, SessionAnswerRowMapper.INSTANCE);
        } catch (DataAccessException e) {
            log.error("[sessions] list answers error sessionId={}: {}", filter.getSessionId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_LOAD_SESSION);
        }
    }

    @Override
    public int countAnswersForQuestion(Long sessionQuestionId) {
        MapSqlParameterSource params = new MapSqlParameterSource("sessionQuestionId", sessionQuestionId);
        try {
            Integer count = jdbc.queryForObject(P_COUNT_ANSWERS_FOR_QUESTION, params, Integer.class);
            return count != null ? count : 0;
        } catch (DataAccessException e) {
            log.error("[sessions] count answers error questionId={}: {}", sessionQuestionId, e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_LOAD_SESSION);
        }
    }

    @Override
    public List<UserSessionListRecord> listByUserId(UserIdFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource("userId", filter.getUserId());
        try {
            return jdbc.query(P_LIST_USER_PAIR_SESSIONS, params, UserSessionListRowMapper.INSTANCE);
        } catch (DataAccessException e) {
            log.error("[sessions] list user sessions error userId={}: {}", filter.getUserId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_LOAD_SESSION);
        }
    }

    @Override
    public void lockSession(Long sessionId) {
        MapSqlParameterSource params = new MapSqlParameterSource("sessionId", sessionId);
        try {
            jdbc.queryForObject(P_LOCK_PAIR_SESSION, params, Long.class);
        } catch (DataAccessException e) {
            log.error("[sessions] lock session error sessionId={}: {}", sessionId, e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_LOAD_SESSION);
        }
    }

    @Override
    public List<String> listPreviouslyAskedQuestionRefs(UserPairFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("userId", filter.getUserId())
                .addValue("partnerUserId", filter.getPartnerUserId());
        try {
            return jdbc.query(
                    P_LIST_PREVIOUSLY_ASKED_QUESTION_REFS,
                    params,
                    (rs, rowNum) -> rs.getString("source_ref"));
        } catch (DataAccessException e) {
            log.error("[sessions] list previously asked error userId={} partnerUserId={}: {}",
                    filter.getUserId(), filter.getPartnerUserId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_LOAD_SESSION);
        }
    }
}
