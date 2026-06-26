import { useState } from 'react';
import SimpleModal from '../ui/SimpleModal';
import PreviouslyAskedBadge from './PreviouslyAskedBadge';

export default function QuestionSelectionPanel({
  selectedQuestions,
  removedQuestions,
  hideRemoved,
  onHideRemovedChange,
  onMarkRemoved,
  onRestore,
  onClearSelected,
  onClearRemoved,
  previouslyAskedIds = new Set(),
}) {
  const [selectedOpen, setSelectedOpen] = useState(true);
  const [removedOpen, setRemovedOpen] = useState(true);
  const [confirmClearOpen, setConfirmClearOpen] = useState(false);

  const hasSelected = selectedQuestions.length > 0;
  const hasRemoved = removedQuestions.length > 0;

  if (!hasSelected && !hasRemoved) {
    return (
      <div className="rounded-xl border border-dashed border-slate-200 bg-slate-50/60 px-4 py-3 text-sm text-slate-500">
        Nenhuma pergunta ainda. Comece por um pacote sugerido ou escolha um tema.
      </div>
    );
  }

  return (
    <div className="space-y-3">
      {hasSelected && (
        <div className="overflow-hidden rounded-xl border border-rose-200 bg-rose-50/50">
          <button
            type="button"
            onClick={() => setSelectedOpen((value) => !value)}
            className="flex w-full items-center justify-between gap-3 px-4 py-3 text-left"
          >
            <span className="text-sm font-semibold text-rose-800">
              {selectedQuestions.length} no questionário
            </span>
            <span className="text-xs font-medium text-rose-600">
              {selectedOpen ? 'Ocultar' : 'Ver'}
            </span>
          </button>
          {selectedOpen && (
            <div className="border-t border-rose-100 px-4 py-3">
              <ol className="max-h-40 space-y-2 overflow-y-auto">
                {selectedQuestions.map((question, index) => (
                  <li key={question.id} className="flex items-start gap-2 text-sm">
                    <span className="mt-0.5 font-mono text-xs text-rose-400">{index + 1}.</span>
                    <div className="min-w-0 flex-1">
                      <p className="text-slate-700">{question.text}</p>
                      {previouslyAskedIds.has(question.id) && (
                        <div className="mt-1">
                          <PreviouslyAskedBadge compact />
                        </div>
                      )}
                    </div>
                    <button
                      type="button"
                      onClick={() => onMarkRemoved(question.id)}
                      className="shrink-0 text-xs text-slate-400 hover:text-red-500"
                    >
                      Remover
                    </button>
                  </li>
                ))}
              </ol>
              <button
                type="button"
                onClick={() => setConfirmClearOpen(true)}
                className="mt-3 text-xs font-medium text-slate-500 hover:text-red-600"
              >
                Limpar selecionadas
              </button>
            </div>
          )}
        </div>
      )}

      {hasRemoved && (
        <div className="overflow-hidden rounded-xl border border-slate-200 bg-slate-50/80">
          <div className="flex items-center justify-between gap-3 px-4 py-3">
            <button
              type="button"
              onClick={() => setRemovedOpen((value) => !value)}
              className="min-w-0 flex-1 text-left"
            >
              <span className="text-sm font-semibold text-slate-700">
                {removedQuestions.length} removida{removedQuestions.length === 1 ? '' : 's'}
              </span>
              <span className="ml-2 text-xs text-slate-500">
                {removedOpen ? '· ocultar lista' : '· ver lista'}
              </span>
            </button>
            <label className="flex shrink-0 cursor-pointer items-center gap-2 text-xs text-slate-600">
              <input
                type="checkbox"
                checked={hideRemoved}
                onChange={(e) => onHideRemovedChange(e.target.checked)}
                className="h-3.5 w-3.5 rounded border-slate-300 text-rose-500 focus:ring-rose-400"
              />
              Ocultar removidas
            </label>
          </div>
          {removedOpen && (
            <div className="border-t border-slate-200 px-4 py-3">
              <ol className="max-h-40 space-y-2 overflow-y-auto">
                {removedQuestions.map((question) => (
                  <li key={question.id} className="flex items-start gap-2 text-sm">
                    <div className="min-w-0 flex-1">
                      <p className="text-slate-500 line-through">{question.text}</p>
                      {previouslyAskedIds.has(question.id) && (
                        <div className="mt-1">
                          <PreviouslyAskedBadge compact />
                        </div>
                      )}
                    </div>
                    <button
                      type="button"
                      onClick={() => onRestore(question.id)}
                      className="shrink-0 text-xs font-medium text-rose-600 hover:text-rose-700"
                    >
                      Adicionar de volta
                    </button>
                  </li>
                ))}
              </ol>
              <button
                type="button"
                onClick={onClearRemoved}
                className="mt-3 text-xs font-medium text-slate-500 hover:text-slate-700"
              >
                Esquecer removidas
              </button>
            </div>
          )}
        </div>
      )}

      <SimpleModal
        open={confirmClearOpen}
        onClose={() => setConfirmClearOpen(false)}
        title="Limpar questionário?"
        description={`Isso remove as ${selectedQuestions.length} pergunta${selectedQuestions.length === 1 ? '' : 's'} do questionário. Você pode montá-lo de novo depois — nada é apagado do banco.`}
      >
        <div className="flex flex-col gap-2 sm:flex-row-reverse">
          <button
            type="button"
            onClick={() => {
              onClearSelected();
              setConfirmClearOpen(false);
            }}
            className="btn-primary flex-1"
          >
            Sim, limpar
          </button>
          <button
            type="button"
            onClick={() => setConfirmClearOpen(false)}
            className="btn-secondary flex-1"
          >
            Cancelar
          </button>
        </div>
      </SimpleModal>
    </div>
  );
}
