export function mapSession(data) {
  if (!data) return null;
  return {
    ...data,
    answers: data.hostAnswers || {},
    partnerAnswers: data.partnerAnswers || {},
  };
}
