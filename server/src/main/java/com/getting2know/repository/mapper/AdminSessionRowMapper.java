package com.getting2know.repository.mapper;

import com.getting2know.model.record.AdminSessionRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public final class AdminSessionRowMapper {

    private AdminSessionRowMapper() {
    }

    public static final RowMapper<AdminSessionRecord> INSTANCE = AdminSessionRowMapper::map;

    public static AdminSessionRecord map(ResultSet rs, int rowNum) throws SQLException {
        Timestamp createdAt = rs.getTimestamp("created_at");
        Timestamp finishedAt = rs.getTimestamp("finished_at");
        return new AdminSessionRecord(
                rs.getLong("session_id"),
                rs.getString("code"),
                rs.getString("status"),
                rs.getString("format"),
                rs.getString("host_username"),
                rs.getString("host_name"),
                rs.getString("partner_username"),
                rs.getString("partner_name"),
                rs.getInt("question_count"),
                rs.getInt("answered_pairs"),
                rs.getInt("answer_total"),
                createdAt != null ? createdAt.toLocalDateTime() : null,
                finishedAt != null ? finishedAt.toLocalDateTime() : null);
    }
}
