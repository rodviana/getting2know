import { useEffect, useState } from 'react';
import { CATEGORIES } from '../../constants/categories';
import {
  QUESTION_TYPE_OPTIONS,
  QuestionType,
  questionTypeNeedsOptions,
} from '../../constants/questionTypes';
import OptionsEditor from './OptionsEditor';
import { FieldLabel, SelectInput, TextInput } from '../ui/PageElements';

export const EMPTY_QUESTION_FORM = {
  text: '',
  categoryId: 'about_you',
  type: QuestionType.TEXT,
  options: ['', ''],
};

export default function InlineQuestionForm({
  onSubmit,
  onCancel,
  submitLabel = 'Salvar pergunta',
  compact = false,
  initialValues = null,
}) {
  const [form, setForm] = useState(() => initialValues ?? EMPTY_QUESTION_FORM);
  const [error, setError] = useState('');
  const [submitting, setSubmitting] = useState(false);

  useEffect(() => {
    setForm(initialValues ?? EMPTY_QUESTION_FORM);
    setError('');
  }, [initialValues]);

  function handleTypeChange(type) {
    setForm((current) => ({
      ...current,
      type,
      options: questionTypeNeedsOptions(type)
        ? (current.options.length >= 2 ? current.options : ['', ''])
        : ['', ''],
    }));
  }

  async function handleSubmit(event) {
    event.preventDefault();
    setError('');

    if (!form.text.trim()) {
      setError('Escreva o texto da pergunta.');
      return;
    }

    if (questionTypeNeedsOptions(form.type)) {
      const validOptions = form.options.map((item) => item.trim()).filter(Boolean);
      if (validOptions.length < 2) {
        setError('Perguntas de seleção precisam de pelo menos 2 opções.');
        return;
      }
    }

    const payload = {
      text: form.text.trim(),
      categoryId: form.categoryId,
      type: form.type,
      options: questionTypeNeedsOptions(form.type)
        ? form.options.map((item) => item.trim()).filter(Boolean)
        : undefined,
    };

    setSubmitting(true);
    try {
      await onSubmit(payload);
      if (!initialValues) {
        setForm(EMPTY_QUESTION_FORM);
      }
      setError('');
    } catch {
      // apiClient already showed the error toast
    } finally {
      setSubmitting(false);
    }
  }

  return (
    <form
      onSubmit={handleSubmit}
      className={compact ? 'space-y-4' : 'space-y-5'}
    >
      <div>
        <FieldLabel htmlFor="inline-question-text">Pergunta</FieldLabel>
        <textarea
          id="inline-question-text"
          value={form.text}
          onChange={(e) => setForm((current) => ({ ...current, text: e.target.value }))}
          rows={3}
          className="input-field resize-none"
          placeholder="Ex.: Qual é o seu comfort food?"
        />
      </div>

      <div className="grid gap-4 sm:grid-cols-2">
        <div>
          <FieldLabel htmlFor="inline-question-category">Categoria</FieldLabel>
          <SelectInput
            id="inline-question-category"
            value={form.categoryId}
            onChange={(e) => setForm((current) => ({ ...current, categoryId: e.target.value }))}
          >
            {CATEGORIES.filter((category) => !['light', 'deep', 'fun'].includes(category.id)).map((category) => (
              <option key={category.id} value={category.id}>{category.title}</option>
            ))}
          </SelectInput>
        </div>
        <div>
          <FieldLabel htmlFor="inline-question-type">Tipo de resposta</FieldLabel>
          <SelectInput
            id="inline-question-type"
            value={form.type}
            onChange={(e) => handleTypeChange(e.target.value)}
          >
            {QUESTION_TYPE_OPTIONS.map((type) => (
              <option key={type.value} value={type.value}>{type.label}</option>
            ))}
          </SelectInput>
        </div>
      </div>

      {questionTypeNeedsOptions(form.type) && (
        <OptionsEditor
          options={form.options}
          onChange={(options) => setForm((current) => ({ ...current, options }))}
        />
      )}

      {error && (
        <p className="rounded-lg border border-red-200 bg-red-50 px-3 py-2 text-sm text-red-700">
          {error}
        </p>
      )}

      <div className="flex flex-col gap-2 sm:flex-row sm:justify-end">
        {onCancel && (
          <button type="button" onClick={onCancel} className="btn-secondary">
            Cancelar
          </button>
        )}
        <button type="submit" disabled={submitting} className="btn-primary">
          {submitting ? 'Salvando...' : submitLabel}
        </button>
      </div>
    </form>
  );
}
