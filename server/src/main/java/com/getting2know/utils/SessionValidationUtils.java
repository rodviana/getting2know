package com.getting2know.utils;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.SessionFormatEnum;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.request.CreateSessionRequest;
import com.getting2know.model.request.JoinSessionRequest;

public final class SessionValidationUtils {

    private SessionValidationUtils() {
    }

    public static void validateCreateSessionRequest(CreateSessionRequest request) {
        if (request == null || request.getQuestions() == null || request.getQuestions().isEmpty()) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_QUESTIONS_REQUIRED);
        }
        request.getQuestions().forEach(QuestionValidationUtils::validateSessionQuestionItem);
    }

    public static void validateJoinSessionRequest(JoinSessionRequest request) {
        if (request == null || isBlank(request.getCode()) || request.getCode().trim().length() < 4) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_CODE_REQUIRED);
        }
    }

    public static String normalizeCode(String code) {
        return code.trim().toUpperCase();
    }

    public static String resolveFormat(String format) {
        if (format == null || format.isBlank()) {
            return SessionFormatEnum.ASYNC.getCode();
        }
        try {
            return SessionFormatEnum.fromCode(format).getCode();
        } catch (IllegalArgumentException ex) {
            throw GlobalException.of(ValidationMessageEnum.SESSION_FORMAT_INVALID);
        }
    }

    private static boolean isBlank(String value) {
        return value == null || value.isBlank();
    }
}
