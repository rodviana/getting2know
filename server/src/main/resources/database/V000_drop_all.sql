-- Manual schema reset (run via psql when you need a clean database)
DROP FUNCTION IF EXISTS p_find_user_by_email(VARCHAR);
DROP TABLE IF EXISTS users CASCADE;
