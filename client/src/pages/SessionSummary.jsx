import { Link, Navigate, useParams } from 'react-router-dom';
import { useSession } from '../hooks/useSession';
import CategoryBadge from '../components/session/CategoryBadge';
import QuestionTypeBadge from '../components/session/QuestionTypeBadge';
import { Card, EmptyState, LoadingCard, PageHeader } from '../components/ui/PageElements';

export default function SessionSummary() {
  const { code } = useParams();
  const { session, loading, formatAnswer } = useSession(code);

  if (loading && !session) {
    return <LoadingCard message="Carregando resumo..." />;
  }

  if (!session) {
    return (
      <EmptyState
        title="Sessão não encontrada"
        description="Volte ao início e comece de novo."
      />
    );
  }

  if (session.status !== 'finished') {
    return <Navigate to={`/sessions/${code}/play`} replace />;
  }

  const answeredCount = session.progress?.answered ?? Object.keys(session.answers).length;

  return (
    <div className="space-y-6">
      <PageHeader
        backTo="/home"
        eyebrow={`Sessão ${code}`}
        title="Sessão concluída!"
        description="Vocês responderam todas as perguntas. Que tal mais uma rodada outro dia?"
      />

      <Card className="text-center">
        <div className="mx-auto flex h-16 w-16 items-center justify-center rounded-full bg-rose-100 text-3xl">
          🎉
        </div>
        <p className="mt-4 text-3xl font-bold text-slate-900">{answeredCount}</p>
        <p className="text-sm text-slate-500">perguntas respondidas juntos</p>
      </Card>

      <Card>
        <h2 className="font-semibold text-slate-900">Destaques</h2>
        <div className="mt-4 space-y-4">
          {session.questions.map((question) => (
            <div key={question.id} className="rounded-xl border border-slate-100 bg-slate-50/50 p-4">
              <div className="flex flex-wrap items-center gap-2">
                <CategoryBadge categoryId={question.categoryId} />
                <QuestionTypeBadge type={question.type} />
              </div>
              <p className="mt-2 text-sm font-medium text-slate-900">{question.text}</p>
              <div className="mt-3 grid gap-2 sm:grid-cols-2">
                <p className="text-sm text-slate-600">
                  <span className="font-medium text-slate-700">{session.hostName}:</span>{' '}
                  {formatAnswer(session.answers[question.id])}
                </p>
                <p className="text-sm text-slate-600">
                  <span className="font-medium text-slate-700">{session.partnerName}:</span>{' '}
                  {formatAnswer(session.partnerAnswers[question.id])}
                </p>
              </div>
            </div>
          ))}
        </div>
      </Card>

      <div className="flex flex-col gap-3 sm:flex-row sm:justify-center">
        <Link to={`/sessions/${code}/history`} className="btn-secondary">
          Ver histórico completo
        </Link>
        <Link to="/sessions/new" className="btn-primary">
          Nova sessão
        </Link>
        <Link to="/home" className="btn-ghost">
          Voltar ao início
        </Link>
      </div>
    </div>
  );
}
