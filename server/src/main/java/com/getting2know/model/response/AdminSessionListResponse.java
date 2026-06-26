package com.getting2know.model.response;

import java.util.List;

public class AdminSessionListResponse {

    private final List<AdminSessionResponse> items;
    private final long total;
    private final int limit;
    private final int offset;

    public AdminSessionListResponse(List<AdminSessionResponse> items, long total, int limit, int offset) {
        this.items = items;
        this.total = total;
        this.limit = limit;
        this.offset = offset;
    }

    public List<AdminSessionResponse> getItems() { return items; }
    public long getTotal() { return total; }
    public int getLimit() { return limit; }
    public int getOffset() { return offset; }
}
