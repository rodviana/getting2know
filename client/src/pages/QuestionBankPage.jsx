import { Link } from 'react-router-dom';
import { useQuestionBank } from '../hooks/useQuestionBank';
import CategoryBadge from '../components/session/CategoryBadge';
import QuestionTypeBadge from '../components/session/QuestionTypeBadge';
import { Card, EmptyState, LoadingCard, PageHeader } from '../components/ui/PageElements';

export default function QuestionBankPage() {
  const { customQuestions, deleteQuestion, loading } = useQuestionBank();

  if (loading) {
    return <LoadingCard message="Carregando perguntas..." />;
  }

  return (
    <div className="space-y-6">
      <PageHeader
        backTo="/home"
        eyebrow="Banco de perguntas"
        title="Minhas perguntas"
        description="Cadastre perguntas personalizadas para usar nos seus questionários."
        actions={<Link to="/questions/new" className="btn-primary">Nova pergunta</Link>}
      />

      {customQuestions.length === 0 ? (
        <Card>
          <EmptyState
            title="Nenhuma pergunta cadastrada"
            description="Crie perguntas de texto, seleção única ou múltipla escolha."
          />
          <div className="flex justify-center pb-6">
            <Link to="/questions/new" className="btn-primary">Criar primeira pergunta</Link>
          </div>
        </Card>
      ) : (
        <div className="space-y-3">
          {customQuestions.map((question) => (
            <Card key={question.id} className="p-5">
              <div className="flex flex-col gap-4 sm:flex-row sm:items-start sm:justify-between">
                <div className="min-w-0 flex-1">
                  <div className="flex flex-wrap items-center gap-2">
                    <CategoryBadge categoryId={question.categoryId} />
                    <QuestionTypeBadge type={question.type} />
                  </div>
                  <p className="mt-2 font-medium text-slate-900">{question.text}</p>
                  {question.options?.length > 0 && (
                    <p className="mt-2 text-sm text-slate-500">
                      {question.options.join(' · ')}
                    </p>
                  )}
                </div>
                <div className="flex shrink-0 gap-2">
                  <Link to={`/questions/${question.id}/edit`} className="btn-secondary px-3 py-2">
                    Editar
                  </Link>
                  <button
                    type="button"
                    onClick={() => deleteQuestion(question.id)}
                    className="btn-ghost px-3 py-2 text-red-600 hover:bg-red-50"
                  >
                    Excluir
                  </button>
                </div>
              </div>
            </Card>
          ))}
        </div>
      )}
    </div>
  );
}
