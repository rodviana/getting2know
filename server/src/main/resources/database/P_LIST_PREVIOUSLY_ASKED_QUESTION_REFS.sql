CREATE OR REPLACE FUNCTION p_list_previously_asked_question_refs(
    p_user_id BIGINT,
    p_partner_user_id BIGINT
)
RETURNS TABLE (
    source_ref VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT DISTINCT sq.source_ref
    FROM session_questions sq
    JOIN pair_sessions s ON s.id = sq.session_id
    WHERE s.partner_user_id IS NOT NULL
      AND sq.source_ref IS NOT NULL
      AND TRIM(sq.source_ref) <> ''
      AND (
          (s.host_user_id = p_user_id AND s.partner_user_id = p_partner_user_id)
          OR (s.host_user_id = p_partner_user_id AND s.partner_user_id = p_user_id)
      )
    ORDER BY sq.source_ref;
END;
$$;
