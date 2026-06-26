package com.getting2know.repository.filter;

public class ListActivityEventsFilter {

    private final int limit;
    private final int offset;
    private final String username;
    private final String eventType;
    private final String ipAddress;

    public ListActivityEventsFilter(int limit, int offset, String username, String eventType, String ipAddress) {
        this.limit = limit;
        this.offset = offset;
        this.username = username;
        this.eventType = eventType;
        this.ipAddress = ipAddress;
    }

    public int getLimit() {
        return limit;
    }

    public int getOffset() {
        return offset;
    }

    public String getUsername() {
        return username;
    }

    public String getEventType() {
        return eventType;
    }

    public String getIpAddress() {
        return ipAddress;
    }
}
