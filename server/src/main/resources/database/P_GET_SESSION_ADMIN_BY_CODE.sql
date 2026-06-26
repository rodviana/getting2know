CREATE OR REPLACE FUNCTION p_get_session_admin_by_code(p_code VARCHAR)
RETURNS TABLE (
    session_id       BIGINT,
    code             VARCHAR,
    status           VARCHAR,
    format           VARCHAR,
    host_username    VARCHAR,
    host_name        VARCHAR,
    partner_username VARCHAR,
    partner_name     VARCHAR,
    question_count   INT,
    answered_pairs   INT,
    answer_total     INT,
    created_at       TIMESTAMP,
    finished_at      TIMESTAMP
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        s.id AS session_id,
        s.code,
        s.status,
        s.format,
        hu.email AS host_username,
        hu.name AS host_name,
        pu.email AS partner_username,
        pu.name AS partner_name,
        (SELECT COUNT(*)::INT FROM session_questions sq WHERE sq.session_id = s.id) AS question_count,
        (
            SELECT COUNT(*)::INT
            FROM session_questions sq
            WHERE sq.session_id = s.id
              AND (SELECT COUNT(*) FROM session_answers sa WHERE sa.session_question_id = sq.id) >= 2
        ) AS answered_pairs,
        (SELECT COUNT(*)::INT FROM session_answers sa WHERE sa.session_id = s.id) AS answer_total,
        s.created_at,
        s.finished_at
    FROM pair_sessions s
    JOIN users hu ON hu.id = s.host_user_id
    LEFT JOIN users pu ON pu.id = s.partner_user_id
    WHERE UPPER(TRIM(s.code)) = UPPER(TRIM(p_code))
    LIMIT 1;
END;
$$;
