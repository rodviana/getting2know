export const LANDING_DEMO = {
  code: 'K7M2',
  hostName: 'Ana',
  partnerName: 'Lucas',
  format: 'async',
  progress: { current: 3, total: 8 },
  question: {
    categoryId: 'about_us',
    type: 'TEXT',
    text: 'O que você acha que temos em comum?',
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
    description: 'Cada um no seu tempo. Ninguém vê a resposta do outro até os dois terminarem.',
  },
  {
    step: '04',
    title: 'Revelem juntos',
    description: 'Quando os dois concluírem, todas as respostas aparecem de uma vez.',
  },
];

export const LANDING_SAMPLE_QUESTIONS = [
  {
    categoryId: 'hobbies',
    type: 'SINGLE_CHOICE',
    text: 'Você prefere praia ou montanha?',
    options: ['Praia', 'Montanha', 'Os dois', 'Nenhum dos dois'],
  },
  {
    categoryId: 'relationship',
    type: 'TEXT',
    text: 'O que significa amar para você?',
  },
  {
    categoryId: 'about_us',
    type: 'TEXT',
    text: 'Qual foi a sua primeira impressão sobre mim?',
  },
];

export const LANDING_HIGHLIGHTS = [
  {
    title: 'Sem pressa',
    description: 'No seu tempo: respondam quando der, cada um no próprio ritmo.',
    emoji: '🌙',
  },
  {
    title: 'Ao vivo',
    description: 'Ao vivo: os dois online, pergunta a pergunta, com reveal na hora.',
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
