package com.getting2know.model.response;

import java.time.LocalDateTime;

public class ActivityEventResponse {

    private final Long id;
    private final Long userId;
    private final String username;
    private final String eventType;
    private final String path;
    private final String ipAddress;
    private final String userAgent;
    private final String metadataJson;
    private final LocalDateTime createdAt;

    public ActivityEventResponse(Long id,
                                 Long userId,
                                 String username,
                                 String eventType,
                                 String path,
                                 String ipAddress,
                                 String userAgent,
                                 String metadataJson,
                                 LocalDateTime createdAt) {
        this.id = id;
        this.userId = userId;
        this.username = username;
        this.eventType = eventType;
        this.path = path;
        this.ipAddress = ipAddress;
        this.userAgent = userAgent;
        this.metadataJson = metadataJson;
        this.createdAt = createdAt;
    }

    public Long getId() {
        return id;
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

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
}
