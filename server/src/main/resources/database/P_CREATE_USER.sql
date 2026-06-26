CREATE OR REPLACE FUNCTION p_create_user(
    p_email    VARCHAR,
    p_password VARCHAR,
    p_name     VARCHAR
)
RETURNS BIGINT
LANGUAGE plpgsql
AS $$
DECLARE
    v_id BIGINT;
BEGIN
    INSERT INTO users (email, password, name)
    VALUES (LOWER(TRIM(p_email)), p_password, TRIM(p_name))
    RETURNING id INTO v_id;
    RETURN v_id;
END;
$$;
