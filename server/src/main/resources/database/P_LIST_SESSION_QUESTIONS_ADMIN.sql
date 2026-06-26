CREATE OR REPLACE FUNCTION p_list_session_questions_admin(p_session_code VARCHAR)
RETURNS TABLE (
    question_id      BIGINT,
    question_position INT,
    source_ref       VARCHAR,
    category_id      VARCHAR,
    type             VARCHAR,
    text             TEXT,
    answer_count     INT,
    is_system        BOOLEAN
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_session_id BIGINT;
BEGIN
    SELECT s.id INTO v_session_id
    FROM pair_sessions s
    WHERE UPPER(TRIM(p_session_code)) = UPPER(TRIM(s.code));

    IF v_session_id IS NULL THEN
        RETURN;
    END IF;

    RETURN QUERY
    SELECT
        sq.id AS question_id,
        sq.position AS question_position,
        sq.source_ref,
        sq.category_id,
        sq.type,
        sq.text,
        (SELECT COUNT(*)::INT FROM session_answers sa WHERE sa.session_question_id = sq.id) AS answer_count,
        COALESCE(q.is_system, sq.source_ref IS NOT NULL AND sq.source_ref ~ '^[0-9]+$') AS is_system
    FROM session_questions sq
    LEFT JOIN questions q ON q.id::TEXT = sq.source_ref
    WHERE sq.session_id = v_session_id
    ORDER BY sq.position;
END;
$$;
