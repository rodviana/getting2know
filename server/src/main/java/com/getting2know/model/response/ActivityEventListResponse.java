package com.getting2know.model.response;

import java.util.List;

public class ActivityEventListResponse {

    private final List<ActivityEventResponse> items;
    private final long total;
    private final int limit;
    private final int offset;

    public ActivityEventListResponse(List<ActivityEventResponse> items, long total, int limit, int offset) {
        this.items = items;
        this.total = total;
        this.limit = limit;
        this.offset = offset;
    }

    public List<ActivityEventResponse> getItems() {
        return items;
    }

    public long getTotal() {
        return total;
    }

    public int getLimit() {
        return limit;
    }

    public int getOffset() {
        return offset;
    }
}
