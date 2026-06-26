import { Link, useParams } from 'react-router-dom';
import { useSession } from '../hooks/useSession';
import CategoryBadge from '../components/session/CategoryBadge';
import QuestionTypeBadge from '../components/session/QuestionTypeBadge';
import { Card, EmptyState, LoadingCard, PageHeader } from '../components/ui/PageElements';

export default function SessionHistory() {
  const { code } = useParams();
  const { session, loading, formatAnswer } = useSession(code);

  if (loading && !session) {
    return <LoadingCard message="Carregando histórico..." />;
  }

  if (!session) {
    return (
      <EmptyState
        title="Sessão não encontrada"
        description="Não há histórico para este código."
      />
    );
  }

  const answeredQuestions = session.questions.filter(
    (question) => session.answers[question.id] && session.partnerAnswers[question.id],
  );

  return (
    <div className="space-y-6">
      <PageHeader
        backTo={session.status === 'finished' ? `/sessions/${code}/summary` : `/sessions/${code}/play`}
        eyebrow={`Sessão ${code}`}
        title="Histórico"
        description="Todas as perguntas que vocês já responderam nesta sessão."
      />

      {answeredQuestions.length === 0 ? (
        <Card>
          <EmptyState
            title="Nenhuma resposta ainda"
            description="Quando responderem a primeira pergunta, ela aparece aqui."
          />
        </Card>
      ) : (
        <div className="space-y-4">
          {answeredQuestions.map((question, index) => (
            <Card key={question.id}>
              <div className="flex flex-wrap items-center justify-between gap-2">
                <p className="text-xs font-semibold uppercase tracking-wider text-slate-400">
                  Pergunta {index + 1}
                </p>
                <div className="flex gap-2">
                  <CategoryBadge categoryId={question.categoryId} />
                  <QuestionTypeBadge type={question.type} />
                </div>
              </div>
              <h2 className="mt-2 text-lg font-semibold text-slate-900">{question.text}</h2>
              <div className="mt-4 grid gap-3 sm:grid-cols-2">
                <div className="rounded-lg border border-rose-100 bg-rose-50/50 p-3">
                  <p className="text-xs font-semibold text-rose-600">{session.hostName}</p>
                  <p className="mt-1 text-sm text-slate-700">{formatAnswer(session.answers[question.id])}</p>
                </div>
                <div className="rounded-lg border border-slate-200 bg-slate-50 p-3">
                  <p className="text-xs font-semibold text-slate-500">{session.partnerName}</p>
                  <p className="mt-1 text-sm text-slate-700">{formatAnswer(session.partnerAnswers[question.id])}</p>
                </div>
              </div>
            </Card>
          ))}
        </div>
      )}

      <div className="flex justify-end">
        <Link
          to={session.status === 'finished' ? `/sessions/${code}/summary` : `/sessions/${code}/play`}
          className="btn-primary"
        >
          {session.status === 'finished' ? 'Ver resumo' : 'Continuar sessão'}
        </Link>
      </div>
    </div>
  );
}
