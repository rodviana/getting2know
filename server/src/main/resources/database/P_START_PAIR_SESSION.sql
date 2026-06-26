CREATE OR REPLACE FUNCTION p_start_pair_session(p_session_id BIGINT)
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
    SET status = 'PLAYING'
    WHERE s.id = p_session_id
      AND s.partner_user_id IS NOT NULL
      AND s.status = 'LOBBY'
    RETURNING s.id, s.code, s.host_user_id, s.partner_user_id, s.status, s.current_index, s.format, s.created_at, s.finished_at;
END;
$$;
