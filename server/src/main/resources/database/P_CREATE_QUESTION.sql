CREATE OR REPLACE FUNCTION p_create_question(
    p_user_id     BIGINT,
    p_category_id VARCHAR,
    p_type        VARCHAR,
    p_text        TEXT,
    p_options     JSONB
)
RETURNS BIGINT
LANGUAGE plpgsql
AS $$
DECLARE
    v_id BIGINT;
BEGIN
    INSERT INTO questions (user_id, category_id, type, text, options)
    VALUES (p_user_id, p_category_id, p_type, p_text, p_options)
    RETURNING id INTO v_id;
    RETURN v_id;
END;
$$;
