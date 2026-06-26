package com.getting2know.utils;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.request.LoginRequest;

import java.util.regex.Pattern;

public final class UserValidationUtils {

    private static final Pattern EMAIL_PATTERN = Pattern.compile("^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$");

    private UserValidationUtils() {
    }

    public static void validateLoginRequest(LoginRequest request) {
        if (request == null) {
            throw GlobalException.of(ValidationMessageEnum.EMAIL_REQUIRED);
        }
        if (isBlank(request.getEmail())) {
            throw GlobalException.of(ValidationMessageEnum.EMAIL_REQUIRED);
        }
        if (!isValidEmail(request.getEmail())) {
            throw GlobalException.of(ValidationMessageEnum.INVALID_EMAIL);
        }
        if (isBlank(request.getPassword())) {
            throw GlobalException.of(ValidationMessageEnum.PASSWORD_REQUIRED);
        }
    }

    private static boolean isBlank(String value) {
        return value == null || value.isBlank();
    }

    private static boolean isValidEmail(String email) {
        return email != null && EMAIL_PATTERN.matcher(email.trim()).matches();
    }
}
