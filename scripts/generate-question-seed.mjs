import { writeFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { BUILT_IN_QUESTIONS } from '../client/src/constants/builtInQuestionBank.js';

const root = join(dirname(fileURLToPath(import.meta.url)), '..');
const databaseDir = join(root, 'server/src/main/resources/database');

function esc(value) {
  return value.replace(/'/g, "''");
}

function optionsSql(options) {
  if (!options?.length) return 'NULL';
  return `'${esc(JSON.stringify(options))}'::jsonb`;
}

function buildSeedSql(comment) {
  const inserts = BUILT_IN_QUESTIONS.map(
    (question) => `INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, '${esc(question.categoryId)}', '${question.type}', '${esc(question.text)}', ${optionsSql(question.options)}, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';`,
  );

  return `${comment}
-- Regenerar: node scripts/generate-question-seed.mjs

DELETE FROM questions WHERE is_system = TRUE;

${inserts.join('\n\n')}
`;
}

const v006 = buildSeedSql(
  '-- Seed inicial das perguntas padrão (banco novo via docker-entrypoint-initdb.d)',
);
const v007 = buildSeedSql(
  '-- Atualiza perguntas padrão do sistema (bancos que já rodaram V006 com versão antiga)',
);

writeFileSync(join(databaseDir, 'V006_seed_default_questions.sql'), v006);
writeFileSync(join(databaseDir, 'V007_seed_default_questions.sql'), v007);

console.log(`Wrote ${BUILT_IN_QUESTIONS.length} questions to:`);
console.log(`  ${join(databaseDir, 'V006_seed_default_questions.sql')}`);
console.log(`  ${join(databaseDir, 'V007_seed_default_questions.sql')}`);
