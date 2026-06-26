import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import CategoryBadge from '../components/session/CategoryBadge';
import QuestionTypeBadge from '../components/session/QuestionTypeBadge';
import {
  fetchAdminDashboard,
  fetchAdminEvents,
  fetchAdminQuestionAnalytics,
  fetchAdminSessionDetail,
  fetchAdminSessions,
  fetchAdminUsers,
} from '../services/adminService';
import { showApiError } from '../services/apiClient';
import { getSessionFormatLabel } from '../utils/sessionFormat';
import { getSessionStatusLabel } from '../utils/sessionHistory';
import { Card, LoadingCard } from '../components/ui/PageElements';

const TABS = [
  { id: 'overview', label: 'Resumo' },
  { id: 'users', label: 'Usuários' },
  { id: 'sessions', label: 'Sessões' },
  { id: 'questions', label: 'Perguntas' },
  { id: 'activity', label: 'Atividade' },
];

const EVENTS_PAGE_SIZE = 25;

function StatCard({ label, value, hint }) {
  return (
    <Card className="text-center">
      <p className="text-2xl font-bold text-slate-900">{value ?? '—'}</p>
      <p className="mt-1 text-sm font-medium text-slate-700">{label}</p>
      {hint && <p className="mt-1 text-xs text-slate-500">{hint}</p>}
    </Card>
  );
}

function formatDate(value) {
  if (!value) return '—';
  return new Date(value).toLocaleString('pt-BR');
}

function formatPercent(value) {
  if (value == null) return '—';
  return `${Number(value).toFixed(1)}%`;
}

function formatNumber(value) {
  if (value == null) return '—';
  return Number(value).toLocaleString('pt-BR');
}

function AdminPagination({ page, pageSize, total, itemLabel, onPageChange, loading = false }) {
  const totalPages = Math.max(1, Math.ceil(total / pageSize));
  const safePage = Math.min(page, totalPages - 1);
  const start = total === 0 ? 0 : safePage * pageSize + 1;
  const end = Math.min((safePage + 1) * pageSize, total);

  return (
    <div className="flex flex-wrap items-center justify-between gap-3 border-t border-slate-200 pt-3">
      <p className="text-sm text-slate-500">
        {total === 0
          ? `Nenhum ${itemLabel}`
          : `Mostrando ${start}–${end} de ${formatNumber(total)} ${itemLabel}`}
      </p>
      <div className="flex items-center gap-2">
        <button
          type="button"
          disabled={loading || safePage <= 0 || total === 0}
          onClick={() => onPageChange(safePage - 1)}
          className="rounded-lg border border-slate-200 bg-white px-3 py-1.5 text-sm font-medium text-slate-700 transition hover:bg-slate-50 disabled:cursor-not-allowed disabled:opacity-40"
        >
          Anterior
        </button>
        <span className="min-w-[7rem] text-center text-sm text-slate-600">
          Página {safePage + 1} de {totalPages}
        </span>
        <button
          type="button"
          disabled={loading || safePage >= totalPages - 1 || total === 0}
          onClick={() => onPageChange(safePage + 1)}
          className="rounded-lg border border-slate-200 bg-white px-3 py-1.5 text-sm font-medium text-slate-700 transition hover:bg-slate-50 disabled:cursor-not-allowed disabled:opacity-40"
        >
          Próxima
        </button>
      </div>
    </div>
  );
}

export default function Admin() {
  const { session, logout } = useAuth();
  const [tab, setTab] = useState('overview');
  const [loading, setLoading] = useState(true);

  const [dashboard, setDashboard] = useState(null);
  const [users, setUsers] = useState([]);
  const [sessions, setSessions] = useState([]);
  const [sessionsTotal, setSessionsTotal] = useState(0);
  const [sessionFilters, setSessionFilters] = useState({ status: '', username: '' });
  const [selectedSession, setSelectedSession] = useState(null);
  const [sessionDetailLoading, setSessionDetailLoading] = useState(false);
  const [questionAnalytics, setQuestionAnalytics] = useState(null);
  const [events, setEvents] = useState([]);
  const [eventsTotal, setEventsTotal] = useState(0);
  const [eventsPage, setEventsPage] = useState(0);
  const [eventsLoading, setEventsLoading] = useState(false);
  const [eventFilters, setEventFilters] = useState({ username: '', eventType: '', ipAddress: '' });

  async function loadOverview() {
    setLoading(true);
    try {
      const data = await fetchAdminDashboard(session.token);
      setDashboard(data);
    } catch (error) {
      showApiError(error);
    } finally {
      setLoading(false);
    }
  }

  async function loadUsers() {
    setLoading(true);
    try {
      const data = await fetchAdminUsers(session.token);
      setUsers(data || []);
    } catch (error) {
      showApiError(error);
    } finally {
      setLoading(false);
    }
  }

  async function loadSessions(filters = sessionFilters) {
    setLoading(true);
    try {
      const data = await fetchAdminSessions(session.token, {
        limit: 100,
        offset: 0,
        status: filters.status || undefined,
        username: filters.username || undefined,
      });
      setSessions(data?.items || []);
      setSessionsTotal(data?.total || 0);
    } catch (error) {
      showApiError(error);
    } finally {
      setLoading(false);
    }
  }

  async function openSessionDetail(code) {
    setSessionDetailLoading(true);
    try {
      const data = await fetchAdminSessionDetail(session.token, code);
      setSelectedSession(data);
    } catch (error) {
      showApiError(error);
    } finally {
      setSessionDetailLoading(false);
    }
  }

  async function loadQuestions() {
    setLoading(true);
    try {
      const data = await fetchAdminQuestionAnalytics(session.token, 50);
      setQuestionAnalytics(data);
    } catch (error) {
      showApiError(error);
    } finally {
      setLoading(false);
    }
  }

  async function loadEvents(filters = eventFilters, page = eventsPage) {
    setEventsLoading(true);
    try {
      const data = await fetchAdminEvents(session.token, {
        limit: EVENTS_PAGE_SIZE,
        offset: page * EVENTS_PAGE_SIZE,
        username: filters.username || undefined,
        eventType: filters.eventType || undefined,
        ipAddress: filters.ipAddress || undefined,
      });
      setEvents(data?.items || []);
      setEventsTotal(data?.total || 0);
      setEventsPage(page);
    } catch (error) {
      showApiError(error);
    } finally {
      setEventsLoading(false);
    }
  }

  useEffect(() => {
    setSelectedSession(null);
    if (tab === 'overview') loadOverview();
    if (tab === 'users') loadUsers();
    if (tab === 'sessions') loadSessions();
    if (tab === 'questions') loadQuestions();
    if (tab === 'activity') loadEvents();
  }, [tab, session.token]);

  const insights = questionAnalytics?.insights;

  return (
    <div className="min-h-screen bg-slate-100">
      <header className="border-b border-slate-200 bg-white">
        <div className="mx-auto flex max-w-7xl flex-col gap-4 px-4 py-4 lg:flex-row lg:items-center lg:justify-between lg:px-8">
          <div>
            <p className="text-xs font-semibold uppercase tracking-wider text-rose-500">Admin</p>
            <h1 className="text-xl font-bold text-slate-900">Getting2Know — analytics</h1>
          </div>
          <div className="flex flex-wrap gap-2">
            {TABS.map((item) => (
              <button
                key={item.id}
                type="button"
                onClick={() => setTab(item.id)}
                className={tab === item.id ? 'btn-primary px-4 py-2 text-sm' : 'btn-secondary px-4 py-2 text-sm'}
              >
                {item.label}
              </button>
            ))}
          </div>
          <div className="flex items-center gap-3">
            <Link to="/home" className="btn-secondary">App</Link>
            <button type="button" onClick={logout} className="btn-secondary">Sair</button>
          </div>
        </div>
      </header>

      <main className="mx-auto max-w-7xl space-y-6 px-4 py-8 lg:px-8">
        {loading && <LoadingCard message="Carregando..." />}

        {!loading && tab === 'overview' && dashboard && (
          <section className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-6">
            <StatCard label="Usuários" value={dashboard.totalUsers} />
            <StatCard label="Visitas hoje" value={dashboard.pageViewsToday} />
            <StatCard label="Logins hoje" value={dashboard.loginsToday} />
            <StatCard label="Sessões ativas" value={dashboard.activeSessions} />
            <StatCard label="Eventos hoje" value={dashboard.eventsToday} />
            <StatCard label="Eventos totais" value={dashboard.totalEvents} />
          </section>
        )}

        {!loading && tab === 'users' && (
          <Card className="overflow-x-auto">
            <table className="min-w-full text-left text-sm">
              <thead>
                <tr className="border-b border-slate-200 text-slate-500">
                  <th className="px-3 py-2">Usuário</th>
                  <th className="px-3 py-2">Nome</th>
                  <th className="px-3 py-2">Papel</th>
                  <th className="px-3 py-2">Cadastro</th>
                  <th className="px-3 py-2">Sessões</th>
                  <th className="px-3 py-2">Criou / Entrou</th>
                  <th className="px-3 py-2">Perguntas custom</th>
                  <th className="px-3 py-2">Logins</th>
                  <th className="px-3 py-2">Visitas</th>
                  <th className="px-3 py-2">Último acesso</th>
                  <th className="px-3 py-2">IP</th>
                </tr>
              </thead>
              <tbody>
                {users.map((user) => (
                  <tr key={user.id} className="border-b border-slate-100 align-top">
                    <td className="px-3 py-2 font-medium text-slate-900">{user.username}</td>
                    <td className="px-3 py-2">{user.name}</td>
                    <td className="px-3 py-2">{user.role}</td>
                    <td className="px-3 py-2 whitespace-nowrap">{formatDate(user.createdAt)}</td>
                    <td className="px-3 py-2">{user.sessionsTotal}</td>
                    <td className="px-3 py-2">{user.sessionsHosted} / {user.sessionsJoined}</td>
                    <td className="px-3 py-2">{user.customQuestions}</td>
                    <td className="px-3 py-2">{user.loginCount}</td>
                    <td className="px-3 py-2">{user.pageViewCount}</td>
                    <td className="px-3 py-2 whitespace-nowrap">{formatDate(user.lastEventAt)}</td>
                    <td className="px-3 py-2 font-mono text-xs">{user.lastIp || '—'}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </Card>
        )}

        {!loading && tab === 'sessions' && (
          <div className="space-y-4">
            <form
              onSubmit={(e) => { e.preventDefault(); loadSessions(sessionFilters); }}
              className="flex flex-wrap gap-2"
            >
              <select
                value={sessionFilters.status}
                onChange={(e) => setSessionFilters((prev) => ({ ...prev, status: e.target.value }))}
                className="rounded-lg border border-slate-200 px-3 py-2 text-sm"
              >
                <option value="">Todos status</option>
                <option value="LOBBY">LOBBY</option>
                <option value="PLAYING">PLAYING</option>
                <option value="REVEAL">REVEAL</option>
                <option value="FINISHED">FINISHED</option>
              </select>
              <input
                type="text"
                value={sessionFilters.username}
                onChange={(e) => setSessionFilters((prev) => ({ ...prev, username: e.target.value }))}
                placeholder="Filtrar por usuário ou nome"
                className="rounded-lg border border-slate-200 px-3 py-2 text-sm"
              />
              <button type="submit" className="btn-primary px-4 py-2 text-sm">Filtrar</button>
            </form>

            <Card className="overflow-x-auto">
              <p className="mb-3 text-sm text-slate-500">{sessionsTotal} sessões</p>
              <table className="min-w-full text-left text-sm">
                <thead>
                  <tr className="border-b border-slate-200 text-slate-500">
                    <th className="px-3 py-2">Código</th>
                    <th className="px-3 py-2">Status</th>
                    <th className="px-3 py-2">Formato</th>
                    <th className="px-3 py-2">Anfitrião</th>
                    <th className="px-3 py-2">Parceiro</th>
                    <th className="px-3 py-2">Perguntas</th>
                    <th className="px-3 py-2">Pares respondidos</th>
                    <th className="px-3 py-2">Respostas</th>
                    <th className="px-3 py-2">Criada</th>
                    <th className="px-3 py-2">Finalizada</th>
                  </tr>
                </thead>
                <tbody>
                  {sessions.map((item) => (
                    <tr key={item.sessionId} className="border-b border-slate-100">
                      <td className="px-3 py-2">
                        <button
                          type="button"
                          onClick={() => openSessionDetail(item.code)}
                          className="font-mono font-bold text-rose-600 hover:underline"
                        >
                          {item.code}
                        </button>
                      </td>
                      <td className="px-3 py-2">{getSessionStatusLabel(item.status)}</td>
                      <td className="px-3 py-2">{getSessionFormatLabel(item.format)}</td>
                      <td className="px-3 py-2">{item.hostName} ({item.hostUsername})</td>
                      <td className="px-3 py-2">
                        {item.partnerName ? `${item.partnerName} (${item.partnerUsername})` : '—'}
                      </td>
                      <td className="px-3 py-2">{item.questionCount}</td>
                      <td className="px-3 py-2">{item.answeredPairs}/{item.questionCount}</td>
                      <td className="px-3 py-2">{item.answerTotal}</td>
                      <td className="px-3 py-2 whitespace-nowrap">{formatDate(item.createdAt)}</td>
                      <td className="px-3 py-2 whitespace-nowrap">{formatDate(item.finishedAt)}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </Card>

            {(sessionDetailLoading || selectedSession) && (
              <Card>
                <div className="mb-4 flex items-center justify-between">
                  <h3 className="text-lg font-semibold text-slate-900">
                    Sessão {selectedSession?.code || '...'}
                  </h3>
                  <button type="button" onClick={() => setSelectedSession(null)} className="btn-secondary text-sm">
                    Fechar
                  </button>
                </div>
                {sessionDetailLoading && <p className="text-sm text-slate-500">Carregando detalhes...</p>}
                {selectedSession && (
                  <div className="space-y-4">
                    <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-4 text-sm">
                      <p><span className="text-slate-500">Status:</span> {getSessionStatusLabel(selectedSession.status)}</p>
                      <p><span className="text-slate-500">Formato:</span> {getSessionFormatLabel(selectedSession.format)}</p>
                      <p><span className="text-slate-500">Anfitrião:</span> {selectedSession.hostUsername}</p>
                      <p><span className="text-slate-500">Parceiro:</span> {selectedSession.partnerUsername || '—'}</p>
                    </div>
                    <ol className="space-y-3">
                      {(selectedSession.questions || []).map((question) => (
                        <li key={question.questionId} className="rounded-lg border border-slate-200 p-3">
                          <div className="mb-2 flex flex-wrap items-center gap-2">
                            <span className="text-sm font-bold text-rose-500">#{question.position + 1}</span>
                            <CategoryBadge categoryId={question.categoryId} />
                            <QuestionTypeBadge type={question.type} />
                            {question.system && (
                              <span className="rounded-full bg-slate-100 px-2 py-0.5 text-xs text-slate-600">Sistema</span>
                            )}
                            <span className="text-xs text-slate-500">{question.answerCount}/2 respostas</span>
                          </div>
                          <p className="text-sm text-slate-800">{question.text}</p>
                          {question.sourceRef && (
                            <p className="mt-1 text-xs text-slate-400">ref: {question.sourceRef}</p>
                          )}
                        </li>
                      ))}
                    </ol>
                  </div>
                )}
              </Card>
            )}
          </div>
        )}

        {!loading && tab === 'questions' && questionAnalytics && (
          <div className="space-y-6">
            <section>
              <h2 className="mb-4 text-lg font-semibold text-slate-900">Métricas cruzadas</h2>
              <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-6">
                <StatCard label="Sessões totais" value={insights.totalSessions} />
                <StatCard label="Finalizadas" value={insights.finishedSessions} />
                <StatCard label="Ao vivo" value={insights.liveSessions} />
                <StatCard label="No seu tempo" value={insights.asyncSessions} />
                <StatCard label="Média perg/sessão" value={formatNumber(insights.avgQuestionsPerSession)} />
                <StatCard label="Mediana perg/sessão" value={formatNumber(insights.medianQuestionsPerSession)} />
                <StatCard label="Slots de pergunta" value={insights.totalQuestionSlots} />
                <StatCard label="Respostas totais" value={insights.totalAnswers} />
                <StatCard label="Conclusão geral" value={formatPercent(insights.overallCompletionRate)} />
                <StatCard label="Categoria top" value={insights.topCategoryId || '—'} hint={`${insights.topCategoryUses} usos`} />
                <StatCard label="Perguntas únicas" value={insights.uniqueQuestionKeys} />
                <StatCard label="Taxa de repetição" value={formatPercent(insights.repeatQuestionRate)} hint="mesma pergunta em sessões diferentes" />
                <StatCard label="Slots sistema" value={insights.systemQuestionSlots} />
                <StatCard label="Slots custom" value={insights.customQuestionSlots} />
              </div>
            </section>

            <section>
              <h2 className="mb-4 text-lg font-semibold text-slate-900">Ranking por categoria</h2>
              <Card className="overflow-x-auto">
                <table className="min-w-full text-left text-sm">
                  <thead>
                    <tr className="border-b border-slate-200 text-slate-500">
                      <th className="px-3 py-2">Categoria</th>
                      <th className="px-3 py-2">Usos</th>
                      <th className="px-3 py-2">Sessões</th>
                      <th className="px-3 py-2">Conclusão</th>
                    </tr>
                  </thead>
                  <tbody>
                    {(questionAnalytics.categories || []).map((cat) => (
                      <tr key={cat.categoryId} className="border-b border-slate-100">
                        <td className="px-3 py-2"><CategoryBadge categoryId={cat.categoryId} /></td>
                        <td className="px-3 py-2">{cat.usageCount}</td>
                        <td className="px-3 py-2">{cat.sessionCount}</td>
                        <td className="px-3 py-2">{formatPercent(cat.completionRate)}</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </Card>
            </section>

            <section>
              <h2 className="mb-4 text-lg font-semibold text-slate-900">Ranking de perguntas mais usadas</h2>
              <Card className="overflow-x-auto">
                <table className="min-w-full text-left text-sm">
                  <thead>
                    <tr className="border-b border-slate-200 text-slate-500">
                      <th className="px-3 py-2">#</th>
                      <th className="px-3 py-2">Pergunta</th>
                      <th className="px-3 py-2">Categoria</th>
                      <th className="px-3 py-2">Sessões</th>
                      <th className="px-3 py-2">Hosts únicos</th>
                      <th className="px-3 py-2">Concluídas</th>
                      <th className="px-3 py-2">Parciais</th>
                      <th className="px-3 py-2">Conclusão</th>
                      <th className="px-3 py-2">Reuso/host</th>
                      <th className="px-3 py-2">Último uso</th>
                    </tr>
                  </thead>
                  <tbody>
                    {(questionAnalytics.ranking || []).map((item) => (
                      <tr key={item.questionKey} className="border-b border-slate-100 align-top">
                        <td className="px-3 py-2 font-bold text-rose-500">{item.rank}</td>
                        <td className="max-w-md px-3 py-2">
                          <p className="text-slate-800">{item.text}</p>
                          <div className="mt-1 flex flex-wrap gap-2">
                            <QuestionTypeBadge type={item.type} />
                            {item.system && <span className="text-xs text-slate-500">sistema</span>}
                            {item.sourceRef && <span className="text-xs text-slate-400">ref {item.sourceRef}</span>}
                          </div>
                        </td>
                        <td className="px-3 py-2"><CategoryBadge categoryId={item.categoryId} /></td>
                        <td className="px-3 py-2 font-semibold">{item.sessionCount}</td>
                        <td className="px-3 py-2">{item.uniqueHosts}</td>
                        <td className="px-3 py-2">{item.fullyAnsweredCount}</td>
                        <td className="px-3 py-2">{item.partialAnswerCount}</td>
                        <td className="px-3 py-2">{formatPercent(item.completionRate)}</td>
                        <td className="px-3 py-2">{formatNumber(item.reuseRate)}</td>
                        <td className="px-3 py-2 whitespace-nowrap">{formatDate(item.lastUsedAt)}</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </Card>
            </section>
          </div>
        )}

        {!loading && tab === 'activity' && (
          eventsLoading && events.length === 0 ? (
            <LoadingCard message="Carregando..." />
          ) : (
          <div className="space-y-4">
            <form
              onSubmit={(e) => { e.preventDefault(); loadEvents(eventFilters, 0); }}
              className="flex flex-wrap gap-2"
            >
              <input
                type="text"
                value={eventFilters.username}
                onChange={(e) => setEventFilters((prev) => ({ ...prev, username: e.target.value }))}
                placeholder="Usuário"
                className="rounded-lg border border-slate-200 px-3 py-2 text-sm"
              />
              <select
                value={eventFilters.eventType}
                onChange={(e) => setEventFilters((prev) => ({ ...prev, eventType: e.target.value }))}
                className="rounded-lg border border-slate-200 px-3 py-2 text-sm"
              >
                <option value="">Todos tipos</option>
                <option value="PAGE_VIEW">PAGE_VIEW</option>
                <option value="LOGIN">LOGIN</option>
                <option value="REGISTER">REGISTER</option>
                <option value="SESSION_CREATE">SESSION_CREATE</option>
                <option value="SESSION_JOIN">SESSION_JOIN</option>
                <option value="SESSION_START">SESSION_START</option>
              </select>
              <input
                type="text"
                value={eventFilters.ipAddress}
                onChange={(e) => setEventFilters((prev) => ({ ...prev, ipAddress: e.target.value }))}
                placeholder="IP"
                className="rounded-lg border border-slate-200 px-3 py-2 text-sm"
              />
              <button type="submit" className="btn-primary px-4 py-2 text-sm">Filtrar</button>
            </form>
            <Card className={`overflow-x-auto transition-opacity ${eventsLoading ? 'opacity-60' : ''}`}>
              <table className="min-w-full text-left text-sm">
                <thead>
                  <tr className="border-b border-slate-200 text-slate-500">
                    <th className="px-3 py-2">Quando</th>
                    <th className="px-3 py-2">Tipo</th>
                    <th className="px-3 py-2">Usuário</th>
                    <th className="px-3 py-2">IP</th>
                    <th className="px-3 py-2">Caminho</th>
                  </tr>
                </thead>
                <tbody>
                  {events.map((event) => (
                    <tr key={event.id} className="border-b border-slate-100">
                      <td className="px-3 py-2 whitespace-nowrap">{formatDate(event.createdAt)}</td>
                      <td className="px-3 py-2">{event.eventType}</td>
                      <td className="px-3 py-2">{event.username || '—'}</td>
                      <td className="px-3 py-2 font-mono text-xs">{event.ipAddress || '—'}</td>
                      <td className="px-3 py-2">{event.path || '—'}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
              <AdminPagination
                page={eventsPage}
                pageSize={EVENTS_PAGE_SIZE}
                total={eventsTotal}
                itemLabel="eventos"
                onPageChange={(page) => loadEvents(eventFilters, page)}
                loading={eventsLoading}
              />
            </Card>
          </div>
          )
        )}
      </main>
    </div>
  );
}
