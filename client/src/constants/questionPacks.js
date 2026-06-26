/**
 * Pacotes curados para montar sessões rapidamente.
 *
 * Campos principais:
 * - categoryIds + maxPerCategory + maxTotal: amostra por tema
 * - pickStrategy: "spread" (padrão) distribui perguntas na categoria; "first" pega as primeiras N
 * - intensity: light | medium | deep
 * - relation: tipo de vínculo sugerido
 */

export const PACK_INTENSITY = {
  light: { label: 'Leve', className: 'bg-emerald-50 text-emerald-700 ring-emerald-200' },
  medium: { label: 'Médio', className: 'bg-sky-50 text-sky-700 ring-sky-200' },
  deep: { label: 'Profundo', className: 'bg-violet-50 text-violet-700 ring-violet-200' },
};

export const PACK_RELATION = {
  any: { label: 'Qualquer dupla' },
  friends: { label: 'Amigos' },
  coworkers: { label: 'Colegas de trabalho' },
  roommates: { label: 'Colegas de casa' },
  siblings: { label: 'Irmãos' },
  family: { label: 'Família' },
  classmates: { label: 'Colegas de turma' },
  teammates: { label: 'Time / grupo' },
  neighbors: { label: 'Vizinhos' },
  romantic: { label: 'Romance' },
};

/** @deprecated use PACK_RELATION — mantido para compatibilidade */
export const PACK_AUDIENCE = PACK_RELATION;

export const QUESTION_PACKS = [
  {
    id: 'icebreaker-any',
    title: 'Quebra-gelo',
    description: 'Hobbies, personalidade e cenários leves — serve para qualquer dupla.',
    intent: 'Primeira sessão ou quando quer algo leve.',
    emoji: '☕',
    intensity: 'light',
    relation: 'any',
    categoryIds: ['hobbies', 'personality', 'hypotheticals', 'us_general'],
    maxPerCategory: 3,
    maxTotal: 10,
    pickStrategy: 'spread',
  },
  {
    id: 'know-each-other',
    title: 'Se conhecendo',
    description: 'Identidade, valores e quem cada um é — ainda pouco sobre a dupla.',
    intent: 'Para duas pessoas que querem se entender melhor.',
    emoji: '🪞',
    intensity: 'medium',
    relation: 'any',
    categoryIds: ['about_you', 'values', 'personality', 'us_general'],
    maxPerCategory: 3,
    maxTotal: 10,
    pickStrategy: 'spread',
  },
  {
    id: 'friends-duo',
    title: 'Amigos',
    description: 'Amizade, programas juntos e o que vocês dois têm em comum.',
    intent: 'Para mandar pro amigo sem clima estranho.',
    emoji: '🫂',
    intensity: 'light',
    relation: 'friends',
    categoryIds: ['us_friends', 'friends', 'hobbies', 'hypotheticals'],
    maxPerCategory: 3,
    maxTotal: 10,
    pickStrategy: 'spread',
  },
  {
    id: 'friends-deep',
    title: 'Amizade profunda',
    description: 'Confiança, valores e conversas que fortalecem a amizade.',
    intent: 'Quando a amizade já existe e quer ir além.',
    emoji: '🤝',
    intensity: 'deep',
    relation: 'friends',
    categoryIds: ['us_friends', 'friends', 'values', 'communication'],
    maxPerCategory: 3,
    maxTotal: 9,
    pickStrategy: 'spread',
  },
  {
    id: 'coworkers',
    title: 'Colegas de trabalho',
    description: 'Rotina profissional, comunicação e dinâmica de equipe.',
    intent: 'Team building leve ou integração de dupla.',
    emoji: '🏢',
    intensity: 'medium',
    relation: 'coworkers',
    categoryIds: ['us_coworkers', 'career', 'communication', 'values'],
    maxPerCategory: 3,
    maxTotal: 10,
    pickStrategy: 'spread',
  },
  {
    id: 'roommates',
    title: 'Colegas de casa',
    description: 'Moradia, rotina, limites e convivência no dia a dia.',
    intent: 'Para quem divide apê, república ou casa.',
    emoji: '🛋️',
    intensity: 'medium',
    relation: 'roommates',
    categoryIds: ['us_roommates', 'home_routine', 'communication', 'money'],
    maxPerCategory: 3,
    maxTotal: 10,
    pickStrategy: 'spread',
  },
  {
    id: 'siblings',
    title: 'Irmãos',
    description: 'Infância, diferenças e o laço de vocês hoje.',
    intent: 'Para irmãos que querem se reconectar.',
    emoji: '👫',
    intensity: 'medium',
    relation: 'siblings',
    categoryIds: ['us_siblings', 'family', 'values', 'communication'],
    maxPerCategory: 3,
    maxTotal: 9,
    pickStrategy: 'spread',
  },
  {
    id: 'parent-child',
    title: 'Pais e filhos',
    description: 'Expectativas, memórias e conversas entre gerações.',
    intent: 'Para pai/mãe e filho(a) adulto(a) ou adolescente.',
    emoji: '🧑‍🧒',
    intensity: 'deep',
    relation: 'family',
    categoryIds: ['us_parent_child', 'family', 'values', 'communication'],
    maxPerCategory: 3,
    maxTotal: 9,
    pickStrategy: 'spread',
  },
  {
    id: 'classmates',
    title: 'Colegas de turma',
    description: 'Escola, faculdade e a rotina de vocês juntos.',
    intent: 'Para colegas que querem se conhecer fora da sala.',
    emoji: '🎓',
    intensity: 'light',
    relation: 'classmates',
    categoryIds: ['us_classmates', 'hobbies', 'hypotheticals', 'career'],
    maxPerCategory: 3,
    maxTotal: 10,
    pickStrategy: 'spread',
  },
  {
    id: 'teammates',
    title: 'Time e grupo',
    description: 'Esporte, projeto ou grupo — confiança e trabalho em dupla.',
    intent: 'Para duplas de time ou projeto.',
    emoji: '⚽',
    intensity: 'medium',
    relation: 'teammates',
    categoryIds: ['us_teammates', 'communication', 'personality', 'values'],
    maxPerCategory: 3,
    maxTotal: 9,
    pickStrategy: 'spread',
  },
  {
    id: 'neighbors',
    title: 'Vizinhos',
    description: 'Convivência no prédio ou bairro — leve e prático.',
    intent: 'Para conhecer melhor quem mora perto.',
    emoji: '🏘️',
    intensity: 'light',
    relation: 'neighbors',
    categoryIds: ['us_neighbors', 'home_routine', 'us_general'],
    maxPerCategory: 4,
    maxTotal: 10,
    pickStrategy: 'spread',
  },
  {
    id: 'us-two-neutral',
    title: 'Sobre nós (neutro)',
    description: 'Memórias, diferenças e impressões — sem assumir romance.',
    intent: 'Para qualquer dupla que quer falar de vocês.',
    emoji: '👥',
    intensity: 'medium',
    relation: 'any',
    categoryIds: ['us_general', 'about_us'],
    maxPerCategory: 5,
    maxTotal: 10,
    pickStrategy: 'spread',
  },
  {
    id: 'romantic-light',
    title: 'Romance leve',
    description: 'Hobbies, personalidade e primeiras impressões a dois.',
    intent: 'Para casais ou quem está se conhecendo romanticamente.',
    emoji: '💕',
    intensity: 'light',
    relation: 'romantic',
    categoryIds: ['us_romantic', 'relationship', 'hobbies', 'hypotheticals'],
    maxPerCategory: 3,
    maxTotal: 10,
    pickStrategy: 'spread',
  },
  {
    id: 'romantic-deep',
    title: 'Romance profundo',
    description: 'Futuro, valores, comunicação e confiança a dois.',
    intent: 'Para casais que querem conversas mais sérias.',
    emoji: '❤️',
    intensity: 'deep',
    relation: 'romantic',
    categoryIds: ['us_romantic', 'relationship', 'communication', 'values', 'future'],
    maxPerCategory: 2,
    maxTotal: 10,
    pickStrategy: 'spread',
  },
  {
    id: 'future-together',
    title: 'Futuro a dois',
    description: 'Planos de longo prazo — casa, casamento, filhos e rotina.',
    intent: 'Para casais alinhando expectativas.',
    emoji: '🔮',
    intensity: 'deep',
    relation: 'romantic',
    categoryIds: ['future', 'marriage', 'children', 'home_routine', 'us_romantic'],
    maxPerCategory: 2,
    maxTotal: 8,
    pickStrategy: 'spread',
  },
  {
    id: 'money-routine',
    title: 'Dinheiro e rotina',
    description: 'Finanças, trabalho e dia a dia — o lado prático.',
    intent: 'Temas concretos para duplas que dividem vida.',
    emoji: '💰',
    intensity: 'medium',
    relation: 'any',
    categoryIds: ['money', 'home_routine', 'career'],
    maxPerCategory: 3,
    maxTotal: 8,
    pickStrategy: 'spread',
  },
  {
    id: 'trust-boundaries',
    title: 'Confiança e limites',
    description: 'Comunicação, valores e ciúmes — com honestidade.',
    intent: 'Para falar de confiança e o que é inegociável.',
    emoji: '💬',
    intensity: 'deep',
    relation: 'romantic',
    categoryIds: ['communication', 'values', 'jealousy', 'us_romantic'],
    maxPerCategory: 2,
    maxTotal: 8,
    pickStrategy: 'spread',
  },
  {
    id: 'balanced-round',
    title: 'Rodada equilibrada',
    description: 'Amostra de vários temas — leve, médio e sobre a dupla.',
    intent: 'Quando não sabe por onde começar.',
    emoji: '🎲',
    intensity: 'medium',
    relation: 'any',
    categoryIds: [
      'hobbies',
      'about_you',
      'values',
      'hypotheticals',
      'us_general',
      'communication',
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

export function getPackRelationLabel(pack) {
  const key = pack.relation ?? pack.audience;
  return PACK_RELATION[key]?.label ?? null;
}
