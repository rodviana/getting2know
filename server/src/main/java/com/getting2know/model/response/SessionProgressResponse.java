package com.getting2know.model.response;

public class SessionProgressResponse {

    private final int current;
    private final int total;
    private final int answered;
    private final int myAnswered;
    private final int partnerAnswered;

    public SessionProgressResponse(int current, int total, int answered, int myAnswered, int partnerAnswered) {
        this.current = current;
        this.total = total;
        this.answered = answered;
        this.myAnswered = myAnswered;
        this.partnerAnswered = partnerAnswered;
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

    public int getMyAnswered() {
        return myAnswered;
    }

    public int getPartnerAnswered() {
        return partnerAnswered;
    }
}
