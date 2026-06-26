import { useCallback, useEffect, useMemo, useState } from 'react';
import { useAuth } from '../context/AuthContext';
import {
  createSession as createSessionApi,
  fetchMySessions,
  fetchSession,
  joinSession as joinSessionApi,
  nextSessionQuestion,
  startSession as startSessionApi,
  submitSessionAnswer,
} from '../services/sessionService';
import { getSessionPollInterval } from '../utils/sessionFormat';
import { formatAnswer } from '../utils/answers';
import { mapSession } from '../utils/sessionMapper';

export function useSession(code, { poll = false, pollIntervalMs } = {}) {
  const { session: authSession } = useAuth();
  const token = authSession?.token;
  const [session, setSession] = useState(null);
  const [loading, setLoading] = useState(Boolean(code));

  const refresh = useCallback(async () => {
    if (!code || !token) return null;
    try {
      const data = await fetchSession(code, token);
      const mapped = mapSession(data);
      setSession(mapped);
      return mapped;
    } catch {
      setSession(null);
      return null;
    }
  }, [code, token]);

  useEffect(() => {
    if (!code || !token) {
      setSession(null);
      setLoading(false);
      return undefined;
    }

    let active = true;
    async function load() {
      setLoading(true);
      try {
        const data = await fetchSession(code, token);
        if (active) setSession(mapSession(data));
      } catch {
        if (active) setSession(null);
      } finally {
        if (active) setLoading(false);
      }
    }
    load();
    return () => { active = false; };
  }, [code, token]);

  useEffect(() => {
    if (!poll || !code || !token) return undefined;
    const interval = pollIntervalMs ?? getSessionPollInterval(session?.format);
    const intervalId = setInterval(() => { refresh(); }, interval);
    return () => clearInterval(intervalId);
  }, [poll, pollIntervalMs, session?.format, code, token, refresh]);

  const currentQuestion = useMemo(() => {
    if (!session?.questions?.length) return null;
    return session.questions[session.currentIndex] ?? null;
  }, [session]);

  const progress = useMemo(() => {
    if (session?.progress) return session.progress;
    if (!session?.questions?.length) return { current: 0, total: 0, answered: 0 };
    const total = session.questions.length;
    const answered = Object.keys(session.answers || {}).length;
    const current = Math.min(session.currentIndex + 1, total);
    return { current, total, answered };
  }, [session]);

  const createSession = useCallback(async ({ questions, format = 'async' }) => {
    if (!token) throw new Error('Não autenticado');
    const payload = {
      format: format === 'live' ? 'LIVE' : 'ASYNC',
      questions: questions.map((question) => ({
        id: question.id,
        categoryId: question.categoryId,
        type: question.type,
        text: question.text,
        options: question.options,
        custom: Boolean(question.custom),
      })),
    };
    const data = await createSessionApi(payload, token);
    return data.code;
  }, [token]);

  const joinSession = useCallback(async (codeValue) => {
    if (!token) return { ok: false, error: 'Não autenticado' };
    try {
      const data = await joinSessionApi(codeValue, token);
      setSession(mapSession(data));
      return { ok: true, code: data.code };
    } catch (error) {
      return { ok: false, error: error.message };
    }
  }, [token]);

  const startSession = useCallback(async (codeValue) => {
    if (!token) return null;
    const data = await startSessionApi(codeValue, token);
    const mapped = mapSession(data);
    setSession(mapped);
    return mapped;
  }, [token]);

  const submitAnswer = useCallback(async (codeValue, questionId, answer) => {
    if (!token) return null;
    const data = await submitSessionAnswer(codeValue, { questionId, answer }, token);
    const mapped = mapSession(data);
    setSession(mapped);
    return mapped;
  }, [token]);

  const nextQuestion = useCallback(async (codeValue) => {
    if (!token) return null;
    const data = await nextSessionQuestion(codeValue, token);
    const mapped = mapSession(data);
    setSession(mapped);
    return mapped;
  }, [token]);

  const listUserSessions = useCallback(async () => {
    if (!token) return [];
    return fetchMySessions(token);
  }, [token]);

  return {
    session,
    loading,
    currentQuestion,
    progress,
    refresh,
    createSession,
    joinSession,
    startSession,
    submitAnswer,
    nextQuestion,
    listUserSessions,
    formatAnswer,
  };
}
