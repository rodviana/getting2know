import { useEffect, useState } from 'react';
import { Navigate, useNavigate, useParams } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import { fetchSession, joinSession as joinSessionApi } from '../services/sessionService';
import { EmptyState, LoadingCard } from '../components/ui/PageElements';

export default function JoinSessionByLink() {
  const { code } = useParams();
  const normalizedCode = code?.trim().toUpperCase();
  const { isAuthenticated, session } = useAuth();
  const navigate = useNavigate();
  const [error, setError] = useState('');

  useEffect(() => {
    if (!isAuthenticated || !normalizedCode || !session?.token) return undefined;
    let active = true;

    async function enterSession() {
      try {
        await fetchSession(normalizedCode, session.token);
        if (active) navigate(`/sessions/${normalizedCode}`, { replace: true });
        return;
      } catch {
        // ainda não é participante — tenta entrar
      }

      try {
        await joinSessionApi(normalizedCode, session.token, { showError: false });
        if (active) navigate(`/sessions/${normalizedCode}`, { replace: true });
      } catch (joinError) {
        if (active) {
          setError(joinError.message || 'Não foi possível entrar na sessão.');
        }
      }
    }

    enterSession();
    return () => { active = false; };
  }, [isAuthenticated, normalizedCode, session?.token, navigate]);

  if (!normalizedCode) {
    return (
      <EmptyState
        title="Link inválido"
        description="Este convite não contém um código de sessão válido."
      />
    );
  }

  if (!isAuthenticated) {
    return <Navigate to={`/login?redirect=${encodeURIComponent(`/join/${normalizedCode}`)}`} replace />;
  }

  if (error) {
    return (
      <div className="flex min-h-screen items-center justify-center bg-gradient-to-br from-rose-50 via-white to-orange-50 p-4">
        <div className="w-full max-w-md">
          <EmptyState title="Não foi possível entrar" description={error} />
        </div>
      </div>
    );
  }

  return (
    <div className="flex min-h-screen items-center justify-center bg-gradient-to-br from-rose-50 via-white to-orange-50 p-4">
      <LoadingCard message="Entrando na sessão..." />
    </div>
  );
}
