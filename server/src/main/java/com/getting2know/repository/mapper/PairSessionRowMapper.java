package com.getting2know.repository.mapper;

import com.getting2know.model.record.PairSessionRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public final class PairSessionRowMapper {

    private PairSessionRowMapper() {
    }

    public static final RowMapper<PairSessionRecord> INSTANCE = PairSessionRowMapper::map;

    public static PairSessionRecord map(ResultSet rs, int rowNum) throws SQLException {
        Long partnerUserId = rs.getObject("partner_user_id") != null ? rs.getLong("partner_user_id") : null;
        Timestamp finishedAt = rs.getTimestamp("finished_at");
        return new PairSessionRecord(
                rs.getLong("id"),
                rs.getString("code"),
                rs.getLong("host_user_id"),
                partnerUserId,
                rs.getString("status"),
                rs.getInt("current_index"),
                rs.getString("format"),
                rs.getTimestamp("created_at").toLocalDateTime(),
                finishedAt != null ? finishedAt.toLocalDateTime() : null);
    }
}
