CREATE OR REPLACE FUNCTION p_list_user_pair_sessions(p_user_id BIGINT)
RETURNS TABLE (
    code            VARCHAR,
    status          VARCHAR,
    format          VARCHAR,
    host_user_id    BIGINT,
    partner_user_id BIGINT,
    host_name       VARCHAR,
    partner_name    VARCHAR,
    host_email      VARCHAR,
    partner_email   VARCHAR,
    created_at      TIMESTAMP,
    finished_at     TIMESTAMP,
    question_count  INT,
    answered_pairs  INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        s.code,
        s.status,
        s.format,
        s.host_user_id,
        s.partner_user_id,
        hu.name AS host_name,
        pu.name AS partner_name,
        hu.email AS host_email,
        pu.email AS partner_email,
        s.created_at,
        s.finished_at,
        (SELECT COUNT(*)::INT FROM session_questions sq WHERE sq.session_id = s.id) AS question_count,
        (
            SELECT COUNT(*)::INT
            FROM session_questions sq
            WHERE sq.session_id = s.id
              AND (
                  SELECT COUNT(*) FROM session_answers sa
                  WHERE sa.session_question_id = sq.id
              ) >= 2
        ) AS answered_pairs
    FROM pair_sessions s
    JOIN users hu ON hu.id = s.host_user_id
    LEFT JOIN users pu ON pu.id = s.partner_user_id
    WHERE s.host_user_id = p_user_id OR s.partner_user_id = p_user_id
    ORDER BY s.created_at DESC;
END;
$$;
