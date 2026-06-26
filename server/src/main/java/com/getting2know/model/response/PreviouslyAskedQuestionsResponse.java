package com.getting2know.model.response;

import java.util.List;

public class PreviouslyAskedQuestionsResponse {

    private final Long partnerUserId;
    private final String partnerName;
    private final List<String> questionIds;
    private final int sessionCount;

    public PreviouslyAskedQuestionsResponse(Long partnerUserId,
                                            String partnerName,
                                            List<String> questionIds,
                                            int sessionCount) {
        this.partnerUserId = partnerUserId;
        this.partnerName = partnerName;
        this.questionIds = questionIds;
        this.sessionCount = sessionCount;
    }

    public Long getPartnerUserId() {
        return partnerUserId;
    }

    public String getPartnerName() {
        return partnerName;
    }

    public List<String> getQuestionIds() {
        return questionIds;
    }

    public int getSessionCount() {
        return sessionCount;
    }
}
