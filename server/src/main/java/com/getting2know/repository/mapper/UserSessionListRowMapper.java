package com.getting2know.repository.mapper;

import com.getting2know.model.record.UserSessionListRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public final class UserSessionListRowMapper {

    private UserSessionListRowMapper() {
    }

    public static final RowMapper<UserSessionListRecord> INSTANCE = UserSessionListRowMapper::map;

    public static UserSessionListRecord map(ResultSet rs, int rowNum) throws SQLException {
        Long partnerUserId = rs.getObject("partner_user_id") != null ? rs.getLong("partner_user_id") : null;
        Timestamp finishedAt = rs.getTimestamp("finished_at");
        return new UserSessionListRecord(
                rs.getString("code"),
                rs.getString("status"),
                rs.getString("format"),
                rs.getLong("host_user_id"),
                partnerUserId,
                rs.getString("host_name"),
                rs.getString("partner_name"),
                rs.getString("host_email"),
                rs.getString("partner_email"),
                rs.getTimestamp("created_at").toLocalDateTime(),
                finishedAt != null ? finishedAt.toLocalDateTime() : null,
                rs.getInt("question_count"),
                rs.getInt("answered_pairs"));
    }
}
