#!/usr/bin/env bash
# Aplica migration de admin em banco EXISTENTE (sem dropar volume).
# Uso na VPS: bash scripts/apply-admin-migration.sh

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DB_DIR="$ROOT/server/src/main/resources/database"
CONTAINER="${GETTING2KNOW_DB_CONTAINER:-getting2know-db}"

run_sql() {
  local file="$1"
  echo ">> $(basename "$file")"
  docker exec -i "$CONTAINER" psql -v ON_ERROR_STOP=1 -U postgres -d getting2know < "$file"
}

run_sql "$DB_DIR/V008_schema_admin_activity.sql"
run_sql "$DB_DIR/P_FIND_USER_BY_EMAIL.sql"
run_sql "$DB_DIR/P_FIND_USER_BY_ID.sql"
run_sql "$DB_DIR/V009_seed_admin.sql"
run_sql "$DB_DIR/P_INSERT_ACTIVITY_EVENT.sql"
run_sql "$DB_DIR/P_LIST_ACTIVITY_EVENTS.sql"
run_sql "$DB_DIR/P_COUNT_ACTIVITY_EVENTS.sql"
run_sql "$DB_DIR/P_ADMIN_DASHBOARD_STATS.sql"
run_sql "$DB_DIR/P_LIST_USERS_ADMIN.sql"
run_sql "$DB_DIR/P_LIST_SESSIONS_ADMIN.sql"
run_sql "$DB_DIR/P_COUNT_SESSIONS_ADMIN.sql"
run_sql "$DB_DIR/P_GET_SESSION_ADMIN_BY_CODE.sql"
run_sql "$DB_DIR/P_LIST_SESSION_QUESTIONS_ADMIN.sql"
run_sql "$DB_DIR/P_ADMIN_QUESTION_RANKING.sql"
run_sql "$DB_DIR/P_ADMIN_ANALYTICS_INSIGHTS.sql"
run_sql "$DB_DIR/P_ADMIN_CATEGORY_BREAKDOWN.sql"

echo "Migration admin aplicada."
