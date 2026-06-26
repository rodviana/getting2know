-- Atualiza perguntas padrão do sistema (bancos que já rodaram V006 com versão antiga)
-- Regenerar: node scripts/generate-question-seed.mjs

DELETE FROM questions WHERE is_system = TRUE;

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Como você se descreveria em três palavras?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual é a sua maior qualidade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual é o seu maior defeito?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que te faz feliz de verdade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que mais te estressa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você mais valoriza em uma pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você nunca aceitaria em alguém?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual foi o momento mais marcante da sua vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual é o seu maior medo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual é o seu maior sonho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual memória da infância você mais gosta de lembrar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que as pessoas costumam notar em você logo de cara?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Em que momento do dia você se sente mais você mesmo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual elogio você mais gosta de receber?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você mudaria em si se pudesse mudar só uma coisa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual apelido de infância você ainda carrega com carinho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você faz quando precisa se reconectar consigo mesmo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual parte da sua personalidade demora mais para as pessoas conhecerem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que te faz sentir orgulho de quem você se tornou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual hábito seu as pessoas mais estranham?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'SINGLE_CHOICE', 'Você se considera uma pessoa autêntica no dia a dia?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você faria se tivesse um dia inteiro só para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual elogio você acha difícil de aceitar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que te deixa vulnerável de um jeito bom?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual versão sua — criança, adolescente ou adulto(a) — você mais gostaria de reencontrar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'SINGLE_CHOICE', 'Você costuma se comparar com outras pessoas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você guarda no coração e raramente conta?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual barulho, cheiro ou lugar te traz paz imediata?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você aprendeu sobre si depois de uma fase difícil?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'SINGLE_CHOICE', 'Você se sente compreendido(a) pela maioria das pessoas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual decisão pequena mudou sua vida sem você perceber na hora?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você faz quando quer se sentir mais confiante?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual parte do seu corpo ou aparência você aprendeu a aceitar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'SINGLE_CHOICE', 'Você gosta de ficar sozinho(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que te faz rir sozinho(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual tradição pessoal você criou para si?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você considera sua maior conquista que não aparece no currículo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Como você reage quando alguém te vê chorando?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'SINGLE_CHOICE', 'Você se descreve como otimista?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual música descreve um capítulo importante da sua vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você faria diferente se pudesse voltar um ano?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual medo você superou e como?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que te faz sentir pequeno(a) diante do mundo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'SINGLE_CHOICE', 'Você costuma pedir ajuda quando precisa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual qualidade sua você subestima?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você faria se ninguém fosse julgar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual momento te fez perceber que estava crescendo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'SINGLE_CHOICE', 'Você se sente à vontade sendo o centro das atenções?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você coleciona — literal ou simbolicamente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual conselho você daria para a versão adolescente de si?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que te faz sentir grato(a) hoje?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'SINGLE_CHOICE', 'Você guarda rancor por muito tempo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual rotina te mantém equilibrado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você admira em si que outras pessoas nem percebem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual situação te mostrou do que você é capaz?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'SINGLE_CHOICE', 'Você se considera uma pessoa curiosa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você faria se tivesse coragem de arriscar mais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual memória você revisita quando precisa de força?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que te define além do trabalho e do relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'SINGLE_CHOICE', 'Você se perdoa com facilidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Qual parte da sua história você gostaria que mais pessoas soubessem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que te deixa emocionado(a) sem explicação lógica?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'Como você sabe que está no caminho certo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'SINGLE_CHOICE', 'Você se sente em paz com quem é hoje?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_you', 'TEXT', 'O que você quer que as pessoas lembrem de você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você é mais introvertido(a) ou extrovertido(a)?', '["Introvertido(a)","Extrovertido(a)","Um pouco dos dois"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você costuma pensar mais com a razão ou com a emoção?', '["Razão","Emoção","Depende da situação"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você prefere planejar ou improvisar?', '["Planejar","Improvisar","Um equilíbrio dos dois"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você toma decisões rapidamente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você costuma guardar sentimentos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você pede desculpas com facilidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você aceita críticas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você costuma perdoar facilmente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você se considera uma pessoa paciente?', '["Muito","Um pouco","Pouco"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você prefere ambientes calmos ou movimentados?', '["Calmos","Movimentados","Depende do dia"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você lida bem com mudanças inesperadas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você costuma reagir quando está sob pressão?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você é competitivo(a)?', '["Sim","Não","Só em algumas áreas"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você prefere liderar ou seguir?', '["Liderar","Seguir","Depende da situação"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te deixa mais irritado(a) no dia a dia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você prefere ouvir antes de falar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você se considera uma pessoa intuitiva?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você lida com tédio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você precisa de rotina para funcionar bem?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você se distrai com facilidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te tira do sério mais rápido?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você gosta de assumir riscos calculados?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você reage quando alguém te interrompe?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você é mais perfeccionista ou pragmático(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te faz sentir energizado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você guarda segredos com facilidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você se comporta em ambientes desconhecidos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você se considera uma pessoa sensível?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te faz perder a paciência consigo mesmo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você prefere resolver problemas sozinho(a) ou em grupo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você lida com elogios exagerados?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você costuma procrastinar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te faz sentir inseguro(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você se adapta bem a regras rígidas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você reage quando perde um jogo ou aposta?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você gosta de surpresas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te faz sentir realizado(a) num dia comum?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você se considera uma pessoa organizada?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você lida com silêncio prolongado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você prefere profundidade ou leveza nas conversas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te faz sentir pressionado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você se considera uma pessoa leal?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você reage quando alguém te corrige em público?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você gosta de estar no controle das situações?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te faz sentir culpa sem motivo aparente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você se considera uma pessoa criativa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você lida com incerteza?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você prefere trabalhar sob pressão ou com calma?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te faz sentir respeitado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você se considera uma pessoa assertiva?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você reage quando alguém te ignora?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você gosta de debates e discussões intelectuais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te faz sentir entediado(a) num encontro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você se considera uma pessoa grata?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você lida com críticas à sua aparência?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você prefere estabilidade ou novidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te faz sentir motivado(a) de manhã?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você se considera uma pessoa empática?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você reage quando alguém te surpreende com um presente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você gosta de planejar com antecedência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te faz sentir exausto(a) emocionalmente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você se considera uma pessoa corajosa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'Como você lida com situações em que não tem razão?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'SINGLE_CHOICE', 'Você prefere dar ou receber conselhos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'personality', 'TEXT', 'O que te faz sentir orgulhoso(a) de uma escolha difícil?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'O que você faz no tempo livre?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual hobby gostaria de aprender?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você gosta de esportes?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual esporte você pratica ou gostaria de praticar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você prefere praia ou montanha?', '["Praia","Montanha","Os dois","Nenhum dos dois"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você gosta de viajar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual é a viagem dos seus sonhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual é o seu filme favorito?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual é a sua série favorita?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual é o seu anime favorito?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual é a sua música favorita?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual foi o último livro, filme ou série que te marcou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você prefere sair ou ficar em casa no fim de semana?', '["Sair","Ficar em casa","Um pouco dos dois"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual comida você poderia comer toda semana sem enjoar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Tem algum talento escondido que pouca gente conhece?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual hobby você abandonou e gostaria de retomar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você gosta de cozinhar por prazer?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual instrumento musical você gostaria de dominar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você prefere ler ficção ou não ficção?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual jogo — videogame, tabuleiro ou cartas — te prende mais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual festival ou evento cultural você sonha em ir?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você gosta de acampar ou estar na natureza?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual doceria, prato ou receita você faz de olhos fechados?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você curte ir ao cinema sozinho(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual podcast ou canal você recomendaria para qualquer um?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual esporte você assiste mesmo sem praticar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você gosta de dançar, mesmo sem saber?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual hobby você descobriu na pandemia ou numa fase recente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual lugar da cidade você leva visitantes para conhecer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você prefere museus ou parques de diversão?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual série você reassistiria do zero?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual comida de rua você nunca recusa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você gosta de fotografar momentos do dia a dia?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual artista você gostaria de ver ao vivo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual brinquedo ou jogo da infância você ainda sente saudade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você curte puzzles, palavras cruzadas ou jogos de lógica?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual viagem curta você faria num fim de semana?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual hobby você pratica para desestressar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você gosta de ir a shows e festivais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual receita você quer aprender a fazer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual gênero musical você descobriu tarde e passou a amar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você prefere maratonar séries ou assistir aos poucos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual esporte radical você tentaria uma vez?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual hobby você faz que poucos conhecem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você gosta de ir a feiras, mercados ou brechós?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual filme você indica para quem quer te conhecer melhor?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual atividade ao ar livre te recarrega?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você curte jogos online com outras pessoas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual hobby você gostaria de compartilhar com alguém especial?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual comida você cozinha quando quer impressionar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você prefere teatro ou stand-up?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual livro você emprestaria com confiança?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual trilha ou caminhada você repetiria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você gosta de colecionar algo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual hobby te ensinou algo sobre paciência?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual lugar do Brasil você ainda quer conhecer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você curte experimentar comidas de outros países?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual instrumento ou hobby artístico te atrai?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual jogo de infância você ainda joga de vez em quando?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você gosta de ir a bibliotecas ou livrarias?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual hobby te conecta com outras pessoas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual filme de animação você nunca enjoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você prefere atividades calmas ou cheias de adrenalina?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'TEXT', 'Qual hobby você faria se tivesse mais tempo livre?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hobbies', 'SINGLE_CHOICE', 'Você gosta de aprender coisas novas por diversão?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você é próximo da sua família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual membro da família mais te inspira?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você pretende cuidar dos seus pais quando envelhecerem?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você gostaria de morar perto da família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'A opinião da sua família influencia suas decisões?', '["Muito","Um pouco","Pouco","Nada"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como era a dinâmica na sua casa quando você era criança?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual tradição familiar você gostaria de manter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você costuma visitar a família com frequência?', '["Toda semana","Todo mês","Raramente","Quase nunca"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'O que você aprendeu com seus pais que leva para a vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Conflitos familiares te afetam muito?', '["Muito","Um pouco","Pouco"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você imagina as festas de fim de ano com a família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você contaria problemas do casal para a família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual papel a família ocupa na sua vida hoje?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Sogros próximos são importantes para você?', '["Muito","Um pouco","Pouco"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'O que você espera da relação com a família do parceiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual parente você mais se parece em personalidade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você mantém contato regular com parentes distantes?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como sua família lida com conflitos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Reuniões familiares grandes te energizam ou cansam?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual tradição familiar você gostaria de criar no futuro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'O que você aprendeu de errado e de certo com sua família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você se sente responsável pelos problemas dos seus pais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você equilibra família de origem e vida adulta?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual memória de Natal ou Ano-Novo você mais guarda?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você conta tudo para sua família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você lida com diferenças de opinião com parentes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual valor familiar você carrega para a vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você gostaria que seus filhos crescessem perto dos avós?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como sua família reagiu às suas escolhas importantes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual parente te deu o melhor conselho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você se sente pressionado(a) a seguir expectativas familiares?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você imagina envelhecer com sua família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual papel os irmãos ocupam na sua vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você perdoa erros dos pais com facilidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você lida com parentes difíceis?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual receita ou comida da família você mais sente falta?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você participa de decisões importantes da família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você mantém laços com família que mora longe?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual história de família você gosta de contar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você se sente compreendido(a) pela sua família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você reage quando a família se mete na sua vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual lição sobre amor você aprendeu em casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você gostaria de morar no mesmo bairro que algum parente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você lida com comparações entre irmãos ou primos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual momento difícil uniu sua família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você mantém fotos e lembranças de família em casa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você honra quem já partiu na sua família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual expectativa familiar você quebrou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você se sente culpado(a) por morar longe da família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você introduz pessoas importantes para sua família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual hábito de família você quer abandonar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você confia nos conselhos da sua família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você lida com segredos de família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual parente você gostaria de conhecer melhor?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você participa de grupos de WhatsApp da família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você reage quando parentes pedem favores financeiros?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual tradição familiar você acha antiquada?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você se sente parte de uma comunidade além da família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você lida com diferenças geracionais em casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual sonho sua família tem para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você gostaria de registrar a história da sua família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você define "família" para além do sangue?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'SINGLE_CHOICE', 'Você gostaria de reunir toda a família numa mesma cidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Qual parente você sente falta de ter conhecido melhor?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'family', 'TEXT', 'Como você lida quando família e escolhas pessoais entram em conflito?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você tem muitos amigos ou poucos amigos?', '["Muitos","Poucos e próximos","Um pouco dos dois"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Com que frequência você sai com amigos?', '["Toda semana","Algumas vezes por mês","Raramente","Quase nunca"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você acredita em amizade entre homem e mulher?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você mantém amizade com ex?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Quem é o amigo mais antigo que você ainda tem contato?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'O que faz alguém ser um bom amigo para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você prefere sair em grupo grande ou com poucos amigos?', '["Grupo grande","Poucos amigos","Tanto faz"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Amigos do parceiro precisam ser seus amigos também?', '["Sim","Não","Seria legal, mas não obrigatório"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você reage quando um amigo te decepciona?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você compartilha detalhes íntimos do relacionamento com amigos?', '["Sim","Não","Só com muito poucos"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Qual foi a melhor viagem ou programa que você fez com amigos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Sair sozinho(a) com amigos do sexo oposto incomoda seu parceiro?', '["Sim","Não","Depende do contexto"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Com que frequência você gostaria que o parceiro saísse com os amigos dele(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'O que você faria se um amigo criticasse seu relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você prioriza tempo com amigos ou com o parceiro quando há conflito de agenda?', '["Amigos","Parceiro","Tento equilibrar"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'O que faz uma amizade durar décadas para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você faz amigos com facilidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você lida com amizades que ficaram distantes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você acredita que amizade exige contato frequente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Qual foi a maior lição que uma amizade te ensinou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você tem amigos de diferentes fases da vida?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'O que você valoriza mais num amigo: lealdade, diversão ou honestidade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você lida com amizades tóxicas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você se abre emocionalmente com amigos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Qual programa ideal para passar um dia com amigos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você mantém amizades quando a rotina aperta?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você faz amizade com colegas de trabalho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'O que te faz sentir excluído(a) num grupo de amigos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você reage quando um amigo cancela em cima da hora?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você acredita em amizades de infância que duram para sempre?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Qual limite você coloca nas amizades?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você celebra conquistas dos seus amigos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você sente ciúmes de amizades dos seus amigos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'O que você faria se um amigo te pedisse um favor difícil?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você lida com amigos que mudaram de personalidade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você prefere amizades profundas ou muitas conhecidas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Qual foi o melhor conselho que um amigo te deu?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você reage quando amigos discordam de você publicamente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você mantém amizade com pessoas de ideologias muito diferentes?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'O que te faz sentir grato(a) por ter certos amigos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você lida com amigos que só aparecem quando precisam?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você organiza encontros ou espera ser convidado(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Qual tradição você tem com seus amigos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você apoia um amigo em crise?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você conta segredos de amigos para outras pessoas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'O que te faz perder o interesse numa amizade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você lida com amigos que moram longe?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você se sente à vontade sendo você mesmo(a) com amigos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Qual foi a viagem ou aventura mais marcante com amigos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você reage quando um amigo te critica com carinho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você acredita que amizade pode sobreviver a longos períodos sem contato?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'O que você faria se um amigo traísse sua confiança?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você equilibra tempo para diferentes grupos de amigos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você faz amizade com vizinhos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Qual qualidade você mais admira nos seus amigos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você lida com amigos que se tornaram pais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você se sente responsável pela felicidade dos seus amigos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'O que te faz sentir parte de um grupo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você reage quando amigos formam novos círculos sociais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você guarda presentes e lembranças de amigos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Qual foi a maior briga que você teve com um amigo e como resolveu?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'Como você lida com amizades onde há desequilíbrio de esforço?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'SINGLE_CHOICE', 'Você acredita que amizade verdadeira dispensa explicações?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'friends', 'TEXT', 'O que você faria para reconquistar uma amizade perdida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que significa amar para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que você procura em um parceiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que faz você perder o interesse por alguém?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Quanto tempo você leva para confiar em alguém?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você demonstra carinho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você gosta de receber carinho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que significa lealdade para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você acredita em destino?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você acredita em alma gêmea?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir amado(a) de verdade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Qual foi o relacionamento que mais te ensinou sobre você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você acredita em pausa no relacionamento?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você define um relacionamento saudável?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Espaço individual é importante em um casal?', '["Muito","Um pouco","Pouco"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que você considera um dealbreaker em um relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você gosta de surpresas românticas?', '["Sim","Não","Depende do tipo"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você lida com períodos de distância física?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que você espera de um parceiro em momentos difíceis?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir desejado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você acredita em amor à primeira vista?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você sabe que está apaixonado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir seguro(a) num relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você prefere relacionamentos intensos ou estáveis?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Qual gesto romântico te emociona de verdade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você lida com o fim de um relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você acredita que opostos se atraem?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir valorizado(a) pelo(a) parceiro(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você define compatibilidade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você acredita em reconquistar um ex?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir conectado(a) emocionalmente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você lida com diferenças de libido?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você prefere declarar sentimentos ou esperar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir ciúmes saudáveis?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você imagina envelhecer ao lado de alguém?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você acredita em relacionamento à distância?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir respeitado(a) no amor?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você lida com períodos de rotina no relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você gosta de relacionamentos públicos nas redes?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir amado(a) nas pequenas coisas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você define intimidade emocional?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você acredita em segundas chances no amor?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir atraído(a) além da aparência?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você lida com diferenças de ritmo de vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você prefere namoro casual ou compromisso?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir que encontrou "a pessoa certa"?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você lida com expectativas sobre relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você acredita que o amor muda com o tempo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir desconfortável num encontro romântico?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você demonstra interesse sem ser invasivo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você gosta de relacionamentos com muito tempo juntos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir que o relacionamento evolui?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você lida com diferenças de temperamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você acredita em paixão eterna?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir que pode ser vulnerável?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você lida com críticas sobre sua escolha de parceiro(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você prefere surpresas ou previsibilidade no amor?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir que o relacionamento tem futuro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você lida com diferenças de gostos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você acredita em relacionamento aberto?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir que está sendo escolhido(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você lida com momentos de dúvida no amor?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você gosta de relacionamentos com humor e brincadeira?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir que o amor é recíproco?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você lida com diferenças de ambição?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você acredita que o amor supera tudo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'O que te faz sentir que pode construir algo junto?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'SINGLE_CHOICE', 'Você gosta de relacionamentos com metas compartilhadas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'relationship', 'TEXT', 'Como você lida quando o romance esfria por um tempo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você se considera ciumento(a)?', '["Muito","Um pouco","Não"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que desperta o seu ciúme?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você acha saudável sentir ciúmes?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você compartilharia a senha do celular?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você compartilharia localização em tempo real?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Curtidas em fotos de outras pessoas te incomodam?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Conversar com ex te incomoda?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Flertar por brincadeira é traição?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que é traição para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você já terminou um relacionamento por ciúmes?', '["Sim","Não","Quase"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você reage quando sente ciúmes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Seguir pessoas atraentes nas redes te incomoda?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você aceitaria que o parceiro saísse sozinho à noite?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que ajuda você a confiar mais em alguém?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Mensagens apagadas ou conversas escondidas são red flag?', '["Sim","Não","Depende do contexto"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você já sentiu ciúmes de amizades do(a) parceiro(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que te ajuda a lidar com ciúmes quando aparecem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você já stalkeou perfil de alguém por ciúme?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você diferencia ciúme de controle?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você se incomoda quando o(a) parceiro(a) elogia outras pessoas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que você faria se descobrisse uma conversa suspeita?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você aceitaria que o(a) parceiro(a) saísse com ex?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você reage quando sente que está sendo comparado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você já terminou por ciúmes excessivos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que te faz confiar mais no(a) parceiro(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você se incomoda com amizades muito próximas do sexo oposto?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você lida quando o(a) parceiro(a) não responde mensagens?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você já sentiu ciúmes de colegas de trabalho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que você considera limite saudável em relação a ciúmes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você compartilharia senhas por confiança ou por controle?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você reage quando o(a) parceiro(a) esconde o celular?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você se incomoda com elogios públicos a outras pessoas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que te faz sentir seguro(a) sobre fidelidade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você aceitaria relacionamento sem exclusividade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você lida com ciúmes que você mesmo(a) considera irracionais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você se incomoda quando o(a) parceiro(a) dança com outras pessoas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que você faria se um amigo flertasse com seu(sua) parceiro(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você já ficou com ciúmes de família do(a) parceiro(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você reage quando o(a) parceiro(a) menciona um ex?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você se incomoda com fotos antigas com ex nas redes?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que te ajuda a não transformar ciúme em acusação?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você aceitaria que o(a) parceiro(a) viaje sozinho(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você lida com elogios que o(a) parceiro(a) recebe?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você se incomoda com pessoas que curtem todas as fotos do(a) parceiro(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que você considera sinal de desconfiança justificada?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você já sentiu ciúmes de hobbies ou paixões do(a) parceiro(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você reage quando o(a) parceiro(a) tem segredos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você aceitaria que o(a) parceiro(a) trabalhe com ex?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que te faz sentir que o ciúme está saudável?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você se incomoda com mensagens de madrugada de desconhecidos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você lida quando o(a) parceiro(a) não quer te apresentar a alguém?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você já sentiu ciúmes de animais de estimação?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que você faria se o(a) parceiro(a) mentisse sobre onde estava?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você aceitaria que o(a) parceiro(a) tenha amizades secretas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você reage quando o(a) parceiro(a) minimiza seus ciúmes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você se incomoda com elogios a celebridades?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que te faz sentir que precisa de mais transparência?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você aceitaria que o(a) parceiro(a) saia em grupo sem você?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você lida com ciúmes de conquistas profissionais do(a) parceiro(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você se incomoda quando o(a) parceiro(a) não posta vocês?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que você faria se descobrisse mentiras pequenas repetidas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você acredita que ciúme pode ser eliminado totalmente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'Como você pediria mais segurança sem parecer controlador(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'SINGLE_CHOICE', 'Você se incomoda quando o(a) parceiro(a) recebe convites solteiros?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'jealousy', 'TEXT', 'O que te ajuda a distinguir ciúme de intuição?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você reage durante uma discussão?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere conversar na hora ou esperar esfriar a cabeça?', '["Conversar na hora","Esperar esfriar","Depende da situação"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você costuma guardar mágoas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você gosta de resolver tudo no diálogo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que você precisa ouvir durante uma briga para se acalmar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você levanta a voz durante discussões?', '["Sim","Não","Às vezes"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere resolver conflitos por mensagem ou pessoalmente?', '["Pessoalmente","Por mensagem","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você pede desculpas quando erra?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que você considera uma crítica construtiva?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue falar sobre sentimentos com facilidade?', '["Sim","Não","Com algumas pessoas"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Silêncio após uma discussão te incomoda?', '["Muito","Um pouco","Não"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você gostaria que o parceiro te comunicasse que está chateado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você acha importante ter conversas difíceis regularmente?', '["Sim","Não","Quando necessário"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que você faz quando não se sente ouvido(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você usa sarcasmo ou ironia em discussões?', '["Sim","Não","Às vezes"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como vocês poderiam melhorar a comunicação entre vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Existe algum assunto que você evita falar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você gosta de receber feedback sobre o relacionamento?', '["Sim","Não","Depende de como é dito"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que significa para você "estar presente" numa conversa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você prefere que a outra pessoa te avise quando está chateada?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue dizer "não" com clareza?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te faz sentir que a conversa foi produtiva?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere mensagens longas ou conversas rápidas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você lida quando a outra pessoa não quer falar sobre algo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue admitir quando está errado(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te faz sentir interrompido(a) ou não ouvido(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere resolver mal-entendidos por texto ou pessoalmente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você reage quando a outra pessoa muda de assunto no meio da conversa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue falar sobre necessidades emocionais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te ajuda a manter a calma numa discussão?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere feedback direto ou suave?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você lida com silêncios desconfortáveis?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue pedir desculpas sem justificar demais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te faz sentir que a outra pessoa está presente na conversa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere combinar assuntos difíceis com antecedência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você reage quando a outra pessoa levanta a voz?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue expressar gratidão com facilidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te faz sentir que precisa de um tempo sozinho(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere resolver conflitos no mesmo dia?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você lida quando a outra pessoa não responde por horas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue falar sobre limites pessoais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te faz sentir que a outra pessoa te entende?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere conversas profundas ou leves no dia a dia?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você reage quando a outra pessoa faz suposições sobre você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue dizer quando precisa de espaço?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te faz sentir que uma conversa virou discussão?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere receber críticas em particular?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você lida com diferenças de opinião firmes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue falar sobre expectativas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te faz sentir que a outra pessoa está evitando o assunto?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere combinar regras de convivência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você reage quando a outra pessoa usa ironia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue falar sobre o que te magoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te faz sentir que precisa repetir algo várias vezes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere resolver conflitos com um mediador?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você lida quando a outra pessoa não lembra do que combinaram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue elogiar a outra pessoa com frequência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te faz sentir que a comunicação está fluindo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere conversas matinais ou noturnas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você reage quando a outra pessoa compartilha algo íntimo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue falar sobre planos futuros juntos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te faz sentir que precisa de mais clareza?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você prefere resolver conflitos com humor?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você lida quando a outra pessoa não concorda com seu ponto de vista?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue pedir ajuda quando precisa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te faz sentir que a outra pessoa te respeita na conversa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'SINGLE_CHOICE', 'Você consegue reconhecer quando a outra pessoa precisa de apoio?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'Como você lida quando a outra pessoa interpreta mal suas palavras?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'communication', 'TEXT', 'O que te faz sentir que vale a pena insistir numa conversa difícil?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você é mais econômico(a) ou gastador(a)?', '["Econômico(a)","Gastador(a)","No meio termo"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você faz planejamento financeiro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você investe dinheiro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual é o seu maior objetivo financeiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você acredita em dividir todas as contas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você teria conta conjunta?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você compraria uma casa financiada?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'O dinheiro é importante para um relacionamento?', '["Muito","Um pouco","Pouco"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual foi a maior compra impulsiva que você já fez?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você guarda dinheiro todo mês?', '["Sim","Não","Tento, mas nem sempre"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você lida com dívidas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Presentes caros te incomodam?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'O que você prioriza gastar: experiências ou bens materiais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você consultaria o parceiro antes de uma compra grande?', '["Sim","Não","Depende do valor"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você imagina as finanças do casal no futuro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você tem reserva de emergência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual foi a compra que mais te arrependeu?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você negocia preços ou aceita o valor?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você lida com gastos inesperados?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você usa cartão de crédito com frequência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual porcentagem da renda você gostaria de poupar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você já emprestou dinheiro e se arrependeu?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você define "compra consciente"?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você acompanha seus gastos mensalmente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual meta financeira te motiva mais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você prefere pagar à vista ou parcelar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você lida com pressão para gastar em ocasiões sociais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você investe em educação financeira?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual hábito financeiro você quer mudar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você compartilha contas com alguém?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você lida com diferenças de renda?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você tem seguro — saúde, vida ou patrimonial?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual gasto você considera investimento, não despesa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você usa apps de controle financeiro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você lida com tentações de compra impulsiva?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você prefere qualidade ou preço baixo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual sonho financeiro você tem para os próximos cinco anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você conversa sobre dinheiro com facilidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você lida com pedidos de empréstimo de conhecidos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você tem plano para aposentadoria?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual gasto você nunca economizaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você prefere experiências ou bens materiais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você lida com inflação e custo de vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você já fez dívida por impulso?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual hábito financeiro você aprendeu tarde?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você doa dinheiro para causas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você lida com presentes caros que não pode retribuir?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você prefere morar de aluguel ou financiar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual meta financeira parece impossível hoje?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você tem conta conjunta com alguém?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você lida com gastos de saúde?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você prefere trabalhar mais ou gastar menos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual compra te deu mais satisfação?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você acompanha cotações e investimentos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você lida com comparar patrimônio com outras pessoas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você tem limite de gastos por mês?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual hábito financeiro você herdou da família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você prefere pagar dívidas rápido ou aos poucos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você lida com gastos de lazer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você tem reserva para viagens?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual meta financeira você alcançou e se orgulha?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você prefere transparência total sobre finanças?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Como você lida com gastos de filhos ou dependentes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'SINGLE_CHOICE', 'Você tem plano B se perder a renda principal?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'money', 'TEXT', 'Qual conselho financeiro você daria para si mesmo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual é a profissão dos seus sonhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você pretende empreender?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'O trabalho é prioridade na sua vida?', '["Sim","Não","Depende da fase"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você mudaria de cidade por uma oportunidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você mudaria de país por trabalho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'O que você mais gosta no seu trabalho atual?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'O que você menos gosta no seu trabalho atual?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você trabalha além do horário com frequência?', '["Sim","Não","Às vezes"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como o trabalho afeta seu humor em casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você levaria trabalho para as férias?', '["Sim","Não","Só se for urgente"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual conquista profissional você mais se orgulha?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Salário maior com menos tempo livre vale a pena?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você equilibra ambição profissional e vida pessoal?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você aceitaria que o parceiro ganhasse muito mais que você?', '["Sim","Não","Não me importo"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'O que você faria se perdesse o emprego amanhã?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'O que te motiva a levantar da cama para trabalhar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você se sente realizado(a) na carreira atual?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual habilidade profissional você quer desenvolver?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você aceitaria redução de salário por mais qualidade de vida?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você lida com burnout?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você prefere emprego estável ou autonomia?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual foi o feedback profissional que mais te marcou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você networking com frequência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você lida com concorrência no trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você aceitaria promoção com mais responsabilidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual valor profissional é inegociável para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você trabalha no feriado se precisar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você lida com chefes difíceis?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você prefere home office ou presencial?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual conquista profissional você ainda busca?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você aceitaria demissão por princípio?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você lida com falta de reconhecimento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você tem side hustle ou projeto paralelo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual ambiente de trabalho te faz render mais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você aceitaria recontratação em empresa antiga?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você lida com mudanças de carreira?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você prefere especialização ou generalização?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual erro profissional te ensinou mais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você aceitaria viagens frequentes a trabalho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você lida com colegas que não puxam o peso?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você tem mentor ou referência profissional?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual meta de carreira você tem para os próximos três anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você aceitaria trabalhar no exterior?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você lida com desemprego?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você prefere empresa grande ou pequena?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual habilidade soft você mais valoriza?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você aceitaria cargo com menos visibilidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você lida com críticas no trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você tem plano B profissional?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual setor te atrai para uma mudança?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você aceitaria trabalhar aos fins de semana?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você lida com política interna?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você prefere liderar equipe ou trabalhar solo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual projeto profissional você mais se orgulha?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você aceitaria estágio em nova área?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você lida com prazos apertados?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você tem portfólio ou currículo atualizado?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual benefício além do salário é essencial?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você aceitaria contrato PJ em vez de CLT?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você lida com falta de propósito no trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você prefere rotina ou variedade no trabalho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Qual lição sobre carreira você aprendeu da pior forma?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você aceitaria mudar de cidade por emprego?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'TEXT', 'Como você equilibra ambição e bem-estar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'career', 'SINGLE_CHOICE', 'Você se vê na mesma área daqui a dez anos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina sua vida em cinco anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina sua vida em dez anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Onde você gostaria de morar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual patrimônio você gostaria de conquistar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'O que significa sucesso para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'O que você quer realizar antes dos 40 anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Onde você se vê morando daqui a dez anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual sonho você ainda não realizou e quer muito?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você planeja a aposentadoria?', '["Sim","Não","Ainda não pensei nisso"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'O que precisa acontecer para você se sentir realizado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Estabilidade ou aventura — o que pesa mais no futuro?', '["Estabilidade","Aventura","Um equilíbrio"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual hábito você quer construir para o futuro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina um dia perfeito daqui a cinco anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê morando no mesmo lugar por muitos anos?', '["Sim","Não","Talvez"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'O que você faria diferente se soubesse que vai viver até os 90?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina um sábado ideal daqui a três anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você tem um "bucket list" escrito?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual lugar do mundo você quer conhecer antes de morrer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você planeja mudar de cidade nos próximos anos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você define "vida boa"?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê com filhos no futuro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual meta pessoal você quer alcançar este ano?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você acredita que seus sonhos vão se realizar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina suas férias daqui a cinco anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você quer morar no interior ou na capital?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual hábito futuro você quer manter para sempre?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê empreendendo no futuro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina seu aniversário daqui a dez anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você quer aprender um novo idioma?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual experiência você quer viver antes dos 50?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê morando sozinho(a) em algum momento?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina sua rotina de aposentadoria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você quer escrever um livro ou criar algo duradouro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual meta de saúde você quer alcançar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê viajando muito no futuro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina suas amizades daqui a vinte anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você quer ter pets no futuro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual projeto pessoal você quer terminar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê morando perto do mar ou da montanha?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina celebrar conquistas futuras?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você quer fazer voluntariado ou trabalho social?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual meta financeira de longo prazo você tem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê com rotina mais calma ou mais intensa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina seu lar ideal?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você quer aprender a tocar um instrumento?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual viagem em família você sonha em fazer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê mudando de país algum dia?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina seu legado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você quer ter um jardim ou horta?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual meta de aprendizado você tem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê com mais ou menos amigos no futuro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina suas manhãs daqui a dez anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você quer fazer uma pós ou especialização?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual meta de bem-estar você prioriza?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê com rotina de exercícios fixa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina passar o Natal daqui a cinco anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você quer ter um negócio próprio?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual meta criativa você tem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê morando em casa própria?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina envelhecer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você quer aprender uma profissão nova?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Qual meta de relacionamento você tem para o futuro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê com mais tempo livre ou mais ocupado(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'TEXT', 'Como você imagina comemorar a aposentadoria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'future', 'SINGLE_CHOICE', 'Você se vê realizando um sonho de infância no futuro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Casamento é importante para você?', '["Muito","Um pouco","Não"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você pretende casar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina o seu casamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você acredita que casamento deve ser para sempre?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'O que faz um casamento durar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere casamento civil ou religioso?', '["Civil","Religioso","Os dois","Tanto faz"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina a festa de casamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Casamento íntimo ou grande celebração?', '["Íntimo","Grande","No meio termo"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Pacto antenupcial faz sentido para você?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'O que te faria desistir de casar com alguém?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Mudar de sobrenome após casar te importa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Qual promessa você gostaria de fazer no altar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você vê o papel dos padrinhos e da família na cerimônia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Lua de mel longa é prioridade?', '["Sim","Não","Seria legal, mas não essencial"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'O que um casamento significa para você além da festa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você acredita em renovação de votos?', '["Sim","Não","Talvez"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você sonha com pedido de casamento tradicional?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina a decoração do casamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere casamento no civil ou na igreja?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Qual tradição de casamento você gostaria de incluir?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você aceitaria casamento sem festa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina os votos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere noiva/noivo entrar sozinho(a) ou acompanhado(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Qual música seria perfeita para a primeira dança?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você aceitaria casamento destino?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina a lista de convidados?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere vestido/traje clássico ou moderno?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Qual papel a família teria na cerimônia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você aceitaria casamento com orçamento limitado?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina a lua de mel?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere cerimônia ao ar livre ou fechada?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Qual promessa você faria além dos votos tradicionais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você aceitaria casamento íntimo com poucos convidados?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina as fotos do casamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere buffet ou menu fechado?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Qual tradição de outra cultura te atrai para um casamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você aceitaria casamento sem alianças?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina o discurso dos padrinhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere casamento de dia ou à noite?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Qual detalhe tornaria o casamento inesquecível?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você aceitaria casamento com transmissão online?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina a despedida de solteiro(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere casamento tradicional ou alternativo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Qual valor você quer que o casamento represente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você aceitaria casamento sem pai/mãe te acompanhando?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina a primeira semana de casados?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere casamento com muita ou pouca decoração?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Qual tradição você criaria para o casamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você aceitaria casamento em outra cidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina o bolo ou a sobremesa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere casamento com ou sem padrinhos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Qual momento da cerimônia te emocionaria mais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você aceitaria casamento com tema específico?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina os convites?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere casamento com banda ao vivo ou DJ?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Qual promessa você espera ouvir do(a) parceiro(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você aceitaria casamento sem fotógrafo profissional?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina a convivência pós-casamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere casamento grande ou pequeno?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Qual tradição familiar você incluiria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você aceitaria casamento com cerimônia simbólica?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina celebrar aniversários de casamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você prefere aliança clássica ou personalizada?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'O que o casamento significa para você emocionalmente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'SINGLE_CHOICE', 'Você aceitaria casamento com cerimônia apenas simbólica?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'marriage', 'TEXT', 'Como você imagina lidar com conflitos sendo casados?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você quer ter filhos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Quantos filhos você gostaria de ter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você adotaria uma criança?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você pretende educar seus filhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Qual valor você gostaria de ensinar primeiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Qual idade ideal para ter o primeiro filho?', '["Antes dos 30","Entre 30 e 35","Depois dos 35","Não tenho preferência"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você imagina a divisão de tarefas com filhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ser pai/mãe solo se necessário?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Que tipo de pai/mãe você quer ser?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Babá ou família cuidando dos filhos te parece ok?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você educaria sobre dinheiro e responsabilidade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Celular e redes para crianças — qual sua opinião?', '["Proibir até mais velho","Com limites","Confio no bom senso"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'O que você faria se discordasse da educação do parceiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você lidaria com birras e fases difíceis?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Ter filhos mudaria suas prioridades de carreira?', '["Sim","Não","Um pouco"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Que memória de infância você gostaria de recriar para seus filhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você quer ser pai/mãe biológico(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você imagina o quarto do primeiro filho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos mais tarde na vida?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Qual tradição você quer passar para os filhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter apenas um filho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você lida com a ideia de noites mal dormidas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria escola pública ou privada?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Qual valor você ensinaria desde cedo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos com diferença grande de idade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você imagina as férias em família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria creche desde cedo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Qual brincadeira da infância você quer repetir?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos gêmeos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você lida com birras e limites?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos por adoção?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Qual hábito saudável você quer incutir?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos antes de casar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos se a carreira estivesse em ascensão?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Qual memória de infância você quer recriar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos com necessidades especiais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você lida com críticas sobre educação?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos em outro país?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Qual regra de casa você teria com filhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos se morasse longe da família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você imagina ensinar sobre dinheiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos se o parceiro não quisesse?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Qual atividade você faria com os filhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos com ajuda de reprodução assistida?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você lida com comparação entre filhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos e pets juntos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Qual limite você colocaria em telas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos se a renda fosse instável?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você imagina o nascimento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos se morasse em apartamento pequeno?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Qual tradição de aniversário você criaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos se um dos dois viajasse muito?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você lida com a pressão para ter filhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos se houvesse risco genético?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Qual conselho você daria para um filho adolescente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos se morasse com os pais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você imagina a relação avós-netos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos se um dos dois tivesse filhos de relacionamento anterior?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Qual valor sobre respeito você ensinaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos se a saúde mental não estivesse estável?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você lida com a ideia de nunca ter filhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos se morasse longe da escola ideal?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'O que te faria reconsiderar ter filhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'SINGLE_CHOICE', 'Você aceitaria ter filhos se morassem longe dos avós?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'children', 'TEXT', 'Como você imagina ensinar empatia desde cedo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de cozinhar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você é organizado(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você imagina dividir as tarefas domésticas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de receber visitas em casa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere morar em apartamento ou casa?', '["Apartamento","Casa","Tanto faz"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como é a sua manhã ideal?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você é matutino(a) ou noturno(a)?', '["Matutino(a)","Noturno(a)","Depende do dia"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você lida com bagunça em casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de ter uma rotina fixa?', '["Sim","Não","Em parte"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual tarefa doméstica você menos gosta de fazer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Animais de estimação em casa — sim ou não?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você imagina os finais de semana a dois em casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'TV de fundo durante o jantar te incomoda?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'O que torna um lar aconchegante para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de decorar e mudar a casa com frequência?', '["Sim","Não","De vez em quando"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você prefere dividir contas da casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere acordar cedo ou dormir até tarde?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você imagina a cozinha ideal?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de plantas em casa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual cheiro te faz sentir em casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere casa minimalista ou cheia de objetos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você lida com barulho dos vizinhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de ter música ambiente em casa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual canto da casa é seu favorito?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere jantar à mesa ou no sofá?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você imagina a sala de estar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de ter visitas frequentes?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual rotina noturna te relaxa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere lavar louça na hora ou acumular?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você lida com sujeira de pets?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de ter velas ou incenso em casa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual tarefa doméstica você faz com prazer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere varanda ou quintal?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você imagina o banheiro ideal?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de ter geladeira sempre cheia?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual hábito matinal é inegociável?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere ar-condicionado ou ventilador?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você lida com bagunça temporária?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de ter quadros ou fotos na parede?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual comida de conforto você sempre tem em casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere cozinha aberta ou separada?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você imagina o quarto ideal?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de ter livros espalhados?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual rotina de fim de semana em casa te agrada?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere chuveiro ou banheira?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você lida com falta de espaço?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de ter TV no quarto?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual ambiente precisa estar sempre arrumado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere cortinas ou persianas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você imagina a área de trabalho em casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de ter café da manhã elaborado?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual hábito noturno te prepara para dormir?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere casa com muita luz natural?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você lida com temperatura em casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de ter flores frescas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual rotina de limpeza funciona para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere móveis novos ou antigos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você imagina a garagem ou área externa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de ter snacks sempre disponíveis?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual tradição doméstica você quer criar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere casa silenciosa ou com barulho de fundo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você lida com organização de armários?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você gosta de cozinhar para visitas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Qual detalhe torna um lar acolhedor para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'SINGLE_CHOICE', 'Você prefere morar perto ou longe do centro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'home_routine', 'TEXT', 'Como você imagina envelhecer no mesmo lar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você pratica atividade física?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você se alimenta bem?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você fuma?', '["Sim","Não","Às vezes"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você bebe?', '["Sim","Não","Socialmente"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você dorme bem?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'O que você faz para cuidar da saúde mental?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você já fez terapia?', '["Sim","Não","Estou fazendo"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com estresse no dia a dia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Exercício físico é prioridade para você?', '["Sim","Não","Tento ser"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você tem restrições alimentares?', '["Sim","Não","Por escolha, não por necessidade"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você reage quando está doente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Check-ups médicos regulares — você faz?', '["Sim","Não","Deveria fazer mais"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'O que te ajuda a dormir melhor?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Saúde do parceiro é algo que você se preocupa ativamente?', '["Sim","Não","Um pouco"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como vocês poderiam apoiar a saúde um do outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você faz check-up médico anualmente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Qual hábito de saúde você quer adotar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você toma vitaminas ou suplementos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com dor de cabeça?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você pratica meditação ou mindfulness?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Qual alimento você evita por saúde?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você tem alergias conhecidas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com insônia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você bebe água suficiente no dia?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Qual exercício você mais gosta?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você evita açúcar ou processed foods?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com ansiedade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você usa óculos ou lentes?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Qual hábito ruim de saúde você quer abandonar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você faz exames preventivos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com resfriados e gripes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você tem plano de saúde?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Qual meta de saúde física você tem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você evita álcool em excesso?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com estresse crônico?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você tem histórico familiar de doenças?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Qual rotina de sono funciona para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você evita fumar ou tabaco?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com dores musculares?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você faz alongamento ou yoga?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Qual hábito mental te faz bem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você evita cafeína à noite?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com falta de energia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você tem restrição alimentar por saúde?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Qual meta de bem-estar emocional você tem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você evita telas antes de dormir?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com enxaquecas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você tem rotina de skincare?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Qual hábito de saúde você mantém há anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você evita comer tarde da noite?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com problemas digestivos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você faz acompanhamento psicológico?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Qual meta de peso ou forma física você tem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você evita sol excessivo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com dores nas costas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você tem rotina de hidratação?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Qual hábito de saúde você aprendeu recentemente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você evita automedicação?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com falta de motivação para exercício?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você tem rotina de pausas no trabalho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Qual meta de saúde mental você prioriza?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você evita junk food com frequência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'Como você lida com problemas de pele?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'SINGLE_CHOICE', 'Você tem rotina de gratidão ou journaling?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'health', 'TEXT', 'O que te faz sentir saudável de verdade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Você possui alguma religião?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'A fé é importante para você?', '["Muito","Um pouco","Não"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você gostaria que seu parceiro tivesse a mesma religião?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Você acredita em algo maior que você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você ora, medita ou tem algum ritual?', '["Sim","Não","Às vezes"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como a espiritualidade aparece no seu dia a dia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Diferenças religiosas no casal te preocupam?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'O que te dá sentido de propósito na vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você gostaria de criar filhos com alguma tradição religiosa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como você lida com momentos de incerteza sobre o futuro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Acasal, signo ou superstições influenciam você?', '["Sim","Não","Por diversão"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'O que você acredita que acontece depois da morte?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Participar de cerimônias religiosas juntos é importante?', '["Sim","Não","Às vezes"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita em karma ou lei do retorno?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como a espiritualidade te ajuda em momentos difíceis?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você pratica alguma religião ativamente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Qual ritual te traz paz?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita em anjos ou proteção espiritual?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como você lida com dúvidas sobre fé?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você frequenta templos, igrejas ou centros espirituais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Qual ensinamento espiritual te marcou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita em reencarnação?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como você define "milagre"?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você ora ou reza com frequência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Qual prática espiritual você gostaria de experimentar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita que tudo acontece por um motivo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como você lida com pessoas de fé diferente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você lê textos sagrados ou espirituais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Qual momento te fez questionar a fé?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita em energia ou vibração?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como a espiritualidade aparece nas suas escolhas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você participa de retiros ou eventos espirituais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Qual valor espiritual guia sua vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita em destino ou livre-arbítrio?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como você lida com luto do ponto de vista espiritual?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você medita regularmente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Qual tradição espiritual te atrai?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita em premonições ou sinais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como você ensinaria espiritualidade para uma criança?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita em vida após a morte?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Qual prática te conecta com algo maior?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você evita falar de religião em conversas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como você lida com críticas à sua fé?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita em cura espiritual?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Qual momento de silêncio te fez sentir presença divina?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você usa amuletos ou símbolos de proteção?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como você define "propósito de vida"?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita em oração coletiva?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Qual festa religiosa ou espiritual você mais valoriza?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você busca respostas em astrologia ou tarô?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como você lida com incerteza sobre o futuro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita em perdão espiritual?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Qual lição espiritual você aprendeu com um erro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você pratica gratidão como ritual?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como você honra quem partiu?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita em proteção de antepassados?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Qual prática espiritual você abandonou e por quê?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você sente que a fé te limita ou liberta?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como você define "fé" para si?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita que o universo conspira a seu favor?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'O que te dá esperança quando tudo parece difícil?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'SINGLE_CHOICE', 'Você acredita que coincidências significativas existem?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'spirituality', 'TEXT', 'Como você lida com momentos em que a fé parece distante?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Quanto tempo você passa nas redes sociais?', '["Poucas horas por semana","Todo dia, pouco tempo","Várias horas por dia"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você posta muito da sua vida?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você gosta de expor o relacionamento nas redes?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você checa o celular logo ao acordar?', '["Sim","Não","Às vezes"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual rede social você mais usa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Stories e status do parceiro precisam mencionar você?', '["Sim","Não","Não me importo"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você seguiria o ex em rede social?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com comparação nas redes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Limitar tempo de tela no casal faz sentido?', '["Sim","Não","Para mim sim"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'O que você nunca postaria nas redes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Fotos íntimas ou em trajes leves nas redes te incomodam?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você reagiria se o parceiro postasse algo que te incomodasse?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você usa redes para conhecer pessoas novas?', '["Sim","Não","Raramente"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você usa redes sociais todo dia?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual rede você usaria se tivesse que escolher só uma?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você posta stories com frequência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com haters ou comentários negativos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você curte posts de ex ou antigos contatos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual conteúdo você nunca postaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você usa filtros em todas as fotos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com FOMO nas redes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você segue influenciadores ou creators?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual rede te consome mais tempo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você apaga posts antigos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com comparação de corpo nas redes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você usa redes para trabalho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual limite de tempo de tela você impõe?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você posta fotos sem maquiagem ou filtro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com viralização inesperada?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você usa LinkedIn ou redes profissionais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual rede você considera mais tóxica?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você responde DMs de desconhecidos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com cancelamentos online?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você posta opiniões políticas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual rede te traz mais alegria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você usa modo escuro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com notificações constantes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você posta fotos de comida?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual rede você abandonou e por quê?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você usa redes para namoro ou conhecer pessoas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com privacidade online?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você posta viagens em tempo real?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual rede te deixa mais ansioso(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você usa redes no banheiro ou na cama?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com algoritmos e recomendações?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você posta selfies com frequência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual rede você usa para notícias?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você bloqueia ou silencia contas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com exposição de filhos ou família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você posta conteúdo educativo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual rede te conecta com amigos distantes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você usa redes durante refeições?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com desinformação?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você posta memes ou humor?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual rede você considera essencial hoje?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você usa redes para vender ou empreender?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com dependência de likes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você posta rotina de exercícios?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Qual rede você esconderia de certas pessoas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você usa redes para aprender algo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'Como você lida com exposição do relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'SINGLE_CHOICE', 'Você faria detox de redes por uma semana?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'social_media', 'TEXT', 'O que te faria deletar todas as redes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que você nunca faria por dinheiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual valor é inegociável para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que você mais admira em alguém?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que mais te decepciona nas pessoas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que significa respeito para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que é honestidade para você na prática?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual causa ou tema você defenderia publicamente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Política é assunto para discutir no relacionamento?', '["Sim","Não","Com respeito, sim"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que você faria se visse alguém sendo injustiçado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual comportamento você nunca toleraria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Mentirinhas para proteger sentimentos são aceitáveis?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que significa lealdade além do relacionamento amoroso?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual princípio guiou a maior decisão da sua vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você mudaria de opinião por pressão social?', '["Sim","Não","Raramente"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que te faz perder o respeito por alguém?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Como você define integridade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Doar tempo ou dinheiro para causas é importante para você?', '["Muito","Um pouco","Pouco"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que você ensinaria para uma criança sobre certo e errado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual valor do parceiro é mais importante para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que você faria se visse alguém sendo discriminado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você defenderia um amigo mesmo tendo razão o outro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual valor você herdou dos seus pais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você mudaria de emprego por ética?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que te faz perder a admiração por alguém?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você doaria um rim para um desconhecido?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Como você define "justiça"?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você mentiria para proteger alguém?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual causa você apoiaria com tempo e dinheiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você boicotaria uma marca por valores?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que te faz sentir orgulho moral?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você denunciaria um crime mesmo com risco?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Como você lida com dilemas éticos no trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você perdoaria uma traição de confiança?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual valor você ensinaria em uma escola?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você aceitaria suborno em situação extrema?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que te faz sentir que agiu corretamente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você defenderia um estranho injustiçado?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Como você define "coragem moral"?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você quebraria uma regra por compaixão?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual valor você nunca negociaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você contaria a verdade que machuca?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que te faz sentir que alguém tem caráter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você apoiaria um amigo em decisão errada?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Como você lida com hipocrisia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você doaria anonimamente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual valor te guia em relacionamentos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você aceitaria emprego em empresa controversa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que te faz sentir que fez a coisa certa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você perdoaria quem te prejudicou financeiramente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Como você define "empatia" na prática?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você denunciaria um colega desonesto?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual valor você mais admira em líderes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você mentiria em currículo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que te faz sentir que alguém é íntegro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você apoiaria protesto pacífico?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Como você lida com valores conflitantes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você aceitaria ganhar menos por ética?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual valor você quer deixar como legado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você contaria segredo que prometeu guardar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que te faz sentir que agiu por medo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você defenderia animal maltratado?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Como você define "honra"?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você aceitaria vantagem injusta?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Qual valor te guia em decisões financeiras?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você perdoaria quem mentiu para você?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'O que te faz sentir que alguém é confiável?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você apoiaria amigo em divórcio polêmico?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'TEXT', 'Como você lida com valores da sociedade vs. seus?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'values', 'SINGLE_CHOICE', 'Você faria sacrifício grande por um valor?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se você ganhasse R$ 10 milhões hoje, o que faria primeiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse morar em qualquer lugar do mundo, onde seria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se tivesse apenas um ano de vida, o que mudaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse voltar no tempo, mudaria alguma decisão?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se você pudesse jantar com qualquer pessoa, viva ou morta, quem seria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse um ano sabático pago, o que faria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse dominar uma habilidade da noite para o dia, qual seria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se descobrisse um talento artístico, qual gostaria que fosse?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se você pudesse trocar de vida com alguém por um dia, quem seria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se acordasse com um superpoder, qual escolheria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse apagar uma memória, qual seria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse uma viagem all-inclusive para qualquer lugar, para onde iria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse jantar com três pessoas da história, quem convidaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'SINGLE_CHOICE', 'Se descobrisse que tem um mês de vida, contaria para todos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse dominar um idioma da noite para o dia, qual seria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse um ano sabático, o que faria primeiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse viver em qualquer época, qual escolheria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'SINGLE_CHOICE', 'Se pudesse ler mentes por um dia, usaria?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse um carro dos sonhos, qual seria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse ter um animal de estimação exótico, qual escolheria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se acordasse famoso(a) da noite para o dia, o que faria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'SINGLE_CHOICE', 'Se pudesse voltar aos 18 anos, mudaria algo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse uma casa em qualquer lugar, onde seria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse ter um talento artístico instantâneo, qual seria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se descobrisse um portal para outro mundo, entraria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'SINGLE_CHOICE', 'Se pudesse nunca mais trabalhar, o que faria?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse um encontro com seu eu do futuro, o que perguntaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse eliminar um problema mundial, qual seria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'SINGLE_CHOICE', 'Se pudesse reviver um dia da sua vida, qual seria?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse ingressos VIP para qualquer evento, qual escolheria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse ter uma conversa honesta com qualquer pessoa viva, quem seria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se acordasse com R$ 1 milhão, qual seria a primeira compra?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'SINGLE_CHOICE', 'Se pudesse mudar uma decisão do passado, mudaria?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse um curso completo de qualquer área, qual faria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse ter um dia sem consequências, o que faria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se descobrisse que pode viajar no tempo uma vez, iria ao passado ou futuro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'SINGLE_CHOICE', 'Se pudesse ter um clone para fazer tarefas chatas, aceitaria?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse um jantar com seu ídolo, o que pediria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse viver em um filme ou série, qual seria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se acordasse com a habilidade de falar com animais, o que perguntaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'SINGLE_CHOICE', 'Se pudesse apagar um erro da história, qual seria?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse uma biblioteca pessoal infinita, por onde começaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse ter um dia de fama total, como usaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se descobrisse um tesouro escondido, o que faria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'SINGLE_CHOICE', 'Se pudesse trocar de profissão instantaneamente, qual seria?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse um ano em uma ilha deserta com suprimentos, aceitaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse ter uma conversa com seu eu de 80 anos, o que perguntaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se acordasse com a capacidade de voar, para onde iria primeiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'SINGLE_CHOICE', 'Se pudesse eliminar um medo, qual seria?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse um passe livre em todos os parques do mundo, qual visitaria primeiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse ter um dia repetido infinitamente, o que faria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se descobrisse que é personagem de um livro, o que mudaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'SINGLE_CHOICE', 'Se pudesse ter um desejo realizado sem consequências, qual seria?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse um encontro com um cientista famoso, o que perguntaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se pudesse viver em qualquer clima permanentemente, qual escolheria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se acordasse com a habilidade de curar uma doença, qual curaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'SINGLE_CHOICE', 'Se pudesse ter uma segunda chance em algo, o que seria?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'hypotheticals', 'TEXT', 'Se ganhasse a oportunidade de colonizar Marte, iria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você acha que temos em comum?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Em que você acha que somos diferentes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Qual foi a sua primeira impressão sobre mim?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você mais admira em mim?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você acredita que pode gerar conflitos entre nós?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Você consegue imaginar um futuro ao meu lado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você espera de um relacionamento comigo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Existe algo que você gostaria de me perguntar e nunca perguntou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você mais gostou de descobrir sobre mim até agora?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Tem algo sobre mim que ainda te intriga?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Qual momento nosso você gostaria de repetir?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você acha que eu deveria saber sobre você e ainda não sabe?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Como você se sente quando estamos juntos em silêncio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você gostaria que fizéssemos mais juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Existe algo que você quer que eu mude — ou que eu não mude?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você acha que eu não sei sobre você e deveria saber?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Qual momento nosso você guarda com mais carinho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que te faz sentir que somos uma boa dupla?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Em que situação você se sente mais conectado(a) comigo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você gostaria que eu entendesse melhor sobre você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Qual hábito meu te faz sorrir?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você admira em mim que raramente diz?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'SINGLE_CHOICE', 'Você se sente à vontade sendo vulnerável comigo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Qual memória nossa você contaria para um amigo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que te faz sentir que estamos evoluindo juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Qual gesto meu te faz sentir amado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você gostaria que fizéssemos mais vezes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Em que momento você se sentiu mais orgulhoso(a) de nós?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'SINGLE_CHOICE', 'Você se imagina envelhecendo ao meu lado?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que te faz sentir que posso confiar em mim?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Qual conversa nossa te marcou profundamente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você gostaria de experimentar comigo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Em que aspecto você acha que nos complementamos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que te faz sentir que sou a pessoa certa para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'SINGLE_CHOICE', 'Você se sente ouvido(a) quando fala comigo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Qual tradição você gostaria de criar só nossa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que te faz sentir que superamos bem os desafios?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Qual qualidade minha te inspira?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você gostaria que eu soubesse sobre como te amo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Em que momento você soube que queria algo sério comigo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'SINGLE_CHOICE', 'Você se sente respeitado(a) por mim?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Qual plano futuro nosso te empolga mais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que te faz sentir que nossa conexão é especial?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'Qual elogio meu você mais gostou de receber?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'about_us', 'TEXT', 'O que você faria diferente na nossa relação se pudesse voltar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você se sente à vontade para falar abertamente com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual foi a sua primeira impressão sobre essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você acha que vocês se entendem bem mesmo sem se conhecer há muito tempo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que vocês dois têm em comum que mais te surpreendeu?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você confiaria um segredo leve a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Em que aspecto vocês parecem mais diferentes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Vocês riem juntos com facilidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual conversa com essa pessoa você mais gostou de ter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo um favor a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que te faz querer passar mais tempo com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você acha que vocês se complementam?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Tem algum assunto que você evita com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você sente que essa pessoa te escuta de verdade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Como você descreveria a dinâmica de vocês em uma palavra?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você se sentiria bem sendo apresentado(a) a amigos dessa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual hábito ou mania dessa pessoa você já percebeu?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você acha que essa pessoa te entende sem precisar explicar tudo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que essa pessoa faz que te deixa curioso(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você se sente respeitado(a) por essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual memória recente com essa pessoa você guardaria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você toparia uma viagem curta só com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Existe algo que você gostaria de saber sobre essa pessoa e ainda não perguntou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você se sentiria à vontade em silêncio com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Como essa pessoa te faz sentir quando estão juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você acha que vocês têm ritmos parecidos de vida?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual elogio você daria sincero a essa pessoa hoje?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você confiaria nessa pessoa para te acompanhar num compromisso importante?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que vocês poderiam fazer juntos que ainda não fizeram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você sente que essa pessoa te julga pouco?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Tem alguma expectativa que você criou sobre essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você acha que essa pessoa é sincera com você?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Como você reage quando discorda dessa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você se sentiria confortável dividindo uma conta com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual tema vocês deveriam explorar mais juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você acha que essa pessoa te motiva a ser melhor?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que te impede de se aproximar mais dessa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você se sentiria bem pedindo conselho a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Descreva um momento em que vocês se divertiram juntos.', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você acha que vocês se comunicam bem por mensagem?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual qualidade dessa pessoa você mais admira?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você se sentiria confortável em pedir desculpas a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Como vocês costumam iniciar uma conversa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você acha que essa pessoa te trata com carinho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Existe algo que essa pessoa faz e você acha engraçado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você se sentiria seguro(a) contando um erro seu a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que você acha que essa pessoa pensa de você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'SINGLE_CHOICE', 'Você acha que essa pessoa te aceita como você é?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual seria um plano ideal para vocês dois num sábado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Tem algo que você escondeu dessa pessoa até agora?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Como essa pessoa reage quando você está mal?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual conversa difícil vocês ainda não tiveram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que te faz confiar mais nessa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual detalhe sobre essa pessoa te marcou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Se vocês fossem personagens de filme, qual seria o gênero da história de vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que você gostaria que essa pessoa soubesse sobre você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Como vocês lidam com pausas ou intervalos longos sem se ver?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual valor você acha que vocês compartilham?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Tem algum limite que você precisa deixar claro para essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que vocês poderiam ensinar um ao outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual foi a maior surpresa positiva que essa pessoa te deu?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Como você imagina a relação de vocês daqui a um ano?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Existe algo que te incomoda levemente nessa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual tradição ou ritual vocês poderiam criar juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que te faz sentir conexão real com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual assunto vocês nunca cansam de discutir?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Como essa pessoa te influencia no dia a dia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que você faria diferente na próxima vez que estiverem juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual pergunta você faria a essa pessoa agora, sem filtro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Como vocês celebram pequenas conquistas um do outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que te faz querer conhecer melhor essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual momento você gostaria de reviver com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Existe algo que vocês deveriam esclarecer entre si?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Como você descreveria essa pessoa para um amigo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual plano simples vocês dois poderiam cumprir esta semana?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que te deixa curioso(a) sobre o passado dessa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Como vocês reagem quando um dos dois muda de humor?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual seria o título de um livro sobre a história de vocês até aqui?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que você espera aprender com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'Qual hábito seu essa pessoa provavelmente já notou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_general', 'TEXT', 'O que vocês dois fariam se ganhassem um dia livre juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você considera essa pessoa um(a) amigo(a) de verdade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual foi o momento em que vocês se tornaram amigos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você confia nesse(a) amigo(a) com assuntos pessoais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que você mais gosta de fazer com esse(a) amigo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você se sentiria à vontade para ligar de madrugada em emergência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual memória com esse(a) amigo(a) você nunca esquece?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Vocês conseguem falar sobre qualquer assunto?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como vocês se apoiaram em momentos difíceis?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você sente que essa amizade é recíproca?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que te faz rir quando estão juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você já sentiu ciúmes dessa amizade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual hábito desse(a) amigo(a) te irrita um pouco?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você contaria um segredo importante a esse(a) amigo(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como vocês se conheceram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você se sentiria bem em morar perto desse(a) amigo(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual conselho esse(a) amigo(a) já te deu que ficou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você acha que vocês se veem com frequência suficiente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que você admira nesse(a) amigo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você se sentiria confortável emprestando dinheiro a esse(a) amigo(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Tem alguma brincadeira interna que só vocês entendem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você acha que essa amizade sobreviveria a uma mudança de cidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como vocês lidam com desentendimentos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você se sentiria bem apresentando esse(a) amigo(a) à sua família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual plano de amigos vocês ainda não realizaram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você sente que pode ser vulnerável com esse(a) amigo(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que esse(a) amigo(a) sabe sobre você que poucos sabem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você acha que vocês têm gostos parecidos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como essa amizade mudou ao longo do tempo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você se sentiria bem em trabalhar com esse(a) amigo(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual presente você daria a esse(a) amigo(a) sem motivo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você acha que esse(a) amigo(a) te conhece bem?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Existe algo que você gostaria de pedir desculpas nessa amizade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo um favor grande?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como vocês comemoram aniversários um do outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você acha que vocês se apoiam nas decisões importantes?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual viagem vocês sonham em fazer juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você se sentiria bem em passar um fim de semana inteiro juntos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que te faz sentir orgulho dessa amizade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você acha que essa amizade te faz bem?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual música lembra vocês dois?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você se sentiria confortável em contar um fracasso a esse(a) amigo(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como esse(a) amigo(a) te ajuda a crescer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você acha que vocês envelheceriam bem como amigos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Tem algum assunto proibido entre vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você se sentiria bem em pedir desculpas por algo nessa amizade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual foi a maior loucura que vocês fizeram juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'SINGLE_CHOICE', 'Você acha que essa amizade é uma das mais importantes da sua vida?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que você faria se esse(a) amigo(a) precisasse de ajuda urgente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como vocês mantêm contato quando estão longe?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual qualidade dessa amizade você mais valoriza?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Existe algo que você esconde desse(a) amigo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como vocês reagem quando um está ocupado demais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual tradição de amizade vocês têm ou gostariam de ter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que te faz querer manter essa amizade por muito tempo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como vocês lidam com diferenças de opinião?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual elogio você nunca disse a esse(a) amigo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que vocês poderiam fazer juntos que nunca fizeram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como essa amizade te impacta emocionalmente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual momento você gostaria de reviver com esse(a) amigo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Tem algo que te incomoda nessa amizade e você não falou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como vocês se despedem depois de se encontrar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual hobby vocês poderiam começar juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que esse(a) amigo(a) faz que te surpreende?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como vocês lidam com amigos em comum?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual conversa profunda vocês ainda não tiveram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que te faz sentir que essa pessoa é sua pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como vocês reagem quando um conhece alguém novo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual detalhe pequeno sobre esse(a) amigo(a) você adora?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que vocês deveriam fazer mais juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como essa amizade te ajuda no dia a dia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual seria o apelido perfeito para vocês como dupla?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Existe algo que você gostaria de agradecer a esse(a) amigo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como vocês lidam com períodos de distância?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual meta vocês poderiam alcançar juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que te faz querer defender esse(a) amigo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Como vocês celebram conquistas um do outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual seria um filme sobre a amizade de vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que você espera dessa amizade daqui a cinco anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'Qual situação testou a amizade de vocês e vocês passaram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_friends', 'TEXT', 'O que esse(a) amigo(a) te ensinou sobre você mesmo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você se sente confortável trabalhando com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês se complementam no trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você confia no julgamento profissional dessa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual projeto vocês fizeram juntos que deu certo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você se sentiria à vontade para pedir ajuda a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'O que você admira no jeito que essa pessoa trabalha?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você acha que essa pessoa cumpre o que promete?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês se comunicam no dia a dia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você se sentiria confortável em discordar dela numa reunião?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual hábito de trabalho dessa pessoa te irrita?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você acha que vocês têm estilos de trabalho compatíveis?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês lidam com prazos apertados juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você se sentiria bem sendo liderado(a) por essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'O que te faz confiar nessa pessoa no ambiente de trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você acha que essa pessoa respeita seu tempo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual feedback você gostaria de dar a essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você se sentiria confortável em compartilhar ideias novas com ela?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como essa pessoa reage quando recebe críticas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você acha que essa pessoa é organizada?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual memória de trabalho com essa pessoa você guarda?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você se sentiria bem em fazer home office junto dessa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'O que vocês poderiam melhorar na colaboração?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você acha que essa pessoa é confiável com informações sensíveis?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês dividem responsabilidades?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo um favor fora do expediente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual qualidade profissional dessa pessoa você mais valoriza?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você acha que essa pessoa te trata com respeito?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Tem algum assunto que você evita com essa pessoa no trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você se sentiria bem em apresentar essa pessoa a um cliente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês lidam com erros um do outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você acha que essa pessoa é proativa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual elogio profissional você daria a essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você se sentiria confortável em dividir crédito por um projeto?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'O que te impede de colaborar mais com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você acha que essa pessoa comunica bem?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como essa pessoa te ajuda a ser mais produtivo(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você se sentiria bem em fazer um curso junto dessa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual conversa de trabalho vocês deveriam ter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você acha que essa pessoa te apoia nas decisões?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês reagem sob pressão juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você se sentiria confortável em pedir desculpas por um erro profissional?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'O que você aprendeu com essa pessoa profissionalmente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você acha que essa pessoa é pontual?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual objetivo profissional vocês gostariam de bater juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você se sentiria bem em ser parceiro(a) de negócios dessa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês lidam com diferenças de opinião no trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'SINGLE_CHOICE', 'Você acha que vocês formam uma boa dupla de trabalho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Existe algo que te incomoda na dinâmica de vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual momento de trabalho vocês riram juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como essa pessoa lida com conflitos no time?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'O que vocês deveriam alinhar melhor?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual habilidade dessa pessoa você gostaria de ter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês dão feedback um ao outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual plano vocês poderiam fazer para melhorar o time?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'O que te faz querer trabalhar mais com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês lidam com reuniões longas juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual desafio profissional vocês enfrentaram juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como essa pessoa reage quando você está sobrecarregado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'O que você gostaria que essa pessoa soubesse sobre seu estilo de trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual rotina de trabalho vocês compartilham?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês celebram entregas concluídas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Existe algo que você escondeu dessa pessoa no trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual conversa difícil vocês precisam ter no trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês lidam com mudanças na empresa juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'O que te faz respeitar essa pessoa no ambiente de trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual ferramenta ou método vocês usam bem juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês mantêm o clima leve no trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual projeto futuro vocês gostariam de fazer juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'O que vocês deveriam parar de fazer na colaboração?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como essa pessoa te influencia profissionalmente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual elogio você nunca disse a essa pessoa no trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês lidam com metas conflitantes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'O que te faz querer manter boa relação com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual ritual de trabalho vocês têm ou poderiam ter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês reagem quando um recebe reconhecimento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual habilidade vocês poderiam ensinar um ao outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'O que você espera da relação profissional de vocês daqui a um ano?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Como vocês lidam com estresse no ambiente de trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Qual momento profissional vocês gostariam de reviver?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_coworkers', 'TEXT', 'Existe algo que vocês deveriam esclarecer sobre papéis e responsabilidades?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você se sente confortável dividindo o espaço com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual foi a maior surpresa ao morar com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Vocês conseguem conversar sobre contas e finanças da casa sem brigar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês decidiram dividir os cômodos da casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você confia nessa pessoa para cuidar do apartamento quando você viaja?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual hábito doméstico dessa pessoa mais te incomoda?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você acha que essa pessoa respeita suas coisas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'O que vocês cozinham bem juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você se sentiria à vontade pedindo para ela baixar o volume?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês lidam quando um esquece de pagar uma conta?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Vocês dividem tarefas domésticas de forma justa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual regra da casa vocês deveriam criar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você se sentiria confortável emprestando utensílios a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como essa pessoa reage quando você precisa de silêncio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você acha que essa pessoa é organizada na cozinha?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual foi o melhor dia de convivência que vocês tiveram em casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você se sentiria bem recebendo visitas com essa pessoa em casa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'O que te faz sentir que morar juntos funciona?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você confiaria nela para receber encomendas importantes?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês resolvem conflitos sobre limpeza?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você acha que vocês têm horários de sono compatíveis?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual objeto emprestado entre vocês virou piada interna?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você se sentiria confortável discutindo regras da casa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês organizam compras do mercado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você acha que essa pessoa limpa depois de si?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual série ou filme vocês assistem juntos no sofá?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você se sentiria bem dividindo a geladeira sem rotular tudo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'O que você admira na forma como essa pessoa cuida da casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você acha que essa pessoa avisa quando vai trazer alguém?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês lidam com visitas inesperadas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo para usar o banheiro primeiro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual barulho da casa mais te irrita?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você confiaria nessa pessoa com a chave de casa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como essa pessoa reage quando você está estressado(a) em casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você acha que vocês têm estilos de convivência parecidos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual tradição de moradia vocês criaram sem perceber?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você se sentiria bem morando com essa pessoa por mais um ano?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'O que vocês deveriam combinar melhor sobre banheiro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você acha que essa pessoa respeita seu espaço pessoal?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês dividem a conta de internet ou streaming?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você se sentiria confortável em pedir desculpas por barulho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual memória engraçada de moradia com essa pessoa você guarda?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você acha que essa pessoa contribui para um clima agradável em casa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'O que te impede de falar certas coisas sobre a convivência?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você se sentiria bem fazendo uma reunião de moradores com ela?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês reagem quando a louça acumula na pia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'SINGLE_CHOICE', 'Você acha que vocês conseguiriam morar juntos de novo se precisassem?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual elogio você faria sobre como essa pessoa mantém a casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês lidam com diferenças de temperatura ou ar-condicionado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual planta, pet ou decoração vocês discutiram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como essa pessoa te ajuda nos dias mais corridos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'O que vocês fariam diferente se mudassem juntos de novo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual conversa difícil sobre moradia vocês ainda não tiveram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês celebram quando a casa está arrumada?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual canto da casa é mais seu e qual é mais dela?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês lidam com cheiros fortes na cozinha?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'O que te faz confiar nessa pessoa dentro de casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês se despedem quando um viaja?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual meta doméstica vocês poderiam cumprir juntos este mês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como essa pessoa reage quando você traz alguém para jantar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual hábito seu provavelmente incomoda essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês lidam com pacotes e encomendas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'O que vocês deveriam parar de tolerar na convivência?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual seria o título de um reality show sobre vocês na casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês mantêm a privacidade morando juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual reforma ou mudança vocês gostariam de fazer juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como essa pessoa te acolhe quando você chega cansado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'O que te faz querer continuar morando com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês lidam com barulho de vizinhos juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual detalhe da rotina doméstica de vocês mais te agrada?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês reagem quando a energia ou água acaba?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual comida virou especialidade da casa de vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'O que você aprendeu sobre convivência com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês lidam com recados e avisos na porta?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual momento de silêncio confortável vocês tiveram juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como essa pessoa contribui para a segurança da casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'O que vocês deveriam agradecer um ao outro pela convivência?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês imaginam a casa daqui a seis meses?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Qual item da casa vocês mais disputam?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_roommates', 'TEXT', 'Como vocês lidam quando um quer socializar e o outro quer descanso?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você sente que essa pessoa te conhece melhor do que quase ninguém?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual memória de infância com esse(a) irmão(ã) você mais gosta?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Vocês conseguem falar sobre assuntos da família sem brigar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que vocês brigavam quando eram crianças?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você confia nesse(a) irmão(ã) com segredos de infância?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como os pais influenciaram a dinâmica entre vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você acha que a rivalidade entre vocês diminuiu com o tempo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual tradição de irmãos vocês mantêm?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo ajuda financeira a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que você admira nesse(a) irmão(ã) hoje?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Vocês riem juntos de memórias antigas da família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês lidam com comparações feitas pela família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você acha que essa pessoa te defende fora de casa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual presente de infância marcou a relação de vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você se sentiria bem morando na mesma cidade que esse(a) irmão(ã)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que esse(a) irmão(ã) faz que ainda te irrita?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você acha que vocês se parecem mais do que admitem?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês se apoiam em momentos difíceis da família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você se sentiria confortável em pedir desculpas por algo antigo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual conversa sobre o passado vocês ainda não tiveram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você confiaria nessa pessoa para cuidar de algo importante seu?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como essa pessoa te ajudou a crescer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você acha que essa pessoa te entende sem precisar explicar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual apelido ou apelido antigo ainda aparece entre vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você se sentiria bem levando essa pessoa para um evento social?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que te faz sentir orgulho desse(a) irmão(ã)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você acha que vocês superaram as brigas de criança?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês lidam com festas e reuniões familiares juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você se sentiria confortável discutindo herança ou bens da família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual diferença entre vocês mais aparece hoje?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você acha que essa pessoa te admira em algum aspecto?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que você gostaria que esse(a) irmão(ã) soubesse sobre você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você se sentiria bem em trabalhar no mesmo lugar que esse(a) irmão(ã)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês reagem quando os pais pedem favores diferentes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você acha que vocês têm valores parecidos hoje?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual momento adulto aproximou vocês de novo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você se sentiria confortável em contar um problema sério a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Que experiência de irmãos vocês ainda nunca viveram juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você acha que essa pessoa ainda te provoca de propósito?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como seu irmão(ã) costuma te acolher nos dias ruins?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você se sentiria bem fazendo uma viagem em família só com ela?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual conselho de infância desse(a) irmão(ã) ficou com você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você acha que essa pessoa te apoia nas decisões de vida?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que ainda te distancia dessa pessoa como irmão(ã)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você se sentiria confortável em pedir conselho sobre relacionamentos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês lidam com ciúmes entre irmãos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'SINGLE_CHOICE', 'Você acha que a relação de vocês melhorou na vida adulta?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual elogio sincero você daria a esse(a) irmão(ã)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês mantêm contato no dia a dia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual plano de irmãos vocês sonham em realizar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que essa pessoa sabe sobre você que ninguém mais sabe?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês lidam com diferenças de opinião política ou de valores?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual memória engraçada da casa antiga vocês repetem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como essa pessoa te influencia nas escolhas atuais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que vocês deveriam esclarecer sobre o passado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês comemoram quando um irmão(ã) dá certo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual hábito herdado da família vocês compartilham?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que te faz querer manter laço com esse(a) irmão(ã)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês reagem quando um se distancia da família?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual detalhe pequeno sobre essa pessoa você valoriza?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês lidam com cuidados aos pais ou avós?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual viagem de irmãos vocês gostariam de fazer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que te surpreendeu sobre essa pessoa na vida adulta?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês se reconciliam depois de desentendimentos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual seria um filme sobre a infância de vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que você espera da relação de irmãos daqui a dez anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como essa pessoa te protege ou te apoiou no passado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual assunto da família é mais delicado entre vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês lidam com presentes e datas comemorativas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que cada um fez pela família e merece reconhecimento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como essa pessoa te inspira?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual momento você gostaria de reviver com esse(a) irmão(ã)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês reagem quando alguém critica a família de vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que te faz sentir que vocês são time, apesar das diferenças?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês lidam com mudanças de cidade ou país?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual talento desse(a) irmão(ã) você inveja de forma saudável?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como essa pessoa te ajuda a entender os pais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'O que vocês poderiam ensinar um ao outro hoje?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Qual promessa de infância entre vocês ainda vale?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_siblings', 'TEXT', 'Como vocês imaginam envelhecer como irmãos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você consegue ser honesto(a) com essa pessoa sem medo de decepcionar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual memória com essa pessoa você mais valoriza?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você acha que essa pessoa te escuta de verdade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que você gostaria que essa pessoa entendesse melhor sobre você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você confia nessa pessoa para conversas difíceis?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês lidam com diferenças de geração?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você sente que essa pessoa respeita suas escolhas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual conselho dessa pessoa ficou marcado?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo conselho a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que te faz sentir gratidão por essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você acha que vocês conseguem discordar sem brigar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como essa pessoa reage quando você está passando por dificuldades?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você se sentiria bem contando um erro importante a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual assunto delicado da família vocês ainda evitam?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você acha que essa pessoa te apoia nas suas metas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que você admira nessa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo ajuda financeira?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês celebram datas importantes juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você acha que essa pessoa entende sua geração?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual hábito dessa pessoa te lembra sua infância?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você se sentiria bem morando perto dessa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que te impede de falar certas coisas com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você acha que essa pessoa ainda tenta te proteger demais?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês lidam com expectativas familiares?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você se sentiria confortável discutindo limites?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual tradição de família vocês mantêm?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você acha que essa pessoa se orgulha de você?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que essa pessoa fez por você que nunca esqueceu?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você se sentiria bem apresentando amigos ou parceiro(a) a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês reagem quando discordam de valores importantes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você acha que vocês falam com frequência suficiente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual elogio sincero você daria a essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você conseguiria se desculpar por algo do passado familiar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como essa pessoa te influencia nas decisões atuais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você acha que essa pessoa aceita quando você muda de opinião?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Que atividade pai/mãe e filho(a) vocês nunca fizeram juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você se sentiria bem fazendo uma viagem só com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Com qual frequência vocês se falam ou se veem hoje?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você acha que essa pessoa te trata como adulto(a)?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual momento recente te aproximou dessa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você se sentiria confortável falando sobre saúde mental?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que te incomoda levemente nessa relação?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você acha que essa pessoa respeita sua privacidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como essa pessoa reage quando você conquista algo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você se sentiria bem pedindo opinião sobre uma decisão grande?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual assunto é proibido ou delicado entre vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'SINGLE_CHOICE', 'Você acha que a relação de vocês evoluiu nos últimos anos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que você gostaria de agradecer a essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês lidam com críticas mútuas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual plano futuro vocês gostariam de realizar juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que essa pessoa te ensinou sobre a vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês reagem em reuniões familiares?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual detalhe pequeno dessa pessoa você aprecia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que te faz querer manter essa relação próxima?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como essa pessoa lida com suas independências?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual memória engraçada de família vocês repetem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual mal-entendido antigo da família ainda pesa entre vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês lidam com distância geográfica?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual meta vocês poderiam apoiar um ao outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que mudou nessa pessoa desde que você era criança?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês voltam a se falar depois de uma briga familiar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual seria um filme sobre a história de vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que você espera dessa relação daqui a cinco anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como essa pessoa te ajudou a se tornar quem você é?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual conversa sobre futuro vocês deveriam ter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês lidam com comparações com outros parentes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que te faz confiar nessa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como essa pessoa reage quando você precisa de espaço?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual presente ou gesto dessa pessoa te marcou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês poderiam se ver ou se falar mais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês lidam com tecnologia e comunicação?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual valor vocês compartilham fortemente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que te faz sentir orgulho dessa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como essa pessoa celebra suas vitórias?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual promessa ou acordo entre vocês ainda vale?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que você faria diferente na próxima conversa com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês lidam com saudades?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Qual aprendizado recente vocês tiveram um com o outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'O que te faz querer ouvir mais essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_parent_child', 'TEXT', 'Como vocês imaginam essa relação quando envelhecerem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você se sente confortável cumprimentar essa pessoa no corredor?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual foi a primeira vez que vocês se falaram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você confiaria nessa pessoa para guardar uma chave extra?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que você sabe sobre a rotina dessa pessoa no prédio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você acha que essa pessoa respeita o silêncio do prédio?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como vocês lidam com barulho ou obras por perto?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você se sentiria à vontade pedindo um favor pequeno?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual memória de convivência no condomínio você guarda?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você acha que essa pessoa é considerada com os espaços comuns?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que te faz querer ser um bom vizinho para essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você se sentiria confortável convidando essa pessoa para um café?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como essa pessoa reage quando vocês se encontram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você confiaria nela para avisar se algo estranho acontecer?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual favor pequeno vocês já fizeram um ao outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você acha que vocês têm horários de convivência compatíveis?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que te incomoda levemente na convivência de vizinhança?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você se sentiria bem emprestando um item doméstico a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como vocês lidam com elevador, garagem ou portaria juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você acha que essa pessoa cumpre as regras do condomínio?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual conversa de corredor você mais gostou de ter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você se sentiria confortável discutindo barulho com ela?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que vocês poderiam fazer juntos no condomínio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você acha que essa pessoa é amigável de verdade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como essa pessoa contribui para a segurança do prédio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você se sentiria bem pedindo ajuda numa emergência leve?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual tradição ou evento do prédio vocês participaram juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você acha que vocês poderiam ser amigos fora do prédio?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que te impede de criar mais proximidade no prédio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você se sentiria confortável compartilhando dados de contato?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como vocês reagem em assembleias ou reuniões de condomínio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você acha que essa pessoa respeita suas entregas e encomendas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual elogio você faria sincero a essa pessoa como vizinha?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você se sentiria bem participando de um churrasco no condomínio com ela?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como essa pessoa lida com animais ou crianças no prédio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você acha que essa pessoa contribui para um bom clima no prédio?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que vocês deveriam combinar melhor como vizinhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você se sentiria confortável em pedir desculpas por algum incômodo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual detalhe sobre essa pessoa te surpreendeu positivamente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você confiaria nessa pessoa para cuidar de uma planta ou pet por um dia?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como vocês lidam com cheiros, fumaça ou ventilação?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você acha que vocês se comunicam bem quando preciso?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual plano simples vocês poderiam fazer no bairro juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você se sentiria bem trocando receitas ou dicas com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que te faz confiar nessa pessoa no dia a dia do prédio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você sente consideração nas interações com essa pessoa no prédio?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como essa pessoa respeita sua privacidade no prédio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo recomendação de serviço a ela?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual assunto de vizinhança vocês evitam?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como vocês mantêm contato quando um está viajando?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Que gesto de boa vizinhança vocês deveriam reconhecer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como essa pessoa te ajudou sem você pedir?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual memória engraçada de elevador ou portaria vocês têm?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que te faz sentir bem morando perto dessa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como vocês lidam com diferenças de estilo de vida?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual conversa difícil de vizinhança vocês ainda não tiveram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como essa pessoa reage a festas ou visitas na sua casa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que vocês poderiam ensinar um ao outro sobre o bairro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual hábito de convivência dessa pessoa você admira?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como vocês imaginam a vizinhança daqui a um ano?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que te surpreendeu ao conhecer melhor essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como vocês lidam com pacotes ou entregas erradas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual gesto de boa vizinhança você gostaria de receber?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como essa pessoa influencia seu humor no prédio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que vocês deveriam parar de tolerar silenciosamente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual seria um filme sobre vocês no condomínio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como vocês reagem quando há problemas na administração?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Por que vale a pena cultivar essa vizinhança?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como essa pessoa lida com regras de lixo e reciclagem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual momento de solidariedade entre vocês te marcou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como vocês celebram pequenas conquistas no bairro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que você quer que seu vizinho entenda sobre sua rotina?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como vocês lidam com estacionamento ou vagas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual hobby ou interesse dessa pessoa te deixou curioso(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que vocês fariam se movessem do prédio amanhã?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como essa pessoa reage quando você está estressado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual meta de convivência vocês poderiam cumprir este mês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que te faz sentir que vocês formam uma boa dupla de vizinhos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Como vocês lidam com crianças brincando perto das casas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'Qual detalhe do prédio vocês dois valorizam?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_neighbors', 'TEXT', 'O que morar perto dessa pessoa te ensinou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você se sente confortável estudando com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês se conheceram na escola ou faculdade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você confia nessa pessoa para trabalhos em grupo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual matéria vocês mais gostam de estudar juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você acha que essa pessoa leva os estudos a sério?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que você admira no jeito que essa pessoa estuda?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você se sentiria à vontade pedindo explicação de matéria a ela?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual trabalho em grupo de vocês deu mais certo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você acha que vocês se complementam academicamente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês se organizam quando a prova ou entrega está chegando?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você se sentiria confortável emprestando material escolar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual hábito de estudo dessa pessoa te irrita um pouco?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você acha que essa pessoa cumpre prazos de trabalho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que te faz confiar nessa pessoa academicamente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você se sentiria bem fazendo prova ou trabalho final juntos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual memória de sala de aula com essa pessoa você guarda?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você acha que essa pessoa te ajuda a aprender?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês se comunicam fora da aula?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você se sentiria confortável discordando dela em sala?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual professor ou matéria une vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você confiaria nessa pessoa para revisar seu trabalho?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que vocês poderiam melhorar em trabalhos juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você acha que vocês têm ritmos de estudo parecidos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como essa pessoa reage quando você não entende algo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você se sentiria bem formando dupla fixa com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual elogio acadêmico você daria a essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você acha que essa pessoa é organizada com anotações?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês lidam com notas diferentes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo anotações perdidas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual plano de estudos vocês sonham em fazer juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você acha que essa pessoa participa bem em aula?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que te impede de estudar mais com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você se sentiria bem estudando para vestibular ou concurso juntos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês reagem sob pressão de prova?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você acha que essa pessoa respeita seu tempo de estudo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual conversa sobre futuro vocês ainda não tiveram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você se sentiria confortável contando dificuldades acadêmicas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como essa pessoa te ajuda em matérias difíceis?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você acha que vocês riem juntos na sala de aula?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que vocês deveriam alinhar melhor em grupo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você se sentiria bem apresentando essa pessoa a outros colegas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual momento engraçado de aula vocês viveram juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você acha que essa pessoa te motiva nos estudos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês celebram quando passam em algo difícil?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo desculpas por atraso em grupo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual biblioteca, cantina ou corredor é de vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'SINGLE_CHOICE', 'Você acha que vocês manteriam contato depois da formatura?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que te surpreendeu sobre essa pessoa nos estudos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês lidam com falta ou atraso um do outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual tradição de classe vocês compartilham?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que essa pessoa sabe sobre você que colegas não sabem?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês mantêm foco quando estudam juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual meta acadêmica vocês poderiam alcançar juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que vocês deveriam agradecer um ao outro nos estudos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como essa pessoa reage quando você está desanimado(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual matéria vocês deveriam explorar juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês lidam com competição entre colegas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual detalhe pequeno sobre essa pessoa você admira?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que te faz querer manter amizade além da escola?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês reagem quando um tira nota alta e o outro não?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual evento escolar vocês gostariam de reviver?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como essa pessoa te influencia academicamente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que vocês fariam diferente no próximo trabalho em grupo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual seria um filme sobre vocês na escola?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês lidam com distrações enquanto estudam?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que te faz sentir que vocês são bons parceiros de estudo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como essa pessoa lida com feedback de professores?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual hobby ou interesse fora da escola vocês compartilham?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que vocês deveriam esclarecer sobre expectativas de grupo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês imaginam a vida daqui a um ano, fora da sala?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual conselho de estudo essa pessoa te deu?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês se apoiam em semanas de prova?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que te incomoda levemente na dinâmica de vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como essa pessoa celebra suas conquistas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Qual plano pós-formatura vocês sonham juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que você aprendeu com essa pessoa além da matéria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês lidam com grupos grandes de classe?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que você queria perguntar a essa pessoa depois da aula?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'Como vocês reagem quando a aula cancela?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_classmates', 'TEXT', 'O que te faz confiar nessa pessoa fora do ambiente escolar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você confia nessa pessoa dentro do time?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês se conheceram no time ou projeto?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você se sente confortável competindo ou jogando ao lado dela?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual vitória ou entrega de vocês mais te orgulha?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você acha que essa pessoa cumpre o que combina com o grupo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que você admira no desempenho dessa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você se sentiria à vontade pedindo ajuda durante uma partida ou entrega?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês se comunicam durante treino ou trabalho?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você acha que vocês se complementam no time?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual hábito dessa pessoa no time te irrita um pouco?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você se sentiria confortável dando feedback direto a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês lidam com pressão antes de competir ou apresentar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você acha que essa pessoa mantém o espírito do time?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual memória de time com essa pessoa você nunca esquece?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você se sentiria bem sendo capitão(ã) ou líder com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que te faz confiar nessa pessoa no grupo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você acha que essa pessoa respeita as regras do grupo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como essa pessoa reage quando o time está perdendo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você se sentiria confortável em discordar da estratégia dela?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual elogio você daria ao papel dela no time?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você confiaria nessa pessoa num momento decisivo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês distribuem funções dentro do time ou projeto?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você acha que essa pessoa é confiável nos treinos ou prazos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que vocês poderiam melhorar como dupla?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você se sentiria bem comemorando vitória só com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como essa pessoa te ajuda a superar erros?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você acha que vocês comunicam bem durante a ação?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual tradição ou ritual de time vocês compartilham?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo desculpas por um erro no time?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que te impede de jogar ou trabalhar mais com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você acha que essa pessoa aceita críticas construtivas?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês celebram quando dá certo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você se sentiria bem formando dupla fixa com ela?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual conversa difícil sobre o time vocês ainda não tiveram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você acha que essa pessoa te motiva a dar o melhor?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como essa pessoa lida com conflitos no grupo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você se sentiria confortável contando uma insegurança sobre performance?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que vocês deveriam alinhar melhor na estratégia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você acha que vocês lidam bem com derrota juntos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual momento engraçado de vestiário ou bastidor vocês viveram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você se sentiria bem viajando com o time só com essa pessoa por perto?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês reagem quando um brilha mais que o outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você acha que essa pessoa é justa com todos do grupo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual meta de time vocês sonham alcançar juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo para ela cobrir sua posição?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que essa pessoa sabe sobre você que o time não sabe?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'SINGLE_CHOICE', 'Você acha que vocês formam uma boa dupla no time?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês mantêm foco em dias ruins?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual técnica ou talento dessa pessoa no time te impressiona?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como essa pessoa te influencia dentro do grupo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Que atitude dessa pessoa no time você valoriza e raramente reconhece?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês lidam com lesão, atraso ou imprevisto?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual detalhe pequeno sobre essa pessoa você valoriza no time?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que te faz querer continuar no mesmo time que ela?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês reagem quando o treinador ou líder cobra mais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual plano de treino ou projeto vocês gostariam de fazer juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como essa pessoa reage quando você está nervoso(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que te surpreendeu positivamente sobre ela no time?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês lidam com egos ou competição interna?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual seria um documentário sobre vocês no time?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês se apoiam depois de uma derrota dura?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que vocês fariam diferente na próxima partida ou entrega?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como essa pessoa contribui para a união do grupo?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual conversa sobre futuro do time vocês deveriam ter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês lidam com mudanças de escalação ou função?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual detalhe da parceria de vocês no time poderia melhorar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como essa pessoa celebra suas conquistas individuais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual viagem ou evento de time vocês gostariam de reviver?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que você aprendeu com essa pessoa no esporte ou projeto?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês imaginam o time daqui a um ano?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual gesto de companheirismo dessa pessoa te marcou?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês lidam com expectativas externas sobre o time?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que te faz sentir que vocês são parceiros de verdade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como essa pessoa reage quando você erra feio?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Qual meta individual vocês poderiam apoiar um ao outro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês mantêm amizade fora do time?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que vocês deveriam esclarecer sobre papéis?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como essa pessoa te inspira a continuar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'O que você diria a essa pessoa no vestiário ou no intervalo do projeto?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_teammates', 'TEXT', 'Como vocês reagem quando alguém critica o time?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sente amado(a) por essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual foi o momento em que você soube que gostava dessa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você confia nessa pessoa completamente?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que você mais ama na rotina de vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você acha que vocês se comunicam bem sobre sentimentos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual memória romântica você nunca esquece?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sentiria confortável falando sobre o futuro juntos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como vocês se conheceram ou se aproximaram?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você acha que essa pessoa te respeita?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que te faz sentir conectado(a) a essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sentiria bem passando um fim de semana inteiro só com ela?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual hábito dessa pessoa te encanta?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você acha que vocês lidam bem com conflitos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como vocês lidam com dias difíceis juntos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo desculpas primeiro?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual elogio romântico você ainda não disse?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você acha que essa pessoa te conhece de verdade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Que ritual de casal vocês querem criar em breve?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sentiria bem apresentando essa pessoa à sua família?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como essa pessoa te surpreende positivamente?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você acha que vocês têm objetivos de vida compatíveis?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual viagem ou date vocês sonham em fazer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sentiria confortável discutindo finanças juntos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que te impede de falar certas coisas no relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você sente que essa pessoa torce pelos seus sonhos?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como vocês celebram datas especiais?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sentiria bem morando junto com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Sobre o que vocês dois ainda não foram totalmente honestos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você acha que vocês mantêm a chama viva no dia a dia?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que você admira nessa pessoa como parceiro(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sentiria confortável falando sobre ciúmes?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como essa pessoa reage quando você está vulnerável?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você acha que essa pessoa te escuta sem julgar?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual tradição de casal vocês têm ou gostariam de ter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sentiria bem fazendo terapia de casal com essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que vocês poderiam melhorar na convivência?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você acha que vocês riem juntos com frequência?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como vocês mantêm intimidade emocional?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sentiria confortável contando um medo profundo?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual detalhe pequeno dessa pessoa te faz sorrir?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sente plenamente aceito(a) nesse relacionamento?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que te faz sentir seguro(a) nesse relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sentiria bem passando um período longo longe por necessidade?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como vocês lidam com diferenças de humor ou energia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você acha que vocês se escolheriam de novo hoje?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual presente simbólico representaria vocês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'SINGLE_CHOICE', 'Você se sentiria confortável pedindo mais carinho a essa pessoa?', '["Sim","Não","Depende"]'::jsonb, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que essa pessoa faz que te faz sentir especial?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como vocês reagem quando discordam de algo importante?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual meta de casal vocês gostariam de alcançar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual parte da sua história você ainda não compartilhou de verdade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como essa pessoa te ajuda a crescer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual canção vocês associam ao começo do relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que te incomoda levemente no relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como vocês lidam com rotina e monotonia?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual date ou momento a dois você repetiria num instante?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual gesto pequeno do dia a dia você gostaria de agradecer?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como essa pessoa comemora quando algo dá certo para você?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual plano espontâneo vocês poderiam fazer esta semana?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que te faz querer construir futuro com essa pessoa?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como vocês lidam com família e amigos no relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual conversa sobre limites vocês deveriam ter?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como essa pessoa respeita quando você precisa ficar sozinho(a)?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que vocês fariam diferente no próximo encontro?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Se a história de vocês virasse filme, seria comédia romântica ou drama?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como vocês imaginam o relacionamento daqui a cinco anos?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que te surpreendeu ao conviver mais de perto?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como vocês lidam com redes sociais e privacidade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual gesto de carinho você mais gosta de receber?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que te faz confiar nessa pessoa com o coração?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como essa pessoa te acolhe depois de um dia ruim?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual assunto vocês nunca cansam de conversar?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que vocês deveriam esclarecer sobre expectativas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como vocês mantêm romance no meio da correria?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Qual promessa entre vocês ainda vale muito?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que te faz sentir orgulho desse relacionamento?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como essa pessoa reage quando você está com ciúmes?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que vocês descobriram um sobre o outro nas últimas semanas?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'O que você faria para fortalecer a relação este mês?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';

INSERT INTO questions (user_id, category_id, type, text, options, is_system)
SELECT u.id, 'us_romantic', 'TEXT', 'Como vocês lidam com saudade?', NULL, TRUE
FROM users u
WHERE u.email = 'system@getting2know.internal';
