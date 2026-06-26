CREATE OR REPLACE FUNCTION p_insert_session_question(
    p_session_id  BIGINT,
    p_position    INT,
    p_source_ref  VARCHAR,
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
    INSERT INTO session_questions (session_id, position, source_ref, category_id, type, text, options)
    VALUES (p_session_id, p_position, p_source_ref, p_category_id, p_type, p_text, p_options)
    RETURNING id INTO v_id;
    RETURN v_id;
END;
$$;
