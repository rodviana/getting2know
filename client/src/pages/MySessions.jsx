import { Link } from 'react-router-dom';
import { useEffect, useState } from 'react';
import { useSession } from '../hooks/useSession';
import {
  formatSessionDate,
  getOtherParticipantName,
  getSessionPrimaryLink,
  getSessionStatusLabel,
  getSessionStatusStyle,
} from '../utils/sessionHistory';
import { getSessionFormatLabel, getSessionFormatStyle } from '../utils/sessionFormat';
import { Card, EmptyState, LoadingCard, PageHeader } from '../components/ui/PageElements';

export default function MySessions() {
  const { listUserSessions } = useSession();
  const [userSessions, setUserSessions] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let active = true;
    async function load() {
      setLoading(true);
      try {
        const data = await listUserSessions();
        if (active) setUserSessions(data || []);
      } finally {
        if (active) setLoading(false);
      }
    }
    load();
    return () => { active = false; };
  }, [listUserSessions]);

  if (loading) {
    return <LoadingCard message="Carregando histórico..." />;
  }

  return (
    <div className="space-y-6">
      <PageHeader
        backTo="/home"
        eyebrow="Suas sessões"
        title="Histórico"
        description="Todas as sessões em que você participou — como anfitrião ou convidado."
      />

      {userSessions.length === 0 ? (
        <Card>
          <EmptyState
            title="Nenhuma sessão ainda"
            description="Crie uma sessão ou entre com um código para começar."
          />
          <div className="flex flex-col justify-center gap-3 pb-6 sm:flex-row">
            <Link to="/sessions/new" className="btn-primary">Criar sessão</Link>
            <Link to="/home?join=1" className="btn-secondary">Entrar com código</Link>
          </div>
        </Card>
      ) : (
        <div className="space-y-3">
          {userSessions.map((item) => {
            const answered = item.answeredPairs ?? 0;
            const total = item.questionCount ?? 0;
            const otherName = getOtherParticipantName(item, item.role);
            const primaryLink = getSessionPrimaryLink(item);

            return (
              <Card key={item.code} className="p-5">
                <div className="flex flex-col gap-4 sm:flex-row sm:items-start sm:justify-between">
                  <div className="min-w-0 flex-1">
                    <div className="flex flex-wrap items-center gap-2">
                      <span className="rounded-md border border-slate-200 bg-slate-50 px-2 py-0.5 font-mono text-sm font-semibold tracking-wider text-slate-700">
                        {item.code}
                      </span>
                      <span
                        className={`rounded-full px-2.5 py-0.5 text-xs font-medium ring-1 ring-inset ${getSessionStatusStyle(item.status)}`}
                      >
                        {getSessionStatusLabel(item.status)}
                      </span>
                      <span
                        className={`rounded-full px-2.5 py-0.5 text-xs font-medium ring-1 ring-inset ${getSessionFormatStyle(item.format)}`}
                      >
                        {getSessionFormatLabel(item.format)}
                      </span>
                      <span className="text-xs text-slate-500">
                        {item.role === 'host' ? 'Você criou' : 'Você entrou'}
                      </span>
                    </div>

                    <p className="mt-3 text-sm text-slate-600">
                      Com <span className="font-medium text-slate-900">{otherName}</span>
                    </p>

                    <div className="mt-2 flex flex-wrap gap-x-4 gap-y-1 text-xs text-slate-500">
                      <span>Criada em {formatSessionDate(item.createdAt)}</span>
                      {item.finishedAt && (
                        <span>Concluída em {formatSessionDate(item.finishedAt)}</span>
                      )}
                      <span>
                        {answered}/{total} pergunta{total === 1 ? '' : 's'} respondida{answered === 1 ? '' : 's'}
                      </span>
                    </div>
                  </div>

                  <div className="flex shrink-0 flex-wrap gap-2">
                    {answered > 0 && (
                      <Link
                        to={`/sessions/${item.code}/history`}
                        className="btn-ghost px-3 py-2 text-sm"
                      >
                        Ver respostas
                      </Link>
                    )}
                    <Link to={primaryLink} className="btn-primary px-3 py-2 text-sm">
                      {item.status === 'finished' ? 'Ver resumo' : 'Abrir sessão'}
                    </Link>
                  </div>
                </div>
              </Card>
            );
          })}
        </div>
      )}
    </div>
  );
}
