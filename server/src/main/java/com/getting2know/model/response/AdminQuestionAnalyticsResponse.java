package com.getting2know.model.response;

import java.util.List;

public class AdminQuestionAnalyticsResponse {

    private final AdminAnalyticsInsightsResponse insights;
    private final List<AdminQuestionRankingResponse> ranking;
    private final List<AdminCategoryBreakdownResponse> categories;

    public AdminQuestionAnalyticsResponse(AdminAnalyticsInsightsResponse insights,
                                          List<AdminQuestionRankingResponse> ranking,
                                          List<AdminCategoryBreakdownResponse> categories) {
        this.insights = insights;
        this.ranking = ranking;
        this.categories = categories;
    }

    public AdminAnalyticsInsightsResponse getInsights() { return insights; }
    public List<AdminQuestionRankingResponse> getRanking() { return ranking; }
    public List<AdminCategoryBreakdownResponse> getCategories() { return categories; }
}
