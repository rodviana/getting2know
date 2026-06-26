import { Link, Navigate, useParams } from 'react-router-dom';
import { useEffect, useRef, useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { useSession } from '../hooks/useSession';
import { isAnswerValid } from '../utils/answers';
import { getSessionFormatLabel, getSessionPollInterval } from '../utils/sessionFormat';
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
  const [answer, setAnswer] = useState('');
  const [submitting, setSubmitting] = useState(false);
  const [advancing, setAdvancing] = useState(false);
  const activeQuestionIdRef = useRef(null);

  const questionId = currentQuestion?.id;

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
    const shouldPoll = session?.waitingForPartner || session?.status === 'reveal';
    if (!shouldPoll) return undefined;
    const interval = getSessionPollInterval(session?.format);
    const intervalId = setInterval(() => { refresh(); }, interval);
    return () => clearInterval(intervalId);
  }, [session?.waitingForPartner, session?.status, session?.format, refresh]);

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

  if (!currentQuestion) {
    return <Navigate to={`/sessions/${code}/summary`} replace />;
  }

  const myName = authSession?.name || 'Você';
  const partnerName = session.partnerName || 'Parceiro';
  const isReveal = session.status === 'reveal';
  const isWaiting = session.waitingForPartner;
  const isLiveGuest = session.format === 'live' && !session.canControl;
  const myAnswer = session.myCurrentAnswer;
  const partnerAnswer = session.partnerCurrentAnswer;

  async function handleSubmit(event) {
    event.preventDefault();
    if (!isAnswerValid(answer, currentQuestion) || submitting || isWaiting) return;
    setSubmitting(true);
    try {
      await submitAnswer(code, currentQuestion.id, answer);
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
        title={isReveal ? 'Vejam as respostas' : isWaiting ? 'Aguardando parceiro' : 'Sua vez de responder'}
        description={
          isReveal
            ? isLiveGuest
              ? 'As duas respostas ficam visíveis. Aguarde o anfitrião avançar.'
              : 'As duas respostas ficam visíveis agora. Conversem e sigam quando quiserem.'
            : isWaiting
              ? 'Você já respondeu. Assim que o parceiro enviar a resposta dele, vocês veem juntos.'
              : session.format === 'live'
                ? 'Modo ao vivo: respondam juntos. A outra pessoa só vê depois que os dois participarem.'
                : 'Responda com calma. A outra pessoa só vê depois que os dois participarem.'
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
            <AnswerCard name={partnerName} answer={formatAnswer(partnerAnswer)} />
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
                Aguardando o anfitrião avançar...
              </p>
            )}
          </div>
        </div>
      ) : isWaiting ? (
        <Card className="border-dashed border-sky-200 bg-sky-50/50">
          <p className="text-sm text-sky-900">
            Sua resposta foi enviada. Aguardando <strong>{partnerName}</strong> responder...
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
