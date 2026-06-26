import { apiRequest } from './apiClient';

export async function login(email, password) {
  return apiRequest('/api/v1/auth/login', {
    method: 'POST',
    body: JSON.stringify({ email, password }),
  });
}

export async function fetchHome(token) {
  return apiRequest('/api/v1/home', { method: 'GET' }, { token, showError: false });
}
