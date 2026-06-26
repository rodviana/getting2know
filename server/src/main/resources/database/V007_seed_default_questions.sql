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
