package com.getting2know.repository.filter;

import com.getting2know.model.request.LoginRequest;

import com.getting2know.utils.UserValidationUtils;

public class UserEmailFilter {

    private String email;

    public UserEmailFilter(String email) {
        this.email = email;
    }

    public UserEmailFilter(LoginRequest request) {
        this.email = UserValidationUtils.normalizeUsername(request.getUsername());
    }

    public String getEmail() {
        return email;
    }
}
