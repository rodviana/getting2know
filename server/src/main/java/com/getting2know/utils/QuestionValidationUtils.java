package com.getting2know.utils;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.QuestionTypeEnum;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.request.CreateQuestionRequest;
import com.getting2know.model.request.SessionQuestionItemRequest;
import com.getting2know.model.request.SubmitAnswerRequest;

import java.util.List;
import java.util.stream.Collectors;

public final class QuestionValidationUtils {

    private QuestionValidationUtils() {
    }

    public static void validateCreateQuestionRequest(CreateQuestionRequest request) {
        if (request == null || isBlank(request.getText())) {
            throw GlobalException.of(ValidationMessageEnum.QUESTION_TEXT_REQUIRED);
        }
        if (isBlank(request.getType())) {
            throw GlobalException.of(ValidationMessageEnum.QUESTION_TYPE_REQUIRED);
        }
        QuestionTypeEnum type = QuestionTypeEnum.fromCode(request.getType());
        if (type.needsOptions()) {
            List<String> options = normalizeOptions(request.getOptions());
            if (options.size() < 2) {
                throw GlobalException.of(ValidationMessageEnum.QUESTION_OPTIONS_REQUIRED);
            }
        }
    }

    public static void validateSessionQuestionItem(SessionQuestionItemRequest item) {
        if (item == null || isBlank(item.getText())) {
            throw GlobalException.of(ValidationMessageEnum.QUESTION_TEXT_REQUIRED);
        }
        if (isBlank(item.getType())) {
            throw GlobalException.of(ValidationMessageEnum.QUESTION_TYPE_REQUIRED);
        }
        QuestionTypeEnum type = QuestionTypeEnum.fromCode(item.getType());
        if (type.needsOptions()) {
            List<String> options = normalizeOptions(item.getOptions());
            if (options.size() < 2) {
                throw GlobalException.of(ValidationMessageEnum.QUESTION_OPTIONS_REQUIRED);
            }
        }
    }

    public static void validateAnswer(SubmitAnswerRequest request, QuestionTypeEnum type) {
        if (request == null || request.getAnswer() == null) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_ANSWER_REQUIRED);
        }
        Object answer = request.getAnswer();
        if (type == QuestionTypeEnum.MULTIPLE_CHOICE) {
            if (!(answer instanceof List) || ((List<?>) answer).isEmpty()) {
                throw GlobalException.of(ValidationMessageEnum.SESSION_ANSWER_INVALID);
            }
            return;
        }
        if (!(answer instanceof String) || ((String) answer).isBlank()) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_ANSWER_INVALID);
        }
    }

    public static List<String> normalizeOptions(List<String> options) {
        if (options == null) {
            return List.of();
        }
        return options.stream()
                .map(String::trim)
                .filter(item -> !item.isBlank())
                .collect(Collectors.toList());
    }

    private static boolean isBlank(String value) {
        return value == null || value.isBlank();
    }
}
