import { BrowserRouter, Navigate, Route, Routes, useSearchParams } from 'react-router-dom';
import { AuthProvider, useAuth } from './context/AuthContext';
import { ToastProvider } from './components/ToastProvider';
import Layout from './components/Layout';
import ProtectedRoute from './components/ProtectedRoute';
import Login from './pages/Login';
import Landing from './pages/Landing';
import Home from './pages/Home';
import CreateSession from './pages/CreateSession';
import JoinSession from './pages/JoinSession';
import JoinSessionByLink from './pages/JoinSessionByLink';
import AdminRoute from './components/AdminRoute';
import PageViewTracker from './components/PageViewTracker';
import Admin from './pages/Admin';
import { sanitizeRedirectPath } from './utils/navigation';
import SessionLobby from './pages/SessionLobby';
import SessionPlay from './pages/SessionPlay';
import SessionSummary from './pages/SessionSummary';
import SessionHistory from './pages/SessionHistory';
import MySessions from './pages/MySessions';

function LandingRoute() {
  const { isAuthenticated } = useAuth();
  if (isAuthenticated) {
    return <Navigate to="/home" replace />;
  }
  return <Landing />;
}

function LoginRoute() {
  const { isAuthenticated, isAdmin } = useAuth();
  const [searchParams] = useSearchParams();
  const redirectTo = sanitizeRedirectPath(searchParams.get('redirect'));
  if (isAuthenticated) {
    if (redirectTo) {
      return <Navigate to={redirectTo} replace />;
    }
    return <Navigate to={isAdmin ? '/admin' : '/home'} replace />;
  }
  return <Login />;
}

export default function App() {
  return (
    <ToastProvider>
      <AuthProvider>
        <BrowserRouter>
          <PageViewTracker />
          <Routes>
            <Route path="/" element={<LandingRoute />} />
            <Route path="/login" element={<LoginRoute />} />
            <Route path="/join/:code" element={<JoinSessionByLink />} />
            <Route element={<AdminRoute />}>
              <Route path="/admin" element={<Admin />} />
            </Route>
            <Route element={<ProtectedRoute />}>
              <Route element={<Layout />}>
                <Route path="home" element={<Home />} />
                <Route path="my-sessions" element={<MySessions />} />
                <Route path="sessions/new" element={<CreateSession />} />
                <Route path="sessions/join" element={<JoinSession />} />
                <Route path="sessions/:code/play" element={<SessionPlay />} />
                <Route path="sessions/:code/summary" element={<SessionSummary />} />
                <Route path="sessions/:code/history" element={<SessionHistory />} />
                <Route path="sessions/:code" element={<SessionLobby />} />
              </Route>
            </Route>
            <Route path="*" element={<Navigate to="/" replace />} />
          </Routes>
        </BrowserRouter>
      </AuthProvider>
    </ToastProvider>
  );
}
