CREATE OR REPLACE FUNCTION p_find_user_by_id(p_user_id BIGINT)
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
    WHERE u.id = p_user_id
      AND u.active = TRUE;
END;
$$;
