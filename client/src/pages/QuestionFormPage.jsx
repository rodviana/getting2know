import { Link, useNavigate, useParams } from 'react-router-dom';
import { useEffect, useRef, useState } from 'react';
import { useQuestionBank } from '../hooks/useQuestionBank';
import { CATEGORIES } from '../constants/categories';
import {
  QUESTION_TYPE_OPTIONS,
  QuestionType,
  questionTypeNeedsOptions,
} from '../constants/questionTypes';
import OptionsEditor from '../components/session/OptionsEditor';
import { Card, FieldLabel, PageHeader, SelectInput, TextInput } from '../components/ui/PageElements';

const EMPTY_FORM = {
  text: '',
  categoryId: 'about_you',
  type: QuestionType.TEXT,
  options: ['', ''],
};

export default function QuestionFormPage() {
  const { id } = useParams();
  const navigate = useNavigate();
  const isEdit = Boolean(id);
  const { getQuestionById, addQuestion, updateQuestion } = useQuestionBank();
  const [form, setForm] = useState(EMPTY_FORM);
  const [error, setError] = useState('');
  const [submitting, setSubmitting] = useState(false);
  const loadedQuestionIdRef = useRef(null);

  useEffect(() => {
    if (!isEdit) {
      loadedQuestionIdRef.current = null;
      return;
    }
    if (loadedQuestionIdRef.current === id) return;

    const existing = getQuestionById(id);
    if (!existing) return;
    if (!existing.custom) {
      navigate('/questions', { replace: true });
      return;
    }

    loadedQuestionIdRef.current = id;
    setForm({
      text: existing.text,
      categoryId: existing.categoryId,
      type: existing.type,
      options: existing.options?.length ? existing.options : ['', ''],
    });
  }, [id, isEdit, getQuestionById, navigate]);

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
      text: form.text,
      categoryId: form.categoryId,
      type: form.type,
      options: questionTypeNeedsOptions(form.type)
        ? form.options.map((item) => item.trim()).filter(Boolean)
        : undefined,
    };

    setSubmitting(true);
    try {
      if (isEdit) {
        await updateQuestion(id, payload);
      } else {
        await addQuestion(payload);
      }
      navigate('/questions');
    } catch {
      // apiClient already showed the error toast
    } finally {
      setSubmitting(false);
    }
  }

  return (
    <div className="space-y-6">
      <PageHeader
        backTo="/questions"
        eyebrow={isEdit ? 'Editar' : 'Nova pergunta'}
        title={isEdit ? 'Editar pergunta' : 'Cadastrar pergunta'}
        description="Monte perguntas de texto livre ou com opções de seleção."
      />

      <Card className="max-w-2xl">
        <form onSubmit={handleSubmit} className="space-y-5">
          <div>
            <FieldLabel htmlFor="text">Pergunta</FieldLabel>
            <textarea
              id="text"
              value={form.text}
              onChange={(e) => setForm((current) => ({ ...current, text: e.target.value }))}
              rows={3}
              className="input-field resize-none"
              placeholder="Ex.: Qual é o seu comfort food?"
            />
          </div>

          <div className="grid gap-4 sm:grid-cols-2">
            <div>
              <FieldLabel htmlFor="categoryId">Categoria</FieldLabel>
              <SelectInput
                id="categoryId"
                value={form.categoryId}
                onChange={(e) => setForm((current) => ({ ...current, categoryId: e.target.value }))}
              >
                {CATEGORIES.map((category) => (
                  <option key={category.id} value={category.id}>{category.title}</option>
                ))}
              </SelectInput>
            </div>
            <div>
              <FieldLabel htmlFor="type">Tipo de resposta</FieldLabel>
              <SelectInput
                id="type"
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

          <div className="flex flex-col gap-3 sm:flex-row sm:justify-end">
            <Link to="/questions" className="btn-secondary">Cancelar</Link>
            <button type="submit" disabled={submitting} className="btn-primary">
              {submitting ? 'Salvando...' : isEdit ? 'Salvar alterações' : 'Cadastrar pergunta'}
            </button>
          </div>
        </form>
      </Card>
    </div>
  );
}
