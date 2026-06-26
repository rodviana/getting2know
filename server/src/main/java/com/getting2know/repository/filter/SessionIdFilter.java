package com.getting2know.repository.filter;

public class SessionIdFilter {

    private final Long sessionId;

    public SessionIdFilter(Long sessionId) {
        this.sessionId = sessionId;
    }

    public Long getSessionId() {
        return sessionId;
    }
}
