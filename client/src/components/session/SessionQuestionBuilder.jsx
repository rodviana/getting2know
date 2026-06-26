import { useMemo, useState } from 'react';
import { CATEGORIES, categoryById } from '../../constants/categories';
import {
  CUSTOM_QUESTION_PACK,
  customPackQuestionIds,
  formatPackSubtitle,
  isCustomPackFullySelected,
  isPackFullySelected,
  getPackRelationLabel,
  PACK_INTENSITY,
  packQuestionIds,
  QUESTION_PACKS,
  resolvePackQuestions,
} from '../../constants/questionPacks';
import { filterHiddenRemoved } from '../../hooks/useQuestionSelection';
import CategoryBadge from './CategoryBadge';
import InlineQuestionForm from './InlineQuestionForm';
import PreviouslyAskedBadge from './PreviouslyAskedBadge';
import QuestionSelectionPanel from './QuestionSelectionPanel';
import QuestionTypeBadge from './QuestionTypeBadge';

const VIEWS = [
  { id: 'packs', label: 'Pacotes' },
  { id: 'categories', label: 'Por tema' },
  { id: 'search', label: 'Buscar' },
];

function QuestionRow({
  question,
  selected,
  removed,
  previouslyAsked = false,
  onSelect,
  onDeselect,
  onMarkRemoved,
  onRestore,
  compact = false,
}) {
  if (removed) {
    return (
      <div className="flex items-start gap-3 rounded-lg border border-dashed border-slate-200 bg-slate-50/80 px-3 py-2.5">
        <div className="min-w-0 flex-1">
          {!compact && (
            <div className="mb-1 flex flex-wrap items-center gap-1.5">
              <QuestionTypeBadge type={question.type} />
              {question.custom && (
                <span className="text-xs font-medium text-violet-600">Sua pergunta</span>
              )}
            </div>
          )}
          <p className="text-sm text-slate-500 line-through">{question.text}</p>
          <p className="mt-0.5 text-xs text-slate-400">Removida do questionário</p>
        </div>
        <button
          type="button"
          onClick={onRestore}
          className="shrink-0 text-xs font-medium text-rose-600 hover:text-rose-700"
        >
          Adicionar de volta
        </button>
      </div>
    );
  }

  return (
    <div
      className={[
        'flex items-start gap-3 rounded-lg border px-3 py-2.5 transition',
        selected
          ? 'border-rose-300 bg-rose-50/70 ring-1 ring-rose-100'
          : 'border-slate-200 bg-white hover:border-rose-200',
      ].join(' ')}
    >
      <label className="flex min-w-0 flex-1 cursor-pointer items-start gap-3">
        <input
          type="checkbox"
          checked={selected}
          onChange={() => (selected ? onDeselect() : onSelect())}
          className="mt-0.5 h-4 w-4 shrink-0 rounded border-slate-300 text-rose-500 focus:ring-rose-400"
        />
        <div className="min-w-0 flex-1">
          {!compact && (
            <div className="mb-1 flex flex-wrap items-center gap-1.5">
              <QuestionTypeBadge type={question.type} />
              {question.custom && (
                <span className="text-xs font-medium text-violet-600">Sua pergunta</span>
              )}
              {previouslyAsked && <PreviouslyAskedBadge compact />}
            </div>
          )}
          <p className={`text-slate-800 ${compact ? 'text-sm leading-snug' : 'text-sm font-medium'}`}>
            {question.text}
          </p>
          {compact && previouslyAsked && (
            <div className="mt-1">
              <PreviouslyAskedBadge compact />
            </div>
          )}
        </div>
      </label>
      {selected && (
        <button
          type="button"
          onClick={onMarkRemoved}
          className="shrink-0 text-xs text-slate-400 hover:text-red-500"
        >
          Remover
        </button>
      )}
    </div>
  );
}

function PackCard({ pack, allQuestions, selected, onApply, onRemove }) {
  const [previewOpen, setPreviewOpen] = useState(false);
  const questions = useMemo(
    () => resolvePackQuestions(pack, allQuestions),
    [pack, allQuestions],
  );
  const count = questions.length;
  const intensity = PACK_INTENSITY[pack.intensity];
  const audience = getPackRelationLabel(pack);

  return (
    <div
      className={[
        'rounded-xl border p-4 transition',
        selected ? 'border-rose-300 bg-rose-50/40' : 'border-slate-200 bg-white',
      ].join(' ')}
    >
      <div className="flex items-start gap-3">
        <span className="text-2xl" aria-hidden="true">{pack.emoji}</span>
        <div className="min-w-0 flex-1">
          <div className="flex flex-wrap items-center gap-2">
            <h3 className="font-semibold text-slate-900">{pack.title}</h3>
            {intensity && (
              <span className={`rounded-full px-2 py-0.5 text-xs font-medium ring-1 ring-inset ${intensity.className}`}>
                {intensity.label}
              </span>
            )}
          </div>
          <p className="mt-1 text-sm text-slate-600">{pack.description}</p>
          {pack.intent && (
            <p className="mt-1.5 text-xs text-slate-500">{pack.intent}</p>
          )}
          <p className="mt-2 text-xs font-medium text-slate-500">
            {formatPackSubtitle(pack, count)}
            {audience ? ` · ${audience}` : ''}
          </p>
          <div className="mt-2 flex flex-wrap gap-1.5">
            {pack.categoryIds.map((categoryId) => (
              <CategoryBadge key={categoryId} categoryId={categoryId} />
            ))}
          </div>
        </div>
      </div>

      {count > 0 && (
        <div className="mt-3">
          <button
            type="button"
            onClick={() => setPreviewOpen((open) => !open)}
            className="text-xs font-medium text-rose-600 hover:text-rose-700"
          >
            {previewOpen ? 'Ocultar perguntas' : `Ver as ${count} perguntas`}
          </button>
          {previewOpen && (
            <ol className="mt-2 max-h-48 space-y-1.5 overflow-y-auto rounded-lg border border-slate-100 bg-slate-50/80 p-3">
              {questions.map((question, index) => (
                <li key={question.id} className="text-xs leading-relaxed text-slate-700">
                  <span className="font-semibold text-rose-500">{index + 1}.</span>{' '}
                  {question.text}
                </li>
              ))}
            </ol>
          )}
        </div>
      )}

      <button
        type="button"
        onClick={() => (selected ? onRemove() : onApply())}
        disabled={count === 0}
        className={selected ? 'btn-secondary mt-4 w-full' : 'btn-primary mt-4 w-full'}
      >
        {count === 0
          ? 'Sem perguntas disponíveis'
          : selected
            ? 'Remover pacote'
            : 'Adicionar pacote'}
      </button>
    </div>
  );
}

function PacksView({ allQuestions, selection, onOpenCustomPack }) {
  const { selectedIds, mergeSelected, removeFromSelected } = selection;

  function applyPack(pack) {
    mergeSelected(packQuestionIds(pack, allQuestions));
  }

  function removePack(pack) {
    removeFromSelected(packQuestionIds(pack, allQuestions));
  }

  const customCount = customPackQuestionIds(allQuestions).length;
  const customSelected = customPackQuestionIds(allQuestions).filter((id) => selectedIds.includes(id)).length;

  return (
    <div className="space-y-3">
      <p className="text-sm text-slate-600">
        Escolha um pacote pelo tipo de dupla ou momento. Amigos, colegas, família, romance — tem para cada relação.
        Suas perguntas ficam em &quot;Minhas perguntas&quot; no final.
      </p>
      <div className="grid gap-3 sm:grid-cols-2">
        {QUESTION_PACKS.map((pack) => {
          const selected = isPackFullySelected(pack, allQuestions, selectedIds);
          return (
            <PackCard
              key={pack.id}
              pack={pack}
              allQuestions={allQuestions}
              selected={selected}
              onApply={() => applyPack(pack)}
              onRemove={() => removePack(pack)}
            />
          );
        })}

        <div className="rounded-xl border border-violet-200 bg-violet-50/40 p-4 sm:col-span-2">
          <div className="flex flex-col gap-4 sm:flex-row sm:items-start sm:justify-between">
            <div className="flex items-start gap-3">
              <span className="text-2xl" aria-hidden="true">{CUSTOM_QUESTION_PACK.emoji}</span>
              <div>
                <h3 className="font-semibold text-slate-900">{CUSTOM_QUESTION_PACK.title}</h3>
                <p className="mt-1 text-sm text-slate-600">{CUSTOM_QUESTION_PACK.description}</p>
                <p className="mt-2 text-xs text-violet-700">
                  {customCount === 0
                    ? 'Nenhuma ainda — crie a primeira sem sair desta tela'
                    : `${customCount} pergunta${customCount === 1 ? '' : 's'}${customSelected > 0 ? ` · ${customSelected} selecionada${customSelected === 1 ? '' : 's'}` : ''}`}
                </p>
              </div>
            </div>
            <button
              type="button"
              onClick={onOpenCustomPack}
              className="btn-primary shrink-0 bg-violet-600 hover:bg-violet-700 focus:ring-violet-400"
            >
              Abrir minhas perguntas
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}

function CustomPackView({
  customQuestions,
  selection,
  onBack,
  onAddQuestion,
  onUpdateQuestion,
  onDeleteQuestion,
  previouslyAskedIds,
}) {
  const [showForm, setShowForm] = useState(false);
  const [editingQuestion, setEditingQuestion] = useState(null);
  const {
    selectedIds,
    removedIds,
    hideRemoved,
    select,
    deselect,
    markRemoved,
    restore,
    mergeSelected,
    removeFromSelected,
  } = selection;

  const visibleQuestions = filterHiddenRemoved(customQuestions, removedIds, hideRemoved);
  const allSelected = isCustomPackFullySelected(customQuestions, selectedIds);

  function openCreateForm() {
    setEditingQuestion(null);
    setShowForm(true);
  }

  function openEditForm(question) {
    setEditingQuestion(question);
    setShowForm(true);
  }

  function closeForm() {
    setShowForm(false);
    setEditingQuestion(null);
  }

  async function handleCreate(payload) {
    const created = await onAddQuestion(payload);
    if (created?.id) {
      select(created.id);
    }
    closeForm();
  }

  async function handleUpdate(payload) {
    if (!editingQuestion) return;
    await onUpdateQuestion(editingQuestion.id, payload);
    closeForm();
  }

  async function handleDelete(question) {
    if (!window.confirm('Excluir esta pergunta personalizada? Ela será removida do banco.')) {
      return;
    }
    await onDeleteQuestion(question.id);
    deselect(question.id);
    if (editingQuestion?.id === question.id) {
      closeForm();
    }
  }

  const editFormValues = editingQuestion
    ? {
        text: editingQuestion.text,
        categoryId: editingQuestion.categoryId,
        type: editingQuestion.type,
        options: editingQuestion.options?.length ? editingQuestion.options : ['', ''],
      }
    : null;

  function selectAll() {
    mergeSelected(customQuestions.map((question) => question.id));
  }

  function clearAll() {
    removeFromSelected(customQuestions.map((question) => question.id));
  }

  return (
    <div className="space-y-4">
      <button
        type="button"
        onClick={onBack}
        className="inline-flex items-center gap-1.5 text-sm font-medium text-slate-500 hover:text-violet-600"
      >
        <svg className="h-4 w-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
          <path d="M15 18l-6-6 6-6" strokeLinecap="round" strokeLinejoin="round" />
        </svg>
        Todos os pacotes
      </button>

      <div className="rounded-xl border border-violet-200 bg-violet-50/30 p-4">
        <div className="flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
          <div className="flex items-center gap-2">
            <span className="text-xl" aria-hidden="true">{CUSTOM_QUESTION_PACK.emoji}</span>
            <div>
              <h3 className="text-lg font-semibold text-slate-900">{CUSTOM_QUESTION_PACK.title}</h3>
              <p className="text-sm text-slate-600">{CUSTOM_QUESTION_PACK.description}</p>
            </div>
          </div>
          {customQuestions.length > 0 && (
            <div className="flex flex-wrap gap-2">
              <button
                type="button"
                onClick={allSelected ? clearAll : selectAll}
                className="btn-ghost px-3 py-1.5 text-xs"
              >
                {allSelected ? 'Desmarcar todas' : `Selecionar todas (${customQuestions.length})`}
              </button>
            </div>
          )}
        </div>
      </div>

      {!showForm ? (
        <button
          type="button"
          onClick={openCreateForm}
          className="flex w-full items-center justify-center gap-2 rounded-xl border border-dashed border-violet-300 bg-violet-50/50 px-4 py-3 text-sm font-semibold text-violet-700 transition hover:border-violet-400 hover:bg-violet-50"
        >
          <span className="text-lg leading-none" aria-hidden="true">+</span>
          Nova pergunta personalizada
        </button>
      ) : (
        <div className="rounded-xl border border-violet-200 bg-white p-4">
          <h4 className="mb-4 font-semibold text-slate-900">
            {editingQuestion ? 'Editar pergunta' : 'Nova pergunta'}
          </h4>
          <InlineQuestionForm
            key={editingQuestion?.id ?? 'new'}
            compact
            initialValues={editFormValues}
            submitLabel={editingQuestion ? 'Salvar alterações' : 'Salvar e adicionar ao questionário'}
            onSubmit={editingQuestion ? handleUpdate : handleCreate}
            onCancel={closeForm}
          />
        </div>
      )}

      {customQuestions.length === 0 && !showForm ? (
        <p className="rounded-lg border border-dashed border-slate-200 px-4 py-6 text-center text-sm text-slate-500">
          Você ainda não tem perguntas personalizadas. Use o botão acima para criar a primeira.
        </p>
      ) : (
        <div className="space-y-2">
          {visibleQuestions.map((question) => {
            const selected = selectedIds.includes(question.id);
            const removed = removedIds.includes(question.id);
            return (
              <div key={question.id} className="space-y-1">
                <QuestionRow
                  question={question}
                  selected={selected}
                  removed={removed}
                  previouslyAsked={previouslyAskedIds?.has(question.id)}
                  onSelect={() => select(question.id)}
                  onDeselect={() => deselect(question.id)}
                  onMarkRemoved={() => markRemoved(question.id)}
                  onRestore={() => restore(question.id)}
                />
                {!removed && (
                  <div className="flex flex-wrap items-center gap-2 pl-7">
                    <button
                      type="button"
                      onClick={() => openEditForm(question)}
                      className="text-xs font-medium text-violet-600 hover:text-violet-700"
                    >
                      Editar
                    </button>
                    <span className="text-slate-300" aria-hidden="true">·</span>
                    <button
                      type="button"
                      onClick={() => handleDelete(question)}
                      className="text-xs font-medium text-red-600 hover:text-red-700"
                    >
                      Excluir
                    </button>
                  </div>
                )}
              </div>
            );
          })}
          {hideRemoved && removedIds.length > 0 && (
            <p className="py-2 text-center text-xs text-slate-400">
              {removedIds.filter((id) => customQuestions.some((q) => q.id === id)).length} removida(s) oculta(s)
            </p>
          )}
        </div>
      )}
    </div>
  );
}

function CategoryGrid({ categories, questionsByCategory, selectedIds, onSelectCategory }) {
  return (
    <div className="grid gap-3 sm:grid-cols-2">
      {categories.map((category) => {
        const questions = questionsByCategory.get(category.id) ?? [];
        const selectedCount = questions.filter((q) => selectedIds.includes(q.id)).length;
        return (
          <button
            key={category.id}
            type="button"
            onClick={() => onSelectCategory(category.id)}
            className="rounded-xl border border-slate-200 bg-white p-4 text-left transition hover:border-rose-300 hover:shadow-sm"
          >
            <div className="flex items-start justify-between gap-2">
              <span className="text-2xl" aria-hidden="true">{category.emoji}</span>
              {selectedCount > 0 && (
                <span className="rounded-full bg-rose-100 px-2 py-0.5 text-xs font-semibold text-rose-700">
                  {selectedCount}/{questions.length}
                </span>
              )}
            </div>
            <h3 className="mt-2 font-semibold text-slate-900">{category.title}</h3>
            <p className="mt-1 text-sm text-slate-500">{category.description}</p>
            <p className="mt-2 text-xs text-slate-400">{questions.length} perguntas</p>
          </button>
        );
      })}
    </div>
  );
}

function CategoryDetailView({
  categoryId,
  questions,
  selection,
  onBack,
  previouslyAskedIds,
}) {
  const {
    selectedIds,
    removedIds,
    hideRemoved,
    select,
    deselect,
    markRemoved,
    restore,
    mergeSelected,
    removeFromSelected,
  } = selection;

  const category = categoryById(categoryId);
  const categoryQuestions = questions.filter((q) => q.categoryId === categoryId);
  const visibleQuestions = filterHiddenRemoved(categoryQuestions, removedIds, hideRemoved);
  const selectedInCategory = categoryQuestions.filter((q) => selectedIds.includes(q.id)).length;

  function selectAll() {
    mergeSelected(categoryQuestions.map((q) => q.id));
  }

  function clearCategory() {
    removeFromSelected(categoryQuestions.map((q) => q.id));
  }

  return (
    <div className="space-y-4">
      <button
        type="button"
        onClick={onBack}
        className="inline-flex items-center gap-1.5 text-sm font-medium text-slate-500 hover:text-rose-600"
      >
        <svg className="h-4 w-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
          <path d="M15 18l-6-6 6-6" strokeLinecap="round" strokeLinejoin="round" />
        </svg>
        Todos os temas
      </button>

      <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
        <div>
          <div className="flex items-center gap-2">
            <span className="text-xl" aria-hidden="true">{category?.emoji}</span>
            <h3 className="text-lg font-semibold text-slate-900">{category?.title}</h3>
          </div>
          <p className="mt-1 text-sm text-slate-500">{category?.description}</p>
        </div>
        <div className="flex gap-2">
          <button type="button" onClick={selectAll} className="btn-ghost px-3 py-1.5 text-xs">
            Selecionar todas ({categoryQuestions.length})
          </button>
          {selectedInCategory > 0 && (
            <button type="button" onClick={clearCategory} className="btn-ghost px-3 py-1.5 text-xs text-red-600">
              Limpar tema
            </button>
          )}
        </div>
      </div>

      <div className="space-y-2">
        {visibleQuestions.map((question) => {
          const selected = selectedIds.includes(question.id);
          const removed = removedIds.includes(question.id);
          return (
            <QuestionRow
              key={question.id}
              question={question}
              selected={selected}
              removed={removed}
              previouslyAsked={previouslyAskedIds?.has(question.id)}
              onSelect={() => select(question.id)}
              onDeselect={() => deselect(question.id)}
              onMarkRemoved={() => markRemoved(question.id)}
              onRestore={() => restore(question.id)}
              compact
            />
          );
        })}
        {hideRemoved && categoryQuestions.some((q) => removedIds.includes(q.id)) && (
          <p className="py-2 text-center text-xs text-slate-400">
            Algumas removidas estão ocultas — desmarque &quot;Ocultar removidas&quot; no painel acima.
          </p>
        )}
      </div>
    </div>
  );
}

export default function SessionQuestionBuilder({
  questions,
  selection,
  onAddQuestion,
  onUpdateQuestion,
  onDeleteQuestion,
  previouslyAskedIds = new Set(),
  partnerName = null,
}) {
  const [view, setView] = useState('packs');
  const [activeCategoryId, setActiveCategoryId] = useState(null);
  const [customPackOpen, setCustomPackOpen] = useState(false);
  const [search, setSearch] = useState('');

  const {
    selectedIds,
    removedIds,
    hideRemoved,
    setHideRemoved,
    select,
    deselect,
    markRemoved,
    restore,
    clearSelected,
    clearRemoved,
  } = selection;

  const systemQuestions = useMemo(
    () => questions.filter((question) => !question.custom),
    [questions],
  );

  const customQuestions = useMemo(
    () => questions.filter((question) => question.custom),
    [questions],
  );

  const selectedQuestions = useMemo(
    () => selectedIds
      .map((id) => questions.find((question) => question.id === id))
      .filter(Boolean),
    [selectedIds, questions],
  );

  const removedQuestions = useMemo(
    () => removedIds
      .map((id) => questions.find((question) => question.id === id))
      .filter(Boolean),
    [removedIds, questions],
  );

  const questionsByCategory = useMemo(() => {
    const map = new Map();
    for (const question of systemQuestions) {
      const list = map.get(question.categoryId) ?? [];
      list.push(question);
      map.set(question.categoryId, list);
    }
    return map;
  }, [systemQuestions]);

  const availableCategories = useMemo(() => {
    const ids = new Set(systemQuestions.map((question) => question.categoryId));
    return CATEGORIES.filter(
      (category) => ids.has(category.id) && !['light', 'deep', 'fun'].includes(category.id),
    );
  }, [systemQuestions]);

  const searchResults = useMemo(() => {
    const term = search.trim().toLowerCase();
    if (term.length < 2) return [];
    return questions.filter((question) => {
      const category = categoryById(question.categoryId);
      const haystack = [
        question.text,
        category?.title ?? '',
        category?.description ?? '',
        question.custom ? 'minhas personalizada' : '',
      ].join(' ').toLowerCase();
      return haystack.includes(term);
    });
  }, [questions, search]);

  const visibleSearchResults = filterHiddenRemoved(searchResults, removedIds, hideRemoved);

  const selectedPreviouslyAskedCount = useMemo(
    () => selectedQuestions.filter((question) => previouslyAskedIds.has(question.id)).length,
    [selectedQuestions, previouslyAskedIds],
  );

  return (
    <div className="space-y-5">
      {partnerName && selectedPreviouslyAskedCount > 0 && (
        <div className="rounded-xl border border-amber-200 bg-amber-50/60 px-4 py-3">
          <p className="text-sm text-amber-900">
            <span className="font-semibold">{selectedPreviouslyAskedCount}</span>
            {' '}pergunta{selectedPreviouslyAskedCount === 1 ? '' : 's'} no questionário
            {' '}{selectedPreviouslyAskedCount === 1 ? 'já foi usada' : 'já foram usadas'} com{' '}
            <span className="font-semibold">{partnerName}</span>.
            {' '}Remova as que quiser evitar repetir.
          </p>
        </div>
      )}

      <QuestionSelectionPanel
        selectedQuestions={selectedQuestions}
        removedQuestions={removedQuestions}
        hideRemoved={hideRemoved}
        onHideRemovedChange={setHideRemoved}
        onMarkRemoved={markRemoved}
        onRestore={restore}
        onClearSelected={clearSelected}
        onClearRemoved={clearRemoved}
        previouslyAskedIds={previouslyAskedIds}
      />

      {!activeCategoryId && !customPackOpen && (
        <div className="flex gap-1 overflow-x-auto rounded-lg bg-slate-100 p-1">
          {VIEWS.map((tab) => (
            <button
              key={tab.id}
              type="button"
              onClick={() => {
                setView(tab.id);
                setSearch('');
              }}
              className={[
                'shrink-0 rounded-md px-3 py-2 text-sm font-medium transition',
                view === tab.id
                  ? 'bg-white text-rose-700 shadow-sm'
                  : 'text-slate-600 hover:text-slate-900',
              ].join(' ')}
            >
              {tab.label}
            </button>
          ))}
        </div>
      )}

      {customPackOpen ? (
        <CustomPackView
          customQuestions={customQuestions}
          selection={selection}
          onBack={() => setCustomPackOpen(false)}
          onAddQuestion={onAddQuestion}
          onUpdateQuestion={onUpdateQuestion}
          onDeleteQuestion={onDeleteQuestion}
          previouslyAskedIds={previouslyAskedIds}
        />
      ) : activeCategoryId ? (
        <CategoryDetailView
          categoryId={activeCategoryId}
          questions={systemQuestions}
          selection={selection}
          onBack={() => setActiveCategoryId(null)}
          previouslyAskedIds={previouslyAskedIds}
        />
      ) : view === 'packs' ? (
        <PacksView
          allQuestions={questions}
          selection={selection}
          onOpenCustomPack={() => setCustomPackOpen(true)}
        />
      ) : view === 'categories' ? (
        <CategoryGrid
          categories={availableCategories}
          questionsByCategory={questionsByCategory}
          selectedIds={selectedIds}
          onSelectCategory={setActiveCategoryId}
        />
      ) : (
        <div className="space-y-4">
          <input
            type="search"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            placeholder="Ex.: viagem, ciúmes, filhos..."
            className="input-field"
            autoFocus
          />
          {search.trim().length < 2 ? (
            <p className="py-6 text-center text-sm text-slate-500">
              Digite pelo menos 2 caracteres para buscar.
            </p>
          ) : visibleSearchResults.length === 0 ? (
            <p className="rounded-lg border border-dashed border-slate-200 px-4 py-8 text-center text-sm text-slate-500">
              Nenhuma pergunta encontrada para &quot;{search.trim()}&quot;.
            </p>
          ) : (
            <div className="space-y-2">
              <p className="text-xs font-medium text-slate-500">
                {visibleSearchResults.length} resultado{visibleSearchResults.length === 1 ? '' : 's'}
              </p>
              {visibleSearchResults.map((question) => {
                const selected = selectedIds.includes(question.id);
                const removed = removedIds.includes(question.id);
                return (
                  <div key={question.id}>
                    <QuestionRow
                      question={question}
                      selected={selected}
                      removed={removed}
                      previouslyAsked={previouslyAskedIds.has(question.id)}
                      onSelect={() => select(question.id)}
                      onDeselect={() => deselect(question.id)}
                      onMarkRemoved={() => markRemoved(question.id)}
                      onRestore={() => restore(question.id)}
                    />
                    {!removed && (
                      <div className="mt-1 flex flex-wrap gap-1.5 pl-7">
                        <CategoryBadge categoryId={question.categoryId} />
                        {question.custom && (
                          <span className="text-xs font-medium text-violet-600">Sua pergunta</span>
                        )}
                      </div>
                    )}
                  </div>
                );
              })}
            </div>
          )}
        </div>
      )}
    </div>
  );
}
