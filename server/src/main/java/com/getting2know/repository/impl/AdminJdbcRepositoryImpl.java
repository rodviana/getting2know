package com.getting2know.repository.impl;

import com.getting2know.model.record.AdminAnalyticsInsightsRecord;
import com.getting2know.model.record.AdminCategoryBreakdownRecord;
import com.getting2know.model.record.AdminQuestionRankingRecord;
import com.getting2know.model.record.AdminSessionQuestionRecord;
import com.getting2know.model.record.AdminSessionRecord;
import com.getting2know.repository.AdminJdbcRepository;
import com.getting2know.repository.filter.ListAdminSessionsFilter;
import com.getting2know.repository.mapper.AdminAnalyticsInsightsRowMapper;
import com.getting2know.repository.mapper.AdminCategoryBreakdownRowMapper;
import com.getting2know.repository.mapper.AdminQuestionRankingRowMapper;
import com.getting2know.repository.mapper.AdminSessionQuestionRowMapper;
import com.getting2know.repository.mapper.AdminSessionRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class AdminJdbcRepositoryImpl implements AdminJdbcRepository {

    private final NamedParameterJdbcTemplate jdbc;

    public AdminJdbcRepositoryImpl(NamedParameterJdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    @Override
    public List<AdminSessionRecord> listSessions(ListAdminSessionsFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("limit", filter.getLimit())
                .addValue("offset", filter.getOffset())
                .addValue("status", filter.getStatus())
                .addValue("username", filter.getUsername());
        return jdbc.query(P_LIST_SESSIONS_ADMIN, params, AdminSessionRowMapper.INSTANCE);
    }

    @Override
    public long countSessions(ListAdminSessionsFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("status", filter.getStatus())
                .addValue("username", filter.getUsername());
        Long total = jdbc.queryForObject(P_COUNT_SESSIONS_ADMIN, params, Long.class);
        return total != null ? total : 0L;
    }

    @Override
    public Optional<AdminSessionRecord> findSessionByCode(String code) {
        MapSqlParameterSource params = new MapSqlParameterSource("code", code);
        List<AdminSessionRecord> rows = jdbc.query(P_GET_SESSION_ADMIN_BY_CODE, params, AdminSessionRowMapper.INSTANCE);
        return rows.stream().findFirst();
    }

    @Override
    public List<AdminSessionQuestionRecord> listSessionQuestions(String sessionCode) {
        MapSqlParameterSource params = new MapSqlParameterSource("sessionCode", sessionCode);
        return jdbc.query(P_LIST_SESSION_QUESTIONS_ADMIN, params, AdminSessionQuestionRowMapper.INSTANCE);
    }

    @Override
    public List<AdminQuestionRankingRecord> questionRanking(int limit) {
        MapSqlParameterSource params = new MapSqlParameterSource("limit", limit);
        return jdbc.query(P_ADMIN_QUESTION_RANKING, params, AdminQuestionRankingRowMapper.INSTANCE);
    }

    @Override
    public Optional<AdminAnalyticsInsightsRecord> analyticsInsights() {
        List<AdminAnalyticsInsightsRecord> rows = jdbc.query(
                P_ADMIN_ANALYTICS_INSIGHTS,
                new MapSqlParameterSource(),
                AdminAnalyticsInsightsRowMapper.INSTANCE);
        return rows.stream().findFirst();
    }

    @Override
    public List<AdminCategoryBreakdownRecord> categoryBreakdown() {
        return jdbc.query(P_ADMIN_CATEGORY_BREAKDOWN, new MapSqlParameterSource(), AdminCategoryBreakdownRowMapper.INSTANCE);
    }
}
