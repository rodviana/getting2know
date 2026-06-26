import { useEffect } from 'react';

export default function SimpleModal({
  open,
  title,
  description,
  children,
  onClose,
}) {
  useEffect(() => {
    if (!open) return undefined;
    function handleKey(event) {
      if (event.key === 'Escape') onClose();
    }
    window.addEventListener('keydown', handleKey);
    return () => window.removeEventListener('keydown', handleKey);
  }, [open, onClose]);

  if (!open) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
      <button
        type="button"
        aria-label="Fechar"
        className="absolute inset-0 bg-slate-900/40 backdrop-blur-[2px]"
        onClick={onClose}
      />
      <div
        role="dialog"
        aria-modal="true"
        aria-labelledby="modal-title"
        className="relative w-full max-w-md rounded-2xl border border-rose-100 bg-white p-6 shadow-2xl"
      >
        <h2 id="modal-title" className="text-xl font-bold text-slate-900">{title}</h2>
        {description && (
          <p className="mt-2 text-sm leading-relaxed text-slate-600">{description}</p>
        )}
        <div className="mt-5">{children}</div>
      </div>
    </div>
  );
}
