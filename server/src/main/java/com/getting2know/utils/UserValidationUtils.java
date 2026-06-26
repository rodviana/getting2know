package com.getting2know.utils;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.request.LoginRequest;
import com.getting2know.model.request.RegisterRequest;

public final class UserValidationUtils {

    private static final int USERNAME_MAX_LENGTH = 150;

    private UserValidationUtils() {
    }

    public static void validateLoginRequest(LoginRequest request) {
        validateCredentials(request != null ? request.getUsername() : null,
                request != null ? request.getPassword() : null);
    }

    public static void validateRegisterRequest(RegisterRequest request) {
        validateCredentials(request != null ? request.getUsername() : null,
                request != null ? request.getPassword() : null);
    }

    public static String normalizeUsername(String username) {
        if (username == null) {
            return "";
        }
        return username.trim().toLowerCase();
    }

    private static void validateCredentials(String username, String password) {
        if (isBlank(username)) {
            throw GlobalException.of(ValidationMessageEnum.USERNAME_REQUIRED);
        }
        String normalized = normalizeUsername(username);
        if (normalized.isEmpty() || normalized.length() > USERNAME_MAX_LENGTH) {
            throw GlobalException.of(ValidationMessageEnum.INVALID_USERNAME);
        }
        if (isBlank(password)) {
            throw GlobalException.of(ValidationMessageEnum.PASSWORD_REQUIRED);
        }
    }

    public static String resolveDisplayName(String name, String username) {
        if (name != null && !name.isBlank()) {
            return name.trim();
        }
        String value = normalizeUsername(username);
        if (value.isBlank()) {
            return "Você";
        }
        if (value.contains("@")) {
            String localPart = value.split("@")[0];
            if (!localPart.isBlank()) {
                return capitalize(localPart);
            }
        }
        return capitalize(value);
    }

    private static String capitalize(String value) {
        if (value.isBlank()) {
            return "Você";
        }
        return value.substring(0, 1).toUpperCase() + value.substring(1);
    }

    private static boolean isBlank(String value) {
        return value == null || value.isBlank();
    }
}
