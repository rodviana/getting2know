import { QuestionType } from '../constants/questionTypes';

export function formatAnswer(answer) {
  if (answer == null || answer === '') return '—';
  if (Array.isArray(answer)) return answer.join(', ');
  return String(answer);
}

export function isAnswerValid(answer, question) {
  if (!question) return false;

  if (question.type === QuestionType.MULTIPLE_CHOICE) {
    return Array.isArray(answer) && answer.length > 0;
  }

  if (question.type === QuestionType.SINGLE_CHOICE) {
    return typeof answer === 'string' && answer.trim().length > 0;
  }

  return typeof answer === 'string' && answer.trim().length > 0;
}

export function mockPartnerAnswer(question) {
  const textPool = [
    'Ainda estou pensando nisso com carinho.',
    'Boa pergunta — nunca tinha parado pra refletir assim.',
    'Algo que combina muito comigo, na verdade.',
    'Difícil escolher só uma coisa!',
  ];

  if (question.type === QuestionType.SINGLE_CHOICE) {
    const options = question.options ?? [];
    if (options.length === 0) return textPool[0];
    return options[Math.floor(Math.random() * options.length)];
  }

  if (question.type === QuestionType.MULTIPLE_CHOICE) {
    const options = question.options ?? [];
    if (options.length === 0) return [];
    const count = Math.max(1, Math.min(2, options.length));
    return [...options].sort(() => Math.random() - 0.5).slice(0, count);
  }

  return textPool[Math.floor(Math.random() * textPool.length)];
}
