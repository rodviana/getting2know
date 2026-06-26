export function sanitizeRedirectPath(value) {
  if (!value || typeof value !== 'string') return null;
  if (!value.startsWith('/') || value.startsWith('//')) return null;
  return value;
}

export function buildSessionInviteUrl(code) {
  const normalized = code?.trim().toUpperCase();
  if (!normalized) return '';
  return `${window.location.origin}/join/${normalized}`;
}
