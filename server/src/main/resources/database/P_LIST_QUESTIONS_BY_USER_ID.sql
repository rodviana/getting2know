CREATE OR REPLACE FUNCTION p_list_questions_by_user_id(p_user_id BIGINT)
RETURNS TABLE (
    id          BIGINT,
    category_id VARCHAR,
    type        VARCHAR,
    text        TEXT,
    options     JSONB,
    is_system   BOOLEAN,
    created_at  TIMESTAMP,
    updated_at  TIMESTAMP
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT q.id, q.category_id, q.type, q.text, q.options, q.is_system, q.created_at, q.updated_at
    FROM questions q
    WHERE q.user_id = p_user_id OR q.is_system = TRUE
    ORDER BY q.is_system DESC, q.category_id ASC, q.id ASC;
END;
$$;
