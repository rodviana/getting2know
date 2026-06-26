package com.getting2know.model.request;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "Login credentials")
public class LoginRequest {

    @Schema(example = "rodrigo")
    private String username;

    @Schema(example = "admin123")
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
