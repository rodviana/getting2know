CREATE OR REPLACE FUNCTION p_insert_activity_event(
    p_user_id BIGINT,
    p_username VARCHAR,
    p_event_type VARCHAR,
    p_path VARCHAR,
    p_ip_address VARCHAR,
    p_user_agent TEXT,
    p_metadata JSONB
)
RETURNS BIGINT
LANGUAGE plpgsql
AS $$
DECLARE
    v_id BIGINT;
BEGIN
    INSERT INTO user_activity_events (
        user_id,
        username,
        event_type,
        path,
        ip_address,
        user_agent,
        metadata
    )
    VALUES (
        p_user_id,
        NULLIF(TRIM(p_username), ''),
        UPPER(TRIM(p_event_type)),
        NULLIF(TRIM(p_path), ''),
        NULLIF(TRIM(p_ip_address), ''),
        NULLIF(TRIM(p_user_agent), ''),
        p_metadata
    )
    RETURNING id INTO v_id;

    RETURN v_id;
END;
$$;
