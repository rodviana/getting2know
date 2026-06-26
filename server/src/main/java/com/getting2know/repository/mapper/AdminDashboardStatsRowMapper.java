package com.getting2know.repository.mapper;

import com.getting2know.model.record.AdminDashboardStatsRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public final class AdminDashboardStatsRowMapper {

    private AdminDashboardStatsRowMapper() {
    }

    public static final RowMapper<AdminDashboardStatsRecord> INSTANCE = AdminDashboardStatsRowMapper::map;

    public static AdminDashboardStatsRecord map(ResultSet rs, int rowNum) throws SQLException {
        return new AdminDashboardStatsRecord(
                rs.getLong("total_users"),
                rs.getLong("total_events"),
                rs.getLong("events_today"),
                rs.getLong("page_views_today"),
                rs.getLong("logins_today"),
                rs.getLong("active_sessions"));
    }
}
