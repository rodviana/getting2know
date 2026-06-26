const STATUS_LABELS = {
  lobby: 'Aguardando',
  playing: 'Em andamento',
  reveal: 'Revelação',
  finished: 'Concluída',
};

export function getSessionStatusLabel(status) {
  return STATUS_LABELS[status] || status;
}

export function formatSessionDate(iso) {
  if (!iso) return '—';
  return new Date(iso).toLocaleDateString('pt-BR', {
    day: '2-digit',
    month: 'short',
    year: 'numeric',
  });
}

export function getSessionPrimaryLink(session) {
  if (!session?.code) return '/';
  const { code, status } = session;
  if (status === 'finished') return `/sessions/${code}/summary`;
  if (status === 'lobby') return `/sessions/${code}`;
  return `/sessions/${code}/play`;
}

export function getOtherParticipantName(session, role = session?.role) {
  if (role === 'host') return session?.partnerName || 'Aguardando parceiro';
  if (role === 'partner') return session?.hostName || 'Anfitrião';
  return session?.partnerName || session?.hostName || 'Parceiro';
}

export function isSessionActive(status) {
  return status && status !== 'finished';
}

export function getSessionActionLabel(status) {
  if (status === 'lobby') return 'Abrir sala';
  if (status === 'finished') return 'Ver resumo';
  return 'Continuar';
}

const STATUS_STYLES = {
  lobby: 'bg-amber-50 text-amber-700 ring-amber-200',
  playing: 'bg-sky-50 text-sky-700 ring-sky-200',
  reveal: 'bg-violet-50 text-violet-700 ring-violet-200',
  finished: 'bg-emerald-50 text-emerald-700 ring-emerald-200',
};

export function getSessionStatusStyle(status) {
  return STATUS_STYLES[status] || 'bg-slate-50 text-slate-600 ring-slate-200';
}
