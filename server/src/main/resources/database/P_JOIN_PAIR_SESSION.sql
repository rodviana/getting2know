CREATE OR REPLACE FUNCTION p_join_pair_session(p_code VARCHAR, p_partner_user_id BIGINT)
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
    SET partner_user_id = p_partner_user_id
    WHERE UPPER(TRIM(s.code)) = UPPER(TRIM(p_code))
      AND s.partner_user_id IS NULL
      AND s.host_user_id <> p_partner_user_id
    RETURNING s.id, s.code, s.host_user_id, s.partner_user_id, s.status, s.current_index, s.format, s.created_at, s.finished_at;
END;
$$;
