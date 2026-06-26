package com.getting2know.model.response;

import java.math.BigDecimal;

public class AdminCategoryBreakdownResponse {

    private final String categoryId;
    private final long usageCount;
    private final long sessionCount;
    private final BigDecimal completionRate;

    public AdminCategoryBreakdownResponse(String categoryId,
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
