package com.getting2know.repository.filter;

public class InsertActivityEventFilter {

    private final Long userId;
    private final String username;
    private final String eventType;
    private final String path;
    private final String ipAddress;
    private final String userAgent;
    private final String metadataJson;

    public InsertActivityEventFilter(Long userId,
                                     String username,
                                     String eventType,
                                     String path,
                                     String ipAddress,
                                     String userAgent,
                                     String metadataJson) {
        this.userId = userId;
        this.username = username;
        this.eventType = eventType;
        this.path = path;
        this.ipAddress = ipAddress;
        this.userAgent = userAgent;
        this.metadataJson = metadataJson;
    }

    public Long getUserId() {
        return userId;
    }

    public String getUsername() {
        return username;
    }

    public String getEventType() {
        return eventType;
    }

    public String getPath() {
        return path;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public String getUserAgent() {
        return userAgent;
    }

    public String getMetadataJson() {
        return metadataJson;
    }
}
