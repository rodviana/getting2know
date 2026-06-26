import { apiRequest } from './apiClient';

export async function trackPageView(path, referrer, token) {
  return apiRequest('/api/v1/analytics/page-view', {
    method: 'POST',
    body: JSON.stringify({ path, referrer: referrer || undefined }),
  }, { token, showError: false });
}

export async function fetchAdminDashboard(token) {
  return apiRequest('/api/v1/admin/dashboard', { method: 'GET' }, { token, showError: true });
}

export async function fetchAdminUsers(token) {
  return apiRequest('/api/v1/admin/users', { method: 'GET' }, { token, showError: true });
}

export async function fetchAdminSessions(token, params = {}) {
  const query = new URLSearchParams();
  if (params.limit != null) query.set('limit', String(params.limit));
  if (params.offset != null) query.set('offset', String(params.offset));
  if (params.status) query.set('status', params.status);
  if (params.username) query.set('username', params.username);
  const suffix = query.toString() ? `?${query.toString()}` : '';
  return apiRequest(`/api/v1/admin/sessions${suffix}`, { method: 'GET' }, { token, showError: true });
}

export async function fetchAdminSessionDetail(token, code) {
  return apiRequest(`/api/v1/admin/sessions/${code}`, { method: 'GET' }, { token, showError: true });
}

export async function fetchAdminQuestionAnalytics(token, limit = 30) {
  const query = new URLSearchParams({ limit: String(limit) });
  return apiRequest(`/api/v1/admin/questions/analytics?${query}`, { method: 'GET' }, { token, showError: true });
}

export async function fetchAdminEvents(token, params = {}) {
  const query = new URLSearchParams();
  if (params.limit != null) query.set('limit', String(params.limit));
  if (params.offset != null) query.set('offset', String(params.offset));
  if (params.username) query.set('username', params.username);
  if (params.eventType) query.set('eventType', params.eventType);
  if (params.ipAddress) query.set('ipAddress', params.ipAddress);
  const suffix = query.toString() ? `?${query.toString()}` : '';
  return apiRequest(`/api/v1/admin/events${suffix}`, { method: 'GET' }, { token, showError: true });
}
