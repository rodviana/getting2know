CREATE OR REPLACE FUNCTION p_admin_analytics_insights()
RETURNS TABLE (
    total_sessions           BIGINT,
    finished_sessions        BIGINT,
    lobby_sessions           BIGINT,
    playing_sessions         BIGINT,
    live_sessions            BIGINT,
    async_sessions           BIGINT,
    avg_questions_per_session NUMERIC,
    median_questions_per_session NUMERIC,
    total_question_slots     BIGINT,
    total_answers            BIGINT,
    overall_completion_rate  NUMERIC,
    top_category_id          VARCHAR,
    top_category_uses        BIGINT,
    system_question_slots    BIGINT,
    custom_question_slots    BIGINT,
    unique_question_keys     BIGINT,
    repeat_question_rate     NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    WITH session_stats AS (
        SELECT
            s.id,
            s.status,
            s.format,
            (SELECT COUNT(*) FROM session_questions sq WHERE sq.session_id = s.id) AS q_count
        FROM pair_sessions s
    ),
    category_stats AS (
        SELECT sq.category_id, COUNT(*) AS uses
        FROM session_questions sq
        GROUP BY sq.category_id
        ORDER BY uses DESC
        LIMIT 1
    ),
    question_keys AS (
        SELECT
            COALESCE(NULLIF(TRIM(sq.source_ref), ''), 'text:' || MD5(LOWER(TRIM(sq.text)))) AS q_key,
            sq.id,
            CASE
                WHEN sq.source_ref ~ '^[0-9]+$' AND EXISTS (
                    SELECT 1 FROM questions q WHERE q.id = sq.source_ref::BIGINT AND q.is_system = TRUE
                ) THEN TRUE
                ELSE FALSE
            END AS is_system
        FROM session_questions sq
    ),
    totals AS (
        SELECT COUNT(*) AS total_slots, COUNT(DISTINCT q_key) AS unique_keys
        FROM question_keys
    )
    SELECT
        (SELECT COUNT(*) FROM pair_sessions) AS total_sessions,
        (SELECT COUNT(*) FROM pair_sessions WHERE status = 'FINISHED') AS finished_sessions,
        (SELECT COUNT(*) FROM pair_sessions WHERE status = 'LOBBY') AS lobby_sessions,
        (SELECT COUNT(*) FROM pair_sessions WHERE status IN ('PLAYING', 'REVEAL')) AS playing_sessions,
        (SELECT COUNT(*) FROM pair_sessions WHERE format = 'LIVE') AS live_sessions,
        (SELECT COUNT(*) FROM pair_sessions WHERE format = 'ASYNC') AS async_sessions,
        (SELECT ROUND(AVG(q_count)::NUMERIC, 1) FROM session_stats) AS avg_questions_per_session,
        (SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY q_count)::NUMERIC FROM session_stats) AS median_questions_per_session,
        (SELECT COUNT(*) FROM session_questions) AS total_question_slots,
        (SELECT COUNT(*) FROM session_answers) AS total_answers,
        (
            SELECT CASE WHEN COUNT(*) = 0 THEN 0
                ELSE ROUND(
                    (COUNT(*) FILTER (WHERE (
                        SELECT COUNT(*) FROM session_answers sa WHERE sa.session_question_id = sq.id
                    ) >= 2)::NUMERIC / COUNT(*)) * 100, 1)
            END
            FROM session_questions sq
        ) AS overall_completion_rate,
        (SELECT category_id FROM category_stats) AS top_category_id,
        (SELECT uses FROM category_stats) AS top_category_uses,
        (SELECT COUNT(*) FROM question_keys WHERE is_system = TRUE) AS system_question_slots,
        (SELECT COUNT(*) FROM question_keys WHERE is_system = FALSE) AS custom_question_slots,
        (SELECT unique_keys FROM totals) AS unique_question_keys,
        (
            SELECT CASE WHEN unique_keys = 0 THEN 0
                ELSE ROUND(((total_slots - unique_keys)::NUMERIC / total_slots) * 100, 1)
            END
            FROM totals
        ) AS repeat_question_rate;
END;
$$;
