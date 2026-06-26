import { createContext, useContext, useMemo, useState } from 'react';

const AuthContext = createContext(null);

const STORAGE_KEY = 'getting2know-session';

function loadSession() {
  try {
    const raw = localStorage.getItem(STORAGE_KEY);
    if (!raw) return null;
    const parsed = JSON.parse(raw);
    const username = parsed?.username ?? parsed?.email;
    if (parsed?.token && username) {
      return {
        ...parsed,
        username,
        role: parsed?.role ?? 'USER',
      };
    }
  } catch {
    localStorage.removeItem(STORAGE_KEY);
  }
  return null;
}

export function AuthProvider({ children }) {
  const [session, setSession] = useState(loadSession);

  const value = useMemo(() => ({
    session,
    isAuthenticated: Boolean(session?.token),
    isAdmin: session?.role === 'ADMIN',
    login(sessionData) {
      const next = {
        token: sessionData.token,
        name: sessionData.name,
        username: sessionData.username ?? sessionData.email,
        role: sessionData.role ?? 'USER',
      };
      localStorage.setItem(STORAGE_KEY, JSON.stringify(next));
      setSession(next);
    },
    logout() {
      localStorage.removeItem(STORAGE_KEY);
      setSession(null);
    },
  }), [session]);

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;

}

export function useAuth() {
  const ctx = useContext(AuthContext);
  if (!ctx) throw new Error('useAuth must be used within AuthProvider');
  return ctx;
}
