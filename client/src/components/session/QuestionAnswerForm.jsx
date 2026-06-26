import { QuestionType } from '../../constants/questionTypes';
import { FieldLabel } from '../ui/PageElements';

export default function QuestionAnswerForm({
  question,
  value,
  onChange,
  disabled = false,
}) {
  if (question.type === QuestionType.SINGLE_CHOICE) {
    return (
      <fieldset className="space-y-2" disabled={disabled}>
        <legend className="sr-only">Escolha uma opção</legend>
        {(question.options ?? []).map((option) => (
          <label
            key={option}
            className="flex cursor-pointer items-center gap-3 rounded-lg border border-slate-200 px-4 py-3 transition hover:border-rose-200 hover:bg-rose-50/40 has-[:checked]:border-rose-300 has-[:checked]:bg-rose-50"
          >
            <input
              type="radio"
              name={`question-${question.id}`}
              value={option}
              checked={value === option}
              onChange={() => onChange(option)}
              className="h-4 w-4 border-slate-300 text-rose-500 focus:ring-rose-400"
            />
            <span className="text-sm text-slate-800">{option}</span>
          </label>
        ))}
      </fieldset>
    );
  }

  if (question.type === QuestionType.MULTIPLE_CHOICE) {
    const selected = Array.isArray(value) ? value : [];

    function toggle(option) {
      if (selected.includes(option)) {
        onChange(selected.filter((item) => item !== option));
        return;
      }
      onChange([...selected, option]);
    }

    return (
      <fieldset className="space-y-2" disabled={disabled}>
        <legend className="sr-only">Escolha uma ou mais opções</legend>
        {(question.options ?? []).map((option) => (
          <label
            key={option}
            className="flex cursor-pointer items-center gap-3 rounded-lg border border-slate-200 px-4 py-3 transition hover:border-rose-200 hover:bg-rose-50/40 has-[:checked]:border-rose-300 has-[:checked]:bg-rose-50"
          >
            <input
              type="checkbox"
              value={option}
              checked={selected.includes(option)}
              onChange={() => toggle(option)}
              className="h-4 w-4 rounded border-slate-300 text-rose-500 focus:ring-rose-400"
            />
            <span className="text-sm text-slate-800">{option}</span>
          </label>
        ))}
      </fieldset>
    );
  }

  return (
    <div>
      <FieldLabel htmlFor={`answer-${question.id}`}>Sua resposta</FieldLabel>
      <textarea
        id={`answer-${question.id}`}
        value={typeof value === 'string' ? value : ''}
        onChange={(e) => onChange(e.target.value)}
        rows={4}
        disabled={disabled}
        placeholder="Escreva o que vier à cabeça..."
        className="input-field resize-none"
      />
    </div>
  );
}
