CREATE OR REPLACE FUNCTION p_list_questions_by_user_id(p_user_id BIGINT)
RETURNS TABLE (
    id          BIGINT,
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
    SELECT q.id, q.category_id, q.type, q.text, q.options, q.created_at, q.updated_at
    FROM questions q
    WHERE q.user_id = p_user_id
    ORDER BY q.created_at DESC;
END;
$$;
