package com.getting2know.repository.filter;

public class ListAdminSessionsFilter {

    private final int limit;
    private final int offset;
    private final String status;
    private final String username;

    public ListAdminSessionsFilter(int limit, int offset, String status, String username) {
        this.limit = limit;
        this.offset = offset;
        this.status = status;
        this.username = username;
    }

    public int getLimit() { return limit; }
    public int getOffset() { return offset; }
    public String getStatus() { return status; }
    public String getUsername() { return username; }
}
