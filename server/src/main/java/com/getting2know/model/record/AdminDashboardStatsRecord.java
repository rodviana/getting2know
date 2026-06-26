package com.getting2know.model.record;

public class AdminDashboardStatsRecord {

    private final long totalUsers;
    private final long totalEvents;
    private final long eventsToday;
    private final long pageViewsToday;
    private final long loginsToday;
    private final long activeSessions;

    public AdminDashboardStatsRecord(long totalUsers,
                                     long totalEvents,
                                     long eventsToday,
                                     long pageViewsToday,
                                     long loginsToday,
                                     long activeSessions) {
        this.totalUsers = totalUsers;
        this.totalEvents = totalEvents;
        this.eventsToday = eventsToday;
        this.pageViewsToday = pageViewsToday;
        this.loginsToday = loginsToday;
        this.activeSessions = activeSessions;
    }

    public long getTotalUsers() {
        return totalUsers;
    }

    public long getTotalEvents() {
        return totalEvents;
    }

    public long getEventsToday() {
        return eventsToday;
    }

    public long getPageViewsToday() {
        return pageViewsToday;
    }

    public long getLoginsToday() {
        return loginsToday;
    }

    public long getActiveSessions() {
        return activeSessions;
    }
}
