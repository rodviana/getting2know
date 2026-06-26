import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import { login, register } from '../services/authService';
import { ApiError, showApiError } from '../services/apiClient';
import SimpleModal from '../components/ui/SimpleModal';
import { FieldLabel, TextInput } from '../components/ui/PageElements';

export default function Login() {
  const navigate = useNavigate();
  const { login: saveSession } = useAuth();
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [name, setName] = useState('');
  const [loading, setLoading] = useState(false);
  const [registerOpen, setRegisterOpen] = useState(false);
  const [inlineError, setInlineError] = useState('');

  async function handleEnter(event) {
    event.preventDefault();
    setInlineError('');
    setLoading(true);
    try {
      const data = await login(username.trim(), password, { showError: false });
      saveSession(data);
      navigate('/home', { replace: true });
    } catch (error) {
      if (error instanceof ApiError && error.code === 'USER_NOT_FOUND') {
        setRegisterOpen(true);
        return;
      }
      if (error instanceof ApiError) {
        setInlineError(error.message);
        return;
      }
      showApiError(error);
    } finally {
      setLoading(false);
    }
  }

  async function handleCreateAccount(event) {
    event.preventDefault();
    setInlineError('');
    setLoading(true);
    try {
      const data = await register(username.trim(), password, name.trim(), { showError: false });
      saveSession(data);
      navigate('/home', { replace: true });
    } catch (error) {
      if (error instanceof ApiError) {
        setInlineError(error.message);
        return;
      }
      showApiError(error);
    } finally {
      setLoading(false);
    }
  }

  function closeRegisterModal() {
    setRegisterOpen(false);
    setName('');
    setInlineError('');
  }

  return (
    <div className="flex min-h-screen items-center justify-center bg-gradient-to-br from-rose-50 via-white to-orange-50 p-4">
      <div className="w-full max-w-md">
        <div className="mb-8 text-center">
          <div className="mx-auto mb-4 flex h-14 w-14 items-center justify-center rounded-2xl bg-gradient-to-br from-rose-500 to-rose-600 text-white shadow-lg shadow-rose-200">
            <svg className="h-7 w-7" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5">
              <path d="M17 8h2a2 2 0 0 1 2 2v6a2 2 0 0 1-2 2h-2v4l-4-4H9a2 2 0 0 1-2-2v-1M7 8H5a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h2v4l4-4h5a2 2 0 0 0 2-2v-1" />
            </svg>
          </div>
          <h1 className="text-3xl font-bold tracking-tight text-slate-900">Getting2Know</h1>
          <p className="mt-2 text-sm leading-relaxed text-slate-600">
            Perguntas para duas pessoas se conhecerem melhor.
          </p>
        </div>

        <form
          className="rounded-2xl border border-rose-100/80 bg-white p-6 shadow-xl shadow-rose-100/50"
          onSubmit={handleEnter}
          noValidate
        >
          <h2 className="text-lg font-semibold text-slate-900">Entrar</h2>
          <p className="mt-1 mb-5 text-sm text-slate-500">
            Escolha um usuário e senha. Se for a primeira vez, a gente te ajuda a criar a conta.
          </p>

          <div className="mb-4">
            <FieldLabel htmlFor="username">Usuário</FieldLabel>
            <TextInput
              id="username"
              type="text"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
              placeholder="Ex.: rodrigo"
              autoComplete="username"
            />
          </div>

          <div className="mb-5">
            <FieldLabel htmlFor="password">Senha</FieldLabel>
            <TextInput
              id="password"
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              placeholder="Sua senha"
              autoComplete="current-password"
            />
          </div>

          {inlineError && !registerOpen && (
            <p className="mb-4 rounded-lg border border-red-200 bg-red-50 px-3 py-2 text-sm text-red-700">
              {inlineError}
            </p>
          )}

          <button type="submit" disabled={loading} className="btn-primary w-full py-3 text-base">
            {loading && !registerOpen ? 'Entrando...' : 'Continuar'}
          </button>
        </form>

        <p className="mt-6 text-center text-xs leading-relaxed text-slate-400">
          Sem formulários longos. Você entra, convida alguém e começa quando quiser.
        </p>
      </div>

      <SimpleModal
        open={registerOpen}
        onClose={closeRegisterModal}
        title="Primeira vez por aqui?"
        description={`Não encontramos uma conta com "${username.trim() || 'este usuário'}". Quer criar agora? É só confirmar — leva um instante.`}
      >
        <form onSubmit={handleCreateAccount} className="space-y-4" noValidate>
          <div>
            <FieldLabel htmlFor="register-name">Como podemos te chamar? (opcional)</FieldLabel>
            <TextInput
              id="register-name"
              type="text"
              value={name}
              onChange={(e) => setName(e.target.value)}
              placeholder="Ex.: Rodrigo"
              autoComplete="name"
            />
          </div>

          {inlineError && (
            <p className="rounded-lg border border-red-200 bg-red-50 px-3 py-2 text-sm text-red-700">
              {inlineError}
            </p>
          )}

          <div className="flex flex-col gap-2 sm:flex-row-reverse">
            <button type="submit" disabled={loading} className="btn-primary flex-1">
              {loading ? 'Criando...' : 'Criar conta e entrar'}
            </button>
            <button type="button" onClick={closeRegisterModal} className="btn-secondary flex-1">
              Voltar
            </button>
          </div>
        </form>
      </SimpleModal>
    </div>
  );
}
