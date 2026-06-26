package com.getting2know.model.record;

import java.math.BigDecimal;

public class AdminCategoryBreakdownRecord {

    private final String categoryId;
    private final long usageCount;
    private final long sessionCount;
    private final BigDecimal completionRate;

    public AdminCategoryBreakdownRecord(String categoryId,
                                          long usageCount,
                                          long sessionCount,
                                          BigDecimal completionRate) {
        this.categoryId = categoryId;
        this.usageCount = usageCount;
        this.sessionCount = sessionCount;
        this.completionRate = completionRate;
    }

    public String getCategoryId() { return categoryId; }
    public long getUsageCount() { return usageCount; }
    public long getSessionCount() { return sessionCount; }
    public BigDecimal getCompletionRate() { return completionRate; }
}
