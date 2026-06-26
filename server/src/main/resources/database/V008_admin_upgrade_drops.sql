-- Drops necessários ao migrar banco EXISTENTE para admin (return type mudou).
-- Seguro reexecutar: IF EXISTS.

DROP FUNCTION IF EXISTS p_find_user_by_email(VARCHAR);
DROP FUNCTION IF EXISTS p_find_user_by_id(BIGINT);
