package com.getting2know.repository.impl;

import com.getting2know.model.record.ActivityEventRecord;
import com.getting2know.model.record.AdminDashboardStatsRecord;
import com.getting2know.model.record.AdminUserRecord;
import com.getting2know.repository.ActivityJdbcRepository;
import com.getting2know.repository.filter.InsertActivityEventFilter;
import com.getting2know.repository.filter.ListActivityEventsFilter;
import com.getting2know.repository.mapper.ActivityEventRowMapper;
import com.getting2know.repository.mapper.AdminDashboardStatsRowMapper;
import com.getting2know.repository.mapper.AdminUserRowMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class ActivityJdbcRepositoryImpl implements ActivityJdbcRepository {

    private static final Logger log = LoggerFactory.getLogger(ActivityJdbcRepositoryImpl.class);

    private final NamedParameterJdbcTemplate jdbc;

    public ActivityJdbcRepositoryImpl(NamedParameterJdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    @Override
    public Long insert(InsertActivityEventFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("userId", filter.getUserId())
                .addValue("username", filter.getUsername())
                .addValue("eventType", filter.getEventType())
                .addValue("path", filter.getPath())
                .addValue("ipAddress", filter.getIpAddress())
                .addValue("userAgent", filter.getUserAgent())
                .addValue("metadataJson", filter.getMetadataJson());
        try {
            return jdbc.queryForObject(P_INSERT_ACTIVITY_EVENT, params, Long.class);
        } catch (DataAccessException e) {
            log.error("[activity] insert error type={}: {}", filter.getEventType(), e.getMessage(), e);
            return null;
        }
    }

    @Override
    public List<ActivityEventRecord> list(ListActivityEventsFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("limit", filter.getLimit())
                .addValue("offset", filter.getOffset())
                .addValue("username", filter.getUsername())
                .addValue("eventType", filter.getEventType())
                .addValue("ipAddress", filter.getIpAddress());
        return jdbc.query(P_LIST_ACTIVITY_EVENTS, params, ActivityEventRowMapper.INSTANCE);
    }

    @Override
    public long count(ListActivityEventsFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("username", filter.getUsername())
                .addValue("eventType", filter.getEventType())
                .addValue("ipAddress", filter.getIpAddress());
        Long total = jdbc.queryForObject(P_COUNT_ACTIVITY_EVENTS, params, Long.class);
        return total != null ? total : 0L;
    }

    @Override
    public Optional<AdminDashboardStatsRecord> dashboardStats() {
        List<AdminDashboardStatsRecord> rows = jdbc.query(
                P_ADMIN_DASHBOARD_STATS,
                new MapSqlParameterSource(),
                AdminDashboardStatsRowMapper.INSTANCE);
        return rows.stream().findFirst();
    }

    @Override
    public List<AdminUserRecord> listUsers() {
        return jdbc.query(P_LIST_USERS_ADMIN, new MapSqlParameterSource(), AdminUserRowMapper.INSTANCE);
    }
}
