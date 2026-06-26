import { writeFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { QuestionType } from '../client/src/constants/questionTypes.js';
import { CORE_SECTIONS } from './question-bank/core-sections.mjs';
import { PERSONAL_EXPANSION_SECTIONS } from './question-bank/personal-expansion.mjs';
import { RELATION_SECTIONS } from './question-bank/relation-questions.mjs';

const root = join(dirname(fileURLToPath(import.meta.url)), '..');
const outPath = join(root, 'client/src/constants/builtInQuestionBank.js');

function mergeSections(core, ...extras) {
  const byCategory = new Map();

  for (const section of core) {
    byCategory.set(section.categoryId, [...section.questions]);
  }

  for (const batch of extras) {
    for (const section of batch) {
      const list = byCategory.get(section.categoryId) ?? [];
      list.push(...section.questions);
      byCategory.set(section.categoryId, list);
    }
  }

  return [...byCategory.entries()].map(([categoryId, questions]) => ({
    categoryId,
    questions: dedupeQuestions(questions),
  }));
}

function normalizeText(entry) {
  return (typeof entry === 'string' ? entry : entry.text).trim().toLowerCase();
}

function dedupeQuestions(questions) {
  const seen = new Set();
  const result = [];
  for (const entry of questions) {
    const key = normalizeText(entry);
    if (seen.has(key)) continue;
    seen.add(key);
    result.push(entry);
  }
  return result;
}

const mergedSections = mergeSections(CORE_SECTIONS, PERSONAL_EXPANSION_SECTIONS, RELATION_SECTIONS);

const totalQuestions = mergedSections.reduce((sum, s) => sum + s.questions.length, 0);

const output = `import { QuestionType } from './questionTypes.js';

const YES_NO_DEPENDS = ['Sim', 'Não', 'Depende'];

const BANK_SECTIONS = ${JSON.stringify(mergedSections, null, 2)
  .replace(/"type": "SINGLE_CHOICE"/g, 'type: QuestionType.SINGLE_CHOICE')
  .replace(/"type": "TEXT"/g, 'type: QuestionType.TEXT')
  .replace(/"type": "MULTIPLE_CHOICE"/g, 'type: QuestionType.MULTIPLE_CHOICE')};

function normalizeQuestion(entry) {
  if (typeof entry === 'string') {
    return { text: entry, type: QuestionType.TEXT };
  }
  return {
    text: entry.text,
    type: entry.type ?? QuestionType.TEXT,
    options: entry.options,
  };
}

export const BUILT_IN_QUESTIONS = BANK_SECTIONS.flatMap((section) =>
  section.questions.map((entry, index) => {
    const question = normalizeQuestion(entry);
    return {
      id: \`builtin-\${section.categoryId}-\${index + 1}\`,
      categoryId: section.categoryId,
      type: question.type,
      text: question.text,
      ...(question.options ? { options: question.options } : {}),
      custom: false,
    };
  }),
);

export const BUILT_IN_QUESTION_COUNT = BUILT_IN_QUESTIONS.length;

export { BANK_SECTIONS };
`;

writeFileSync(outPath, output);

console.log(`Built ${totalQuestions} questions across ${mergedSections.length} categories`);
mergedSections.forEach((section) => {
  console.log(`  ${section.categoryId}: ${section.questions.length}`);
});
