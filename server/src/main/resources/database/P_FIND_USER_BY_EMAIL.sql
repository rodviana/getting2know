DROP FUNCTION IF EXISTS p_find_user_by_email(VARCHAR);

CREATE OR REPLACE FUNCTION p_find_user_by_email(p_email VARCHAR)
RETURNS TABLE (
    id       BIGINT,
    email    VARCHAR,
    password VARCHAR,
    name     VARCHAR,
    active   BOOLEAN,
    role     VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT u.id, u.email, u.password, u.name, u.active, u.role
    FROM users u
    WHERE LOWER(u.email) = LOWER(TRIM(p_email))
      AND u.active = TRUE;
END;
$$;
