import { Navigate, useSearchParams } from 'react-router-dom';

export default function JoinSession() {
  const [searchParams] = useSearchParams();
  const code = searchParams.get('code')?.trim().toUpperCase();
  if (code) {
    return <Navigate to={`/join/${code}`} replace />;
  }
  const query = new URLSearchParams({ join: '1' });
  return <Navigate to={`/home?${query.toString()}`} replace />;
}
