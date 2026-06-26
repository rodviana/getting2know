package com.getting2know.model.record;

import java.time.LocalDateTime;

public class PairSessionRecord {

    private final Long id;
    private final String code;
    private final Long hostUserId;
    private final Long partnerUserId;
    private final String status;
    private final int currentIndex;
    private final String format;
    private final LocalDateTime createdAt;
    private final LocalDateTime finishedAt;

    public PairSessionRecord(Long id,
                             String code,
                             Long hostUserId,
                             Long partnerUserId,
                             String status,
                             int currentIndex,
                             String format,
                             LocalDateTime createdAt,
                             LocalDateTime finishedAt) {
        this.id = id;
        this.code = code;
        this.hostUserId = hostUserId;
        this.partnerUserId = partnerUserId;
        this.status = status;
        this.currentIndex = currentIndex;
        this.format = format;
        this.createdAt = createdAt;
        this.finishedAt = finishedAt;
    }

    public Long getId() {
        return id;
    }

    public String getCode() {
        return code;
    }

    public Long getHostUserId() {
        return hostUserId;
    }

    public Long getPartnerUserId() {
        return partnerUserId;
    }

    public String getStatus() {
        return status;
    }

    public int getCurrentIndex() {
        return currentIndex;
    }

    public String getFormat() {
        return format;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public LocalDateTime getFinishedAt() {
        return finishedAt;
    }
}
