package com.getting2know.model.enums;

public enum ValidationMessageEnum {

    EMAIL_REQUIRED("EMAIL_REQUIRED", "E-mail é obrigatório.", "Email is required."),
    INVALID_EMAIL("INVALID_EMAIL", "E-mail inválido.", "Invalid email."),
    PASSWORD_REQUIRED("PASSWORD_REQUIRED", "Senha é obrigatória.", "Password is required."),
    INVALID_DATA("INVALID_DATA", "Dados inválidos.", "Invalid data."),

    INVALID_CREDENTIALS("INVALID_CREDENTIALS", "E-mail ou senha inválidos.", "Invalid email or password."),
    UNAUTHORIZED("UNAUTHORIZED", "Não autorizado.", "Unauthorized."),
    ACCESS_DENIED("ACCESS_DENIED", "Acesso negado.", "Access denied."),

    FAILED_LOAD_USER("FAILED_LOAD_USER", "Falha ao carregar usuário.", "Failed to load user."),
    INVALID_REQUEST("INVALID_REQUEST", "Requisição inválida.", "Invalid request."),

    UNEXPECTED_ERROR_LOGIN("UNEXPECTED_ERROR_LOGIN", "Erro inesperado ao fazer login.", "Unexpected error during login."),
    UNEXPECTED_ERROR_HOME("UNEXPECTED_ERROR_HOME", "Erro inesperado ao carregar a tela inicial.", "Unexpected error loading home screen.");

    private final String code;
    private final String descriptionPt;
    private final String descriptionEng;

    ValidationMessageEnum(String code, String descriptionPt, String descriptionEng) {
        this.code = code;
        this.descriptionPt = descriptionPt;
        this.descriptionEng = descriptionEng;
    }

    public String getCode() {
        return code;
    }

    public String getDescriptionPt() {
        return descriptionPt;
    }

    public String getDescriptionEng() {
        return descriptionEng;
    }

    public static ValidationMessageEnum fromCode(String code) {
        if (code == null || code.isBlank()) {
            throw new IllegalArgumentException("Unknown validation message code: " + code);
        }
        String normalized = code.trim().toUpperCase();
        for (ValidationMessageEnum message : values()) {
            if (message.code.equals(normalized)) {
                return message;
            }
        }
        throw new IllegalArgumentException("Unknown validation message code: " + code);
    }
}
