CREATE TABLE IF NOT EXISTS questions (
    id          BIGSERIAL PRIMARY KEY,
    user_id     BIGINT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    category_id VARCHAR(50) NOT NULL,
    type        VARCHAR(30) NOT NULL,
    text        TEXT NOT NULL,
    options     JSONB,
    is_system   BOOLEAN NOT NULL DEFAULT FALSE,
    created_at  TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at  TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_questions_user_id ON questions (user_id);

CREATE TABLE IF NOT EXISTS pair_sessions (
    id              BIGSERIAL PRIMARY KEY,
    code            VARCHAR(4) NOT NULL UNIQUE,
    host_user_id    BIGINT NOT NULL REFERENCES users(id),
    partner_user_id BIGINT REFERENCES users(id),
    status          VARCHAR(20) NOT NULL DEFAULT 'LOBBY',
    current_index   INT NOT NULL DEFAULT 0,
    format          VARCHAR(20) NOT NULL DEFAULT 'ASYNC',
    created_at      TIMESTAMP NOT NULL DEFAULT NOW(),
    finished_at     TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_pair_sessions_code ON pair_sessions (UPPER(code));
CREATE INDEX IF NOT EXISTS idx_pair_sessions_host ON pair_sessions (host_user_id);
CREATE INDEX IF NOT EXISTS idx_pair_sessions_partner ON pair_sessions (partner_user_id);

CREATE TABLE IF NOT EXISTS session_questions (
    id          BIGSERIAL PRIMARY KEY,
    session_id  BIGINT NOT NULL REFERENCES pair_sessions(id) ON DELETE CASCADE,
    position    INT NOT NULL,
    source_ref  VARCHAR(100),
    category_id VARCHAR(50) NOT NULL,
    type        VARCHAR(30) NOT NULL,
    text        TEXT NOT NULL,
    options     JSONB
);

CREATE INDEX IF NOT EXISTS idx_session_questions_session ON session_questions (session_id);

CREATE TABLE IF NOT EXISTS session_answers (
    id                  BIGSERIAL PRIMARY KEY,
    session_id          BIGINT NOT NULL REFERENCES pair_sessions(id) ON DELETE CASCADE,
    session_question_id BIGINT NOT NULL REFERENCES session_questions(id) ON DELETE CASCADE,
    user_id             BIGINT NOT NULL REFERENCES users(id),
    answer              JSONB NOT NULL,
    created_at          TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE (session_question_id, user_id)
);

CREATE INDEX IF NOT EXISTS idx_session_answers_session ON session_answers (session_id);
