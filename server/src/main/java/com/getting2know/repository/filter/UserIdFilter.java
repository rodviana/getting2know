package com.getting2know.repository.filter;

public class UserIdFilter {

    private final Long userId;

    public UserIdFilter(Long userId) {
        this.userId = userId;
    }

    public Long getUserId() {
        return userId;
    }
}
