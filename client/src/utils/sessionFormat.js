export const SESSION_FORMATS = {
  async: {
    id: 'async',
    apiValue: 'ASYNC',
    label: 'No seu tempo',
    shortLabel: 'No seu tempo',
    description: 'Cada um responde quando quiser, no próprio ritmo. Só veem tudo quando os dois terminarem.',
    pollIntervalMs: 3000,
  },
  live: {
    id: 'live',
    apiValue: 'LIVE',
    label: 'Ao vivo',
    shortLabel: 'Ao vivo',
    description: 'Os dois online, juntos. Pergunta a pergunta — veem a resposta um do outro na hora.',
    pollIntervalMs: 1500,
  },
};

export function getSessionFormatMeta(format) {
  const key = (format || 'async').toLowerCase();
  return SESSION_FORMATS[key] || SESSION_FORMATS.async;
}

export function getSessionFormatLabel(format) {
  return getSessionFormatMeta(format).label;
}

export function getSessionFormatStyle(format) {
  const key = (format || 'async').toLowerCase();
  if (key === 'live') {
    return 'bg-orange-50 text-orange-700 ring-orange-200';
  }
  return 'bg-indigo-50 text-indigo-700 ring-indigo-200';
}

export function getSessionPollInterval(format) {
  return getSessionFormatMeta(format).pollIntervalMs;
}

export function isAsyncFormat(format) {
  return (format || 'async').toLowerCase() === 'async';
}

export function isLiveFormat(format) {
  return (format || '').toLowerCase() === 'live';
}
