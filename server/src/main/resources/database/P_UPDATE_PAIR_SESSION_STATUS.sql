CREATE OR REPLACE FUNCTION p_update_pair_session_status(
    p_session_id BIGINT,
    p_status     VARCHAR,
    p_current_index INT,
    p_finished_at TIMESTAMP
)
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
    UPDATE pair_sessions s
    SET status = p_status,
        current_index = p_current_index,
        finished_at = COALESCE(p_finished_at, s.finished_at)
    WHERE s.id = p_session_id
    RETURNING s.id, s.code, s.host_user_id, s.partner_user_id, s.status, s.current_index, s.format, s.created_at, s.finished_at;
END;
$$;
