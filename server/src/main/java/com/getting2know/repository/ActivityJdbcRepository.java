package com.getting2know.repository;

import com.getting2know.model.record.ActivityEventRecord;
import com.getting2know.model.record.AdminDashboardStatsRecord;
import com.getting2know.model.record.AdminUserRecord;
import com.getting2know.repository.filter.InsertActivityEventFilter;
import com.getting2know.repository.filter.ListActivityEventsFilter;

import java.util.List;
import java.util.Optional;

public interface ActivityJdbcRepository {

    String P_INSERT_ACTIVITY_EVENT = "SELECT p_insert_activity_event(:userId, :username, :eventType, :path, :ipAddress, :userAgent, CAST(:metadataJson AS jsonb))";
    String P_LIST_ACTIVITY_EVENTS = "SELECT * FROM p_list_activity_events(:limit, :offset, :username, :eventType, :ipAddress)";
    String P_COUNT_ACTIVITY_EVENTS = "SELECT p_count_activity_events(:username, :eventType, :ipAddress)";
    String P_ADMIN_DASHBOARD_STATS = "SELECT * FROM p_admin_dashboard_stats()";
    String P_LIST_USERS_ADMIN = "SELECT * FROM p_list_users_admin()";

    Long insert(InsertActivityEventFilter filter);

    List<ActivityEventRecord> list(ListActivityEventsFilter filter);

    long count(ListActivityEventsFilter filter);

    Optional<AdminDashboardStatsRecord> dashboardStats();

    List<AdminUserRecord> listUsers();
}
