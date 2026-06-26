CREATE OR REPLACE FUNCTION p_count_activity_events(
    p_username VARCHAR,
    p_event_type VARCHAR,
    p_ip_address VARCHAR
)
RETURNS BIGINT
LANGUAGE plpgsql
AS $$
DECLARE
    v_total BIGINT;
BEGIN
    SELECT COUNT(*)
    INTO v_total
    FROM user_activity_events e
    WHERE (p_username IS NULL OR p_username = '' OR LOWER(e.username) LIKE LOWER('%' || TRIM(p_username) || '%'))
      AND (p_event_type IS NULL OR p_event_type = '' OR e.event_type = UPPER(TRIM(p_event_type)))
      AND (p_ip_address IS NULL OR p_ip_address = '' OR e.ip_address LIKE TRIM(p_ip_address) || '%');

    RETURN v_total;
END;
$$;
