package com.getting2know.model.record;

import java.time.LocalDateTime;

public class SessionAnswerRecord {

    private final Long id;
    private final Long sessionId;
    private final Long sessionQuestionId;
    private final Long userId;
    private final String answerJson;
    private final LocalDateTime createdAt;

    public SessionAnswerRecord(Long id,
                               Long sessionId,
                               Long sessionQuestionId,
                               Long userId,
                               String answerJson,
                               LocalDateTime createdAt) {
        this.id = id;
        this.sessionId = sessionId;
        this.sessionQuestionId = sessionQuestionId;
        this.userId = userId;
        this.answerJson = answerJson;
        this.createdAt = createdAt;
    }

    public Long getId() {
        return id;
    }

    public Long getSessionId() {
        return sessionId;
    }

    public Long getSessionQuestionId() {
        return sessionQuestionId;
    }

    public Long getUserId() {
        return userId;
    }

    public String getAnswerJson() {
        return answerJson;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
}
