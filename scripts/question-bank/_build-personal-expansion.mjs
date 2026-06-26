import { writeFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath, pathToFileURL } from 'node:url';

const dir = dirname(fileURLToPath(import.meta.url));
const sectionsDir = join(dir, '_sections');

const CATEGORIES = [
  { id: 'about_you', count: 50 },
  { id: 'personality', count: 50 },
  { id: 'hobbies', count: 50 },
  { id: 'family', count: 50 },
  { id: 'friends', count: 50 },
  { id: 'relationship', count: 50 },
  { id: 'jealousy', count: 50 },
  { id: 'communication', count: 50 },
  { id: 'money', count: 50 },
  { id: 'career', count: 50 },
  { id: 'future', count: 50 },
  { id: 'marriage', count: 50 },
  { id: 'children', count: 50 },
  { id: 'home_routine', count: 50 },
  { id: 'health', count: 50 },
  { id: 'spirituality', count: 50 },
  { id: 'social_media', count: 50 },
  { id: 'values', count: 50 },
  { id: 'hypotheticals', count: 50 },
  { id: 'about_us', count: 30 },
];

function serializeQuestion(q) {
  if (typeof q === 'string') {
    return JSON.stringify(q);
  }
  const parts = [`text: ${JSON.stringify(q.text)}`, 'type: QuestionType.SINGLE_CHOICE'];
  if (q.options) {
    parts.push(`options: ${JSON.stringify(q.options)}`);
  }
  return `{ ${parts.join(', ')} }`;
}

function serializeSection(categoryId, questions) {
  const lines = questions.map((q) => `      ${serializeQuestion(q)},`);
  return `  {
    categoryId: '${categoryId}',
    questions: [
${lines.join('\n')}
    ],
  }`;
}

async function main() {
  const sections = [];
  const counts = {};
  let total = 0;

  for (const { id, count } of CATEGORIES) {
    const mod = await import(pathToFileURL(join(sectionsDir, `${id}.mjs`)).href);
    const questions = mod.default;
    if (questions.length !== count) {
      throw new Error(`${id}: expected ${count}, got ${questions.length}`);
    }
    sections.push(serializeSection(id, questions));
    counts[id] = questions.length;
    total += questions.length;
  }

  const content = `import { QuestionType } from '../../client/src/constants/questionTypes.js';

export const PERSONAL_EXPANSION_SECTIONS = [
${sections.join(',\n')}
];
`;

  const outPath = join(dir, 'personal-expansion.mjs');
  writeFileSync(outPath, content, 'utf8');

  console.log('Wrote', outPath);
  console.log('Total questions:', total);
  for (const [id, n] of Object.entries(counts)) {
    console.log(`  ${id}: ${n}`);
  }
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
