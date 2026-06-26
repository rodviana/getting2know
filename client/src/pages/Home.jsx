import { useEffect, useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { fetchHome } from '../services/authService';
import { showApiError } from '../services/apiClient';
import { Card, LoadingCard } from '../components/ui/PageElements';

const CATEGORIES = [
  {
    title: 'Leve',
    description: 'Para quebrar o gelo com naturalidade.',
    emoji: '☀️',
    example: 'Qual foi a última coisa que te fez rir muito?',
  },
  {
    title: 'Profundo',
    description: 'Para ir além do superficial.',
    emoji: '🌊',
    example: 'O que você valoriza numa amizade de verdade?',
  },
  {
    title: 'Divertido',
    description: 'Para rir e se surpreender juntos.',
    emoji: '🎲',
    example: 'Se pudesse jantar com qualquer pessoa, quem seria?',
  },
];

const STEPS = [
  {
    step: '1',
    title: 'Convide alguém',
    text: 'Crie uma sessão e compartilhe o código com a outra pessoa.',
  },
  {
    step: '2',
    title: 'Respondam juntos',
    text: 'Cada um responde às perguntas no seu tempo.',
  },
  {
    step: '3',
    title: 'Descubram-se',
    text: 'As respostas aparecem quando os dois participarem.',
  },
];

export default function Home() {
  const { session } = useAuth();
  const [home, setHome] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let active = true;
    async function load() {
      try {
        const data = await fetchHome(session.token);
        if (active) setHome(data);
      } catch (error) {
        if (active) await showApiError(error);
      } finally {
        if (active) setLoading(false);
      }
    }
    load();
    return () => { active = false; };
  }, [session.token]);

  if (loading) {
    return <LoadingCard message="Carregando..." />;
  }

  if (!home) {
    return null;
  }

  return (
    <div className="space-y-10">
      <section className="text-center">
        <p className="text-sm font-semibold uppercase tracking-wider text-rose-500">Bem-vindo</p>
        <h1 className="mt-2 text-3xl font-bold tracking-tight text-slate-900 sm:text-4xl">
          {home.message}
        </h1>
        <p className="mx-auto mt-4 max-w-2xl text-base leading-relaxed text-slate-600">
          Um espaço para duas pessoas trocarem perguntas, responderem com calma
          e descobrirem coisas novas uma sobre a outra.
        </p>
      </section>

      <section className="grid gap-4 sm:grid-cols-2">
        <Card className="relative overflow-hidden p-6">
          <div className="absolute right-0 top-0 rounded-bl-2xl bg-rose-100 px-3 py-1 text-xs font-semibold text-rose-700">
            Em breve
          </div>
          <div className="mb-4 flex h-12 w-12 items-center justify-center rounded-xl bg-rose-100 text-rose-600">
            <svg className="h-6 w-6" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5">
              <path d="M12 5v14M5 12h14" strokeLinecap="round" />
            </svg>
          </div>
          <h2 className="text-lg font-semibold text-slate-900">Começar uma sessão</h2>
          <p className="mt-2 text-sm leading-relaxed text-slate-500">
            Crie um espaço privado e convide alguém especial para responder perguntas com você.
          </p>
          <button type="button" disabled className="btn-primary mt-5 w-full opacity-60">
            Criar sessão
          </button>
        </Card>

        <Card className="relative overflow-hidden p-6">
          <div className="absolute right-0 top-0 rounded-bl-2xl bg-rose-100 px-3 py-1 text-xs font-semibold text-rose-700">
            Em breve
          </div>
          <div className="mb-4 flex h-12 w-12 items-center justify-center rounded-xl bg-orange-100 text-orange-600">
            <svg className="h-6 w-6" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5">
              <path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4M10 17l5-5-5-5M13.8 12H3" strokeLinecap="round" strokeLinejoin="round" />
            </svg>
          </div>
          <h2 className="text-lg font-semibold text-slate-900">Entrar com código</h2>
          <p className="mt-2 text-sm leading-relaxed text-slate-500">
            Já recebeu um convite? Digite o código e entre na sessão da outra pessoa.
          </p>
          <button type="button" disabled className="btn-secondary mt-5 w-full opacity-60">
            Tenho um código
          </button>
        </Card>
      </section>

      <section>
        <h2 className="text-center text-lg font-semibold text-slate-900">Como vai funcionar</h2>
        <div className="mt-6 grid gap-4 sm:grid-cols-3">
          {STEPS.map((item) => (
            <Card key={item.step} className="p-5 text-center">
              <div className="mx-auto flex h-10 w-10 items-center justify-center rounded-full bg-rose-500 text-sm font-bold text-white">
                {item.step}
              </div>
              <h3 className="mt-4 font-semibold text-slate-900">{item.title}</h3>
              <p className="mt-2 text-sm text-slate-500">{item.text}</p>
            </Card>
          ))}
        </div>
      </section>

      <section>
        <div className="mb-6 text-center">
          <h2 className="text-lg font-semibold text-slate-900">Tipos de pergunta</h2>
          <p className="mt-1 text-sm text-slate-500">Um gostinho do que vem por aí</p>
        </div>
        <div className="grid gap-4 sm:grid-cols-3">
          {CATEGORIES.map((category) => (
            <Card key={category.title} className="p-5">
              <span className="text-2xl" role="img" aria-hidden="true">{category.emoji}</span>
              <h3 className="mt-3 font-semibold text-slate-900">{category.title}</h3>
              <p className="mt-1 text-sm text-slate-500">{category.description}</p>
              <blockquote className="mt-4 rounded-lg border border-rose-100 bg-rose-50/50 px-3 py-2 text-sm italic text-slate-600">
                &ldquo;{category.example}&rdquo;
              </blockquote>
            </Card>
          ))}
        </div>
      </section>
    </div>
  );
}
