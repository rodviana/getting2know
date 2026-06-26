export const CATEGORIES = [
  {
    id: 'about_you',
    title: 'Sobre você',
    description: 'Quem você é no dia a dia.',
    emoji: '🪞',
  },
  {
    id: 'personality',
    title: 'Personalidade',
    description: 'Como você pensa, sente e reage.',
    emoji: '🧠',
  },
  {
    id: 'hobbies',
    title: 'Hobbies',
    description: 'O que você curte fazer e consumir.',
    emoji: '🎯',
  },
  {
    id: 'family',
    title: 'Família',
    description: 'Laços, influências e proximidade.',
    emoji: '👨‍👩‍👧',
  },
  {
    id: 'friends',
    title: 'Amigos',
    description: 'Amizades e convivência social.',
    emoji: '🤝',
  },
  {
    id: 'relationship',
    title: 'Relacionamento',
    description: 'Amor, parceria e conexão.',
    emoji: '💕',
  },
  {
    id: 'jealousy',
    title: 'Ciúmes',
    description: 'Limites, confiança e inseguranças.',
    emoji: '💭',
  },
  {
    id: 'communication',
    title: 'Comunicação',
    description: 'Como vocês conversam e resolvem conflitos.',
    emoji: '🗣️',
  },
  {
    id: 'money',
    title: 'Dinheiro',
    description: 'Finanças, hábitos e objetivos.',
    emoji: '💰',
  },
  {
    id: 'career',
    title: 'Carreira',
    description: 'Trabalho, ambição e prioridades.',
    emoji: '💼',
  },
  {
    id: 'future',
    title: 'Futuro',
    description: 'Planos, sonhos e visão de vida.',
    emoji: '🔮',
  },
  {
    id: 'marriage',
    title: 'Casamento',
    description: 'Compromisso, cerimônia e expectativas.',
    emoji: '💍',
  },
  {
    id: 'children',
    title: 'Filhos',
    description: 'Maternidade, paternidade e educação.',
    emoji: '👶',
  },
  {
    id: 'home_routine',
    title: 'Casa e rotina',
    description: 'Lar, tarefas e dia a dia a dois.',
    emoji: '🏠',
  },
  {
    id: 'health',
    title: 'Saúde',
    description: 'Corpo, hábitos e bem-estar.',
    emoji: '🩺',
  },
  {
    id: 'spirituality',
    title: 'Espiritualidade',
    description: 'Fé, crenças e valores espirituais.',
    emoji: '🕯️',
  },
  {
    id: 'social_media',
    title: 'Redes sociais',
    description: 'Vida online e exposição pública.',
    emoji: '📱',
  },
  {
    id: 'values',
    title: 'Valores',
    description: 'O que é inegociável para você.',
    emoji: '⚖️',
  },
  {
    id: 'hypotheticals',
    title: 'Hipóteses',
    description: 'Cenários imaginários para se conhecerem.',
    emoji: '✨',
  },
  {
    id: 'about_us',
    title: 'Sobre nós',
    description: 'O que vocês dois têm em comum — e o que não têm.',
    emoji: '💑',
  },
  // Legado — sessões antigas podem usar estas categorias
  {
    id: 'light',
    title: 'Leve',
    description: 'Para quebrar o gelo com naturalidade.',
    emoji: '☀️',
  },
  {
    id: 'deep',
    title: 'Profundo',
    description: 'Para ir além do superficial.',
    emoji: '🌊',
  },
  {
    id: 'fun',
    title: 'Divertido',
    description: 'Para rir e se surpreender juntos.',
    emoji: '🎲',
  },
];

export function categoryById(id) {
  return CATEGORIES.find((item) => item.id === id);
}
