export const LANDING_DEMO = {
  code: 'K7M2',
  hostName: 'João',
  partnerName: 'Maria',
  format: 'async',
  progress: { current: 3, total: 10 },
  packLabel: 'Pacote Amigos',
  question: {
    categoryId: 'us_friends',
    type: 'TEXT',
    text: 'Qual programa nosso você mais gostaria de repetir?',
  },
  hostAnswer: 'Aquela maratona de série até tarde com pipoca.',
  partnerAnswer: 'O churrasco de domingo na casa da minha mãe.',
};

export const LANDING_STEPS = [
  {
    step: '01',
    title: 'Escolha um pacote ou tema',
    description: '18 pacotes prontos (amigos, trabalho, família…) ou monte por tema entre 2 mil+ perguntas.',
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

export const LANDING_RELATIONS = [
  { emoji: '🫂', label: 'Amigos', hint: 'Pacotes leves e profundos' },
  { emoji: '🏢', label: 'Trabalho', hint: 'Colegas e equipe' },
  { emoji: '🛋️', label: 'Casa', hint: 'República e roommates' },
  { emoji: '👫', label: 'Irmãos', hint: 'Laço fraternal' },
  { emoji: '🧑‍🧒', label: 'Família', hint: 'Pais e filhos' },
  { emoji: '🎓', label: 'Turma', hint: 'Escola e faculdade' },
  { emoji: '⚽', label: 'Time', hint: 'Esporte e projetos' },
  { emoji: '🏘️', label: 'Vizinhos', hint: 'Convivência local' },
  { emoji: '💕', label: 'Romance', hint: 'Casais e namoro' },
  { emoji: '👥', label: 'Qualquer dupla', hint: 'Neutro, sem rótulo' },
];

/** IDs dos pacotes exibidos na landing (ordem fixa). */
export const LANDING_FEATURED_PACK_IDS = [
  'icebreaker-any',
  'friends-duo',
  'coworkers',
  'roommates',
  'siblings',
  'romantic-light',
];

export const LANDING_SAMPLE_QUESTIONS = [
  {
    categoryId: 'us_friends',
    type: 'TEXT',
    text: 'O que você mais valoriza na nossa amizade?',
  },
  {
    categoryId: 'us_coworkers',
    type: 'TEXT',
    text: 'Como você prefere alinhar tarefas quando trabalhamos juntos?',
  },
  {
    categoryId: 'us_siblings',
    type: 'TEXT',
    text: 'Qual memória de infância nossa você mais gosta de lembrar?',
  },
  {
    categoryId: 'us_general',
    type: 'TEXT',
    text: 'O que vocês dois têm em comum que te surpreende?',
  },
  {
    categoryId: 'us_roommates',
    type: 'SINGLE_CHOICE',
    text: 'Como você prefere dividir tarefas de casa?',
    options: ['Rodízio fixo', 'Quem vê primeiro', 'Combinamos na hora', 'Depende'],
  },
  {
    categoryId: 'us_romantic',
    type: 'TEXT',
    text: 'O que te faz sentir mais conectado(a) comigo?',
  },
];
