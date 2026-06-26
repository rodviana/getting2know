import { useCallback, useState } from 'react';

export function useQuestionSelection() {
  const [selectedIds, setSelectedIds] = useState([]);
  const [removedIds, setRemovedIds] = useState([]);
  const [hideRemoved, setHideRemoved] = useState(false);

  const select = useCallback((id) => {
    setSelectedIds((current) => (current.includes(id) ? current : [...current, id]));
    setRemovedIds((current) => current.filter((item) => item !== id));
  }, []);

  const deselect = useCallback((id) => {
    setSelectedIds((current) => current.filter((item) => item !== id));
  }, []);

  const markRemoved = useCallback((id) => {
    setSelectedIds((current) => current.filter((item) => item !== id));
    setRemovedIds((current) => (current.includes(id) ? current : [...current, id]));
  }, []);

  const restore = useCallback((id) => {
    select(id);
  }, [select]);

  const mergeSelected = useCallback((ids) => {
    setSelectedIds((current) => [...new Set([...current, ...ids])]);
    setRemovedIds((current) => current.filter((id) => !ids.includes(id)));
  }, []);

  const replaceSelected = useCallback((ids) => {
    setSelectedIds(ids);
    setRemovedIds((current) => current.filter((id) => !ids.includes(id)));
  }, []);

  const removeFromSelected = useCallback((idsToDrop) => {
    const drop = new Set(idsToDrop);
    setSelectedIds((current) => current.filter((id) => !drop.has(id)));
  }, []);

  const clearSelected = useCallback(() => {
    setSelectedIds([]);
  }, []);

  const clearRemoved = useCallback(() => {
    setRemovedIds([]);
  }, []);

  return {
    selectedIds,
    removedIds,
    hideRemoved,
    setHideRemoved,
    select,
    deselect,
    markRemoved,
    restore,
    mergeSelected,
    replaceSelected,
    removeFromSelected,
    clearSelected,
    clearRemoved,
  };
}

export function filterHiddenRemoved(questions, removedIds, hideRemoved) {
  if (!hideRemoved) return questions;
  const removed = new Set(removedIds);
  return questions.filter((question) => !removed.has(question.id));
}
