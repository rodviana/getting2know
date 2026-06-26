package com.getting2know.model.record;

import java.math.BigDecimal;

public class AdminAnalyticsInsightsRecord {

    private final long totalSessions;
    private final long finishedSessions;
    private final long lobbySessions;
    private final long playingSessions;
    private final long liveSessions;
    private final long asyncSessions;
    private final BigDecimal avgQuestionsPerSession;
    private final BigDecimal medianQuestionsPerSession;
    private final long totalQuestionSlots;
    private final long totalAnswers;
    private final BigDecimal overallCompletionRate;
    private final String topCategoryId;
    private final long topCategoryUses;
    private final long systemQuestionSlots;
    private final long customQuestionSlots;
    private final long uniqueQuestionKeys;
    private final BigDecimal repeatQuestionRate;

    public AdminAnalyticsInsightsRecord(long totalSessions,
                                        long finishedSessions,
                                        long lobbySessions,
                                        long playingSessions,
                                        long liveSessions,
                                        long asyncSessions,
                                        BigDecimal avgQuestionsPerSession,
                                        BigDecimal medianQuestionsPerSession,
                                        long totalQuestionSlots,
                                        long totalAnswers,
                                        BigDecimal overallCompletionRate,
                                        String topCategoryId,
                                        long topCategoryUses,
                                        long systemQuestionSlots,
                                        long customQuestionSlots,
                                        long uniqueQuestionKeys,
                                        BigDecimal repeatQuestionRate) {
        this.totalSessions = totalSessions;
        this.finishedSessions = finishedSessions;
        this.lobbySessions = lobbySessions;
        this.playingSessions = playingSessions;
        this.liveSessions = liveSessions;
        this.asyncSessions = asyncSessions;
        this.avgQuestionsPerSession = avgQuestionsPerSession;
        this.medianQuestionsPerSession = medianQuestionsPerSession;
        this.totalQuestionSlots = totalQuestionSlots;
        this.totalAnswers = totalAnswers;
        this.overallCompletionRate = overallCompletionRate;
        this.topCategoryId = topCategoryId;
        this.topCategoryUses = topCategoryUses;
        this.systemQuestionSlots = systemQuestionSlots;
        this.customQuestionSlots = customQuestionSlots;
        this.uniqueQuestionKeys = uniqueQuestionKeys;
        this.repeatQuestionRate = repeatQuestionRate;
    }

    public long getTotalSessions() { return totalSessions; }
    public long getFinishedSessions() { return finishedSessions; }
    public long getLobbySessions() { return lobbySessions; }
    public long getPlayingSessions() { return playingSessions; }
    public long getLiveSessions() { return liveSessions; }
    public long getAsyncSessions() { return asyncSessions; }
    public BigDecimal getAvgQuestionsPerSession() { return avgQuestionsPerSession; }
    public BigDecimal getMedianQuestionsPerSession() { return medianQuestionsPerSession; }
    public long getTotalQuestionSlots() { return totalQuestionSlots; }
    public long getTotalAnswers() { return totalAnswers; }
    public BigDecimal getOverallCompletionRate() { return overallCompletionRate; }
    public String getTopCategoryId() { return topCategoryId; }
    public long getTopCategoryUses() { return topCategoryUses; }
    public long getSystemQuestionSlots() { return systemQuestionSlots; }
    public long getCustomQuestionSlots() { return customQuestionSlots; }
    public long getUniqueQuestionKeys() { return uniqueQuestionKeys; }
    public BigDecimal getRepeatQuestionRate() { return repeatQuestionRate; }
}
