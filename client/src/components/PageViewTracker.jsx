import { useEffect } from 'react';
import { useLocation } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import { trackPageView } from '../services/adminService';

export default function PageViewTracker() {
  const location = useLocation();
  const { session } = useAuth();

  useEffect(() => {
    const path = `${location.pathname}${location.search}`;
    trackPageView(path, document.referrer || undefined, session?.token).catch(() => {});
  }, [location.pathname, location.search, session?.token]);

  return null;
}
