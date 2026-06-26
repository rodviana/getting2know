import { useMemo, useState } from 'react';
import { CATEGORIES } from '../../constants/categories';
import { QUESTION_TYPE_OPTIONS } from '../../constants/questionTypes';
import CategoryBadge from './CategoryBadge';
import QuestionTypeBadge from './QuestionTypeBadge';

export default function QuestionPicker({
  questions,
  selectedIds,
  onChange,
}) {
  const [categoryFilter, setCategoryFilter] = useState('all');
  const [typeFilter, setTypeFilter] = useState('all');
  const [search, setSearch] = useState('');

  const availableCategories = useMemo(() => {
    const ids = new Set(questions.map((question) => question.categoryId));
    return CATEGORIES.filter((category) => ids.has(category.id));
  }, [questions]);

  const filtered = useMemo(() => {
    return questions.filter((question) => {
      if (categoryFilter !== 'all' && question.categoryId !== categoryFilter) return false;
      if (typeFilter !== 'all' && question.type !== typeFilter) return false;
      if (search.trim()) {
        const term = search.trim().toLowerCase();
        if (!question.text.toLowerCase().includes(term)) return false;
      }
      return true;
    });
  }, [questions, categoryFilter, typeFilter, search]);

  function toggle(id) {
    if (selectedIds.includes(id)) {
      onChange(selectedIds.filter((item) => item !== id));
      return;
    }
    onChange([...selectedIds, id]);
  }

  function selectAllVisible() {
    const visibleIds = filtered.map((question) => question.id);
    const merged = new Set([...selectedIds, ...visibleIds]);
    onChange([...merged]);
  }

  function clearSelection() {
    onChange([]);
  }

  return (
    <div className="space-y-4">
      <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
        <p className="text-sm font-medium text-slate-700">
          {selectedIds.length} pergunta{selectedIds.length === 1 ? '' : 's'} selecionada{selectedIds.length === 1 ? '' : 's'}
        </p>
        <div className="flex gap-2">
          <button type="button" onClick={selectAllVisible} className="btn-ghost px-3 py-1.5 text-xs">
            Selecionar visíveis
          </button>
          <button type="button" onClick={clearSelection} className="btn-ghost px-3 py-1.5 text-xs">
            Limpar
          </button>
        </div>
      </div>

      <div className="grid gap-3 sm:grid-cols-3">
        <input
          type="search"
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          placeholder="Buscar pergunta..."
          className="input-field sm:col-span-1"
        />
        <select
          value={categoryFilter}
          onChange={(e) => setCategoryFilter(e.target.value)}
          className="select-field"
        >
          <option value="all">Todas as categorias</option>
          {availableCategories.map((category) => (
            <option key={category.id} value={category.id}>{category.title}</option>
          ))}
        </select>
        <select
          value={typeFilter}
          onChange={(e) => setTypeFilter(e.target.value)}
          className="select-field"
        >
          <option value="all">Todos os tipos</option>
          {QUESTION_TYPE_OPTIONS.map((type) => (
            <option key={type.value} value={type.value}>{type.label}</option>
          ))}
        </select>
      </div>

      <div className="space-y-2">
        {filtered.length === 0 ? (
          <p className="rounded-lg border border-dashed border-slate-200 px-4 py-8 text-center text-sm text-slate-500">
            Nenhuma pergunta encontrada com esses filtros.
          </p>
        ) : (
          filtered.map((question) => {
            const checked = selectedIds.includes(question.id);
            return (
              <label
                key={question.id}
                className={[
                  'flex cursor-pointer gap-3 rounded-xl border p-4 transition',
                  checked
                    ? 'border-rose-300 bg-rose-50/60 ring-1 ring-rose-200'
                    : 'border-slate-200 bg-white hover:border-rose-200',
                ].join(' ')}
              >
                <input
                  type="checkbox"
                  checked={checked}
                  onChange={() => toggle(question.id)}
                  className="mt-1 h-4 w-4 rounded border-slate-300 text-rose-500 focus:ring-rose-400"
                />
                <div className="min-w-0 flex-1">
                  <div className="flex flex-wrap items-center gap-2">
                    <CategoryBadge categoryId={question.categoryId} />
                    <QuestionTypeBadge type={question.type} />
                    {question.custom && (
                      <span className="text-xs font-medium text-violet-600">Sua pergunta</span>
                    )}
                  </div>
                  <p className="mt-2 text-sm font-medium text-slate-900">{question.text}</p>
                  {question.options?.length > 0 && (
                    <p className="mt-1 text-xs text-slate-500">
                      Opções: {question.options.join(' · ')}
                    </p>
                  )}
                </div>
              </label>
            );
          })
        )}
      </div>
    </div>
  );
}
