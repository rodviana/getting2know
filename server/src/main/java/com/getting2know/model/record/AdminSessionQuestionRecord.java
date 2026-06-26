package com.getting2know.model.record;

public class AdminSessionQuestionRecord {

    private final Long questionId;
    private final int position;
    private final String sourceRef;
    private final String categoryId;
    private final String type;
    private final String text;
    private final int answerCount;
    private final boolean system;

    public AdminSessionQuestionRecord(Long questionId,
                                      int position,
                                      String sourceRef,
                                      String categoryId,
                                      String type,
                                      String text,
                                      int answerCount,
                                      boolean system) {
        this.questionId = questionId;
        this.position = position;
        this.sourceRef = sourceRef;
        this.categoryId = categoryId;
        this.type = type;
        this.text = text;
        this.answerCount = answerCount;
        this.system = system;
    }

    public Long getQuestionId() { return questionId; }
    public int getPosition() { return position; }
    public String getSourceRef() { return sourceRef; }
    public String getCategoryId() { return categoryId; }
    public String getType() { return type; }
    public String getText() { return text; }
    public int getAnswerCount() { return answerCount; }
    public boolean isSystem() { return system; }
}
