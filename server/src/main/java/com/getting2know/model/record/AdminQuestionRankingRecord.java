package com.getting2know.model.record;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class AdminQuestionRankingRecord {

    private final long rankPosition;
    private final String questionKey;
    private final String sourceRef;
    private final String questionText;
    private final String categoryId;
    private final String questionType;
    private final boolean system;
    private final long sessionCount;
    private final long uniqueHosts;
    private final long uniquePartners;
    private final long fullyAnsweredCount;
    private final long partialAnswerCount;
    private final long totalAnswerSlots;
    private final BigDecimal completionRate;
    private final BigDecimal reuseRate;
    private final LocalDateTime lastUsedAt;

    public AdminQuestionRankingRecord(long rankPosition,
                                      String questionKey,
                                      String sourceRef,
                                      String questionText,
                                      String categoryId,
                                      String questionType,
                                      boolean system,
                                      long sessionCount,
                                      long uniqueHosts,
                                      long uniquePartners,
                                      long fullyAnsweredCount,
                                      long partialAnswerCount,
                                      long totalAnswerSlots,
                                      BigDecimal completionRate,
                                      BigDecimal reuseRate,
                                      LocalDateTime lastUsedAt) {
        this.rankPosition = rankPosition;
        this.questionKey = questionKey;
        this.sourceRef = sourceRef;
        this.questionText = questionText;
        this.categoryId = categoryId;
        this.questionType = questionType;
        this.system = system;
        this.sessionCount = sessionCount;
        this.uniqueHosts = uniqueHosts;
        this.uniquePartners = uniquePartners;
        this.fullyAnsweredCount = fullyAnsweredCount;
        this.partialAnswerCount = partialAnswerCount;
        this.totalAnswerSlots = totalAnswerSlots;
        this.completionRate = completionRate;
        this.reuseRate = reuseRate;
        this.lastUsedAt = lastUsedAt;
    }

    public long getRankPosition() { return rankPosition; }
    public String getQuestionKey() { return questionKey; }
    public String getSourceRef() { return sourceRef; }
    public String getQuestionText() { return questionText; }
    public String getCategoryId() { return categoryId; }
    public String getQuestionType() { return questionType; }
    public boolean isSystem() { return system; }
    public long getSessionCount() { return sessionCount; }
    public long getUniqueHosts() { return uniqueHosts; }
    public long getUniquePartners() { return uniquePartners; }
    public long getFullyAnsweredCount() { return fullyAnsweredCount; }
    public long getPartialAnswerCount() { return partialAnswerCount; }
    public long getTotalAnswerSlots() { return totalAnswerSlots; }
    public BigDecimal getCompletionRate() { return completionRate; }
    public BigDecimal getReuseRate() { return reuseRate; }
    public LocalDateTime getLastUsedAt() { return lastUsedAt; }
}
