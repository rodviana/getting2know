CREATE OR REPLACE FUNCTION p_admin_question_ranking(p_limit INT)
RETURNS TABLE (
    rank_position        BIGINT,
    question_key         TEXT,
    source_ref           VARCHAR,
    question_text        TEXT,
    category_id          VARCHAR,
    question_type        VARCHAR,
    is_system            BOOLEAN,
    session_count        BIGINT,
    unique_hosts         BIGINT,
    unique_partners      BIGINT,
    fully_answered_count BIGINT,
    partial_answer_count BIGINT,
    total_answer_slots   BIGINT,
    completion_rate      NUMERIC,
    reuse_rate           NUMERIC,
    last_used_at         TIMESTAMP
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    WITH question_usage AS (
        SELECT
            COALESCE(NULLIF(TRIM(sq.source_ref), ''), 'text:' || MD5(LOWER(TRIM(sq.text)))) AS q_key,
            sq.source_ref,
            sq.text,
            sq.category_id,
            sq.type,
            sq.session_id,
            s.host_user_id,
            s.partner_user_id,
            s.created_at AS session_created_at,
            sq.id AS session_question_id,
            (SELECT COUNT(*) FROM session_answers sa WHERE sa.session_question_id = sq.id) AS answers_on_question
        FROM session_questions sq
        JOIN pair_sessions s ON s.id = sq.session_id
    ),
    aggregated AS (
        SELECT
            qu.q_key,
            MAX(qu.source_ref) AS source_ref,
            MAX(qu.text) AS question_text,
            MAX(qu.category_id) AS category_id,
            MAX(qu.type) AS question_type,
            COUNT(DISTINCT qu.session_id) AS session_count,
            COUNT(DISTINCT qu.host_user_id) AS unique_hosts,
            COUNT(DISTINCT qu.partner_user_id) FILTER (WHERE qu.partner_user_id IS NOT NULL) AS unique_partners,
            COUNT(*) FILTER (WHERE qu.answers_on_question >= 2) AS fully_answered_count,
            COUNT(*) FILTER (WHERE qu.answers_on_question = 1) AS partial_answer_count,
            SUM(qu.answers_on_question)::BIGINT AS total_answer_slots,
            MAX(qu.session_created_at) AS last_used_at
        FROM question_usage qu
        GROUP BY qu.q_key
    )
    SELECT
        ROW_NUMBER() OVER (ORDER BY a.session_count DESC, a.fully_answered_count DESC, a.last_used_at DESC) AS rank_position,
        a.q_key AS question_key,
        a.source_ref::VARCHAR,
        a.question_text,
        a.category_id::VARCHAR,
        a.question_type::VARCHAR,
        CASE
            WHEN a.source_ref ~ '^[0-9]+$' THEN COALESCE(
                (SELECT q.is_system FROM questions q WHERE q.id = a.source_ref::BIGINT LIMIT 1),
                FALSE
            )
            ELSE FALSE
        END AS is_system,
        a.session_count,
        a.unique_hosts,
        a.unique_partners,
        a.fully_answered_count,
        a.partial_answer_count,
        a.total_answer_slots,
        CASE
            WHEN a.session_count = 0 THEN 0
            ELSE ROUND((a.fully_answered_count::NUMERIC / a.session_count) * 100, 1)
        END AS completion_rate,
        CASE
            WHEN a.unique_hosts = 0 THEN 0
            ELSE ROUND((a.session_count::NUMERIC / a.unique_hosts), 2)
        END AS reuse_rate,
        a.last_used_at
    FROM aggregated a
    ORDER BY rank_position
    LIMIT GREATEST(COALESCE(p_limit, 50), 1);
END;
$$;
