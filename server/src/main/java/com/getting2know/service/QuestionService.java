package com.getting2know.service;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.QuestionTypeEnum;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.record.QuestionRecord;
import com.getting2know.model.request.CreateQuestionRequest;
import com.getting2know.model.response.QuestionResponse;
import com.getting2know.repository.AuthJdbcRepository;
import com.getting2know.repository.QuestionJdbcRepository;
import com.getting2know.repository.filter.CreateQuestionFilter;
import com.getting2know.repository.filter.QuestionIdFilter;
import com.getting2know.repository.filter.UpdateQuestionFilter;
import com.getting2know.repository.filter.UserEmailFilter;
import com.getting2know.repository.filter.UserIdFilter;
import com.getting2know.model.record.UserRecord;
import com.getting2know.utils.JsonUtils;
import com.getting2know.utils.QuestionValidationUtils;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class QuestionService {

    private final AuthJdbcRepository authJdbcRepository;
    private final QuestionJdbcRepository questionJdbcRepository;

    public QuestionService(AuthJdbcRepository authJdbcRepository, QuestionJdbcRepository questionJdbcRepository) {
        this.authJdbcRepository = authJdbcRepository;
        this.questionJdbcRepository = questionJdbcRepository;
    }

    public List<QuestionResponse> listQuestions(String email) {
        UserRecord user = requireUser(email);
        return questionJdbcRepository.listByUserId(new UserIdFilter(user.getId())).stream()
                .map(this::toResponse)
                .collect(Collectors.toList());
    }

    public QuestionResponse createQuestion(String email, CreateQuestionRequest request) {
        UserRecord user = requireUser(email);
        QuestionValidationUtils.validateCreateQuestionRequest(request);
        QuestionTypeEnum type = QuestionTypeEnum.fromCode(request.getType());
        List<String> options = type.needsOptions()
                ? QuestionValidationUtils.normalizeOptions(request.getOptions())
                : Collections.emptyList();
        String optionsJson = type.needsOptions() ? JsonUtils.toJson(options) : null;
        String categoryId = request.getCategoryId() != null && !request.getCategoryId().isBlank()
                ? request.getCategoryId().trim()
                : "light";

        Long id = questionJdbcRepository.create(new CreateQuestionFilter(
                user.getId(),
                categoryId,
                type.getCode(),
                request.getText().trim(),
                optionsJson));

        QuestionRecord record = questionJdbcRepository.findById(new QuestionIdFilter(id, user.getId()))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.FAILED_SAVE_QUESTION));
        return toResponse(record);
    }

    public QuestionResponse updateQuestion(String email, Long questionId, CreateQuestionRequest request) {
        UserRecord user = requireUser(email);
        QuestionValidationUtils.validateCreateQuestionRequest(request);
        QuestionTypeEnum type = QuestionTypeEnum.fromCode(request.getType());
        List<String> options = type.needsOptions()
                ? QuestionValidationUtils.normalizeOptions(request.getOptions())
                : Collections.emptyList();
        String optionsJson = type.needsOptions() ? JsonUtils.toJson(options) : null;
        String categoryId = request.getCategoryId() != null && !request.getCategoryId().isBlank()
                ? request.getCategoryId().trim()
                : "light";

        questionJdbcRepository.update(new UpdateQuestionFilter(
                questionId,
                user.getId(),
                categoryId,
                type.getCode(),
                request.getText().trim(),
                optionsJson));

        QuestionRecord record = questionJdbcRepository.findById(new QuestionIdFilter(questionId, user.getId()))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.QUESTION_NOT_FOUND));
        return toResponse(record);
    }

    public void deleteQuestion(String email, Long questionId) {
        UserRecord user = requireUser(email);
        questionJdbcRepository.delete(new QuestionIdFilter(questionId, user.getId()));
    }

    private UserRecord requireUser(String email) {
        return authJdbcRepository.findByEmail(new UserEmailFilter(email))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.UNAUTHORIZED));
    }

    private QuestionResponse toResponse(QuestionRecord record) {
        QuestionTypeEnum type = QuestionTypeEnum.fromCode(record.getType());
        List<String> options = type.needsOptions()
                ? JsonUtils.parseStringList(record.getOptionsJson())
                : Collections.emptyList();
        return new QuestionResponse(
                "custom-" + record.getId(),
                record.getCategoryId(),
                record.getType(),
                record.getText(),
                options.isEmpty() ? null : options,
                true);
    }
}
