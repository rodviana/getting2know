package com.getting2know.model.record;

import java.time.LocalDateTime;

public class AdminUserRecord {

    private final Long id;
    private final String username;
    private final String name;
    private final String role;
    private final LocalDateTime createdAt;
    private final LocalDateTime lastEventAt;
    private final String lastIp;
    private final long eventCount;
    private final long sessionsHosted;
    private final long sessionsJoined;
    private final long customQuestions;
    private final long loginCount;
    private final long pageViewCount;

    public AdminUserRecord(Long id,
                           String username,
                           String name,
                           String role,
                           LocalDateTime createdAt,
                           LocalDateTime lastEventAt,
                           String lastIp,
                           long eventCount,
                           long sessionsHosted,
                           long sessionsJoined,
                           long customQuestions,
                           long loginCount,
                           long pageViewCount) {
        this.id = id;
        this.username = username;
        this.name = name;
        this.role = role;
        this.createdAt = createdAt;
        this.lastEventAt = lastEventAt;
        this.lastIp = lastIp;
        this.eventCount = eventCount;
        this.sessionsHosted = sessionsHosted;
        this.sessionsJoined = sessionsJoined;
        this.customQuestions = customQuestions;
        this.loginCount = loginCount;
        this.pageViewCount = pageViewCount;
    }

    public Long getId() { return id; }
    public String getUsername() { return username; }
    public String getName() { return name; }
    public String getRole() { return role; }
    public LocalDateTime getCreatedAt() { return createdAt; }
    public LocalDateTime getLastEventAt() { return lastEventAt; }
    public String getLastIp() { return lastIp; }
    public long getEventCount() { return eventCount; }
    public long getSessionsHosted() { return sessionsHosted; }
    public long getSessionsJoined() { return sessionsJoined; }
    public long getCustomQuestions() { return customQuestions; }
    public long getLoginCount() { return loginCount; }
    public long getPageViewCount() { return pageViewCount; }
}
