CREATE OR REPLACE FUNCTION p_admin_dashboard_stats()
RETURNS TABLE (
    total_users BIGINT,
    total_events BIGINT,
    events_today BIGINT,
    page_views_today BIGINT,
    logins_today BIGINT,
    active_sessions BIGINT
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        (SELECT COUNT(*) FROM users WHERE active = TRUE AND role = 'USER') AS total_users,
        (SELECT COUNT(*) FROM user_activity_events) AS total_events,
        (SELECT COUNT(*) FROM user_activity_events WHERE created_at >= CURRENT_DATE) AS events_today,
        (SELECT COUNT(*) FROM user_activity_events WHERE event_type = 'PAGE_VIEW' AND created_at >= CURRENT_DATE) AS page_views_today,
        (SELECT COUNT(*) FROM user_activity_events WHERE event_type = 'LOGIN' AND created_at >= CURRENT_DATE) AS logins_today,
        (SELECT COUNT(*) FROM pair_sessions WHERE status IN ('LOBBY', 'PLAYING', 'REVEAL')) AS active_sessions;
END;
$$;
