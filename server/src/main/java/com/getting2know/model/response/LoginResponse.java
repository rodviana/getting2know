package com.getting2know.model.response;

public class LoginResponse {

    private final String token;
    private final String name;
    private final String username;

    public LoginResponse(String token, String name, String username) {
        this.token = token;
        this.name = name;
        this.username = username;
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
}
