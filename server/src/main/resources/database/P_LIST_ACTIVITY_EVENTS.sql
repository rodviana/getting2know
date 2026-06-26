CREATE OR REPLACE FUNCTION p_list_activity_events(
    p_limit INT,
    p_offset INT,
    p_username VARCHAR,
    p_event_type VARCHAR,
    p_ip_address VARCHAR
)
RETURNS TABLE (
    id          BIGINT,
    user_id     BIGINT,
    username    VARCHAR,
    event_type  VARCHAR,
    path        VARCHAR,
    ip_address  VARCHAR,
    user_agent  TEXT,
    metadata    JSONB,
    created_at  TIMESTAMP
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        e.id,
        e.user_id,
        e.username,
        e.event_type,
        e.path,
        e.ip_address,
        e.user_agent,
        e.metadata,
        e.created_at
    FROM user_activity_events e
    WHERE (p_username IS NULL OR p_username = '' OR LOWER(e.username) LIKE LOWER('%' || TRIM(p_username) || '%'))
      AND (p_event_type IS NULL OR p_event_type = '' OR e.event_type = UPPER(TRIM(p_event_type)))
      AND (p_ip_address IS NULL OR p_ip_address = '' OR e.ip_address LIKE TRIM(p_ip_address) || '%')
    ORDER BY e.created_at DESC
    LIMIT GREATEST(COALESCE(p_limit, 50), 1)
    OFFSET GREATEST(COALESCE(p_offset, 0), 0);
END;
$$;
