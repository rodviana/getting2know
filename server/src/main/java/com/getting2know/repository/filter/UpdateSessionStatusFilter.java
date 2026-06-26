package com.getting2know.repository.filter;

public class UpdateSessionStatusFilter {

    private final Long sessionId;
    private final String status;
    private final int currentIndex;
    private final java.time.LocalDateTime finishedAt;

    public UpdateSessionStatusFilter(Long sessionId, String status, int currentIndex, java.time.LocalDateTime finishedAt) {
        this.sessionId = sessionId;
        this.status = status;
        this.currentIndex = currentIndex;
        this.finishedAt = finishedAt;
    }

    public Long getSessionId() {
        return sessionId;
    }

    public String getStatus() {
        return status;
    }

    public int getCurrentIndex() {
        return currentIndex;
    }

    public java.time.LocalDateTime getFinishedAt() {
        return finishedAt;
    }
}
