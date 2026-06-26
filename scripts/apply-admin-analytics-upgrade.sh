#!/usr/bin/env bash
# Atualiza procedures de analytics admin em banco EXISTENTE.
# Uso: bash scripts/apply-admin-analytics-upgrade.sh

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DB_DIR="$ROOT/server/src/main/resources/database"
CONTAINER="${GETTING2KNOW_DB_CONTAINER:-getting2know-db}"

run_sql() {
  local file="$1"
  echo ">> $(basename "$file")"
  docker exec -i "$CONTAINER" psql -v ON_ERROR_STOP=1 -U postgres -d getting2know < "$file"
}

run_sql "$DB_DIR/P_LIST_USERS_ADMIN.sql"
run_sql "$DB_DIR/P_LIST_SESSIONS_ADMIN.sql"
run_sql "$DB_DIR/P_COUNT_SESSIONS_ADMIN.sql"
run_sql "$DB_DIR/P_GET_SESSION_ADMIN_BY_CODE.sql"
run_sql "$DB_DIR/P_LIST_SESSION_QUESTIONS_ADMIN.sql"
run_sql "$DB_DIR/P_ADMIN_QUESTION_RANKING.sql"
run_sql "$DB_DIR/P_ADMIN_ANALYTICS_INSIGHTS.sql"
run_sql "$DB_DIR/P_ADMIN_CATEGORY_BREAKDOWN.sql"

echo "Analytics admin atualizado."
