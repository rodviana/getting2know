package com.getting2know.repository.mapper;

import com.getting2know.model.record.AdminUserRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public final class AdminUserRowMapper {

    private AdminUserRowMapper() {
    }

    public static final RowMapper<AdminUserRecord> INSTANCE = AdminUserRowMapper::map;

    public static AdminUserRecord map(ResultSet rs, int rowNum) throws SQLException {
        Timestamp createdAt = rs.getTimestamp("created_at");
        Timestamp lastEventAt = rs.getTimestamp("last_event_at");
        return new AdminUserRecord(
                rs.getLong("id"),
                rs.getString("username"),
                rs.getString("name"),
                rs.getString("role"),
                createdAt != null ? createdAt.toLocalDateTime() : null,
                lastEventAt != null ? lastEventAt.toLocalDateTime() : null,
                rs.getString("last_ip"),
                rs.getLong("event_count"),
                rs.getLong("sessions_hosted"),
                rs.getLong("sessions_joined"),
                rs.getLong("custom_questions"),
                rs.getLong("login_count"),
                rs.getLong("page_view_count"));
    }
}
