import { apiRequest } from './apiClient';

export async function createSession(payload, token) {
  return apiRequest('/api/v1/sessions', {
    method: 'POST',
    body: JSON.stringify(payload),
  }, { token });
}

export async function joinSession(code, token, options = {}) {
  return apiRequest('/api/v1/sessions/join', {
    method: 'POST',
    body: JSON.stringify({ code }),
  }, { token, ...options });
}

export async function fetchSession(code, token) {
  return apiRequest(`/api/v1/sessions/${code}`, { method: 'GET' }, { token, showError: false });
}

export async function fetchMySessions(token) {
  return apiRequest('/api/v1/sessions/mine', { method: 'GET' }, { token, showError: false });
}

export async function fetchPreviouslyAskedQuestions(partnerUserId, token) {
  const params = new URLSearchParams({ partnerUserId: String(partnerUserId) });
  return apiRequest(
    `/api/v1/sessions/previously-asked?${params}`,
    { method: 'GET' },
    { token, showError: false },
  );
}

export async function startSession(code, token) {
  return apiRequest(`/api/v1/sessions/${code}/start`, { method: 'POST' }, { token });
}

export async function submitSessionAnswer(code, payload, token) {
  return apiRequest(`/api/v1/sessions/${code}/answers`, {
    method: 'POST',
    body: JSON.stringify(payload),
  }, { token });
}

export async function nextSessionQuestion(code, token) {
  return apiRequest(`/api/v1/sessions/${code}/next`, { method: 'POST' }, { token });
}
