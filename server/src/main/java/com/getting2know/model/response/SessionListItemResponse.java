package com.getting2know.model.response;

public class SessionListItemResponse {

    private final String code;
    private final String status;
    private final String format;
    private final String role;
    private final String hostName;
    private final String partnerName;
    private final String hostEmail;
    private final String partnerEmail;
    private final String createdAt;
    private final String finishedAt;
    private final int questionCount;
    private final int answeredPairs;

    public SessionListItemResponse(String code,
                                   String status,
                                   String format,
                                   String role,
                                   String hostName,
                                   String partnerName,
                                   String hostEmail,
                                   String partnerEmail,
                                   String createdAt,
                                   String finishedAt,
                                   int questionCount,
                                   int answeredPairs) {
        this.code = code;
        this.status = status;
        this.format = format;
        this.role = role;
        this.hostName = hostName;
        this.partnerName = partnerName;
        this.hostEmail = hostEmail;
        this.partnerEmail = partnerEmail;
        this.createdAt = createdAt;
        this.finishedAt = finishedAt;
        this.questionCount = questionCount;
        this.answeredPairs = answeredPairs;
    }

    public String getCode() {
        return code;
    }

    public String getStatus() {
        return status;
    }

    public String getFormat() {
        return format;
    }

    public String getRole() {
        return role;
    }

    public String getHostName() {
        return hostName;
    }

    public String getPartnerName() {
        return partnerName;
    }

    public String getHostEmail() {
        return hostEmail;
    }

    public String getPartnerEmail() {
        return partnerEmail;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public String getFinishedAt() {
        return finishedAt;
    }

    public int getQuestionCount() {
        return questionCount;
    }

    public int getAnsweredPairs() {
        return answeredPairs;
    }
}
