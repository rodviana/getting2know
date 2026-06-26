import { Link, useNavigate, useSearchParams } from 'react-router-dom';
import { useEffect, useMemo, useState } from 'react';
import { useSession } from '../hooks/useSession';
import { useQuestionBank } from '../hooks/useQuestionBank';
import { useQuestionSelection } from '../hooks/useQuestionSelection';
import { usePreviouslyAskedQuestions } from '../hooks/usePreviouslyAskedQuestions';
import SessionQuestionBuilder from '../components/session/SessionQuestionBuilder';
import QuestionSelectionPanel from '../components/session/QuestionSelectionPanel';
import CategoryBadge from '../components/session/CategoryBadge';
import QuestionTypeBadge from '../components/session/QuestionTypeBadge';
import PreviouslyAskedBadge from '../components/session/PreviouslyAskedBadge';
import { SESSION_FORMATS } from '../utils/sessionFormat';
import { extractPreviousPartners, formatPartnerLastSession } from '../utils/sessionPartners';
import { LoadingCard } from '../components/ui/PageElements';

const STEPS = [
  { id: 'partner', label: 'Parceiro' },
  { id: 'format', label: 'Formato' },
  { id: 'questions', label: 'Perguntas' },
  { id: 'review', label: 'Revisar' },
];

function StepIndicator({ currentStep }) {
  const currentIndex = STEPS.findIndex((step) => step.id === currentStep);

  return (
    <ol className="mb-8 flex items-center gap-1 sm:gap-2">
      {STEPS.map((step, index) => {
        const done = index < currentIndex;
        const active = step.id === currentStep;
        return (
          <li key={step.id} className="flex flex-1 items-center gap-1 sm:gap-2">
            <div className="flex min-w-0 flex-1 flex-col items-center gap-1">
              <span
                className={[
                  'flex h-8 w-8 items-center justify-center rounded-full text-xs font-bold',
                  active && 'bg-rose-500 text-white',
                  done && !active && 'bg-rose-100 text-rose-700',
                  !active && !done && 'bg-slate-100 text-slate-400',
                ].filter(Boolean).join(' ')}
              >
                {done ? '✓' : index + 1}
              </span>
              <span
                className={[
                  'hidden text-xs font-medium sm:block',
                  active ? 'text-rose-700' : 'text-slate-500',
                ].join(' ')}
              >
                {step.label}
              </span>
            </div>
            {index < STEPS.length - 1 && (
              <div
                className={[
                  'mb-4 h-0.5 flex-1 rounded',
                  index < currentIndex ? 'bg-rose-300' : 'bg-slate-200',
                ].join(' ')}
                aria-hidden="true"
              />
            )}
          </li>
        );
      })}
    </ol>
  );
}

export default function CreateSession() {
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();
  const { createSession, listUserSessions } = useSession();
  const { allQuestions, loading, addQuestion } = useQuestionBank();
  const selection = useQuestionSelection();
  const {
    selectedIds,
    removedIds,
    markRemoved,
    restore,
    clearRemoved,
    setHideRemoved,
    hideRemoved,
    clearSelected,
  } = selection;

  const [step, setStep] = useState('partner');
  const [format, setFormat] = useState('async');
  const [submitting, setSubmitting] = useState(false);
  const [repeatMode, setRepeatMode] = useState(null);
  const [selectedPartnerId, setSelectedPartnerId] = useState(null);
  const [sessionsLoading, setSessionsLoading] = useState(true);
  const [userSessions, setUserSessions] = useState([]);

  const {
    previouslyAskedIds,
    partnerName: fetchedPartnerName,
    sessionCount: partnerSessionCount,
    loading: previouslyAskedLoading,
  } = usePreviouslyAskedQuestions(repeatMode === 'repeat' ? selectedPartnerId : null);

  useEffect(() => {
    let active = true;
    async function loadSessions() {
      setSessionsLoading(true);
      try {
        const data = await listUserSessions();
        if (active) setUserSessions(data || []);
      } finally {
        if (active) setSessionsLoading(false);
      }
    }
    loadSessions();
    return () => { active = false; };
  }, [listUserSessions]);

  const previousPartners = useMemo(
    () => extractPreviousPartners(userSessions),
    [userSessions],
  );

  const selectedPartner = useMemo(
    () => previousPartners.find((partner) => partner.userId === selectedPartnerId) ?? null,
    [previousPartners, selectedPartnerId],
  );

  const partnerDisplayName = selectedPartner?.name || fetchedPartnerName;

  useEffect(() => {
    const partnerIdParam = searchParams.get('partnerId');
    if (!partnerIdParam) return;
    const partnerId = Number(partnerIdParam);
    if (!Number.isFinite(partnerId)) return;
    setRepeatMode('repeat');
    setSelectedPartnerId(partnerId);
  }, [searchParams]);

  const selectedQuestions = useMemo(
    () => selectedIds
      .map((id) => allQuestions.find((question) => question.id === id))
      .filter(Boolean),
    [selectedIds, allQuestions],
  );

  const removedQuestions = useMemo(
    () => removedIds
      .map((id) => allQuestions.find((question) => question.id === id))
      .filter(Boolean),
    [removedIds, allQuestions],
  );

  const formatMeta = SESSION_FORMATS[format];

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

  function goNext() {
    if (step === 'partner') setStep('format');
    else if (step === 'format') setStep('questions');
    else if (step === 'questions') setStep('review');
  }

  function goBack() {
    if (step === 'review') setStep('questions');
    else if (step === 'questions') setStep('format');
    else if (step === 'format') setStep('partner');
  }

  const canGoNext = (() => {
    if (step === 'partner') {
      if (repeatMode === 'new') return true;
      if (repeatMode === 'repeat') return selectedPartnerId != null;
      return false;
    }
    if (step === 'format') return true;
    if (step === 'questions') return selectedIds.length > 0;
    return false;
  })();

  function handleRepeatMode(mode) {
    setRepeatMode(mode);
    if (mode === 'new') {
      setSelectedPartnerId(null);
    }
  }

  return (
    <div className="pb-28">
      <header className="mb-2">
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
          Em quatro passos: parceiro, formato, perguntas e revisão.
        </p>
      </header>

      <StepIndicator currentStep={step} />

      {step === 'partner' && (
        <section className="card p-5">
          <h2 className="font-semibold text-slate-900">É com alguém de um questionário anterior?</h2>
          <p className="mt-1 text-sm text-slate-500">
            Se vocês já jogaram juntos, marcamos as perguntas que já apareceram para evitar repetição.
          </p>

          <div className="mt-4 grid gap-3 sm:grid-cols-2">
            <button
              type="button"
              onClick={() => handleRepeatMode('repeat')}
              className={`rounded-xl border p-4 text-left transition ${
                repeatMode === 'repeat'
                  ? 'border-rose-300 bg-rose-50/60 ring-2 ring-rose-200'
                  : 'border-slate-200 bg-white hover:border-slate-300'
              }`}
            >
              <p className="font-semibold text-slate-900">Sim, mesma pessoa</p>
              <p className="mt-1 text-sm text-slate-500">
                Escolho alguém com quem já fiz questionário.
              </p>
            </button>
            <button
              type="button"
              onClick={() => handleRepeatMode('new')}
              className={`rounded-xl border p-4 text-left transition ${
                repeatMode === 'new'
                  ? 'border-rose-300 bg-rose-50/60 ring-2 ring-rose-200'
                  : 'border-slate-200 bg-white hover:border-slate-300'
              }`}
            >
              <p className="font-semibold text-slate-900">Não, é alguém novo</p>
              <p className="mt-1 text-sm text-slate-500">
                Primeira sessão com essa pessoa — sem histórico de repetição.
              </p>
            </button>
          </div>

          {repeatMode === 'repeat' && (
            <div className="mt-5">
              {sessionsLoading ? (
                <LoadingCard message="Carregando parceiros anteriores..." />
              ) : previousPartners.length === 0 ? (
                <div className="rounded-xl border border-dashed border-slate-200 bg-slate-50/80 px-4 py-4 text-sm text-slate-600">
                  Você ainda não tem sessões com outra pessoa. Quando alguém entrar no seu código,
                  {' '}ela aparecerá aqui nas próximas vezes.
                </div>
              ) : (
                <div className="space-y-2">
                  <p className="text-sm font-medium text-slate-700">Com quem foi?</p>
                  {previousPartners.map((partner) => {
                    const selected = selectedPartnerId === partner.userId;
                    return (
                      <button
                        key={partner.userId}
                        type="button"
                        onClick={() => setSelectedPartnerId(partner.userId)}
                        className={`flex w-full items-center justify-between gap-3 rounded-xl border px-4 py-3 text-left transition ${
                          selected
                            ? 'border-rose-300 bg-rose-50/60 ring-1 ring-rose-200'
                            : 'border-slate-200 bg-white hover:border-slate-300'
                        }`}
                      >
                        <div>
                          <p className="font-medium text-slate-900">{partner.name}</p>
                          <p className="mt-0.5 text-xs text-slate-500">
                            {partner.sessionCount} sessão{partner.sessionCount === 1 ? '' : 'ões'}
                            {partner.lastSessionAt ? ` · ${formatPartnerLastSession(partner.lastSessionAt)}` : ''}
                          </p>
                        </div>
                        {selected && (
                          <span className="text-xs font-semibold text-rose-600">Selecionado</span>
                        )}
                      </button>
                    );
                  })}
                </div>
              )}
            </div>
          )}
        </section>
      )}

      {step === 'format' && (
        <section className="card p-5">
          {repeatMode === 'repeat' && partnerDisplayName && (
            <p className="mb-4 rounded-lg border border-amber-200 bg-amber-50/60 px-3 py-2 text-sm text-amber-900">
              Nova sessão com <span className="font-semibold">{partnerDisplayName}</span>
              {partnerSessionCount > 0 && (
                <> · {partnerSessionCount} questionário{partnerSessionCount === 1 ? '' : 's'} anterior{partnerSessionCount === 1 ? '' : 'es'}</>
              )}
            </p>
          )}
          <h2 className="font-semibold text-slate-900">Como vocês vão jogar?</h2>
          <p className="mt-1 text-sm text-slate-500">
            Escolha se respondem no próprio ritmo ou juntos ao vivo.
          </p>
          <div className="mt-4 grid gap-3 sm:grid-cols-2">
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
      )}

      {step === 'questions' && (
        <section className="card p-5">
          <div className="mb-5 flex flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
            <div>
              <h2 className="font-semibold text-slate-900">Monte o questionário</h2>
              <p className="mt-1 text-sm text-slate-500">
                Use um pacote pronto, explore por tema ou abra &quot;Minhas perguntas&quot; para criar novas aqui.
              </p>
            </div>
          </div>
          {loading || (repeatMode === 'repeat' && previouslyAskedLoading) ? (
            <LoadingCard message="Carregando perguntas..." />
          ) : (
            <SessionQuestionBuilder
              questions={allQuestions}
              selection={selection}
              onAddQuestion={addQuestion}
              previouslyAskedIds={previouslyAskedIds}
              partnerName={repeatMode === 'repeat' ? partnerDisplayName : null}
            />
          )}
        </section>
      )}

      {step === 'review' && (
        <section className="space-y-4">
          <div className="card p-5">
            <h2 className="font-semibold text-slate-900">Resumo</h2>
            <dl className="mt-4 grid gap-3 text-sm sm:grid-cols-2">
              <div>
                <dt className="text-slate-500">Parceiro</dt>
                <dd className="font-medium text-slate-900">
                  {repeatMode === 'repeat' && partnerDisplayName ? partnerDisplayName : 'Alguém novo'}
                </dd>
              </div>
              <div>
                <dt className="text-slate-500">Formato</dt>
                <dd className="font-medium text-slate-900">{formatMeta?.label}</dd>
              </div>
              <div>
                <dt className="text-slate-500">Perguntas</dt>
                <dd className="font-medium text-slate-900">{selectedQuestions.length}</dd>
              </div>
              {repeatMode === 'repeat' && previouslyAskedIds.size > 0 && (
                <div>
                  <dt className="text-slate-500">Já perguntadas antes</dt>
                  <dd className="font-medium text-amber-800">
                    {selectedQuestions.filter((q) => previouslyAskedIds.has(q.id)).length} neste questionário
                  </dd>
                </div>
              )}
            </dl>
          </div>

          <div className="card p-5">
            <QuestionSelectionPanel
              selectedQuestions={selectedQuestions}
              removedQuestions={removedQuestions}
              hideRemoved={hideRemoved}
              onHideRemovedChange={setHideRemoved}
              onMarkRemoved={markRemoved}
              onRestore={restore}
              onClearSelected={clearSelected}
              onClearRemoved={clearRemoved}
              previouslyAskedIds={previouslyAskedIds}
            />
          </div>

          <div className="card p-5">
            <h2 className="mb-4 font-semibold text-slate-900">Ordem do questionário</h2>
            <ol className="space-y-3">
              {selectedQuestions.map((question, index) => (
                <li
                  key={question.id}
                  className="flex items-start gap-3 rounded-lg border border-slate-100 bg-slate-50/50 px-3 py-3"
                >
                  <span className="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-rose-500 text-xs font-bold text-white">
                    {index + 1}
                  </span>
                  <div className="min-w-0 flex-1">
                    <div className="mb-1 flex flex-wrap gap-1.5">
                      <CategoryBadge categoryId={question.categoryId} />
                      <QuestionTypeBadge type={question.type} />
                      {previouslyAskedIds.has(question.id) && <PreviouslyAskedBadge />}
                    </div>
                    <p className="text-sm text-slate-800">{question.text}</p>
                  </div>
                  <button
                    type="button"
                    onClick={() => markRemoved(question.id)}
                    className="shrink-0 text-xs text-slate-400 hover:text-red-500"
                  >
                    Remover
                  </button>
                </li>
              ))}
            </ol>
            <button
              type="button"
              onClick={() => setStep('questions')}
              className="btn-ghost mt-4 text-sm"
            >
              Ajustar perguntas
            </button>
          </div>
        </section>
      )}

      <div className="fixed inset-x-0 bottom-0 z-10 border-t border-slate-200/80 bg-white/95 px-4 py-4 backdrop-blur-md lg:px-6">
        <div className="mx-auto flex max-w-5xl flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
          <p className="text-center text-sm text-slate-600 sm:text-left">
            {step === 'partner' && 'Passo 1 de 4 — quem vai participar'}
            {step === 'format' && 'Passo 2 de 4 — formato da sessão'}
            {step === 'questions' && (
              selectedIds.length === 0
                ? 'Escolha pelo menos uma pergunta para continuar'
                : (
                  <>
                    <span className="font-semibold text-slate-900">{selectedIds.length}</span>
                    {' '}pergunta{selectedIds.length === 1 ? '' : 's'} selecionada{selectedIds.length === 1 ? '' : 's'}
                  </>
                )
            )}
            {step === 'review' && 'Pronto para criar e compartilhar o código'}
          </p>
          <div className="flex gap-3">
            {step !== 'partner' ? (
              <button type="button" onClick={goBack} className="btn-secondary flex-1 sm:flex-none">
                Voltar
              </button>
            ) : (
              <Link to="/home" className="btn-secondary flex-1 sm:flex-none">
                Cancelar
              </Link>
            )}
            {step === 'review' ? (
              <button
                type="button"
                disabled={submitting}
                onClick={handleSubmit}
                className="btn-primary flex-1 sm:min-w-[180px]"
              >
                {submitting ? 'Criando...' : 'Criar sessão'}
              </button>
            ) : (
              <button
                type="button"
                disabled={!canGoNext}
                onClick={goNext}
                className="btn-primary flex-1 sm:min-w-[180px]"
              >
                Continuar
              </button>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
