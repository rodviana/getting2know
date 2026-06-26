package com.getting2know.model.response;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class AdminQuestionRankingResponse {

    private final long rank;
    private final String questionKey;
    private final String sourceRef;
    private final String text;
    private final String categoryId;
    private final String type;
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

    public AdminQuestionRankingResponse(long rank,
                                        String questionKey,
                                        String sourceRef,
                                        String text,
                                        String categoryId,
                                        String type,
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
        this.rank = rank;
        this.questionKey = questionKey;
        this.sourceRef = sourceRef;
        this.text = text;
        this.categoryId = categoryId;
        this.type = type;
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

    public long getRank() { return rank; }
    public String getQuestionKey() { return questionKey; }
    public String getSourceRef() { return sourceRef; }
    public String getText() { return text; }
    public String getCategoryId() { return categoryId; }
    public String getType() { return type; }
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
