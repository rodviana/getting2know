ALTER TABLE users
    ADD COLUMN IF NOT EXISTS role VARCHAR(20) NOT NULL DEFAULT 'USER';

CREATE INDEX IF NOT EXISTS idx_users_role ON users (role);

CREATE TABLE IF NOT EXISTS user_activity_events (
    id          BIGSERIAL PRIMARY KEY,
    user_id     BIGINT REFERENCES users(id) ON DELETE SET NULL,
    username    VARCHAR(150),
    event_type  VARCHAR(50) NOT NULL,
    path        VARCHAR(500),
    ip_address  VARCHAR(45),
    user_agent  TEXT,
    metadata    JSONB,
    created_at  TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_activity_created_at ON user_activity_events (created_at DESC);
CREATE INDEX IF NOT EXISTS idx_activity_user_id ON user_activity_events (user_id);
CREATE INDEX IF NOT EXISTS idx_activity_event_type ON user_activity_events (event_type);
CREATE INDEX IF NOT EXISTS idx_activity_ip ON user_activity_events (ip_address);
CREATE INDEX IF NOT EXISTS idx_activity_username ON user_activity_events (LOWER(username));
