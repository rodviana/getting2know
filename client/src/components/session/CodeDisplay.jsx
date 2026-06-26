import { useState } from 'react';

export default function CodeDisplay({ code }) {
  const [copied, setCopied] = useState(false);

  async function handleCopy() {
    try {
      await navigator.clipboard.writeText(code);
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    } catch {
      setCopied(false);
    }
  }

  return (
    <div className="flex flex-col items-center gap-3">
      <p className="text-xs font-semibold uppercase tracking-wider text-slate-400">Código da sessão</p>
      <div className="flex items-center gap-3">
        <span className="rounded-xl bg-slate-900 px-6 py-3 font-mono text-3xl font-bold tracking-[0.3em] text-white">
          {code}
        </span>
        <button type="button" onClick={handleCopy} className="btn-secondary px-3 py-2">
          {copied ? 'Copiado!' : 'Copiar'}
        </button>
      </div>
      <p className="text-center text-sm text-slate-500">
        Envie este código para a outra pessoa entrar na sessão.
      </p>
    </div>
  );
}
