package com.getting2know.model.enums;

public enum UserRoleEnum {

    USER("USER"),
    ADMIN("ADMIN");

    private final String code;

    UserRoleEnum(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public static UserRoleEnum fromCode(String code) {
        if (code == null) {
            return USER;
        }
        for (UserRoleEnum role : values()) {
            if (role.code.equalsIgnoreCase(code)) {
                return role;
            }
        }
        return USER;
    }

    public boolean isAdmin() {
        return this == ADMIN;
    }
}
