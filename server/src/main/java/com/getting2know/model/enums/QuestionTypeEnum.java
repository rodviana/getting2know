package com.getting2know.model.enums;

public enum QuestionTypeEnum {

    TEXT("TEXT"),
    SINGLE_CHOICE("SINGLE_CHOICE"),
    MULTIPLE_CHOICE("MULTIPLE_CHOICE");

    private final String code;

    QuestionTypeEnum(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public static QuestionTypeEnum fromCode(String code) {
        if (code == null || code.isBlank()) {
            throw new IllegalArgumentException("Unknown question type: " + code);
        }
        String normalized = code.trim().toUpperCase();
        for (QuestionTypeEnum type : values()) {
            if (type.code.equals(normalized)) {
                return type;
            }
        }
        throw new IllegalArgumentException("Unknown question type: " + code);
    }

    public boolean needsOptions() {
        return this == SINGLE_CHOICE || this == MULTIPLE_CHOICE;
    }
}
