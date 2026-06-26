export const QuestionType = Object.freeze({
  TEXT: 'TEXT',
  SINGLE_CHOICE: 'SINGLE_CHOICE',
  MULTIPLE_CHOICE: 'MULTIPLE_CHOICE',
});

export const QUESTION_TYPE_OPTIONS = [
  { value: QuestionType.TEXT, label: 'Texto livre', description: 'Resposta aberta em texto.' },
  { value: QuestionType.SINGLE_CHOICE, label: 'Seleção única', description: 'Escolher uma opção.' },
  { value: QuestionType.MULTIPLE_CHOICE, label: 'Seleção múltipla', description: 'Escolher uma ou mais opções.' },
];

export function questionTypeLabel(type) {
  return QUESTION_TYPE_OPTIONS.find((item) => item.value === type)?.label ?? type;
}

export function questionTypeNeedsOptions(type) {
  return type === QuestionType.SINGLE_CHOICE || type === QuestionType.MULTIPLE_CHOICE;
}
