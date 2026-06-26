export const SESSION_FORMATS = {
  async: {
    id: 'async',
    apiValue: 'ASYNC',
    label: 'Assíncrona',
    shortLabel: 'Assíncrona',
    description: 'Cada um responde no seu tempo. Qualquer um pode iniciar e avançar.',
    pollIntervalMs: 3000,
  },
  live: {
    id: 'live',
    apiValue: 'LIVE',
    label: 'Ao vivo',
    shortLabel: 'Ao vivo',
    description: 'Os dois online juntos. Só quem criou a sessão inicia e avança.',
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
