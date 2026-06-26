CREATE OR REPLACE FUNCTION p_delete_question(p_question_id BIGINT, p_user_id BIGINT)
RETURNS BIGINT
LANGUAGE plpgsql
AS $$
DECLARE
    v_id BIGINT;
BEGIN
    DELETE FROM questions
    WHERE id = p_question_id
      AND user_id = p_user_id
    RETURNING id INTO v_id;
    RETURN v_id;
END;
$$;
