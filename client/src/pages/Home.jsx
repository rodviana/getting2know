import { Link, useNavigate, useSearchParams } from 'react-router-dom';
import { useEffect, useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { fetchHome } from '../services/authService';
import { fetchMySessions } from '../services/sessionService';
import { showApiError } from '../services/apiClient';
import JoinSessionModal from '../components/session/JoinSessionModal';
import { LoadingCard } from '../components/ui/PageElements';
import {
  getOtherParticipantName,
  getSessionActionLabel,
  getSessionPrimaryLink,
  getSessionStatusLabel,
  getSessionStatusStyle,
  isSessionActive,
} from '../utils/sessionHistory';
import { getSessionFormatLabel, getSessionFormatStyle } from '../utils/sessionFormat';

function ActiveSessionRow({ session }) {
  const otherName = getOtherParticipantName(session, session.role);
  const answered = session.answeredPairs ?? 0;
  const total = session.questionCount ?? 0;
  const link = getSessionPrimaryLink(session);

  return (
    <Link
      to={link}
      className="group flex items-center gap-4 rounded-xl border border-rose-200/80 bg-gradient-to-r from-rose-50/80 to-white p-4 transition hover:border-rose-300 hover:shadow-md hover:shadow-rose-100"
    >
      <div className="flex h-11 w-11 shrink-0 items-center justify-center rounded-lg bg-white font-mono text-sm font-bold tracking-wider text-rose-600 shadow-sm ring-1 ring-rose-100">
        {session.code}
      </div>

      <div className="min-w-0 flex-1">
        <div className="flex flex-wrap items-center gap-2">
          <span className={`rounded-full px-2 py-0.5 text-xs font-medium ring-1 ring-inset ${getSessionStatusStyle(session.status)}`}>
            {getSessionStatusLabel(session.status)}
          </span>
          <span className={`rounded-full px-2 py-0.5 text-xs font-medium ring-1 ring-inset ${getSessionFormatStyle(session.format)}`}>
            {getSessionFormatLabel(session.format)}
          </span>
          <span className="text-sm text-slate-600">
            com <span className="font-medium text-slate-900">{otherName}</span>
          </span>
        </div>
        {total > 0 && (
          <p className="mt-1 text-xs text-slate-500">
            {answered}/{total} pergunta{total === 1 ? '' : 's'} respondida{answered === 1 ? '' : 's'}
          </p>
        )}
      </div>

      <span className="shrink-0 text-sm font-semibold text-rose-600 transition group-hover:text-rose-700">
        {getSessionActionLabel(session.status)}
        <span className="ml-1 inline-block transition group-hover:translate-x-0.5" aria-hidden="true">→</span>
      </span>
    </Link>
  );
}

export default function Home() {
  const { session } = useAuth();
  const [searchParams, setSearchParams] = useSearchParams();
  const [home, setHome] = useState(null);
  const [sessions, setSessions] = useState([]);
  const [loading, setLoading] = useState(true);
  const [joinOpen, setJoinOpen] = useState(false);
  const [joinCode, setJoinCode] = useState('');

  useEffect(() => {
    if (searchParams.get('join') === '1') {
      setJoinCode(searchParams.get('code') || '');
      setJoinOpen(true);
      setSearchParams({}, { replace: true });
    }
  }, [searchParams, setSearchParams]);

  useEffect(() => {
    let active = true;
    async function load() {
      try {
        const [homeData, sessionsData] = await Promise.all([
          fetchHome(session.token),
          fetchMySessions(session.token),
        ]);
        if (active) {
          setHome(homeData);
          setSessions(sessionsData || []);
        }
      } catch (error) {
        if (active) showApiError(error);
      } finally {
        if (active) setLoading(false);
      }
    }
    load();
    return () => { active = false; };
  }, [session.token]);

  function openJoinModal() {
    setJoinCode('');
    setJoinOpen(true);
  }

  function closeJoinModal() {
    setJoinOpen(false);
    setJoinCode('');
  }

  if (loading) {
    return <LoadingCard message="Carregando..." />;
  }

  if (!home) {
    return null;
  }

  const activeSessions = sessions.filter((item) => isSessionActive(item.status));

  return (
    <>
      <div className="space-y-8">
        <header>
          <h1 className="text-2xl font-bold tracking-tight text-slate-900 sm:text-3xl">
            {home.message}
          </h1>
          <p className="mt-1 text-sm text-slate-500">
            Convide alguém, respondam no ritmo de vocês e vejam as respostas juntos.
          </p>
        </header>

        <section>
          <div className="mb-3 flex items-center justify-between gap-3">
            <h2 className="text-sm font-semibold uppercase tracking-wider text-slate-500">
              Sessões ativas
            </h2>
            {sessions.length > 0 && (
              <Link to="/my-sessions" className="text-sm font-medium text-rose-600 hover:text-rose-700">
                Ver todas
              </Link>
            )}
          </div>

          {activeSessions.length > 0 ? (
            <div className="space-y-2">
              {activeSessions.map((item) => (
                <ActiveSessionRow key={item.code} session={item} />
              ))}
            </div>
          ) : (
            <div className="rounded-xl border border-dashed border-slate-200 bg-slate-50/50 px-4 py-6 text-center">
              <p className="text-sm font-medium text-slate-700">Nenhuma sessão em andamento</p>
              <p className="mt-1 text-sm text-slate-500">
                Crie uma nova ou entre com um código que recebeu.
              </p>
            </div>
          )}
        </section>

        <section className="flex flex-col gap-3 sm:flex-row">
          <Link to="/sessions/new" className="btn-primary flex-1 py-3 sm:flex-[1.4]">
            <svg className="h-4 w-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
              <path d="M12 5v14M5 12h14" strokeLinecap="round" />
            </svg>
            Nova sessão
          </Link>
          <button type="button" onClick={openJoinModal} className="btn-secondary flex-1 py-3">
            Tenho um código
          </button>
        </section>

        <nav className="flex flex-wrap items-center gap-x-1 gap-y-2 border-t border-slate-200/80 pt-6 text-sm">
          <Link to="/questions" className="font-medium text-slate-600 hover:text-rose-600">
            Minhas perguntas
          </Link>
          <span className="text-slate-300" aria-hidden="true">·</span>
          <Link to="/my-sessions" className="font-medium text-slate-600 hover:text-rose-600">
            Histórico
          </Link>
        </nav>
      </div>

      <JoinSessionModal
        open={joinOpen}
        onClose={closeJoinModal}
        initialCode={joinCode}
      />
    </>
  );
}
