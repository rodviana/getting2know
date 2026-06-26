export const LANDING_DEMO = {
  code: 'K7M2',
  hostName: 'Ana',
  partnerName: 'Lucas',
  format: 'async',
  progress: { current: 3, total: 8 },
  question: {
    categoryId: 'about_us',
    type: 'TEXT',
    text: 'Qual memória nossa você mais gosta de lembrar?',
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
    title: 'Compartilhe o link',
    description: 'Um link de convite. A outra pessoa entra quando quiser — se não tiver conta, cria na hora.',
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
