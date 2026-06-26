import { Navigate, useSearchParams } from 'react-router-dom';

export default function JoinSession() {
  const [searchParams] = useSearchParams();
  const code = searchParams.get('code');
  const query = new URLSearchParams({ join: '1' });
  if (code) query.set('code', code.trim().toUpperCase());
  return <Navigate to={`/home?${query.toString()}`} replace />;
}
