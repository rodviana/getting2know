CREATE OR REPLACE FUNCTION p_list_users_admin()
RETURNS TABLE (
    id                  BIGINT,
    username            VARCHAR,
    name                VARCHAR,
    role                VARCHAR,
    created_at          TIMESTAMP,
    last_event_at       TIMESTAMP,
    last_ip             VARCHAR,
    event_count         BIGINT,
    sessions_hosted     BIGINT,
    sessions_joined     BIGINT,
    custom_questions    BIGINT,
    login_count         BIGINT,
    page_view_count     BIGINT
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        u.id,
        u.email AS username,
        u.name,
        u.role,
        u.created_at,
        stats.last_event_at,
        stats.last_ip,
        COALESCE(stats.event_count, 0) AS event_count,
        (SELECT COUNT(*) FROM pair_sessions ps WHERE ps.host_user_id = u.id) AS sessions_hosted,
        (SELECT COUNT(*) FROM pair_sessions ps WHERE ps.partner_user_id = u.id) AS sessions_joined,
        (SELECT COUNT(*) FROM questions q WHERE q.user_id = u.id AND q.is_system = FALSE) AS custom_questions,
        (SELECT COUNT(*) FROM user_activity_events e WHERE e.user_id = u.id AND e.event_type = 'LOGIN') AS login_count,
        (SELECT COUNT(*) FROM user_activity_events e WHERE e.user_id = u.id AND e.event_type = 'PAGE_VIEW') AS page_view_count
    FROM users u
    LEFT JOIN LATERAL (
        SELECT
            MAX(e.created_at) AS last_event_at,
            (
                SELECT e2.ip_address
                FROM user_activity_events e2
                WHERE e2.user_id = u.id
                ORDER BY e2.created_at DESC
                LIMIT 1
            ) AS last_ip,
            COUNT(*) AS event_count
        FROM user_activity_events e
        WHERE e.user_id = u.id
    ) stats ON TRUE
    WHERE u.active = TRUE
    ORDER BY u.created_at DESC;
END;
$$;
