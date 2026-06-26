package com.getting2know.model.response;

import java.util.List;

public class QuestionResponse {

    private final String id;
    private final String categoryId;
    private final String type;
    private final String text;
    private final List<String> options;
    private final boolean custom;

    public QuestionResponse(String id, String categoryId, String type, String text, List<String> options, boolean custom) {
        this.id = id;
        this.categoryId = categoryId;
        this.type = type;
        this.text = text;
        this.options = options;
        this.custom = custom;
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

    public boolean isCustom() {
        return custom;
    }
}
