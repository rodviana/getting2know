package com.getting2know.model.enums;

public enum SessionStatusEnum {

    LOBBY("LOBBY"),
    PLAYING("PLAYING"),
    REVEAL("REVEAL"),
    FINISHED("FINISHED");

    private final String code;

    SessionStatusEnum(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public static SessionStatusEnum fromCode(String code) {
        if (code == null || code.isBlank()) {
            throw new IllegalArgumentException("Unknown session status: " + code);
        }
        String normalized = code.trim().toUpperCase();
        for (SessionStatusEnum status : values()) {
            if (status.code.equals(normalized)) {
                return status;
            }
        }
        throw new IllegalArgumentException("Unknown session status: " + code);
    }
}
