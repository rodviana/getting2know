package com.getting2know.model.response;

public class SessionProgressResponse {

    private final int current;
    private final int total;
    private final int answered;

    public SessionProgressResponse(int current, int total, int answered) {
        this.current = current;
        this.total = total;
        this.answered = answered;
    }

    public int getCurrent() {
        return current;
    }

    public int getTotal() {
        return total;
    }

    public int getAnswered() {
        return answered;
    }
}
