import { questionTypeLabel } from '../../constants/questionTypes';

export default function QuestionTypeBadge({ type }) {
  return (
    <span className="inline-flex items-center rounded-full bg-slate-100 px-2.5 py-1 text-xs font-medium text-slate-600 ring-1 ring-inset ring-slate-200">
      {questionTypeLabel(type)}
    </span>
  );
}
