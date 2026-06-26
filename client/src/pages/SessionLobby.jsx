import { Link, Navigate, useParams } from 'react-router-dom';
import { useState } from 'react';
import { useSession } from '../hooks/useSession';
import CodeDisplay from '../components/session/CodeDisplay';
import QuestionTypeBadge from '../components/session/QuestionTypeBadge';
import { getSessionFormatLabel, getSessionFormatStyle } from '../utils/sessionFormat';
import { Card, EmptyState, LoadingCard, PageHeader } from '../components/ui/PageElements';

function ParticipantCard({ name, role, status }) {
  const ready = status === 'ready';
  return (
    <div className="flex items-center gap-3 rounded-xl border border-slate-200 bg-slate-50/80 p-4">
      <div className={`flex h-10 w-10 items-center justify-center rounded-full text-sm font-bold ${ready ? 'bg-rose-100 text-rose-700' : 'bg-slate-200 text-slate-500'}`}>
        {name?.[0]?.toUpperCase() ?? '?'}
      </div>
      <div className="min-w-0 flex-1">
        <p className="font-medium text-slate-900">{name}</p>
        <p className="text-sm text-slate-500">{role}</p>
      </div>
      <span className={`rounded-full px-2.5 py-1 text-xs font-medium ${ready ? 'bg-emerald-100 text-emerald-700' : 'bg-amber-100 text-amber-700'}`}>
        {ready ? 'Pronto' : 'Aguardando'}
      </span>
    </div>
  );
}

export default function SessionLobby() {
  const { code } = useParams();
  const { session, loading, startSession } = useSession(code, { poll: true });
  const [starting, setStarting] = useState(false);

  if (loading && !session) {
    return <LoadingCard message="Carregando sessão..." />;
  }

  if (!session) {
    return (
      <EmptyState
        title="Sessão não encontrada"
        description="O código pode ter expirado ou estar incorreto."
      />
    );
  }

  if (session.status === 'playing' || session.status === 'reveal') {
    return <Navigate to={`/sessions/${code}/play`} replace />;
  }

  if (session.status === 'finished') {
    return <Navigate to={`/sessions/${code}/summary`} replace />;
  }

  const canStart = session.partnerJoined && session.canControl;
  const isLiveGuest = session.format === 'live' && session.role !== 'host';

  async function handleStart() {
    if (!canStart || starting) return;
    setStarting(true);
    try {
      await startSession(code);
    } catch {
      // apiClient already showed the error toast
    } finally {
      setStarting(false);
    }
  }

  return (
    <div className="space-y-6">
      <PageHeader
        backTo="/home"
        eyebrow={`Sessão ${code}`}
        title="Sala de espera"
        description={
          session.format === 'live'
            ? 'Modo ao vivo: quando os dois estiverem aqui, o anfitrião inicia o questionário.'
            : 'Compartilhe o código. Quando os dois estiverem aqui, comecem o questionário.'
        }
      />

      <Card className="text-center">
        <div className="mb-3 flex justify-center">
          <span className={`rounded-full px-2.5 py-1 text-xs font-medium ring-1 ring-inset ${getSessionFormatStyle(session.format)}`}>
            {getSessionFormatLabel(session.format)}
          </span>
        </div>
        <CodeDisplay code={session.code} />
      </Card>

      <div className="grid gap-4 sm:grid-cols-2">
        <ParticipantCard
          name={session.hostName}
          role="Criou a sessão"
          status="ready"
        />
        <ParticipantCard
          name={session.partnerName || 'Aguardando parceiro'}
          role="Convidado"
          status={session.partnerJoined ? 'ready' : 'waiting'}
        />
      </div>

      <Card>
        <h2 className="font-semibold text-slate-900">Questionário ({session.questions.length} perguntas)</h2>
        <ol className="mt-4 space-y-3">
          {session.questions.map((question, index) => (
            <li key={question.id} className="rounded-lg border border-slate-100 bg-slate-50/50 px-3 py-2">
              <div className="flex items-start gap-3">
                <span className="mt-0.5 text-sm font-semibold text-rose-500">{index + 1}.</span>
                <div className="min-w-0 flex-1">
                  <div className="mb-1">
                    <QuestionTypeBadge type={question.type} />
                  </div>
                  <p className="text-sm text-slate-800">{question.text}</p>
                </div>
              </div>
            </li>
          ))}
        </ol>
      </Card>

      {!session.partnerJoined && (
        <Card className="border-dashed border-amber-200 bg-amber-50/50">
          <p className="text-sm text-amber-900">
            Aguardando o parceiro entrar com o código{' '}
            <span className="font-mono font-bold">{session.code}</span>.
            Esta tela atualiza automaticamente quando ele entrar.
          </p>
        </Card>
      )}

      {session.partnerJoined && isLiveGuest && (
        <Card className="border-dashed border-orange-200 bg-orange-50/50">
          <p className="text-sm text-orange-900">
            Modo ao vivo: aguarde <strong>{session.hostName}</strong> iniciar o questionário.
          </p>
        </Card>
      )}

      <div className="flex flex-col gap-3 sm:flex-row sm:justify-end">
        <Link to="/home" className="btn-secondary">Voltar ao início</Link>
        {session.canControl && (
          <button
            type="button"
            disabled={!canStart || starting}
            onClick={handleStart}
            className="btn-primary"
          >
            {starting ? 'Iniciando...' : 'Começar perguntas'}
          </button>
        )}
      </div>
    </div>
  );
}
