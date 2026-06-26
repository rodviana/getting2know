import { Outlet, Link } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';

function userInitials(name) {
  if (!name) return '?';
  return name
    .split(' ')
    .slice(0, 2)
    .map((part) => part[0]?.toUpperCase() ?? '')
    .join('');
}

export default function Layout() {
  const { session, logout } = useAuth();

  return (
    <div className="min-h-screen bg-gradient-to-b from-rose-50/80 via-white to-slate-50">
      <header className="sticky top-0 z-20 border-b border-rose-100/80 bg-white/90 backdrop-blur-md">
        <div className="mx-auto flex max-w-5xl items-center justify-between gap-4 px-4 py-3 lg:px-6">
          <div className="flex items-center gap-3">
            <Link to="/home" className="flex items-center gap-3">
              <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-gradient-to-br from-rose-500 to-rose-600 text-white shadow-sm">
                <svg className="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5">
                  <path d="M17 8h2a2 2 0 0 1 2 2v6a2 2 0 0 1-2 2h-2v4l-4-4H9a2 2 0 0 1-2-2v-1M7 8H5a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h2v4l4-4h5a2 2 0 0 0 2-2v-1" />
                </svg>
              </div>
              <div>
                <p className="text-sm font-bold text-slate-900">Getting2Know</p>
                <p className="text-xs text-slate-500">Perguntas para se conhecer</p>
              </div>
            </Link>
          </div>

          <div className="flex items-center gap-3">
            <nav className="hidden items-center gap-1 sm:flex">
              <Link
                to="/my-sessions"
                className="rounded-lg px-3 py-2 text-sm font-medium text-slate-600 transition hover:bg-rose-50 hover:text-rose-700"
              >
                Histórico
              </Link>
            </nav>
            <div className="hidden items-center gap-3 sm:flex">
              <div className="flex h-9 w-9 items-center justify-center rounded-full bg-rose-100 text-sm font-semibold text-rose-700">
                {userInitials(session?.name)}
              </div>
              <div className="text-right">
                <p className="text-sm font-medium text-slate-900">{session?.name}</p>
                <p className="text-xs text-slate-500">{session?.username}</p>
              </div>
            </div>
            <button type="button" onClick={logout} className="btn-secondary px-3 py-2">
              Sair
            </button>
          </div>
        </div>
      </header>

      <main className="mx-auto max-w-5xl px-4 py-8 lg:px-6 lg:py-10">
        <Outlet />
      </main>
    </div>
  );
}
