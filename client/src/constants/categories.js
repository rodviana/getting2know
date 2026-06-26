export const CATEGORIES = [
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
