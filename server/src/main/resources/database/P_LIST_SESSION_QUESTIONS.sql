CREATE OR REPLACE FUNCTION p_list_session_questions(p_session_id BIGINT)
RETURNS TABLE (
    id          BIGINT,
    session_id  BIGINT,
    "position"  INT,
    source_ref  VARCHAR,
    category_id VARCHAR,
    type        VARCHAR,
    text        TEXT,
    options     JSONB
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT sq.id, sq.session_id, sq.position, sq.source_ref, sq.category_id, sq.type, sq.text, sq.options
    FROM session_questions sq
    WHERE sq.session_id = p_session_id
    ORDER BY sq.position ASC;
END;
$$;
