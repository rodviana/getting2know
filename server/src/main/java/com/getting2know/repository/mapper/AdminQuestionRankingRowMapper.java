package com.getting2know.repository.mapper;

import com.getting2know.model.record.AdminQuestionRankingRecord;
import org.springframework.jdbc.core.RowMapper;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public final class AdminQuestionRankingRowMapper {

    private AdminQuestionRankingRowMapper() {
    }

    public static final RowMapper<AdminQuestionRankingRecord> INSTANCE = AdminQuestionRankingRowMapper::map;

    public static AdminQuestionRankingRecord map(ResultSet rs, int rowNum) throws SQLException {
        Timestamp lastUsedAt = rs.getTimestamp("last_used_at");
        return new AdminQuestionRankingRecord(
                rs.getLong("rank_position"),
                rs.getString("question_key"),
                rs.getString("source_ref"),
                rs.getString("question_text"),
                rs.getString("category_id"),
                rs.getString("question_type"),
                rs.getBoolean("is_system"),
                rs.getLong("session_count"),
                rs.getLong("unique_hosts"),
                rs.getLong("unique_partners"),
                rs.getLong("fully_answered_count"),
                rs.getLong("partial_answer_count"),
                rs.getLong("total_answer_slots"),
                rs.getBigDecimal("completion_rate"),
                rs.getBigDecimal("reuse_rate"),
                lastUsedAt != null ? lastUsedAt.toLocalDateTime() : null);
    }
}
