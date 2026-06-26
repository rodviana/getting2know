ALTER TABLE questions
    ADD COLUMN IF NOT EXISTS is_system BOOLEAN NOT NULL DEFAULT FALSE;

CREATE INDEX IF NOT EXISTS idx_questions_system ON questions (is_system) WHERE is_system = TRUE;

-- Conta interna — não é para login; só dona das perguntas padrão do sistema.
INSERT INTO users (email, password, name)
VALUES (
    'system@getting2know.internal',
    '$2b$10$RJRjLHhMLFc7/Dm6n.45a.6GGFd3bE94GIgUwkzVx3PpcDzZiUvwC',
    'Sistema'
)
ON CONFLICT (email) DO NOTHING;
