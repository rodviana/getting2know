#!/usr/bin/env bash
# Atualiza perguntas do sistema em banco EXISTENTE (2081+ perguntas).
# Uso na VPS: bash scripts/apply-question-bank-upgrade.sh

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DB_DIR="$ROOT/server/src/main/resources/database"
CONTAINER="${GETTING2KNOW_DB_CONTAINER:-getting2know-db}"

if ! docker ps --format '{{.Names}}' | grep -qx "$CONTAINER"; then
  echo "Container $CONTAINER não está rodando."
  exit 1
fi

echo ">> V007_seed_default_questions.sql (pode levar alguns minutos)"
docker exec -i "$CONTAINER" psql -v ON_ERROR_STOP=1 -U postgres -d getting2know < "$DB_DIR/V007_seed_default_questions.sql"

echo "Banco de perguntas atualizado."
