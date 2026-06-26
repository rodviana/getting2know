const BRASILIA_TZ = 'America/Sao_Paulo';

const BRASILIA_FORMATTER = new Intl.DateTimeFormat('pt-BR', {
  timeZone: BRASILIA_TZ,
  day: '2-digit',
  month: '2-digit',
  year: 'numeric',
  hour: '2-digit',
  minute: '2-digit',
  second: '2-digit',
});

/** API envia LocalDateTime sem fuso (UTC no servidor). */
function parseApiDateTime(value) {
  if (!value) return null;
  const raw = String(value).trim();
  if (!raw) return null;
  if (/[zZ]$/.test(raw) || /[+-]\d{2}:\d{2}$/.test(raw)) {
    return new Date(raw);
  }
  return new Date(raw.includes('T') ? `${raw}Z` : raw);
}

export function formatDateTimeBrasilia(value) {
  const date = parseApiDateTime(value);
  if (!date || Number.isNaN(date.getTime())) return '—';
  return BRASILIA_FORMATTER.format(date);
}

export const BRASILIA_TIMEZONE_LABEL = 'Horário de Brasília (BRT)';
