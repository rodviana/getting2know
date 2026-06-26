package com.getting2know.repository.filter;

public class CreateUserFilter {

    private final String email;
    private final String passwordHash;
    private final String name;

    public CreateUserFilter(String email, String passwordHash, String name) {
        this.email = email;
        this.passwordHash = passwordHash;
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    public String getName() {
        return name;
    }
}
