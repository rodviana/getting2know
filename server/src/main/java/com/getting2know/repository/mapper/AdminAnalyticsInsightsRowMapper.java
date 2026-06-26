package com.getting2know.repository.mapper;

import com.getting2know.model.record.AdminAnalyticsInsightsRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public final class AdminAnalyticsInsightsRowMapper {

    private AdminAnalyticsInsightsRowMapper() {
    }

    public static final RowMapper<AdminAnalyticsInsightsRecord> INSTANCE = AdminAnalyticsInsightsRowMapper::map;

    public static AdminAnalyticsInsightsRecord map(ResultSet rs, int rowNum) throws SQLException {
        return new AdminAnalyticsInsightsRecord(
                rs.getLong("total_sessions"),
                rs.getLong("finished_sessions"),
                rs.getLong("lobby_sessions"),
                rs.getLong("playing_sessions"),
                rs.getLong("live_sessions"),
                rs.getLong("async_sessions"),
                rs.getBigDecimal("avg_questions_per_session"),
                rs.getBigDecimal("median_questions_per_session"),
                rs.getLong("total_question_slots"),
                rs.getLong("total_answers"),
                rs.getBigDecimal("overall_completion_rate"),
                rs.getString("top_category_id"),
                rs.getLong("top_category_uses"),
                rs.getLong("system_question_slots"),
                rs.getLong("custom_question_slots"),
                rs.getLong("unique_question_keys"),
                rs.getBigDecimal("repeat_question_rate"));
    }
}
