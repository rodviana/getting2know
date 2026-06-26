package com.getting2know.model.record;

import com.getting2know.model.enums.UserRoleEnum;

public class UserRecord {

    private final Long id;
    private final String email;
    private final String password;
    private final String name;
    private final boolean active;
    private final String role;

    public UserRecord(Long id, String email, String password, String name, boolean active, String role) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.name = name;
        this.active = active;
        this.role = role != null ? role : UserRoleEnum.USER.getCode();
    }

    public UserRecord(Long id, String email, String password, String name, boolean active) {
        this(id, email, password, name, active, UserRoleEnum.USER.getCode());
    }

    public Long getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getName() {
        return name;
    }

    public boolean isActive() {
        return active;
    }

    public String getRole() {
        return role;
    }

    public boolean isAdmin() {
        return UserRoleEnum.ADMIN.getCode().equalsIgnoreCase(role);
    }
}
