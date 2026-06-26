import { formatSessionDate } from './sessionHistory';

export function extractPreviousPartners(sessions) {
  const byId = new Map();

  for (const session of sessions) {
    const otherUserId = session.otherUserId;
    if (otherUserId == null) continue;

    const otherName = session.role === 'host'
      ? (session.partnerName || 'Parceiro')
      : (session.hostName || 'Anfitrião');

    const existing = byId.get(otherUserId);
    const createdAt = session.createdAt;

    if (!existing) {
      byId.set(otherUserId, {
        userId: otherUserId,
        name: otherName,
        sessionCount: 1,
        lastSessionAt: createdAt,
      });
      continue;
    }

    existing.sessionCount += 1;
    if (createdAt && (!existing.lastSessionAt || createdAt > existing.lastSessionAt)) {
      existing.lastSessionAt = createdAt;
      if (otherName) existing.name = otherName;
    }
  }

  return [...byId.values()].sort((a, b) => {
    if (!a.lastSessionAt) return 1;
    if (!b.lastSessionAt) return -1;
    return new Date(b.lastSessionAt) - new Date(a.lastSessionAt);
  });
}

export function formatPartnerLastSession(iso) {
  if (!iso) return '';
  return `Última sessão: ${formatSessionDate(iso)}`;
}
