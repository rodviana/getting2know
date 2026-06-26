package com.getting2know.model.request;

import java.util.List;

public class CreateSessionRequest {

    private String format;
    private List<SessionQuestionItemRequest> questions;

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format;
    }

    public List<SessionQuestionItemRequest> getQuestions() {
        return questions;
    }

    public void setQuestions(List<SessionQuestionItemRequest> questions) {
        this.questions = questions;
    }
}
