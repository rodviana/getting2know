CREATE OR REPLACE FUNCTION p_upsert_session_answer(
    p_session_id          BIGINT,
    p_session_question_id BIGINT,
    p_user_id             BIGINT,
    p_answer              JSONB
)
RETURNS BIGINT
LANGUAGE plpgsql
AS $$
DECLARE
    v_id BIGINT;
BEGIN
    INSERT INTO session_answers (session_id, session_question_id, user_id, answer)
    VALUES (p_session_id, p_session_question_id, p_user_id, p_answer)
    ON CONFLICT (session_question_id, user_id)
    DO UPDATE SET answer = EXCLUDED.answer, created_at = NOW()
    RETURNING id INTO v_id;
    RETURN v_id;
END;
$$;
