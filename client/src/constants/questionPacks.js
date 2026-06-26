/**
 * Pacotes curados para montar sessões rapidamente.
 *
 * Campos principais:
 * - categoryIds + maxPerCategory + maxTotal: amostra por tema
 * - pickStrategy: "spread" (padrão) distribui perguntas na categoria; "first" pega as primeiras N
 * - intensity: light | medium | deep
 * - audience: new | dating | long_term
 */

export const PACK_INTENSITY = {
  light: { label: 'Leve', className: 'bg-emerald-50 text-emerald-700 ring-emerald-200' },
  medium: { label: 'Médio', className: 'bg-sky-50 text-sky-700 ring-sky-200' },
  deep: { label: 'Profundo', className: 'bg-violet-50 text-violet-700 ring-violet-200' },
};

export const PACK_AUDIENCE = {
  new: { label: 'Primeira sessão' },
  dating: { label: 'Casal em construção' },
  long_term: { label: 'Relacionamento estabelecido' },
};

export const QUESTION_PACKS = [
  {
    id: 'first-meeting',
    title: 'Primeiro encontro',
    description: 'Hobbies, jeito de ser e cenários divertidos — sem pressão nem temas pesados.',
    intent: 'Para quem está começando e quer conversa leve.',
    emoji: '☕',
    intensity: 'light',
    audience: 'new',
    categoryIds: ['hobbies', 'personality', 'hypotheticals'],
    maxPerCategory: 3,
    maxTotal: 8,
    pickStrategy: 'spread',
  },
  {
    id: 'who-we-are',
    title: 'Quem somos',
    description: 'Identidade, valores e personalidade — ainda sem falar do casal em si.',
    intent: 'Para conhecer a pessoa antes de falar de vocês dois.',
    emoji: '🪞',
    intensity: 'medium',
    audience: 'dating',
    categoryIds: ['about_you', 'values', 'personality'],
    maxPerCategory: 3,
    maxTotal: 9,
    pickStrategy: 'spread',
  },
  {
    id: 'us-two',
    title: 'Sobre nós dois',
    description: 'Memórias juntos, impressões e o que vocês têm em comum.',
    intent: 'Só perguntas sobre o relacionamento de vocês.',
    emoji: '💑',
    intensity: 'medium',
    audience: 'dating',
    categoryIds: ['about_us'],
    maxTotal: 8,
    pickStrategy: 'spread',
  },
  {
    id: 'future-together',
    title: 'Futuro a dois',
    description: 'Planos de longo prazo: casa, casamento, filhos e rotina.',
    intent: 'Para alinhar expectativas sobre o que vem pela frente.',
    emoji: '🔮',
    intensity: 'deep',
    audience: 'long_term',
    categoryIds: ['future', 'marriage', 'children', 'home_routine'],
    maxPerCategory: 2,
    maxTotal: 8,
    pickStrategy: 'spread',
  },
  {
    id: 'money-routine',
    title: 'Dinheiro e rotina',
    description: 'Finanças, trabalho e dia a dia em casa — o lado prático da vida a dois.',
    intent: 'Temas concretos que muitos casais deixam para depois.',
    emoji: '💰',
    intensity: 'medium',
    audience: 'long_term',
    categoryIds: ['money', 'home_routine', 'career'],
    maxPerCategory: 2,
    maxTotal: 7,
    pickStrategy: 'spread',
  },
  {
    id: 'trust-boundaries',
    title: 'Confiança e limites',
    description: 'Ciúmes, comunicação e valores — conversas que exigem honestidade.',
    intent: 'Para falar de confiança, conflito e o que é inegociável.',
    emoji: '💬',
    intensity: 'deep',
    audience: 'long_term',
    categoryIds: ['jealousy', 'communication', 'values'],
    maxPerCategory: 2,
    maxTotal: 7,
    pickStrategy: 'spread',
  },
  {
    id: 'family-friends',
    title: 'Família e amigos',
    description: 'Laços familiares, amizades e como vocês se encaixam no círculo social.',
    intent: 'Para entender o contexto de cada um fora do casal.',
    emoji: '🤝',
    intensity: 'medium',
    audience: 'dating',
    categoryIds: ['family', 'friends'],
    maxPerCategory: 4,
    maxTotal: 8,
    pickStrategy: 'spread',
  },
  {
    id: 'balanced-round',
    title: 'Rodada equilibrada',
    description: 'Uma amostra de vários temas — leve, médio e sobre vocês.',
    intent: 'Quando não sabe por onde começar: um pouco de tudo.',
    emoji: '🎲',
    intensity: 'medium',
    audience: 'new',
    categoryIds: [
      'hobbies',
      'about_you',
      'relationship',
      'values',
      'hypotheticals',
      'about_us',
    ],
    maxPerCategory: 2,
    maxTotal: 12,
    pickStrategy: 'spread',
  },
];

export const CUSTOM_QUESTION_PACK = {
  id: 'custom',
  title: 'Minhas perguntas',
  description: 'Perguntas que você criou — e pode criar mais aqui mesmo.',
  emoji: '✏️',
};

function hashString(value) {
  let hash = 0;
  for (let i = 0; i < value.length; i += 1) {
    hash = ((hash << 5) - hash) + value.charCodeAt(i);
    hash |= 0;
  }
  return Math.abs(hash);
}

function pickFromCategory(questions, limit, pack, categoryId) {
  if (questions.length <= limit) return [...questions];

  if (pack.pickStrategy === 'first') {
    return questions.slice(0, limit);
  }

  const sorted = [...questions].sort((a, b) => {
    const keyA = `${pack.id}:${categoryId}:${a.id}`;
    const keyB = `${pack.id}:${categoryId}:${b.id}`;
    return hashString(keyA) - hashString(keyB);
  });

  return sorted.slice(0, limit);
}

export function resolvePackQuestions(pack, allQuestions) {
  const picked = [];

  for (const categoryId of pack.categoryIds) {
    const fromCategory = allQuestions.filter((question) => question.categoryId === categoryId);
    const limit = pack.maxPerCategory ?? fromCategory.length;
    picked.push(...pickFromCategory(fromCategory, limit, pack, categoryId));
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

export function estimatePackMinutes(questionCount) {
  if (!questionCount) return 0;
  return Math.max(5, Math.round(questionCount * 1.5));
}

export function formatPackSubtitle(pack, questionCount) {
  const intensity = PACK_INTENSITY[pack.intensity]?.label;
  const minutes = estimatePackMinutes(questionCount);
  const parts = [];
  if (intensity) parts.push(intensity);
  if (questionCount) parts.push(`~${questionCount} perguntas`);
  if (minutes) parts.push(`~${minutes} min`);
  return parts.join(' · ');
}

export function customPackQuestionIds(allQuestions) {
  return allQuestions.filter((question) => question.custom).map((question) => question.id);
}

export function isCustomPackFullySelected(allQuestions, selectedIds) {
  const ids = customPackQuestionIds(allQuestions);
  return ids.length > 0 && ids.every((id) => selectedIds.includes(id));
}
