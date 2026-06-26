export const LANDING_DEMO = {
  code: 'K7M2',
  hostName: 'João',
  partnerName: 'Maria',
  format: 'async',
  progress: { current: 3, total: 8 },
  question: {
    categoryId: 'hobbies',
    type: 'TEXT',
    text: 'Qual hobby você voltaria a fazer se tivesse mais tempo?',
  },
  hostAnswer: 'Tocar violão de novo — parei na faculdade e sinto falta.',
  partnerAnswer: 'Correr ao ar livre. Hoje só sobra academia lotada.',
};

export const LANDING_STEPS = [
  {
    step: '01',
    title: 'Monte o questionário',
    description: 'Escolha perguntas leves, engraçadas ou mais profundas — ou escreva as suas.',
  },
  {
    step: '02',
    title: 'Envie o link',
    description: 'Um link de convite. A outra pessoa entra quando quiser — se não tiver conta, cria na hora.',
  },
  {
    step: '03',
    title: 'Respondam em segredo',
    description: 'Cada um no seu tempo. Ninguém vê a resposta do outro até os dois terminarem.',
  },
  {
    step: '04',
    title: 'Veem tudo junto',
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
    categoryId: 'personality',
    type: 'SINGLE_CHOICE',
    text: 'Você é mais manhã ou madrugada?',
    options: ['Manhã', 'Tarde', 'Noite', 'Madrugada'],
  },
  {
    categoryId: 'friends',
    type: 'TEXT',
    text: 'Como você costuma conhecer gente nova?',
  },
];
