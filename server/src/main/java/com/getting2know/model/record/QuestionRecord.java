package com.getting2know.model.record;

import java.time.LocalDateTime;

public class QuestionRecord {

    private final Long id;
    private final Long userId;
    private final String categoryId;
    private final String type;
    private final String text;
    private final String optionsJson;
    private final LocalDateTime createdAt;
    private final LocalDateTime updatedAt;

    public QuestionRecord(Long id,
                          Long userId,
                          String categoryId,
                          String type,
                          String text,
                          String optionsJson,
                          LocalDateTime createdAt,
                          LocalDateTime updatedAt) {
        this.id = id;
        this.userId = userId;
        this.categoryId = categoryId;
        this.type = type;
        this.text = text;
        this.optionsJson = optionsJson;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public Long getId() {
        return id;
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

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }
}
