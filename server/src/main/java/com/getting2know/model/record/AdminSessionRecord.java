package com.getting2know.model.record;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class AdminSessionRecord {

    private final Long sessionId;
    private final String code;
    private final String status;
    private final String format;
    private final String hostUsername;
    private final String hostName;
    private final String partnerUsername;
    private final String partnerName;
    private final int questionCount;
    private final int answeredPairs;
    private final int answerTotal;
    private final LocalDateTime createdAt;
    private final LocalDateTime finishedAt;

    public AdminSessionRecord(Long sessionId,
                              String code,
                              String status,
                              String format,
                              String hostUsername,
                              String hostName,
                              String partnerUsername,
                              String partnerName,
                              int questionCount,
                              int answeredPairs,
                              int answerTotal,
                              LocalDateTime createdAt,
                              LocalDateTime finishedAt) {
        this.sessionId = sessionId;
        this.code = code;
        this.status = status;
        this.format = format;
        this.hostUsername = hostUsername;
        this.hostName = hostName;
        this.partnerUsername = partnerUsername;
        this.partnerName = partnerName;
        this.questionCount = questionCount;
        this.answeredPairs = answeredPairs;
        this.answerTotal = answerTotal;
        this.createdAt = createdAt;
        this.finishedAt = finishedAt;
    }

    public Long getSessionId() { return sessionId; }
    public String getCode() { return code; }
    public String getStatus() { return status; }
    public String getFormat() { return format; }
    public String getHostUsername() { return hostUsername; }
    public String getHostName() { return hostName; }
    public String getPartnerUsername() { return partnerUsername; }
    public String getPartnerName() { return partnerName; }
    public int getQuestionCount() { return questionCount; }
    public int getAnsweredPairs() { return answeredPairs; }
    public int getAnswerTotal() { return answerTotal; }
    public LocalDateTime getCreatedAt() { return createdAt; }
    public LocalDateTime getFinishedAt() { return finishedAt; }
}
