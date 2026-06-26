package com.getting2know.repository.filter;

public class UpsertSessionAnswerFilter {

    private final Long sessionId;
    private final Long sessionQuestionId;
    private final Long userId;
    private final String answerJson;

    public UpsertSessionAnswerFilter(Long sessionId, Long sessionQuestionId, Long userId, String answerJson) {
        this.sessionId = sessionId;
        this.sessionQuestionId = sessionQuestionId;
        this.userId = userId;
        this.answerJson = answerJson;
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
}
