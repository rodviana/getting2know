import { FieldLabel, TextInput } from '../ui/PageElements';

export default function OptionsEditor({ options, onChange }) {
  function updateOption(index, value) {
    const next = [...options];
    next[index] = value;
    onChange(next);
  }

  function addOption() {
    onChange([...options, '']);
  }

  function removeOption(index) {
    onChange(options.filter((_, i) => i !== index));
  }

  return (
    <div className="space-y-3">
      <FieldLabel>Opções de resposta</FieldLabel>
      {options.map((option, index) => (
        <div key={index} className="flex gap-2">
          <TextInput
            value={option}
            onChange={(e) => updateOption(index, e.target.value)}
            placeholder={`Opção ${index + 1}`}
          />
          <button
            type="button"
            onClick={() => removeOption(index)}
            disabled={options.length <= 2}
            className="btn-secondary shrink-0 px-3"
            aria-label="Remover opção"
          >
            ×
          </button>
        </div>
      ))}
      <button type="button" onClick={addOption} className="btn-ghost text-sm">
        + Adicionar opção
      </button>
    </div>
  );
}
