package com.getting2know.model.response;

import java.util.List;

public class SessionQuestionResponse {

    private final String id;
    private final String categoryId;
    private final String type;
    private final String text;
    private final List<String> options;

    public SessionQuestionResponse(String id, String categoryId, String type, String text, List<String> options) {
        this.id = id;
        this.categoryId = categoryId;
        this.type = type;
        this.text = text;
        this.options = options;
    }

    public String getId() {
        return id;
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

    public List<String> getOptions() {
        return options;
    }
}
