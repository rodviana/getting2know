export default function PreviouslyAskedBadge({ compact = false }) {
  return (
    <span
      className={[
        'inline-flex items-center rounded-full font-medium ring-1 ring-inset',
        compact
          ? 'bg-amber-50 px-1.5 py-0.5 text-[10px] text-amber-800 ring-amber-200'
          : 'bg-amber-50 px-2 py-0.5 text-xs text-amber-800 ring-amber-200',
      ].join(' ')}
      title="Esta pergunta já apareceu em outro questionário com essa pessoa"
    >
      Já perguntada
    </span>
  );
}
