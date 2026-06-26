package com.getting2know.repository.filter;

public class JoinSessionFilter {

    private final String code;
    private final Long partnerUserId;

    public JoinSessionFilter(String code, Long partnerUserId) {
        this.code = code;
        this.partnerUserId = partnerUserId;
    }

    public String getCode() {
        return code;
    }

    public Long getPartnerUserId() {
        return partnerUserId;
    }
}
