package com.getting2know.repository.filter;

public class CreateQuestionFilter {

    private final Long userId;
    private final String categoryId;
    private final String type;
    private final String text;
    private final String optionsJson;

    public CreateQuestionFilter(Long userId, String categoryId, String type, String text, String optionsJson) {
        this.userId = userId;
        this.categoryId = categoryId;
        this.type = type;
        this.text = text;
        this.optionsJson = optionsJson;
    }

    public Long getUserId() {
        return userId;
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
