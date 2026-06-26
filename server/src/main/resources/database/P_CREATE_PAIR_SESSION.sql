CREATE OR REPLACE FUNCTION p_create_pair_session(p_host_user_id BIGINT, p_code VARCHAR, p_format VARCHAR)
RETURNS TABLE (
    session_id BIGINT,
    code       VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    INSERT INTO pair_sessions (code, host_user_id, status, format)
    VALUES (UPPER(TRIM(p_code)), p_host_user_id, 'LOBBY', UPPER(TRIM(p_format)))
    RETURNING id, pair_sessions.code;
END;
$$;
