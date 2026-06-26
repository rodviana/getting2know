package com.getting2know.repository.filter;

public class InsertSessionQuestionFilter {

    private final Long sessionId;
    private final int position;
    private final String sourceRef;
    private final String categoryId;
    private final String type;
    private final String text;
    private final String optionsJson;

    public InsertSessionQuestionFilter(Long sessionId,
                                       int position,
                                       String sourceRef,
                                       String categoryId,
                                       String type,
                                       String text,
                                       String optionsJson) {
        this.sessionId = sessionId;
        this.position = position;
        this.sourceRef = sourceRef;
        this.categoryId = categoryId;
        this.type = type;
        this.text = text;
        this.optionsJson = optionsJson;
    }

    public Long getSessionId() {
        return sessionId;
    }

    public int getPosition() {
        return position;
    }

    public String getSourceRef() {
        return sourceRef;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public String getType() {
        return type;
    }

    public String getText() {
        return text;
    }

    public String getOptionsJson() {
        return optionsJson;
    }
}
