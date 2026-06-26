CREATE OR REPLACE FUNCTION p_find_pair_session_by_code(p_code VARCHAR)
RETURNS TABLE (
    id              BIGINT,
    code            VARCHAR,
    host_user_id    BIGINT,
    partner_user_id BIGINT,
    status          VARCHAR,
    current_index   INT,
    format          VARCHAR,
    created_at      TIMESTAMP,
    finished_at     TIMESTAMP
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT s.id, s.code, s.host_user_id, s.partner_user_id, s.status, s.current_index, s.format, s.created_at, s.finished_at
    FROM pair_sessions s
    WHERE UPPER(TRIM(p_code)) = UPPER(TRIM(s.code));
END;
$$;
