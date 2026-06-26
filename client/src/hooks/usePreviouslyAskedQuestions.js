import { useCallback, useEffect, useMemo, useState } from 'react';
import { fetchPreviouslyAskedQuestions } from '../services/sessionService';
import { useAuth } from '../context/AuthContext';

export function usePreviouslyAskedQuestions(partnerUserId) {
  const { session } = useAuth();
  const token = session?.token;
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(false);

  const refresh = useCallback(async () => {
    if (!token || !partnerUserId) {
      setData(null);
      setLoading(false);
      return null;
    }

    setLoading(true);
    try {
      const result = await fetchPreviouslyAskedQuestions(partnerUserId, token);
      setData(result);
      return result;
    } catch {
      setData(null);
      return null;
    } finally {
      setLoading(false);
    }
  }, [token, partnerUserId]);

  useEffect(() => {
    refresh();
  }, [refresh]);

  const previouslyAskedIds = useMemo(
    () => new Set(data?.questionIds ?? []),
    [data],
  );

  return {
    partnerName: data?.partnerName ?? null,
    sessionCount: data?.sessionCount ?? 0,
    previouslyAskedIds,
    loading,
    refresh,
  };
}
