CREATE OR REPLACE FUNCTION p_find_question_by_id(p_question_id BIGINT, p_user_id BIGINT)
RETURNS TABLE (
    id          BIGINT,
    user_id     BIGINT,
    category_id VARCHAR,
    type        VARCHAR,
    text        TEXT,
    options     JSONB,
    created_at  TIMESTAMP,
    updated_at  TIMESTAMP
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT q.id, q.user_id, q.category_id, q.type, q.text, q.options, q.created_at, q.updated_at
    FROM questions q
    WHERE q.id = p_question_id
      AND q.user_id = p_user_id;
END;
$$;
