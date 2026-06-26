CREATE OR REPLACE FUNCTION p_count_answers_for_question(p_session_question_id BIGINT)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    v_count INT;
BEGIN
    SELECT COUNT(*)::INT INTO v_count
    FROM session_answers sa
    WHERE sa.session_question_id = p_session_question_id;
    RETURN v_count;
END;
$$;
