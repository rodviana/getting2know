import { categoryById } from '../../constants/categories';

export default function CategoryBadge({ categoryId }) {
  const category = categoryById(categoryId);
  if (!category) return null;

  return (
    <span className="inline-flex items-center gap-1.5 rounded-full bg-rose-50 px-2.5 py-1 text-xs font-medium text-rose-700 ring-1 ring-inset ring-rose-100">
      <span aria-hidden="true">{category.emoji}</span>
      {category.title}
    </span>
  );
}
