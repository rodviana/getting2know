package com.getting2know.repository.mapper;

import com.getting2know.model.record.ActivityEventRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public final class ActivityEventRowMapper {

    private ActivityEventRowMapper() {
    }

    public static final RowMapper<ActivityEventRecord> INSTANCE = ActivityEventRowMapper::map;

    public static ActivityEventRecord map(ResultSet rs, int rowNum) throws SQLException {
        Timestamp createdAt = rs.getTimestamp("created_at");
        Object metadata = rs.getObject("metadata");
        return new ActivityEventRecord(
                rs.getLong("id"),
                rs.getObject("user_id") != null ? rs.getLong("user_id") : null,
                rs.getString("username"),
                rs.getString("event_type"),
                rs.getString("path"),
                rs.getString("ip_address"),
                rs.getString("user_agent"),
                metadata != null ? metadata.toString() : null,
                createdAt != null ? createdAt.toLocalDateTime() : null);
    }
}
