import { apiRequest } from './apiClient';

export async function login(email, password, options = {}) {
  return apiRequest('/api/v1/auth/login', {
    method: 'POST',
    body: JSON.stringify({ email, password }),
  }, options);
}

export async function register(email, password, name, options = {}) {
  return apiRequest('/api/v1/auth/register', {
    method: 'POST',
    body: JSON.stringify({ email, password, name: name || undefined }),
  }, options);
}

export async function fetchHome(token) {
  return apiRequest('/api/v1/home', { method: 'GET' }, { token, showError: false });
}
