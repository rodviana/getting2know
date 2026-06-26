package com.getting2know.repository.filter;

public class CreatePairSessionFilter {

    private final Long hostUserId;
    private final String code;
    private final String format;

    public CreatePairSessionFilter(Long hostUserId, String code, String format) {
        this.hostUserId = hostUserId;
        this.code = code;
        this.format = format;
    }

    public Long getHostUserId() {
        return hostUserId;
    }

    public String getCode() {
        return code;
    }

    public String getFormat() {
        return format;
    }
}
