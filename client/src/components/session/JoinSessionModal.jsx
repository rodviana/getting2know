import { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useSession } from '../../hooks/useSession';
import SimpleModal from '../ui/SimpleModal';
import { FieldLabel, TextInput } from '../ui/PageElements';

export default function JoinSessionModal({ open, onClose, initialCode = '' }) {
  const navigate = useNavigate();
  const { joinSession } = useSession();
  const [code, setCode] = useState(initialCode);
  const [error, setError] = useState('');
  const [submitting, setSubmitting] = useState(false);

  useEffect(() => {
    if (!open) return;
    setCode(initialCode.toUpperCase());
    setError('');
    const timer = setTimeout(() => {
      document.getElementById('join-session-code')?.focus();
    }, 50);
    return () => clearTimeout(timer);
  }, [open, initialCode]);

  async function handleSubmit(event) {
    event.preventDefault();
    setError('');
    setSubmitting(true);
    try {
      const result = await joinSession(code);
      if (!result.ok) {
        setError(result.error);
        return;
      }
      onClose();
      navigate(`/sessions/${result.code}`);
    } finally {
      setSubmitting(false);
    }
  }

  return (
    <SimpleModal
      open={open}
      onClose={onClose}
      title="Entrar na sessão"
      description="Alguém te convidou? Digite o código de 4 caracteres."
    >
      <form onSubmit={handleSubmit} className="space-y-4" noValidate>
        <div>
          <FieldLabel htmlFor="join-session-code">Código</FieldLabel>
          <TextInput
            id="join-session-code"
            value={code}
            onChange={(e) => setCode(e.target.value.toUpperCase().replace(/[^A-Z0-9]/g, ''))}
            placeholder="Ex.: K7M2"
            maxLength={4}
            className="text-center font-mono text-2xl tracking-[0.35em] uppercase"
            autoComplete="off"
            inputMode="text"
          />
        </div>

        {error && (
          <p className="rounded-lg border border-red-200 bg-red-50 px-3 py-2 text-sm text-red-700">
            {error}
          </p>
        )}

        <div className="flex flex-col gap-2 sm:flex-row-reverse">
          <button
            type="submit"
            disabled={code.trim().length < 4 || submitting}
            className="btn-primary flex-1 py-3"
          >
            {submitting ? 'Entrando...' : 'Entrar'}
          </button>
          <button type="button" onClick={onClose} className="btn-secondary flex-1">
            Cancelar
          </button>
        </div>
      </form>
    </SimpleModal>
  );
}
