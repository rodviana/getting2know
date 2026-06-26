import { useCallback, useEffect, useMemo, useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { QuestionType, questionTypeNeedsOptions } from '../constants/questionTypes';
import {
  createQuestion as createQuestionApi,
  deleteQuestion as deleteQuestionApi,
  fetchQuestions,
  updateQuestion as updateQuestionApi,
} from '../services/questionService';

export function useQuestionBank() {
  const { session } = useAuth();
  const token = session?.token;
  const [questions, setQuestions] = useState([]);
  const [loading, setLoading] = useState(true);

  const refresh = useCallback(async () => {
    if (!token) {
      setQuestions([]);
      setLoading(false);
      return;
    }
    try {
      const data = await fetchQuestions(token);
      setQuestions(data || []);
    } catch {
      setQuestions([]);
    } finally {
      setLoading(false);
    }
  }, [token]);

  useEffect(() => {
    refresh();
  }, [refresh]);

  const builtInQuestions = useMemo(
    () => questions.filter((question) => !question.custom),
    [questions],
  );

  const customQuestions = useMemo(
    () => questions.filter((question) => question.custom),
    [questions],
  );

  const allQuestions = questions;

  const getQuestionById = useCallback(
    (id) => allQuestions.find((question) => question.id === id),
    [allQuestions],
  );

  const addQuestion = useCallback(async (input) => {
    if (!token) throw new Error('Não autenticado');
    const payload = buildPayload(input);
    const question = await createQuestionApi(payload, token);
    await refresh();
    return question;
  }, [token, refresh]);

  const updateQuestion = useCallback(async (id, input) => {
    if (!token) throw new Error('Não autenticado');
    const payload = buildPayload(input);
    await updateQuestionApi(id, payload, token);
    await refresh();
  }, [token, refresh]);

  const deleteQuestion = useCallback(async (id) => {
    if (!token) throw new Error('Não autenticado');
    await deleteQuestionApi(id, token);
    await refresh();
  }, [token, refresh]);

  return {
    builtInQuestions,
    customQuestions,
    allQuestions,
    loading,
    getQuestionById,
    addQuestion,
    updateQuestion,
    deleteQuestion,
  };
}

function buildPayload(input) {
  const type = input.type ?? QuestionType.TEXT;
  const options = questionTypeNeedsOptions(type)
    ? (input.options ?? []).map((item) => item.trim()).filter(Boolean)
    : undefined;

  return {
    categoryId: input.categoryId ?? 'about_you',
    type,
    text: input.text.trim(),
    options,
  };
}
