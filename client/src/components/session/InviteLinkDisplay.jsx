import { useState } from 'react';
import { buildSessionInviteUrl } from '../../utils/navigation';

export default function InviteLinkDisplay({ code }) {
  const [copied, setCopied] = useState(false);
  const inviteUrl = buildSessionInviteUrl(code);

  async function handleCopy() {
    try {
      await navigator.clipboard.writeText(inviteUrl);
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    } catch {
      setCopied(false);
    }
  }

  return (
    <div className="flex flex-col items-center gap-3">
      <p className="text-xs font-semibold uppercase tracking-wider text-slate-400">Link do convite</p>
      <div className="flex w-full max-w-lg flex-col items-stretch gap-3 sm:flex-row sm:items-center">
        <span className="break-all rounded-xl border border-slate-200 bg-slate-50 px-4 py-3 text-left text-sm font-medium text-slate-800">
          {inviteUrl}
        </span>
        <button type="button" onClick={handleCopy} className="btn-secondary shrink-0 px-4 py-3">
          {copied ? 'Copiado!' : 'Copiar link'}
        </button>
      </div>
      <p className="text-center text-sm text-slate-500">
        Envie este link para a outra pessoa. Se não tiver conta, ela cria na hora e entra direto na sessão.
      </p>
    </div>
  );
}
