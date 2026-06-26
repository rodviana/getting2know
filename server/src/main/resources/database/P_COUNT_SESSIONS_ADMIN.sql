CREATE OR REPLACE FUNCTION p_count_sessions_admin(
    p_status    VARCHAR,
    p_username  VARCHAR
)
RETURNS BIGINT
LANGUAGE plpgsql
AS $$
DECLARE
    v_total BIGINT;
BEGIN
    SELECT COUNT(*)
    INTO v_total
    FROM pair_sessions s
    JOIN users hu ON hu.id = s.host_user_id
    LEFT JOIN users pu ON pu.id = s.partner_user_id
    WHERE (p_status IS NULL OR p_status = '' OR s.status = UPPER(TRIM(p_status)))
      AND (
          p_username IS NULL OR p_username = ''
          OR LOWER(hu.email) LIKE LOWER('%' || TRIM(p_username) || '%')
          OR LOWER(pu.email) LIKE LOWER('%' || TRIM(p_username) || '%')
          OR LOWER(hu.name) LIKE LOWER('%' || TRIM(p_username) || '%')
          OR LOWER(pu.name) LIKE LOWER('%' || TRIM(p_username) || '%')
      );

    RETURN v_total;
END;
$$;
