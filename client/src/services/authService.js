import { apiRequest } from './apiClient';

export async function login(username, password, options = {}) {
  return apiRequest('/api/v1/auth/login', {
    method: 'POST',
    body: JSON.stringify({ username, password }),
  }, options);
}

export async function register(username, password, name, options = {}) {
  return apiRequest('/api/v1/auth/register', {
    method: 'POST',
    body: JSON.stringify({ username, password, name: name || undefined }),
  }, options);
}

export async function fetchHome(token) {
  return apiRequest('/api/v1/home', { method: 'GET' }, { token, showError: false });
}
