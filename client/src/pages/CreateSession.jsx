import { Link, useNavigate } from 'react-router-dom';
import { useMemo, useState } from 'react';
import { useSession } from '../hooks/useSession';
import { useQuestionBank } from '../hooks/useQuestionBank';
import QuestionPicker from '../components/session/QuestionPicker';
import CategoryBadge from '../components/session/CategoryBadge';
import QuestionTypeBadge from '../components/session/QuestionTypeBadge';
import { SESSION_FORMATS } from '../utils/sessionFormat';

export default function CreateSession() {
  const navigate = useNavigate();
  const { createSession } = useSession();
  const { allQuestions } = useQuestionBank();
  const [selectedIds, setSelectedIds] = useState([]);
  const [format, setFormat] = useState('async');
  const [submitting, setSubmitting] = useState(false);

  const selectedQuestions = useMemo(
    () => selectedIds
      .map((id) => allQuestions.find((question) => question.id === id))
      .filter(Boolean),
    [selectedIds, allQuestions],
  );

  async function handleSubmit(event) {
    event.preventDefault();
    if (selectedQuestions.length === 0 || submitting) return;

    setSubmitting(true);
    try {
      const code = await createSession({ questions: selectedQuestions, format });
      navigate(`/sessions/${code}`);
    } catch {
      // apiClient already showed the error toast
    } finally {
      setSubmitting(false);
    }
  }

  function removeQuestion(id) {
    setSelectedIds((current) => current.filter((item) => item !== id));
  }

  return (
    <div className="pb-28">
      <header className="mb-6">
        <Link
          to="/home"
          className="mb-3 inline-flex items-center gap-1.5 text-sm font-medium text-slate-500 transition hover:text-rose-600"
        >
          <svg className="h-4 w-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
            <path d="M15 18l-6-6 6-6" strokeLinecap="round" strokeLinejoin="round" />
          </svg>
          Voltar
        </Link>
        <h1 className="text-2xl font-bold tracking-tight text-slate-900">Nova sessão</h1>
        <p className="mt-1 text-sm text-slate-500">
          Escolha as perguntas. Depois você compartilha o código com quem vai jogar com você.
        </p>
      </header>

      <section className="mb-6">
        <h2 className="mb-3 text-xs font-semibold uppercase tracking-wider text-slate-500">
          Formato da sessão
        </h2>
        <div className="grid gap-3 sm:grid-cols-2">
          {Object.values(SESSION_FORMATS).map((option) => {
            const selected = format === option.id;
            return (
              <button
                key={option.id}
                type="button"
                onClick={() => setFormat(option.id)}
                className={`rounded-xl border p-4 text-left transition ${
                  selected
                    ? 'border-rose-300 bg-rose-50/60 ring-2 ring-rose-200'
                    : 'border-slate-200 bg-white hover:border-slate-300'
                }`}
              >
                <p className="font-semibold text-slate-900">{option.label}</p>
                <p className="mt-1 text-sm text-slate-500">{option.description}</p>
              </button>
            );
          })}
        </div>
      </section>

      {selectedQuestions.length > 0 && (
        <section className="mb-6">
          <div className="mb-2 flex items-center justify-between">
            <h2 className="text-xs font-semibold uppercase tracking-wider text-slate-500">
              Seu questionário
            </h2>
            <span className="text-xs font-medium text-rose-600">
              {selectedQuestions.length} selecionada{selectedQuestions.length === 1 ? '' : 's'}
            </span>
          </div>
          <ol className="space-y-2">
            {selectedQuestions.map((question, index) => (
              <li
                key={question.id}
                className="flex items-start gap-3 rounded-lg border border-rose-100 bg-rose-50/40 px-3 py-2.5"
              >
                <span className="mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-rose-500 text-xs font-bold text-white">
                  {index + 1}
                </span>
                <div className="min-w-0 flex-1">
                  <div className="mb-1 flex flex-wrap gap-1.5">
                    <CategoryBadge categoryId={question.categoryId} />
                    <QuestionTypeBadge type={question.type} />
                  </div>
                  <p className="text-sm text-slate-800">{question.text}</p>
                </div>
                <button
                  type="button"
                  onClick={() => removeQuestion(question.id)}
                  className="shrink-0 rounded-md p-1 text-slate-400 transition hover:bg-white hover:text-red-500"
                  aria-label="Remover pergunta"
                >
                  <svg className="h-4 w-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                    <path d="M18 6L6 18M6 6l12 12" strokeLinecap="round" />
                  </svg>
                </button>
              </li>
            ))}
          </ol>
        </section>
      )}

      <section className="card p-5">
        <div className="mb-4 flex flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
          <div>
            <h2 className="font-semibold text-slate-900">Banco de perguntas</h2>
            <p className="mt-0.5 text-sm text-slate-500">
              Marque as que entram na sessão — a ordem segue a seleção.
            </p>
          </div>
          <div className="flex gap-2">
            <Link to="/questions/new" className="btn-ghost px-3 py-1.5 text-sm">
              + Nova
            </Link>
            <Link to="/questions" className="btn-ghost px-3 py-1.5 text-sm">
              Gerenciar
            </Link>
          </div>
        </div>
        <QuestionPicker
          questions={allQuestions}
          selectedIds={selectedIds}
          onChange={setSelectedIds}
        />
      </section>

      <form
        onSubmit={handleSubmit}
        className="fixed inset-x-0 bottom-0 z-10 border-t border-slate-200/80 bg-white/95 px-4 py-4 backdrop-blur-md lg:px-6"
      >
        <div className="mx-auto flex max-w-5xl flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
          <p className="text-center text-sm text-slate-600 sm:text-left">
            {selectedQuestions.length === 0 ? (
              'Selecione pelo menos uma pergunta'
            ) : (
              <>
                <span className="font-semibold text-slate-900">{selectedQuestions.length}</span>
                {' '}pergunta{selectedQuestions.length === 1 ? '' : 's'} no questionário
              </>
            )}
          </p>
          <div className="flex gap-3">
            <Link to="/home" className="btn-secondary flex-1 sm:flex-none">
              Cancelar
            </Link>
            <button
              type="submit"
              disabled={selectedQuestions.length === 0 || submitting}
              className="btn-primary flex-1 sm:min-w-[180px]"
            >
              {submitting ? 'Criando...' : 'Criar sessão'}
            </button>
          </div>
        </div>
      </form>
    </div>
  );
}
