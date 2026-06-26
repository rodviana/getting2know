import { apiRequest } from './apiClient';

export async function fetchQuestions(token) {
  return apiRequest('/api/v1/questions', { method: 'GET' }, { token });
}

export async function createQuestion(payload, token) {
  return apiRequest('/api/v1/questions', {
    method: 'POST',
    body: JSON.stringify(payload),
  }, { token });
}

export async function updateQuestion(id, payload, token) {
  return apiRequest(`/api/v1/questions/${id}`, {
    method: 'PUT',
    body: JSON.stringify(payload),
  }, { token });
}

export async function deleteQuestion(id, token) {
  return apiRequest(`/api/v1/questions/${id}`, { method: 'DELETE' }, { token });
}
