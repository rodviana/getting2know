package com.getting2know.repository.filter;

public class UserIdLookupFilter {

    private final Long userId;

    public UserIdLookupFilter(Long userId) {
        this.userId = userId;
    }

    public Long getUserId() {
        return userId;
    }
}
