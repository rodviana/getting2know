/**
 * Pacotes curados para montar sessões rapidamente.
 * categoryIds: temas incluídos; maxPerCategory + maxTotal limitam o tamanho.
 */
export const QUESTION_PACKS = [
  {
    id: 'icebreaker',
    title: 'Quebra-gelo',
    description: 'Leve e divertido — ideal para começar sem pressão.',
    emoji: '☕',
    categoryIds: ['about_you', 'hobbies', 'personality'],
    maxPerCategory: 3,
    maxTotal: 8,
  },
  {
    id: 'getting-deep',
    title: 'Conhecendo de verdade',
    description: 'Quem você é, o que valoriza e como se relaciona.',
    emoji: '🌊',
    categoryIds: ['about_you', 'values', 'relationship', 'personality'],
    maxPerCategory: 3,
    maxTotal: 10,
  },
  {
    id: 'us-two',
    title: 'Sobre nós',
    description: 'Perguntas diretas sobre vocês dois e o que esperam.',
    emoji: '💑',
    categoryIds: ['about_us'],
    maxTotal: 8,
  },
  {
    id: 'future-together',
    title: 'Futuro a dois',
    description: 'Planos, casa, filhos e visão de longo prazo.',
    emoji: '🔮',
    categoryIds: ['future', 'marriage', 'children', 'home_routine'],
    maxPerCategory: 2,
    maxTotal: 8,
  },
  {
    id: 'hard-talks',
    title: 'Conversas importantes',
    description: 'Ciúmes, dinheiro, comunicação e limites.',
    emoji: '💬',
    categoryIds: ['jealousy', 'communication', 'money', 'values'],
    maxPerCategory: 2,
    maxTotal: 8,
  },
  {
    id: 'full-round',
    title: 'Rodada completa',
    description: 'Uma amostra equilibrada de vários temas.',
    emoji: '🎲',
    categoryIds: [
      'about_you',
      'hobbies',
      'relationship',
      'values',
      'hypotheticals',
      'about_us',
    ],
    maxPerCategory: 2,
    maxTotal: 12,
  },
];

export const CUSTOM_QUESTION_PACK = {
  id: 'custom',
  title: 'Minhas perguntas',
  description: 'Perguntas que você criou — e pode criar mais aqui mesmo.',
  emoji: '✏️',
};

export function customPackQuestionIds(allQuestions) {
  return allQuestions.filter((question) => question.custom).map((question) => question.id);
}

export function isCustomPackFullySelected(allQuestions, selectedIds) {
  const ids = customPackQuestionIds(allQuestions);
  return ids.length > 0 && ids.every((id) => selectedIds.includes(id));
}

export function resolvePackQuestions(pack, allQuestions) {
  const picked = [];

  for (const categoryId of pack.categoryIds) {
    const fromCategory = allQuestions.filter((question) => question.categoryId === categoryId);
    const limit = pack.maxPerCategory ?? fromCategory.length;
    picked.push(...fromCategory.slice(0, limit));
  }

  if (pack.maxTotal && picked.length > pack.maxTotal) {
    return picked.slice(0, pack.maxTotal);
  }

  return picked;
}

export function packQuestionIds(pack, allQuestions) {
  return resolvePackQuestions(pack, allQuestions).map((question) => question.id);
}

export function isPackFullySelected(pack, allQuestions, selectedIds) {
  const ids = packQuestionIds(pack, allQuestions);
  return ids.length > 0 && ids.every((id) => selectedIds.includes(id));
}
