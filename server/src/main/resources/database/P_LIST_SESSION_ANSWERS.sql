CREATE OR REPLACE FUNCTION p_list_session_answers(p_session_id BIGINT)
RETURNS TABLE (
    id                  BIGINT,
    session_id          BIGINT,
    session_question_id BIGINT,
    user_id             BIGINT,
    answer              JSONB,
    created_at          TIMESTAMP
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT sa.id, sa.session_id, sa.session_question_id, sa.user_id, sa.answer, sa.created_at
    FROM session_answers sa
    WHERE sa.session_id = p_session_id;
END;
$$;
