CREATE OR REPLACE FUNCTION p_update_question(
    p_question_id BIGINT,
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
    UPDATE questions
    SET category_id = p_category_id,
        type = p_type,
        text = p_text,
        options = p_options,
        updated_at = NOW()
    WHERE id = p_question_id
      AND user_id = p_user_id
    RETURNING id INTO v_id;
    RETURN v_id;
END;
$$;
