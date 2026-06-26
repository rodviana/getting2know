package com.getting2know.model.response;

public class LoginResponse {

    private final String token;
    private final String name;
    private final String username;
    private final String role;

    public LoginResponse(String token, String name, String username, String role) {
        this.token = token;
        this.name = name;
        this.username = username;
        this.role = role;
    }

    public String getToken() {
        return token;
    }

    public String getName() {
        return name;
    }

    public String getUsername() {
        return username;
    }

    public String getRole() {
        return role;
    }
}
