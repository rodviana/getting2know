package com.getting2know.repository.filter;

public class UserPairFilter {

    private final Long userId;
    private final Long partnerUserId;

    public UserPairFilter(Long userId, Long partnerUserId) {
        this.userId = userId;
        this.partnerUserId = partnerUserId;
    }

    public Long getUserId() {
        return userId;
    }

    public Long getPartnerUserId() {
        return partnerUserId;
    }
}
