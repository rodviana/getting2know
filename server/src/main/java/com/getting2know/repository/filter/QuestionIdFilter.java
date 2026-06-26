package com.getting2know.repository.filter;

public class QuestionIdFilter {

    private final Long questionId;
    private final Long userId;

    public QuestionIdFilter(Long questionId, Long userId) {
        this.questionId = questionId;
        this.userId = userId;
    }

    public Long getQuestionId() {
        return questionId;
    }

    public Long getUserId() {
        return userId;
    }
}
