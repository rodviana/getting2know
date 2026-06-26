import { Link } from 'react-router-dom';
import CategoryBadge from '../components/session/CategoryBadge';
import QuestionTypeBadge from '../components/session/QuestionTypeBadge';
import SessionProgress from '../components/session/SessionProgress';
import {
  LANDING_DEMO,
  LANDING_SAMPLE_QUESTIONS,
  LANDING_STEPS,
} from '../data/landingMocks';
import { getSessionFormatLabel, getSessionFormatStyle } from '../utils/sessionFormat';

function LandingHeader() {
  return (
    <header className="sticky top-0 z-30 border-b border-rose-100/80 bg-white/90 backdrop-blur-md">
      <div className="mx-auto flex max-w-6xl items-center justify-between gap-4 px-4 py-3 lg:px-8">
        <Link to="/" className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-gradient-to-br from-rose-500 to-rose-600 text-white shadow-sm">
            <svg className="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5">
              <path d="M17 8h2a2 2 0 0 1 2 2v6a2 2 0 0 1-2 2h-2v4l-4-4H9a2 2 0 0 1-2-2v-1M7 8H5a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h2v4l4-4h5a2 2 0 0 0 2-2v-1" />
            </svg>
          </div>
          <div>
            <p className="text-sm font-bold text-slate-900">Getting2Know</p>
            <p className="text-xs text-slate-500">Perguntas em dupla</p>
          </div>
        </Link>
        <Link to="/login" className="btn-primary px-5">
          Entrar
        </Link>
      </div>
    </header>
  );
}

function MockAnswerCard({ name, answer, highlight }) {
  return (
    <div
      className={`rounded-xl border p-4 ${
        highlight ? 'border-rose-200 bg-rose-50/60' : 'border-slate-200 bg-slate-50/50'
      }`}
    >
      <p className="text-xs font-semibold uppercase tracking-wider text-slate-400">{name}</p>
      <p className="mt-2 text-sm leading-relaxed text-slate-800">{answer}</p>
    </div>
  );
}

function DemoSessionPreview() {
  const demo = LANDING_DEMO;

  return (
    <div className="relative">
      <div className="absolute -inset-4 rounded-3xl bg-gradient-to-br from-slate-200/30 to-slate-100/20 blur-2xl" aria-hidden="true" />
      <div className="relative overflow-hidden rounded-2xl border border-slate-200 bg-white shadow-lg shadow-slate-200/50">
        <div className="border-b border-slate-100 bg-slate-50/80 px-5 py-3">
          <div className="flex items-center justify-between gap-3">
            <div className="flex items-center gap-2">
              <span className="rounded-md border border-slate-200 bg-white px-2 py-0.5 font-mono text-sm font-bold tracking-wider text-slate-700">
                {demo.code}
              </span>
              <span
                className={`rounded-full px-2 py-0.5 text-xs font-medium ring-1 ring-inset ${getSessionFormatStyle(demo.format)}`}
              >
                {getSessionFormatLabel(demo.format)}
              </span>
            </div>
            <span className="text-xs font-medium text-emerald-600">Revelação</span>
          </div>
        </div>

        <div className="space-y-5 p-5">
          <SessionProgress current={demo.progress.current} total={demo.progress.total} />

          <div>
            <div className="mb-3 flex flex-wrap items-center gap-2">
              <CategoryBadge categoryId={demo.question.categoryId} />
              <QuestionTypeBadge type={demo.question.type} />
            </div>
            <p className="text-lg font-semibold leading-snug text-slate-900">{demo.question.text}</p>
          </div>

          <div className="grid gap-3 sm:grid-cols-2">
            <MockAnswerCard name={demo.hostName} answer={demo.hostAnswer} highlight />
            <MockAnswerCard name={demo.partnerName} answer={demo.partnerAnswer} />
          </div>

          <p className="text-center text-xs text-slate-400">
            Exemplo ilustrativo — na plataforma, as respostas são reais e só aparecem depois dos dois enviarem.
          </p>
        </div>
      </div>
    </div>
  );
}

function MockLobbyPreview() {
  const demo = LANDING_DEMO;

  return (
    <div className="card overflow-hidden">
      <div className="border-b border-slate-100 bg-slate-50/80 px-5 py-4 text-center">
        <p className="text-xs font-semibold uppercase tracking-wider text-slate-400">Link do convite</p>
        <p className="mt-2 break-all px-2 text-sm font-medium text-slate-800">
          getting2know.com.br/join/{demo.code}
        </p>
        <p className="mt-2 text-sm text-slate-500">Envie para quem vai participar com você</p>
      </div>
      <div className="grid gap-3 p-5 sm:grid-cols-2">
        <div className="flex items-center gap-3 rounded-xl border border-slate-200 bg-slate-50/80 p-4">
          <div className="flex h-10 w-10 items-center justify-center rounded-full bg-rose-100 text-sm font-bold text-rose-700">
            {demo.hostName[0]}
          </div>
          <div>
            <p className="font-medium text-slate-900">{demo.hostName}</p>
            <p className="text-sm text-slate-500">Criou a sessão</p>
          </div>
          <span className="ml-auto rounded-full bg-emerald-100 px-2.5 py-1 text-xs font-medium text-emerald-700">
            Pronto
          </span>
        </div>
        <div className="flex items-center gap-3 rounded-xl border border-slate-200 bg-slate-50/80 p-4">
          <div className="flex h-10 w-10 items-center justify-center rounded-full bg-rose-100 text-sm font-bold text-rose-700">
            {demo.partnerName[0]}
          </div>
          <div>
            <p className="font-medium text-slate-900">{demo.partnerName}</p>
            <p className="text-sm text-slate-500">Convidado</p>
          </div>
          <span className="ml-auto rounded-full bg-emerald-100 px-2.5 py-1 text-xs font-medium text-emerald-700">
            Pronto
          </span>
        </div>
      </div>
    </div>
  );
}

function SampleQuestionCard({ question, index }) {
  return (
    <li className="rounded-xl border border-slate-200/80 bg-white p-4 shadow-sm">
      <div className="mb-2 flex items-center gap-2">
        <span className="text-sm font-bold text-rose-500">{index + 1}.</span>
        <CategoryBadge categoryId={question.categoryId} />
        <QuestionTypeBadge type={question.type} />
      </div>
      <p className="text-sm font-medium text-slate-800">{question.text}</p>
      {question.options && (
        <ul className="mt-3 space-y-1.5">
          {question.options.map((option) => (
            <li
              key={option}
              className="rounded-lg border border-slate-100 bg-slate-50 px-3 py-2 text-xs text-slate-600"
            >
              {option}
            </li>
          ))}
        </ul>
      )}
    </li>
  );
}

export default function Landing() {
  return (
    <div className="min-h-screen bg-gradient-to-b from-slate-50 via-white to-white">
      <LandingHeader />

      <main>
        <section className="mx-auto max-w-6xl px-4 py-12 lg:px-8 lg:py-20">
          <div className="grid items-center gap-12 lg:grid-cols-2 lg:gap-16">
            <div>
              <p className="mb-4 text-sm font-medium text-slate-500">
                Questionário para duas pessoas
              </p>
              <h1 className="text-4xl font-bold tracking-tight text-slate-900 sm:text-5xl lg:text-[3.25rem] lg:leading-[1.1]">
                Vocês respondem.
                <br />
                Depois veem juntos.
              </h1>
              <p className="mt-5 max-w-xl text-lg leading-relaxed text-slate-600">
                Crie perguntas, envie um link e comparem as respostas —
                cada um no seu tempo ou ao vivo.
              </p>
              <div className="mt-8 flex flex-col gap-3 sm:flex-row">
                <Link to="/login" className="btn-primary px-6 py-3 text-base">
                  Entrar
                </Link>
                <a href="#como-funciona" className="btn-secondary px-6 py-3 text-base">
                  Como funciona
                </a>
              </div>
              <p className="mt-4 text-sm text-slate-500">
                Usuário e senha. Primeira vez? A conta é criada na hora.
              </p>
            </div>

            <DemoSessionPreview />
          </div>
        </section>

        <section id="como-funciona" className="border-y border-slate-200/80 bg-white py-16 lg:py-20">
          <div className="mx-auto max-w-6xl px-4 lg:px-8">
            <div className="mx-auto max-w-2xl text-center">
              <h2 className="text-3xl font-bold tracking-tight text-slate-900">Como funciona</h2>
              <p className="mt-3 text-slate-600">
                Quatro passos. Nada escondido.
              </p>
            </div>

            <ol className="mt-12 grid gap-6 sm:grid-cols-2 lg:grid-cols-4">
              {LANDING_STEPS.map((item) => (
                <li key={item.step} className="card p-5">
                  <span className="text-2xl font-bold text-slate-200">{item.step}</span>
                  <h3 className="mt-3 font-semibold text-slate-900">{item.title}</h3>
                  <p className="mt-2 text-sm leading-relaxed text-slate-600">{item.description}</p>
                </li>
              ))}
            </ol>
          </div>
        </section>

        <section className="mx-auto max-w-6xl px-4 py-16 lg:px-8 lg:py-20">
          <div className="grid items-start gap-12 lg:grid-cols-2">
            <div>
              <h2 className="text-3xl font-bold tracking-tight text-slate-900">
                Sala de espera, sem complicação
              </h2>
              <p className="mt-3 text-slate-600">
                Um link de convite. A outra pessoa entra quando quiser — a tela
                atualiza sozinha quando todo mundo está pronto.
              </p>
              <ul className="mt-6 space-y-3 text-sm text-slate-600">
                <li className="flex gap-2">
                  <span className="text-rose-500" aria-hidden="true">✓</span>
                  Compartilhe por WhatsApp, mensagem ou na hora
                </li>
                <li className="flex gap-2">
                  <span className="text-rose-500" aria-hidden="true">✓</span>
                  Escolha «No seu tempo» ou «Ao vivo» na criação
                </li>
                <li className="flex gap-2">
                  <span className="text-rose-500" aria-hidden="true">✓</span>
                  Veja o questionário antes de começar
                </li>
              </ul>
            </div>
            <MockLobbyPreview />
          </div>
        </section>

        <section className="border-t border-slate-200/80 bg-slate-50/80 py-16 lg:py-20">
          <div className="mx-auto max-w-6xl px-4 lg:px-8">
            <div className="mx-auto max-w-2xl text-center">
              <h2 className="text-3xl font-bold tracking-tight text-slate-900">
                Perguntas para cada momento
              </h2>
              <p className="mt-3 text-slate-600">
                Leves para quebrar o gelo, mais profundas se quiser ir além, engraçadas para rir —
                ou crie as suas.
              </p>
            </div>

            <ul className="mt-10 grid gap-4 lg:grid-cols-3">
              {LANDING_SAMPLE_QUESTIONS.map((question, index) => (
                <SampleQuestionCard key={question.text} question={question} index={index} />
              ))}
            </ul>
          </div>
        </section>

        <section className="mx-auto max-w-6xl px-4 pb-20 lg:px-8">
          <div className="overflow-hidden rounded-2xl border border-slate-200 bg-slate-900 px-6 py-12 text-center sm:px-12">
            <h2 className="text-3xl font-bold tracking-tight text-white">
              Teste com alguém
            </h2>
            <p className="mx-auto mt-3 max-w-xl text-slate-300">
              Crie uma sessão e mande o link. Leva menos de um minuto.
            </p>
            <Link
              to="/login"
              className="mt-8 inline-flex items-center justify-center rounded-lg bg-white px-8 py-3 text-base font-semibold text-slate-900 shadow-sm transition hover:bg-slate-100"
            >
              Entrar
            </Link>
          </div>
        </section>
      </main>

      <footer className="border-t border-slate-200/80 bg-white py-8">
        <div className="mx-auto flex max-w-6xl flex-col items-center justify-between gap-4 px-4 text-sm text-slate-500 sm:flex-row lg:px-8">
          <p>Getting2Know — perguntas em dupla.</p>
          <Link to="/login" className="font-medium text-rose-600 hover:text-rose-700">
            Entrar
          </Link>
        </div>
      </footer>
    </div>
  );
}
