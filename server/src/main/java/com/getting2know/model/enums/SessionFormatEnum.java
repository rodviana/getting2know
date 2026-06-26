package com.getting2know.model.enums;

public enum SessionFormatEnum {

    ASYNC("ASYNC"),
    LIVE("LIVE");

    private final String code;

    SessionFormatEnum(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public static SessionFormatEnum fromCode(String code) {
        if (code == null || code.isBlank()) {
            return ASYNC;
        }
        String normalized = code.trim().toUpperCase();
        for (SessionFormatEnum format : values()) {
            if (format.code.equals(normalized)) {
                return format;
            }
        }
        throw new IllegalArgumentException("Unknown session format: " + code);
    }
}
