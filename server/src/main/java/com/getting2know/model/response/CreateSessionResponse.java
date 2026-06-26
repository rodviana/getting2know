package com.getting2know.model.response;

public class CreateSessionResponse {

    private final String code;

    public CreateSessionResponse(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }
}
