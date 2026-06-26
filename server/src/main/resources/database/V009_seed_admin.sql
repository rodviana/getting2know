-- Admin user (password: tibianonato2026, BCrypt strength 10)
INSERT INTO users (email, password, name, role)
VALUES (
    'admin',
    '$2a$10$SW6eqOvFlWP4mvDkOvxpyOME9SUzBmnDf.crmgsOe8U4PGrVoAOB6',
    'Admin',
    'ADMIN'
)
ON CONFLICT (email) DO UPDATE
SET role = 'ADMIN',
    password = EXCLUDED.password,
    name = EXCLUDED.name;
