package com.getting2know.utils;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.request.LoginRequest;
import com.getting2know.model.request.RegisterRequest;

import java.util.regex.Pattern;

public final class UserValidationUtils {

    private static final Pattern EMAIL_PATTERN = Pattern.compile("^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$");

    private UserValidationUtils() {
    }

    public static void validateLoginRequest(LoginRequest request) {
        validateCredentials(request != null ? request.getEmail() : null,
                request != null ? request.getPassword() : null);
    }

    public static void validateRegisterRequest(RegisterRequest request) {
        validateCredentials(request != null ? request.getEmail() : null,
                request != null ? request.getPassword() : null);
    }

    private static void validateCredentials(String email, String password) {
        if (isBlank(email)) {
            throw GlobalException.of(ValidationMessageEnum.EMAIL_REQUIRED);
        }
        if (!isValidEmail(email)) {
            throw GlobalException.of(ValidationMessageEnum.INVALID_EMAIL);
        }
        if (isBlank(password)) {
            throw GlobalException.of(ValidationMessageEnum.PASSWORD_REQUIRED);
        }
    }

    public static String resolveDisplayName(String name, String email) {
        if (name != null && !name.isBlank()) {
            return name.trim();
        }
        String localPart = email.trim().split("@")[0];
        if (localPart.isBlank()) {
            return "Você";
        }
        return localPart.substring(0, 1).toUpperCase() + localPart.substring(1);
    }

    private static boolean isBlank(String value) {
        return value == null || value.isBlank();
    }

    private static boolean isValidEmail(String email) {
        return email != null && EMAIL_PATTERN.matcher(email.trim()).matches();
    }
}
