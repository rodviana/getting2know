import { Link, Navigate, useParams } from 'react-router-dom';
import { useEffect, useRef, useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { useSession } from '../hooks/useSession';
import { isAnswerValid } from '../utils/answers';
import { getSessionFormatLabel, getSessionPollInterval, isAsyncFormat } from '../utils/sessionFormat';
import { getOtherParticipantName } from '../utils/sessionHistory';
import CategoryBadge from '../components/session/CategoryBadge';
import QuestionTypeBadge from '../components/session/QuestionTypeBadge';
import QuestionAnswerForm from '../components/session/QuestionAnswerForm';
import SessionProgress from '../components/session/SessionProgress';
import { Card, EmptyState, LoadingCard, PageHeader } from '../components/ui/PageElements';

function AnswerCard({ name, answer, highlight }) {
  return (
    <div className={`rounded-xl border p-4 ${highlight ? 'border-rose-200 bg-rose-50/60' : 'border-slate-200 bg-slate-50/50'}`}>
      <p className="text-xs font-semibold uppercase tracking-wider text-slate-400">{name}</p>
      <p className="mt-2 text-sm leading-relaxed text-slate-800">{answer}</p>
    </div>
  );
}

function emptyAnswerForQuestion(question) {
  if (question.type === 'MULTIPLE_CHOICE') return [];
  return '';
}

function AsyncSessionPlay({
  code,
  session,
  refresh,
  submitAnswer,
  formatAnswer,
}) {
  const { session: authSession } = useAuth();
  const [questionIndex, setQuestionIndex] = useState(0);
  const [answer, setAnswer] = useState('');
  const [submitting, setSubmitting] = useState(false);
  const activeQuestionIdRef = useRef(null);

  const questions = session.questions || [];
  const total = questions.length;
  const myAnswered = session.progress?.myAnswered ?? 0;
  const partnerAnswered = session.progress?.partnerAnswered ?? 0;
  const otherName = getOtherParticipantName(session);
  const allAnswered = myAnswered >= total && total > 0;
  const waitingForPartner = session.waitingForPartner || (allAnswered && partnerAnswered < total);
  const currentQuestion = questions[questionIndex];
  const questionId = currentQuestion?.id;
  const alreadyAnswered = questionId && session.myAnswers?.[questionId] != null;

  useEffect(() => {
    if (!questionId || !currentQuestion) return;

    const serverAnswer = session.myAnswers?.[questionId];
    if (serverAnswer != null) {
      setAnswer(serverAnswer);
      activeQuestionIdRef.current = questionId;
      return;
    }

    if (activeQuestionIdRef.current !== questionId) {
      activeQuestionIdRef.current = questionId;
      setAnswer(emptyAnswerForQuestion(currentQuestion));
    }
  }, [questionId, currentQuestion, session.myAnswers]);

  useEffect(() => {
    if (!waitingForPartner) return undefined;
    const interval = getSessionPollInterval(session.format);
    const intervalId = setInterval(() => { refresh(); }, interval);
    return () => clearInterval(intervalId);
  }, [waitingForPartner, session.format, refresh]);

  if (waitingForPartner) {
    return (
      <div className="space-y-6">
        <PageHeader
          backTo={`/sessions/${code}`}
          backLabel="Sala de espera"
          eyebrow={`Sessão ${code}`}
          title="Quase lá!"
          description="Você respondeu tudo. As respostas só aparecem quando os dois terminarem."
        />
        <Card className="border-dashed border-sky-200 bg-sky-50/50 text-center">
          <p className="text-sm text-sky-900">
            Aguardando <strong>{otherName}</strong> terminar o questionário
            {' '}({partnerAnswered}/{total} perguntas).
          </p>
          <p className="mt-2 text-xs text-sky-700">
            Ninguém vê as respostas do outro até os dois concluírem.
          </p>
        </Card>
      </div>
    );
  }

  async function handleSubmit(event) {
    event.preventDefault();
    if (!isAnswerValid(answer, currentQuestion) || submitting || alreadyAnswered) return;
    setSubmitting(true);
    try {
      await submitAnswer(code, currentQuestion.id, answer);
      if (questionIndex < total - 1) {
        setQuestionIndex((index) => index + 1);
      }
    } catch {
      // apiClient already showed the error toast
    } finally {
      setSubmitting(false);
    }
  }

  return (
    <div className="space-y-6">
      <PageHeader
        backTo={`/sessions/${code}`}
        backLabel="Sala de espera"
        eyebrow={`Sessão ${code}`}
        title="Responda no seu tempo"
        description="Vá no seu ritmo. Só veem o resultado quando os dois terminarem — nada aparece no meio."
      />

      <div className="flex justify-end">
        <span className="rounded-full bg-slate-100 px-2.5 py-1 text-xs font-medium text-slate-600">
          {getSessionFormatLabel(session.format)}
        </span>
      </div>

      <SessionProgress current={myAnswered} total={total} />

      <div className="flex items-center justify-between gap-3 text-sm text-slate-600">
        <span>
          Pergunta <strong>{questionIndex + 1}</strong> de <strong>{total}</strong>
        </span>
        <span className="text-xs text-slate-500">
          {otherName}: {partnerAnswered}/{total} respondida{partnerAnswered === 1 ? '' : 's'}
        </span>
      </div>

      <Card>
        <div className="mb-4 flex flex-wrap items-center gap-2">
          <CategoryBadge categoryId={currentQuestion.categoryId} />
          <QuestionTypeBadge type={currentQuestion.type} />
          {alreadyAnswered && (
            <span className="rounded-full bg-emerald-50 px-2 py-0.5 text-xs font-medium text-emerald-700 ring-1 ring-emerald-200">
              Respondida
            </span>
          )}
        </div>
        <h2 className="text-xl font-semibold leading-snug text-slate-900">
          {currentQuestion.text}
        </h2>
      </Card>

      {alreadyAnswered ? (
        <Card className="bg-slate-50/80">
          <p className="text-xs font-semibold uppercase tracking-wider text-slate-400">Sua resposta</p>
          <p className="mt-2 text-sm leading-relaxed text-slate-800">{formatAnswer(session.myAnswers[questionId])}</p>
        </Card>
      ) : (
        <Card>
          <form onSubmit={handleSubmit} className="space-y-4">
            <QuestionAnswerForm
              question={currentQuestion}
              value={answer}
              onChange={setAnswer}
            />
            <div className="flex justify-end">
              <button
                type="submit"
                disabled={!isAnswerValid(answer, currentQuestion) || submitting}
                className="btn-primary"
              >
                {submitting ? 'Enviando...' : 'Enviar resposta'}
              </button>
            </div>
          </form>
        </Card>
      )}

      <div className="flex justify-between gap-3">
        <button
          type="button"
          disabled={questionIndex === 0}
          onClick={() => setQuestionIndex((index) => index - 1)}
          className="btn-secondary"
        >
          Anterior
        </button>
        <button
          type="button"
          disabled={questionIndex >= total - 1}
          onClick={() => setQuestionIndex((index) => index + 1)}
          className="btn-secondary"
        >
          Próxima
        </button>
      </div>
    </div>
  );
}

function LiveSessionPlay({
  code,
  session,
  authSession,
  currentQuestion,
  progress,
  submitAnswer,
  nextQuestion,
  formatAnswer,
  refresh,
}) {
  const [answer, setAnswer] = useState('');
  const [submitting, setSubmitting] = useState(false);
  const [advancing, setAdvancing] = useState(false);
  const [submittedWaiting, setSubmittedWaiting] = useState(false);
  const activeQuestionIdRef = useRef(null);

  const questionId = currentQuestion?.id;

  useEffect(() => {
    setSubmittedWaiting(false);
  }, [questionId]);

  useEffect(() => {
    if (!questionId || !currentQuestion) return;

    const serverAnswer = session?.myCurrentAnswer;
    if (serverAnswer != null) {
      setAnswer(serverAnswer);
      activeQuestionIdRef.current = questionId;
      return;
    }

    if (activeQuestionIdRef.current !== questionId) {
      activeQuestionIdRef.current = questionId;
      setAnswer(emptyAnswerForQuestion(currentQuestion));
    }
  }, [questionId, currentQuestion, session?.myCurrentAnswer]);

  useEffect(() => {
    const bothAnswered = session?.iAnsweredCurrent && session?.partnerAnsweredCurrent;
    const shouldPoll = submittedWaiting
      || session?.waitingForPartner
      || session?.status === 'reveal'
      || (bothAnswered && session?.status === 'playing');
    if (!shouldPoll) return undefined;
    const interval = getSessionPollInterval(session?.format);
    const intervalId = setInterval(() => { refresh(); }, interval);
    return () => clearInterval(intervalId);
  }, [
    submittedWaiting,
    session?.waitingForPartner,
    session?.status,
    session?.format,
    session?.iAnsweredCurrent,
    session?.partnerAnsweredCurrent,
    refresh,
  ]);

  const myName = authSession?.name || 'Você';
  const otherName = getOtherParticipantName(session);
  const isGuest = session.role === 'partner';
  const hostName = session.hostName || 'Anfitrião';
  const bothAnswered = session.iAnsweredCurrent && session.partnerAnsweredCurrent;
  const isReveal = session.status === 'reveal';
  const isRevealPending = bothAnswered && session.status === 'playing';
  const isWaiting = !isReveal && !isRevealPending && (
    submittedWaiting
    || session.waitingForPartner
    || (session.iAnsweredCurrent && !session.partnerAnsweredCurrent)
  );
  const isLiveGuest = !session.canControl;
  const myAnswer = session.myCurrentAnswer;
  const partnerAnswer = session.partnerCurrentAnswer;

  async function handleSubmit(event) {
    event.preventDefault();
    if (!isAnswerValid(answer, currentQuestion) || submitting || isWaiting || session.iAnsweredCurrent) return;
    setSubmitting(true);
    try {
      await submitAnswer(code, currentQuestion.id, answer);
      setSubmittedWaiting(true);
    } catch {
      // apiClient already showed the error toast
    } finally {
      setSubmitting(false);
    }
  }

  async function handleNext() {
    if (advancing) return;
    setAdvancing(true);
    try {
      await nextQuestion(code);
    } catch {
      // apiClient already showed the error toast
    } finally {
      setAdvancing(false);
    }
  }

  return (
    <div className="space-y-6">
      <PageHeader
        backTo={`/sessions/${code}`}
        backLabel="Sala de espera"
        eyebrow={`Sessão ${code}`}
        title={
          isReveal
            ? 'Vejam as respostas'
            : isWaiting
              ? (isGuest ? 'Aguardando o anfitrião' : `Aguardando ${otherName}`)
              : 'Sua vez de responder'
        }
        description={
          isReveal
            ? isLiveGuest
              ? `As duas respostas ficam visíveis. Aguarde ${otherName} avançar.`
              : 'As duas respostas ficam visíveis agora. Conversem e sigam quando quiserem.'
            : isWaiting
              ? (isGuest
                ? `Você já respondeu. Assim que ${hostName} enviar, vocês veem juntos.`
                : `Você já respondeu. Assim que ${otherName} enviar, vocês veem juntos.`)
              : 'Modo ao vivo: respondam juntos, pergunta a pergunta.'
        }
      />

      <div className="flex justify-end">
        <span className="rounded-full bg-slate-100 px-2.5 py-1 text-xs font-medium text-slate-600">
          {getSessionFormatLabel(session.format)}
        </span>
      </div>

      <SessionProgress current={progress.current} total={progress.total} />

      <Card>
        <div className="mb-4 flex flex-wrap items-center gap-2">
          <CategoryBadge categoryId={currentQuestion.categoryId} />
          <QuestionTypeBadge type={currentQuestion.type} />
        </div>
        <h2 className="text-xl font-semibold leading-snug text-slate-900">
          {currentQuestion.text}
        </h2>
      </Card>

      {isReveal ? (
        <div className="space-y-4">
          <div className="grid gap-4 sm:grid-cols-2">
            <AnswerCard name={myName} answer={formatAnswer(myAnswer)} highlight />
            <AnswerCard name={otherName} answer={formatAnswer(partnerAnswer)} />
          </div>

          <div className="flex flex-col gap-3 sm:flex-row sm:justify-end">
            <Link to={`/sessions/${code}/history`} className="btn-secondary">
              Ver histórico
            </Link>
            {session.canControl ? (
              <button type="button" onClick={handleNext} disabled={advancing} className="btn-primary">
                {advancing
                  ? 'Avançando...'
                  : progress.current >= progress.total
                    ? 'Finalizar sessão'
                    : 'Próxima pergunta'}
              </button>
            ) : (
              <p className="self-center text-sm text-slate-500">
                Aguardando <strong>{otherName}</strong> avançar...
              </p>
            )}
          </div>
        </div>
      ) : isWaiting ? (
        <Card className="border-dashed border-sky-200 bg-sky-50/50">
          <p className="text-sm text-sky-900">
            {isGuest ? (
              <>
                Sua resposta foi enviada. Aguarde o anfitrião, <strong>{hostName}</strong>, responder...
              </>
            ) : (
              <>
                Sua resposta foi enviada. Aguardando <strong>{otherName}</strong> responder...
              </>
            )}
          </p>
        </Card>
      ) : isRevealPending ? (
        <Card className="border-dashed border-sky-200 bg-sky-50/50">
          <p className="text-sm text-sky-900">
            Vocês dois responderam. Preparando para ver as respostas...
          </p>
        </Card>
      ) : (
        <Card>
          <form onSubmit={handleSubmit} className="space-y-4">
            <QuestionAnswerForm
              question={currentQuestion}
              value={answer}
              onChange={setAnswer}
            />
            <div className="flex justify-end">
              <button
                type="submit"
                disabled={!isAnswerValid(answer, currentQuestion) || submitting}
                className="btn-primary"
              >
                {submitting ? 'Enviando...' : 'Enviar resposta'}
              </button>
            </div>
          </form>
        </Card>
      )}
    </div>
  );
}

export default function SessionPlay() {
  const { code } = useParams();
  const { session: authSession } = useAuth();
  const {
    session,
    loading,
    currentQuestion,
    progress,
    submitAnswer,
    nextQuestion,
    formatAnswer,
    refresh,
  } = useSession(code, { poll: false });

  if (loading && !session) {
    return <LoadingCard message="Carregando sessão..." />;
  }

  if (!session) {
    return (
      <EmptyState
        title="Sessão não encontrada"
        description="Volte ao início e crie ou entre numa sessão."
      />
    );
  }

  if (session.status === 'lobby') {
    return <Navigate to={`/sessions/${code}`} replace />;
  }

  if (session.status === 'finished') {
    return <Navigate to={`/sessions/${code}/summary`} replace />;
  }

  if (isAsyncFormat(session.format)) {
    return (
      <AsyncSessionPlay
        code={code}
        session={session}
        refresh={refresh}
        submitAnswer={submitAnswer}
        formatAnswer={formatAnswer}
      />
    );
  }

  if (!currentQuestion) {
    return <Navigate to={`/sessions/${code}/summary`} replace />;
  }

  return (
    <LiveSessionPlay
      code={code}
      session={session}
      authSession={authSession}
      currentQuestion={currentQuestion}
      progress={progress}
      submitAnswer={submitAnswer}
      nextQuestion={nextQuestion}
      formatAnswer={formatAnswer}
      refresh={refresh}
    />
  );
}
