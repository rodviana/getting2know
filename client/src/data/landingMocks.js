export const LANDING_DEMO = {
  code: 'K7M2',
  hostName: 'Ana',
  partnerName: 'Lucas',
  format: 'async',
  progress: { current: 3, total: 8 },
  question: {
    categoryId: 'deep',
    type: 'TEXT',
    text: 'Qual memória sua costuma fazer você sorrir quando está sozinho?',
  },
  hostAnswer: 'O dia em que a gente se perdeu na cidade e encontramos aquele café escondido.',
  partnerAnswer: 'Nosso primeiro road trip — sem mapa, só música alta e conversa.',
};

export const LANDING_STEPS = [
  {
    step: '01',
    title: 'Monte o questionário',
    description: 'Escolha perguntas leves, profundas ou divertidas — ou crie as suas.',
  },
  {
    step: '02',
    title: 'Compartilhe o código',
    description: 'Um código de 4 letras. A outra pessoa entra quando quiser.',
  },
  {
    step: '03',
    title: 'Respondam em segredo',
    description: 'Cada um responde no seu tempo. Ninguém vê antes dos dois enviarem.',
  },
  {
    step: '04',
    title: 'Revelem juntos',
    description: 'As respostas aparecem lado a lado. É aí que a conversa começa de verdade.',
  },
];

export const LANDING_SAMPLE_QUESTIONS = [
  {
    categoryId: 'light',
    type: 'SINGLE_CHOICE',
    text: 'Se pudéssemos jantar em qualquer lugar do mundo hoje, onde seria?',
    options: ['Praia no Nordeste', 'Bistrô em Paris', 'Ramen em Tóquio', 'Churrasco em casa'],
  },
  {
    categoryId: 'fun',
    type: 'MULTIPLE_CHOICE',
    text: 'Quais dessas coisas te definem bem?',
    options: ['Cinéfilo', 'Cozinheiro de fim de semana', 'Aventureiro', 'Caseiro'],
  },
  {
    categoryId: 'deep',
    type: 'TEXT',
    text: 'O que você gostaria que mais pessoas soubessem sobre você?',
  },
];

export const LANDING_HIGHLIGHTS = [
  {
    title: 'Sem pressa',
    description: 'Modo assíncrono: respondam quando der, no seu ritmo.',
    emoji: '🌙',
  },
  {
    title: 'Ao vivo',
    description: 'Modo ao vivo: os dois online, o anfitrião conduz a sessão.',
    emoji: '⚡',
  },
  {
    title: 'Suas perguntas',
    description: 'Monte um banco pessoal e reutilize nas próximas sessões.',
    emoji: '✏️',
  },
  {
    title: 'Histórico',
    description: 'Revise o que vocês já responderam — ótimo para retomar conversas.',
    emoji: '📖',
  },
];
