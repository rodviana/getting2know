package com.getting2know.repository.filter;

import com.getting2know.model.request.LoginRequest;

public class UserEmailFilter {

    private String email;

    public UserEmailFilter(String email) {
        this.email = email;
    }

    public UserEmailFilter(LoginRequest request) {
        this.email = request.getEmail().trim();
    }

    public String getEmail() {
        return email;
    }
}
