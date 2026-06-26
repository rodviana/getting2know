package com.getting2know.model.record;

import java.time.LocalDateTime;

public class UserSessionListRecord {

    private final String code;
    private final String status;
    private final String format;
    private final Long hostUserId;
    private final Long partnerUserId;
    private final String hostName;
    private final String partnerName;
    private final String hostEmail;
    private final String partnerEmail;
    private final LocalDateTime createdAt;
    private final LocalDateTime finishedAt;
    private final int questionCount;
    private final int answeredPairs;

    public UserSessionListRecord(String code,
                                 String status,
                                 String format,
                                 Long hostUserId,
                                 Long partnerUserId,
                                 String hostName,
                                 String partnerName,
                                 String hostEmail,
                                 String partnerEmail,
                                 LocalDateTime createdAt,
                                 LocalDateTime finishedAt,
                                 int questionCount,
                                 int answeredPairs) {
        this.code = code;
        this.status = status;
        this.format = format;
        this.hostUserId = hostUserId;
        this.partnerUserId = partnerUserId;
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

    public Long getHostUserId() {
        return hostUserId;
    }

    public Long getPartnerUserId() {
        return partnerUserId;
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

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public LocalDateTime getFinishedAt() {
        return finishedAt;
    }

    public int getQuestionCount() {
        return questionCount;
    }

    public int getAnsweredPairs() {
        return answeredPairs;
    }
}
