package com.getting2know.model.record;

public class UserRecord {

    private final Long id;
    private final String email;
    private final String password;
    private final String name;
    private final boolean active;

    public UserRecord(Long id, String email, String password, String name, boolean active) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.name = name;
        this.active = active;
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
}
