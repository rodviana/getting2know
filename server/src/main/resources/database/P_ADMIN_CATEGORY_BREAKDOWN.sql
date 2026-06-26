CREATE OR REPLACE FUNCTION p_admin_category_breakdown()
RETURNS TABLE (
    category_id    VARCHAR,
    usage_count    BIGINT,
    session_count  BIGINT,
    completion_rate NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        sq.category_id,
        COUNT(*) AS usage_count,
        COUNT(DISTINCT sq.session_id) AS session_count,
        CASE WHEN COUNT(*) = 0 THEN 0
            ELSE ROUND(
                (COUNT(*) FILTER (WHERE (
                    SELECT COUNT(*) FROM session_answers sa WHERE sa.session_question_id = sq.id
                ) >= 2)::NUMERIC / COUNT(*)) * 100, 1)
        END AS completion_rate
    FROM session_questions sq
    GROUP BY sq.category_id
    ORDER BY usage_count DESC;
END;
$$;
