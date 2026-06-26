import { QuestionType } from './questionTypes.js';

const YES_NO_DEPENDS = ['Sim', 'Não', 'Depende'];

const BANK_SECTIONS = [
  {
    "categoryId": "about_you",
    "questions": [
      "Como você se descreveria em três palavras?",
      "Qual é a sua maior qualidade?",
      "Qual é o seu maior defeito?",
      "O que te faz feliz de verdade?",
      "O que mais te estressa?",
      "O que você mais valoriza em uma pessoa?",
      "O que você nunca aceitaria em alguém?",
      "Qual foi o momento mais marcante da sua vida?",
      "Qual é o seu maior medo?",
      "Qual é o seu maior sonho?",
      "Qual memória da infância você mais gosta de lembrar?",
      "O que as pessoas costumam notar em você logo de cara?",
      "Em que momento do dia você se sente mais você mesmo(a)?",
      "Qual elogio você mais gosta de receber?",
      "O que você mudaria em si se pudesse mudar só uma coisa?",
      "Qual apelido de infância você ainda carrega com carinho?",
      "O que você faz quando precisa se reconectar consigo mesmo(a)?",
      "Qual parte da sua personalidade demora mais para as pessoas conhecerem?",
      "O que te faz sentir orgulho de quem você se tornou?",
      "Qual hábito seu as pessoas mais estranham?",
      {
        "text": "Você se considera uma pessoa autêntica no dia a dia?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você faria se tivesse um dia inteiro só para você?",
      "Qual elogio você acha difícil de aceitar?",
      "O que te deixa vulnerável de um jeito bom?",
      "Qual versão sua — criança, adolescente ou adulto(a) — você mais gostaria de reencontrar?",
      {
        "text": "Você costuma se comparar com outras pessoas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você guarda no coração e raramente conta?",
      "Qual barulho, cheiro ou lugar te traz paz imediata?",
      "O que você aprendeu sobre si depois de uma fase difícil?",
      {
        "text": "Você se sente compreendido(a) pela maioria das pessoas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual decisão pequena mudou sua vida sem você perceber na hora?",
      "O que você faz quando quer se sentir mais confiante?",
      "Qual parte do seu corpo ou aparência você aprendeu a aceitar?",
      {
        "text": "Você gosta de ficar sozinho(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz rir sozinho(a)?",
      "Qual tradição pessoal você criou para si?",
      "O que você considera sua maior conquista que não aparece no currículo?",
      "Como você reage quando alguém te vê chorando?",
      {
        "text": "Você se descreve como otimista?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual música descreve um capítulo importante da sua vida?",
      "O que você faria diferente se pudesse voltar um ano?",
      "Qual medo você superou e como?",
      "O que te faz sentir pequeno(a) diante do mundo?",
      {
        "text": "Você costuma pedir ajuda quando precisa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual qualidade sua você subestima?",
      "O que você faria se ninguém fosse julgar?",
      "Qual momento te fez perceber que estava crescendo?",
      {
        "text": "Você se sente à vontade sendo o centro das atenções?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você coleciona — literal ou simbolicamente?",
      "Qual conselho você daria para a versão adolescente de si?",
      "O que te faz sentir grato(a) hoje?",
      {
        "text": "Você guarda rancor por muito tempo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rotina te mantém equilibrado(a)?",
      "O que você admira em si que outras pessoas nem percebem?",
      "Qual situação te mostrou do que você é capaz?",
      {
        "text": "Você se considera uma pessoa curiosa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você faria se tivesse coragem de arriscar mais?",
      "Qual memória você revisita quando precisa de força?",
      "O que te define além do trabalho e do relacionamento?",
      {
        "text": "Você se perdoa com facilidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual parte da sua história você gostaria que mais pessoas soubessem?",
      "O que te deixa emocionado(a) sem explicação lógica?",
      "Como você sabe que está no caminho certo?",
      {
        "text": "Você se sente em paz com quem é hoje?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você quer que as pessoas lembrem de você?"
    ]
  },
  {
    "categoryId": "personality",
    "questions": [
      {
        "text": "Você é mais introvertido(a) ou extrovertido(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Introvertido(a)",
          "Extrovertido(a)",
          "Um pouco dos dois"
        ]
      },
      {
        "text": "Você costuma pensar mais com a razão ou com a emoção?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Razão",
          "Emoção",
          "Depende da situação"
        ]
      },
      {
        "text": "Você prefere planejar ou improvisar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Planejar",
          "Improvisar",
          "Um equilíbrio dos dois"
        ]
      },
      {
        "text": "Você toma decisões rapidamente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você costuma guardar sentimentos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você pede desculpas com facilidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você aceita críticas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você costuma perdoar facilmente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você se considera uma pessoa paciente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Muito",
          "Um pouco",
          "Pouco"
        ]
      },
      {
        "text": "Você prefere ambientes calmos ou movimentados?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Calmos",
          "Movimentados",
          "Depende do dia"
        ]
      },
      {
        "text": "Você lida bem com mudanças inesperadas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você costuma reagir quando está sob pressão?",
      {
        "text": "Você é competitivo(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Só em algumas áreas"
        ]
      },
      {
        "text": "Você prefere liderar ou seguir?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Liderar",
          "Seguir",
          "Depende da situação"
        ]
      },
      "O que te deixa mais irritado(a) no dia a dia?",
      {
        "text": "Você prefere ouvir antes de falar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você se considera uma pessoa intuitiva?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com tédio?",
      {
        "text": "Você precisa de rotina para funcionar bem?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você se distrai com facilidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te tira do sério mais rápido?",
      {
        "text": "Você gosta de assumir riscos calculados?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando alguém te interrompe?",
      {
        "text": "Você é mais perfeccionista ou pragmático(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir energizado(a)?",
      {
        "text": "Você guarda segredos com facilidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você se comporta em ambientes desconhecidos?",
      {
        "text": "Você se considera uma pessoa sensível?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz perder a paciência consigo mesmo(a)?",
      {
        "text": "Você prefere resolver problemas sozinho(a) ou em grupo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com elogios exagerados?",
      {
        "text": "Você costuma procrastinar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir inseguro(a)?",
      {
        "text": "Você se adapta bem a regras rígidas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando perde um jogo ou aposta?",
      {
        "text": "Você gosta de surpresas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir realizado(a) num dia comum?",
      {
        "text": "Você se considera uma pessoa organizada?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com silêncio prolongado?",
      {
        "text": "Você prefere profundidade ou leveza nas conversas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir pressionado(a)?",
      {
        "text": "Você se considera uma pessoa leal?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando alguém te corrige em público?",
      {
        "text": "Você gosta de estar no controle das situações?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir culpa sem motivo aparente?",
      {
        "text": "Você se considera uma pessoa criativa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com incerteza?",
      {
        "text": "Você prefere trabalhar sob pressão ou com calma?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir respeitado(a)?",
      {
        "text": "Você se considera uma pessoa assertiva?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando alguém te ignora?",
      {
        "text": "Você gosta de debates e discussões intelectuais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir entediado(a) num encontro?",
      {
        "text": "Você se considera uma pessoa grata?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com críticas à sua aparência?",
      {
        "text": "Você prefere estabilidade ou novidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir motivado(a) de manhã?",
      {
        "text": "Você se considera uma pessoa empática?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando alguém te surpreende com um presente?",
      {
        "text": "Você gosta de planejar com antecedência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir exausto(a) emocionalmente?",
      {
        "text": "Você se considera uma pessoa corajosa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com situações em que não tem razão?",
      {
        "text": "Você prefere dar ou receber conselhos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir orgulhoso(a) de uma escolha difícil?"
    ]
  },
  {
    "categoryId": "hobbies",
    "questions": [
      "O que você faz no tempo livre?",
      "Qual hobby gostaria de aprender?",
      {
        "text": "Você gosta de esportes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual esporte você pratica ou gostaria de praticar?",
      {
        "text": "Você prefere praia ou montanha?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Praia",
          "Montanha",
          "Os dois",
          "Nenhum dos dois"
        ]
      },
      {
        "text": "Você gosta de viajar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual é a viagem dos seus sonhos?",
      "Qual é o seu filme favorito?",
      "Qual é a sua série favorita?",
      "Qual é o seu anime favorito?",
      "Qual é a sua música favorita?",
      "Qual foi o último livro, filme ou série que te marcou?",
      {
        "text": "Você prefere sair ou ficar em casa no fim de semana?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sair",
          "Ficar em casa",
          "Um pouco dos dois"
        ]
      },
      "Qual comida você poderia comer toda semana sem enjoar?",
      "Tem algum talento escondido que pouca gente conhece?",
      "Qual hobby você abandonou e gostaria de retomar?",
      {
        "text": "Você gosta de cozinhar por prazer?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual instrumento musical você gostaria de dominar?",
      {
        "text": "Você prefere ler ficção ou não ficção?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual jogo — videogame, tabuleiro ou cartas — te prende mais?",
      "Qual festival ou evento cultural você sonha em ir?",
      {
        "text": "Você gosta de acampar ou estar na natureza?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual doceria, prato ou receita você faz de olhos fechados?",
      {
        "text": "Você curte ir ao cinema sozinho(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual podcast ou canal você recomendaria para qualquer um?",
      "Qual esporte você assiste mesmo sem praticar?",
      {
        "text": "Você gosta de dançar, mesmo sem saber?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hobby você descobriu na pandemia ou numa fase recente?",
      "Qual lugar da cidade você leva visitantes para conhecer?",
      {
        "text": "Você prefere museus ou parques de diversão?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual série você reassistiria do zero?",
      "Qual comida de rua você nunca recusa?",
      {
        "text": "Você gosta de fotografar momentos do dia a dia?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual artista você gostaria de ver ao vivo?",
      "Qual brinquedo ou jogo da infância você ainda sente saudade?",
      {
        "text": "Você curte puzzles, palavras cruzadas ou jogos de lógica?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual viagem curta você faria num fim de semana?",
      "Qual hobby você pratica para desestressar?",
      {
        "text": "Você gosta de ir a shows e festivais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual receita você quer aprender a fazer?",
      "Qual gênero musical você descobriu tarde e passou a amar?",
      {
        "text": "Você prefere maratonar séries ou assistir aos poucos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual esporte radical você tentaria uma vez?",
      "Qual hobby você faz que poucos conhecem?",
      {
        "text": "Você gosta de ir a feiras, mercados ou brechós?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual filme você indica para quem quer te conhecer melhor?",
      "Qual atividade ao ar livre te recarrega?",
      {
        "text": "Você curte jogos online com outras pessoas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hobby você gostaria de compartilhar com alguém especial?",
      "Qual comida você cozinha quando quer impressionar?",
      {
        "text": "Você prefere teatro ou stand-up?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual livro você emprestaria com confiança?",
      "Qual trilha ou caminhada você repetiria?",
      {
        "text": "Você gosta de colecionar algo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hobby te ensinou algo sobre paciência?",
      "Qual lugar do Brasil você ainda quer conhecer?",
      {
        "text": "Você curte experimentar comidas de outros países?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual instrumento ou hobby artístico te atrai?",
      "Qual jogo de infância você ainda joga de vez em quando?",
      {
        "text": "Você gosta de ir a bibliotecas ou livrarias?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hobby te conecta com outras pessoas?",
      "Qual filme de animação você nunca enjoa?",
      {
        "text": "Você prefere atividades calmas ou cheias de adrenalina?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hobby você faria se tivesse mais tempo livre?",
      {
        "text": "Você gosta de aprender coisas novas por diversão?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      }
    ]
  },
  {
    "categoryId": "family",
    "questions": [
      {
        "text": "Você é próximo da sua família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual membro da família mais te inspira?",
      {
        "text": "Você pretende cuidar dos seus pais quando envelhecerem?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você gostaria de morar perto da família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "A opinião da sua família influencia suas decisões?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Muito",
          "Um pouco",
          "Pouco",
          "Nada"
        ]
      },
      "Como era a dinâmica na sua casa quando você era criança?",
      "Qual tradição familiar você gostaria de manter?",
      {
        "text": "Você costuma visitar a família com frequência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Toda semana",
          "Todo mês",
          "Raramente",
          "Quase nunca"
        ]
      },
      "O que você aprendeu com seus pais que leva para a vida?",
      {
        "text": "Conflitos familiares te afetam muito?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Muito",
          "Um pouco",
          "Pouco"
        ]
      },
      "Como você imagina as festas de fim de ano com a família?",
      {
        "text": "Você contaria problemas do casal para a família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual papel a família ocupa na sua vida hoje?",
      {
        "text": "Sogros próximos são importantes para você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Muito",
          "Um pouco",
          "Pouco"
        ]
      },
      "O que você espera da relação com a família do parceiro?",
      "Qual parente você mais se parece em personalidade?",
      {
        "text": "Você mantém contato regular com parentes distantes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como sua família lida com conflitos?",
      {
        "text": "Reuniões familiares grandes te energizam ou cansam?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição familiar você gostaria de criar no futuro?",
      "O que você aprendeu de errado e de certo com sua família?",
      {
        "text": "Você se sente responsável pelos problemas dos seus pais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você equilibra família de origem e vida adulta?",
      "Qual memória de Natal ou Ano-Novo você mais guarda?",
      {
        "text": "Você conta tudo para sua família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com diferenças de opinião com parentes?",
      "Qual valor familiar você carrega para a vida?",
      {
        "text": "Você gostaria que seus filhos crescessem perto dos avós?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como sua família reagiu às suas escolhas importantes?",
      "Qual parente te deu o melhor conselho?",
      {
        "text": "Você se sente pressionado(a) a seguir expectativas familiares?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina envelhecer com sua família?",
      "Qual papel os irmãos ocupam na sua vida?",
      {
        "text": "Você perdoa erros dos pais com facilidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com parentes difíceis?",
      "Qual receita ou comida da família você mais sente falta?",
      {
        "text": "Você participa de decisões importantes da família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você mantém laços com família que mora longe?",
      "Qual história de família você gosta de contar?",
      {
        "text": "Você se sente compreendido(a) pela sua família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando a família se mete na sua vida?",
      "Qual lição sobre amor você aprendeu em casa?",
      {
        "text": "Você gostaria de morar no mesmo bairro que algum parente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com comparações entre irmãos ou primos?",
      "Qual momento difícil uniu sua família?",
      {
        "text": "Você mantém fotos e lembranças de família em casa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você honra quem já partiu na sua família?",
      "Qual expectativa familiar você quebrou?",
      {
        "text": "Você se sente culpado(a) por morar longe da família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você introduz pessoas importantes para sua família?",
      "Qual hábito de família você quer abandonar?",
      {
        "text": "Você confia nos conselhos da sua família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com segredos de família?",
      "Qual parente você gostaria de conhecer melhor?",
      {
        "text": "Você participa de grupos de WhatsApp da família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando parentes pedem favores financeiros?",
      "Qual tradição familiar você acha antiquada?",
      {
        "text": "Você se sente parte de uma comunidade além da família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com diferenças geracionais em casa?",
      "Qual sonho sua família tem para você?",
      {
        "text": "Você gostaria de registrar a história da sua família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você define \"família\" para além do sangue?",
      {
        "text": "Você gostaria de reunir toda a família numa mesma cidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual parente você sente falta de ter conhecido melhor?",
      "Como você lida quando família e escolhas pessoais entram em conflito?"
    ]
  },
  {
    "categoryId": "friends",
    "questions": [
      {
        "text": "Você tem muitos amigos ou poucos amigos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Muitos",
          "Poucos e próximos",
          "Um pouco dos dois"
        ]
      },
      {
        "text": "Com que frequência você sai com amigos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Toda semana",
          "Algumas vezes por mês",
          "Raramente",
          "Quase nunca"
        ]
      },
      {
        "text": "Você acredita em amizade entre homem e mulher?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você mantém amizade com ex?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Quem é o amigo mais antigo que você ainda tem contato?",
      "O que faz alguém ser um bom amigo para você?",
      {
        "text": "Você prefere sair em grupo grande ou com poucos amigos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Grupo grande",
          "Poucos amigos",
          "Tanto faz"
        ]
      },
      {
        "text": "Amigos do parceiro precisam ser seus amigos também?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Seria legal, mas não obrigatório"
        ]
      },
      "Como você reage quando um amigo te decepciona?",
      {
        "text": "Você compartilha detalhes íntimos do relacionamento com amigos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Só com muito poucos"
        ]
      },
      "Qual foi a melhor viagem ou programa que você fez com amigos?",
      {
        "text": "Sair sozinho(a) com amigos do sexo oposto incomoda seu parceiro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende do contexto"
        ]
      },
      "Com que frequência você gostaria que o parceiro saísse com os amigos dele(a)?",
      "O que você faria se um amigo criticasse seu relacionamento?",
      {
        "text": "Você prioriza tempo com amigos ou com o parceiro quando há conflito de agenda?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Amigos",
          "Parceiro",
          "Tento equilibrar"
        ]
      },
      "O que faz uma amizade durar décadas para você?",
      {
        "text": "Você faz amigos com facilidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com amizades que ficaram distantes?",
      {
        "text": "Você acredita que amizade exige contato frequente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi a maior lição que uma amizade te ensinou?",
      {
        "text": "Você tem amigos de diferentes fases da vida?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você valoriza mais num amigo: lealdade, diversão ou honestidade?",
      "Como você lida com amizades tóxicas?",
      {
        "text": "Você se abre emocionalmente com amigos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual programa ideal para passar um dia com amigos?",
      "Como você mantém amizades quando a rotina aperta?",
      {
        "text": "Você faz amizade com colegas de trabalho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir excluído(a) num grupo de amigos?",
      "Como você reage quando um amigo cancela em cima da hora?",
      {
        "text": "Você acredita em amizades de infância que duram para sempre?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual limite você coloca nas amizades?",
      "Como você celebra conquistas dos seus amigos?",
      {
        "text": "Você sente ciúmes de amizades dos seus amigos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você faria se um amigo te pedisse um favor difícil?",
      "Como você lida com amigos que mudaram de personalidade?",
      {
        "text": "Você prefere amizades profundas ou muitas conhecidas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi o melhor conselho que um amigo te deu?",
      "Como você reage quando amigos discordam de você publicamente?",
      {
        "text": "Você mantém amizade com pessoas de ideologias muito diferentes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir grato(a) por ter certos amigos?",
      "Como você lida com amigos que só aparecem quando precisam?",
      {
        "text": "Você organiza encontros ou espera ser convidado(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição você tem com seus amigos?",
      "Como você apoia um amigo em crise?",
      {
        "text": "Você conta segredos de amigos para outras pessoas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz perder o interesse numa amizade?",
      "Como você lida com amigos que moram longe?",
      {
        "text": "Você se sente à vontade sendo você mesmo(a) com amigos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi a viagem ou aventura mais marcante com amigos?",
      "Como você reage quando um amigo te critica com carinho?",
      {
        "text": "Você acredita que amizade pode sobreviver a longos períodos sem contato?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você faria se um amigo traísse sua confiança?",
      "Como você equilibra tempo para diferentes grupos de amigos?",
      {
        "text": "Você faz amizade com vizinhos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual qualidade você mais admira nos seus amigos?",
      "Como você lida com amigos que se tornaram pais?",
      {
        "text": "Você se sente responsável pela felicidade dos seus amigos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir parte de um grupo?",
      "Como você reage quando amigos formam novos círculos sociais?",
      {
        "text": "Você guarda presentes e lembranças de amigos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi a maior briga que você teve com um amigo e como resolveu?",
      "Como você lida com amizades onde há desequilíbrio de esforço?",
      {
        "text": "Você acredita que amizade verdadeira dispensa explicações?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você faria para reconquistar uma amizade perdida?"
    ]
  },
  {
    "categoryId": "relationship",
    "questions": [
      "O que significa amar para você?",
      "O que você procura em um parceiro?",
      "O que faz você perder o interesse por alguém?",
      "Quanto tempo você leva para confiar em alguém?",
      "Como você demonstra carinho?",
      "Como você gosta de receber carinho?",
      "O que significa lealdade para você?",
      {
        "text": "Você acredita em destino?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você acredita em alma gêmea?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir amado(a) de verdade?",
      "Qual foi o relacionamento que mais te ensinou sobre você?",
      {
        "text": "Você acredita em pausa no relacionamento?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você define um relacionamento saudável?",
      {
        "text": "Espaço individual é importante em um casal?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Muito",
          "Um pouco",
          "Pouco"
        ]
      },
      "O que você considera um dealbreaker em um relacionamento?",
      {
        "text": "Você gosta de surpresas românticas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende do tipo"
        ]
      },
      "Como você lida com períodos de distância física?",
      "O que você espera de um parceiro em momentos difíceis?",
      "O que te faz sentir desejado(a)?",
      {
        "text": "Você acredita em amor à primeira vista?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você sabe que está apaixonado(a)?",
      "O que te faz sentir seguro(a) num relacionamento?",
      {
        "text": "Você prefere relacionamentos intensos ou estáveis?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual gesto romântico te emociona de verdade?",
      "Como você lida com o fim de um relacionamento?",
      {
        "text": "Você acredita que opostos se atraem?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir valorizado(a) pelo(a) parceiro(a)?",
      "Como você define compatibilidade?",
      {
        "text": "Você acredita em reconquistar um ex?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir conectado(a) emocionalmente?",
      "Como você lida com diferenças de libido?",
      {
        "text": "Você prefere declarar sentimentos ou esperar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir ciúmes saudáveis?",
      "Como você imagina envelhecer ao lado de alguém?",
      {
        "text": "Você acredita em relacionamento à distância?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir respeitado(a) no amor?",
      "Como você lida com períodos de rotina no relacionamento?",
      {
        "text": "Você gosta de relacionamentos públicos nas redes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir amado(a) nas pequenas coisas?",
      "Como você define intimidade emocional?",
      {
        "text": "Você acredita em segundas chances no amor?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir atraído(a) além da aparência?",
      "Como você lida com diferenças de ritmo de vida?",
      {
        "text": "Você prefere namoro casual ou compromisso?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que encontrou \"a pessoa certa\"?",
      "Como você lida com expectativas sobre relacionamento?",
      {
        "text": "Você acredita que o amor muda com o tempo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir desconfortável num encontro romântico?",
      "Como você demonstra interesse sem ser invasivo(a)?",
      {
        "text": "Você gosta de relacionamentos com muito tempo juntos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que o relacionamento evolui?",
      "Como você lida com diferenças de temperamento?",
      {
        "text": "Você acredita em paixão eterna?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que pode ser vulnerável?",
      "Como você lida com críticas sobre sua escolha de parceiro(a)?",
      {
        "text": "Você prefere surpresas ou previsibilidade no amor?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que o relacionamento tem futuro?",
      "Como você lida com diferenças de gostos?",
      {
        "text": "Você acredita em relacionamento aberto?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que está sendo escolhido(a)?",
      "Como você lida com momentos de dúvida no amor?",
      {
        "text": "Você gosta de relacionamentos com humor e brincadeira?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que o amor é recíproco?",
      "Como você lida com diferenças de ambição?",
      {
        "text": "Você acredita que o amor supera tudo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que pode construir algo junto?",
      {
        "text": "Você gosta de relacionamentos com metas compartilhadas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida quando o romance esfria por um tempo?"
    ]
  },
  {
    "categoryId": "jealousy",
    "questions": [
      {
        "text": "Você se considera ciumento(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Muito",
          "Um pouco",
          "Não"
        ]
      },
      "O que desperta o seu ciúme?",
      {
        "text": "Você acha saudável sentir ciúmes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você compartilharia a senha do celular?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você compartilharia localização em tempo real?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Curtidas em fotos de outras pessoas te incomodam?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Conversar com ex te incomoda?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Flertar por brincadeira é traição?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que é traição para você?",
      {
        "text": "Você já terminou um relacionamento por ciúmes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Quase"
        ]
      },
      "Como você reage quando sente ciúmes?",
      {
        "text": "Seguir pessoas atraentes nas redes te incomoda?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você aceitaria que o parceiro saísse sozinho à noite?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que ajuda você a confiar mais em alguém?",
      {
        "text": "Mensagens apagadas ou conversas escondidas são red flag?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende do contexto"
        ]
      },
      {
        "text": "Você já sentiu ciúmes de amizades do(a) parceiro(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te ajuda a lidar com ciúmes quando aparecem?",
      {
        "text": "Você já stalkeou perfil de alguém por ciúme?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você diferencia ciúme de controle?",
      {
        "text": "Você se incomoda quando o(a) parceiro(a) elogia outras pessoas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você faria se descobrisse uma conversa suspeita?",
      {
        "text": "Você aceitaria que o(a) parceiro(a) saísse com ex?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando sente que está sendo comparado(a)?",
      {
        "text": "Você já terminou por ciúmes excessivos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz confiar mais no(a) parceiro(a)?",
      {
        "text": "Você se incomoda com amizades muito próximas do sexo oposto?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida quando o(a) parceiro(a) não responde mensagens?",
      {
        "text": "Você já sentiu ciúmes de colegas de trabalho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você considera limite saudável em relação a ciúmes?",
      {
        "text": "Você compartilharia senhas por confiança ou por controle?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando o(a) parceiro(a) esconde o celular?",
      {
        "text": "Você se incomoda com elogios públicos a outras pessoas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir seguro(a) sobre fidelidade?",
      {
        "text": "Você aceitaria relacionamento sem exclusividade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com ciúmes que você mesmo(a) considera irracionais?",
      {
        "text": "Você se incomoda quando o(a) parceiro(a) dança com outras pessoas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você faria se um amigo flertasse com seu(sua) parceiro(a)?",
      {
        "text": "Você já ficou com ciúmes de família do(a) parceiro(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando o(a) parceiro(a) menciona um ex?",
      {
        "text": "Você se incomoda com fotos antigas com ex nas redes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te ajuda a não transformar ciúme em acusação?",
      {
        "text": "Você aceitaria que o(a) parceiro(a) viaje sozinho(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com elogios que o(a) parceiro(a) recebe?",
      {
        "text": "Você se incomoda com pessoas que curtem todas as fotos do(a) parceiro(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você considera sinal de desconfiança justificada?",
      {
        "text": "Você já sentiu ciúmes de hobbies ou paixões do(a) parceiro(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando o(a) parceiro(a) tem segredos?",
      {
        "text": "Você aceitaria que o(a) parceiro(a) trabalhe com ex?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que o ciúme está saudável?",
      {
        "text": "Você se incomoda com mensagens de madrugada de desconhecidos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida quando o(a) parceiro(a) não quer te apresentar a alguém?",
      {
        "text": "Você já sentiu ciúmes de animais de estimação?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você faria se o(a) parceiro(a) mentisse sobre onde estava?",
      {
        "text": "Você aceitaria que o(a) parceiro(a) tenha amizades secretas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando o(a) parceiro(a) minimiza seus ciúmes?",
      {
        "text": "Você se incomoda com elogios a celebridades?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que precisa de mais transparência?",
      {
        "text": "Você aceitaria que o(a) parceiro(a) saia em grupo sem você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com ciúmes de conquistas profissionais do(a) parceiro(a)?",
      {
        "text": "Você se incomoda quando o(a) parceiro(a) não posta vocês?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você faria se descobrisse mentiras pequenas repetidas?",
      {
        "text": "Você acredita que ciúme pode ser eliminado totalmente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você pediria mais segurança sem parecer controlador(a)?",
      {
        "text": "Você se incomoda quando o(a) parceiro(a) recebe convites solteiros?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te ajuda a distinguir ciúme de intuição?"
    ]
  },
  {
    "categoryId": "communication",
    "questions": [
      "Como você reage durante uma discussão?",
      {
        "text": "Você prefere conversar na hora ou esperar esfriar a cabeça?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Conversar na hora",
          "Esperar esfriar",
          "Depende da situação"
        ]
      },
      {
        "text": "Você costuma guardar mágoas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você gosta de resolver tudo no diálogo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você precisa ouvir durante uma briga para se acalmar?",
      {
        "text": "Você levanta a voz durante discussões?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Às vezes"
        ]
      },
      {
        "text": "Você prefere resolver conflitos por mensagem ou pessoalmente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Pessoalmente",
          "Por mensagem",
          "Depende"
        ]
      },
      "Como você pede desculpas quando erra?",
      "O que você considera uma crítica construtiva?",
      {
        "text": "Você consegue falar sobre sentimentos com facilidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Com algumas pessoas"
        ]
      },
      {
        "text": "Silêncio após uma discussão te incomoda?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Muito",
          "Um pouco",
          "Não"
        ]
      },
      "Como você gostaria que o parceiro te comunicasse que está chateado?",
      {
        "text": "Você acha importante ter conversas difíceis regularmente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Quando necessário"
        ]
      },
      "O que você faz quando não se sente ouvido(a)?",
      {
        "text": "Você usa sarcasmo ou ironia em discussões?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Às vezes"
        ]
      },
      "Como vocês poderiam melhorar a comunicação entre vocês?",
      "Existe algum assunto que você evita falar?",
      {
        "text": "Você gosta de receber feedback sobre o relacionamento?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende de como é dito"
        ]
      },
      "O que significa para você \"estar presente\" numa conversa?",
      "Como você prefere que a outra pessoa te avise quando está chateada?",
      {
        "text": "Você consegue dizer \"não\" com clareza?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que a conversa foi produtiva?",
      {
        "text": "Você prefere mensagens longas ou conversas rápidas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida quando a outra pessoa não quer falar sobre algo?",
      {
        "text": "Você consegue admitir quando está errado(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir interrompido(a) ou não ouvido(a)?",
      {
        "text": "Você prefere resolver mal-entendidos por texto ou pessoalmente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando a outra pessoa muda de assunto no meio da conversa?",
      {
        "text": "Você consegue falar sobre necessidades emocionais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te ajuda a manter a calma numa discussão?",
      {
        "text": "Você prefere feedback direto ou suave?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com silêncios desconfortáveis?",
      {
        "text": "Você consegue pedir desculpas sem justificar demais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que a outra pessoa está presente na conversa?",
      {
        "text": "Você prefere combinar assuntos difíceis com antecedência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando a outra pessoa levanta a voz?",
      {
        "text": "Você consegue expressar gratidão com facilidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que precisa de um tempo sozinho(a)?",
      {
        "text": "Você prefere resolver conflitos no mesmo dia?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida quando a outra pessoa não responde por horas?",
      {
        "text": "Você consegue falar sobre limites pessoais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que a outra pessoa te entende?",
      {
        "text": "Você prefere conversas profundas ou leves no dia a dia?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando a outra pessoa faz suposições sobre você?",
      {
        "text": "Você consegue dizer quando precisa de espaço?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que uma conversa virou discussão?",
      {
        "text": "Você prefere receber críticas em particular?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com diferenças de opinião firmes?",
      {
        "text": "Você consegue falar sobre expectativas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que a outra pessoa está evitando o assunto?",
      {
        "text": "Você prefere combinar regras de convivência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando a outra pessoa usa ironia?",
      {
        "text": "Você consegue falar sobre o que te magoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que precisa repetir algo várias vezes?",
      {
        "text": "Você prefere resolver conflitos com um mediador?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida quando a outra pessoa não lembra do que combinaram?",
      {
        "text": "Você consegue elogiar a outra pessoa com frequência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que a comunicação está fluindo?",
      {
        "text": "Você prefere conversas matinais ou noturnas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando a outra pessoa compartilha algo íntimo?",
      {
        "text": "Você consegue falar sobre planos futuros juntos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que precisa de mais clareza?",
      {
        "text": "Você prefere resolver conflitos com humor?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida quando a outra pessoa não concorda com seu ponto de vista?",
      {
        "text": "Você consegue pedir ajuda quando precisa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que a outra pessoa te respeita na conversa?",
      {
        "text": "Você consegue reconhecer quando a outra pessoa precisa de apoio?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida quando a outra pessoa interpreta mal suas palavras?",
      "O que te faz sentir que vale a pena insistir numa conversa difícil?"
    ]
  },
  {
    "categoryId": "money",
    "questions": [
      {
        "text": "Você é mais econômico(a) ou gastador(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Econômico(a)",
          "Gastador(a)",
          "No meio termo"
        ]
      },
      {
        "text": "Você faz planejamento financeiro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você investe dinheiro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual é o seu maior objetivo financeiro?",
      {
        "text": "Você acredita em dividir todas as contas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você teria conta conjunta?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você compraria uma casa financiada?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "O dinheiro é importante para um relacionamento?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Muito",
          "Um pouco",
          "Pouco"
        ]
      },
      "Qual foi a maior compra impulsiva que você já fez?",
      {
        "text": "Você guarda dinheiro todo mês?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Tento, mas nem sempre"
        ]
      },
      "Como você lida com dívidas?",
      {
        "text": "Presentes caros te incomodam?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você prioriza gastar: experiências ou bens materiais?",
      {
        "text": "Você consultaria o parceiro antes de uma compra grande?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende do valor"
        ]
      },
      "Como você imagina as finanças do casal no futuro?",
      {
        "text": "Você tem reserva de emergência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi a compra que mais te arrependeu?",
      {
        "text": "Você negocia preços ou aceita o valor?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com gastos inesperados?",
      {
        "text": "Você usa cartão de crédito com frequência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual porcentagem da renda você gostaria de poupar?",
      {
        "text": "Você já emprestou dinheiro e se arrependeu?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você define \"compra consciente\"?",
      {
        "text": "Você acompanha seus gastos mensalmente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta financeira te motiva mais?",
      {
        "text": "Você prefere pagar à vista ou parcelar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com pressão para gastar em ocasiões sociais?",
      {
        "text": "Você investe em educação financeira?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito financeiro você quer mudar?",
      {
        "text": "Você compartilha contas com alguém?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com diferenças de renda?",
      {
        "text": "Você tem seguro — saúde, vida ou patrimonial?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual gasto você considera investimento, não despesa?",
      {
        "text": "Você usa apps de controle financeiro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com tentações de compra impulsiva?",
      {
        "text": "Você prefere qualidade ou preço baixo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual sonho financeiro você tem para os próximos cinco anos?",
      {
        "text": "Você conversa sobre dinheiro com facilidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com pedidos de empréstimo de conhecidos?",
      {
        "text": "Você tem plano para aposentadoria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual gasto você nunca economizaria?",
      {
        "text": "Você prefere experiências ou bens materiais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com inflação e custo de vida?",
      {
        "text": "Você já fez dívida por impulso?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito financeiro você aprendeu tarde?",
      {
        "text": "Você doa dinheiro para causas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com presentes caros que não pode retribuir?",
      {
        "text": "Você prefere morar de aluguel ou financiar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta financeira parece impossível hoje?",
      {
        "text": "Você tem conta conjunta com alguém?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com gastos de saúde?",
      {
        "text": "Você prefere trabalhar mais ou gastar menos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual compra te deu mais satisfação?",
      {
        "text": "Você acompanha cotações e investimentos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com comparar patrimônio com outras pessoas?",
      {
        "text": "Você tem limite de gastos por mês?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito financeiro você herdou da família?",
      {
        "text": "Você prefere pagar dívidas rápido ou aos poucos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com gastos de lazer?",
      {
        "text": "Você tem reserva para viagens?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta financeira você alcançou e se orgulha?",
      {
        "text": "Você prefere transparência total sobre finanças?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com gastos de filhos ou dependentes?",
      {
        "text": "Você tem plano B se perder a renda principal?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conselho financeiro você daria para si mesmo(a)?"
    ]
  },
  {
    "categoryId": "career",
    "questions": [
      "Qual é a profissão dos seus sonhos?",
      {
        "text": "Você pretende empreender?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "O trabalho é prioridade na sua vida?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende da fase"
        ]
      },
      {
        "text": "Você mudaria de cidade por uma oportunidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você mudaria de país por trabalho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você mais gosta no seu trabalho atual?",
      "O que você menos gosta no seu trabalho atual?",
      {
        "text": "Você trabalha além do horário com frequência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Às vezes"
        ]
      },
      "Como o trabalho afeta seu humor em casa?",
      {
        "text": "Você levaria trabalho para as férias?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Só se for urgente"
        ]
      },
      "Qual conquista profissional você mais se orgulha?",
      {
        "text": "Salário maior com menos tempo livre vale a pena?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você equilibra ambição profissional e vida pessoal?",
      {
        "text": "Você aceitaria que o parceiro ganhasse muito mais que você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Não me importo"
        ]
      },
      "O que você faria se perdesse o emprego amanhã?",
      "O que te motiva a levantar da cama para trabalhar?",
      {
        "text": "Você se sente realizado(a) na carreira atual?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual habilidade profissional você quer desenvolver?",
      {
        "text": "Você aceitaria redução de salário por mais qualidade de vida?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com burnout?",
      {
        "text": "Você prefere emprego estável ou autonomia?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi o feedback profissional que mais te marcou?",
      {
        "text": "Você networking com frequência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com concorrência no trabalho?",
      {
        "text": "Você aceitaria promoção com mais responsabilidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual valor profissional é inegociável para você?",
      {
        "text": "Você trabalha no feriado se precisar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com chefes difíceis?",
      {
        "text": "Você prefere home office ou presencial?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conquista profissional você ainda busca?",
      {
        "text": "Você aceitaria demissão por princípio?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com falta de reconhecimento?",
      {
        "text": "Você tem side hustle ou projeto paralelo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual ambiente de trabalho te faz render mais?",
      {
        "text": "Você aceitaria recontratação em empresa antiga?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com mudanças de carreira?",
      {
        "text": "Você prefere especialização ou generalização?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual erro profissional te ensinou mais?",
      {
        "text": "Você aceitaria viagens frequentes a trabalho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com colegas que não puxam o peso?",
      {
        "text": "Você tem mentor ou referência profissional?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta de carreira você tem para os próximos três anos?",
      {
        "text": "Você aceitaria trabalhar no exterior?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com desemprego?",
      {
        "text": "Você prefere empresa grande ou pequena?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual habilidade soft você mais valoriza?",
      {
        "text": "Você aceitaria cargo com menos visibilidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com críticas no trabalho?",
      {
        "text": "Você tem plano B profissional?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual setor te atrai para uma mudança?",
      {
        "text": "Você aceitaria trabalhar aos fins de semana?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com política interna?",
      {
        "text": "Você prefere liderar equipe ou trabalhar solo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual projeto profissional você mais se orgulha?",
      {
        "text": "Você aceitaria estágio em nova área?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com prazos apertados?",
      {
        "text": "Você tem portfólio ou currículo atualizado?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual benefício além do salário é essencial?",
      {
        "text": "Você aceitaria contrato PJ em vez de CLT?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com falta de propósito no trabalho?",
      {
        "text": "Você prefere rotina ou variedade no trabalho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual lição sobre carreira você aprendeu da pior forma?",
      {
        "text": "Você aceitaria mudar de cidade por emprego?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você equilibra ambição e bem-estar?",
      {
        "text": "Você se vê na mesma área daqui a dez anos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      }
    ]
  },
  {
    "categoryId": "future",
    "questions": [
      "Como você imagina sua vida em cinco anos?",
      "Como você imagina sua vida em dez anos?",
      "Onde você gostaria de morar?",
      "Qual patrimônio você gostaria de conquistar?",
      "O que significa sucesso para você?",
      "O que você quer realizar antes dos 40 anos?",
      "Onde você se vê morando daqui a dez anos?",
      "Qual sonho você ainda não realizou e quer muito?",
      {
        "text": "Você planeja a aposentadoria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Ainda não pensei nisso"
        ]
      },
      "O que precisa acontecer para você se sentir realizado(a)?",
      {
        "text": "Estabilidade ou aventura — o que pesa mais no futuro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Estabilidade",
          "Aventura",
          "Um equilíbrio"
        ]
      },
      "Qual hábito você quer construir para o futuro?",
      "Como você imagina um dia perfeito daqui a cinco anos?",
      {
        "text": "Você se vê morando no mesmo lugar por muitos anos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Talvez"
        ]
      },
      "O que você faria diferente se soubesse que vai viver até os 90?",
      "Como você imagina um sábado ideal daqui a três anos?",
      {
        "text": "Você tem um \"bucket list\" escrito?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual lugar do mundo você quer conhecer antes de morrer?",
      {
        "text": "Você planeja mudar de cidade nos próximos anos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você define \"vida boa\"?",
      {
        "text": "Você se vê com filhos no futuro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta pessoal você quer alcançar este ano?",
      {
        "text": "Você acredita que seus sonhos vão se realizar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina suas férias daqui a cinco anos?",
      {
        "text": "Você quer morar no interior ou na capital?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito futuro você quer manter para sempre?",
      {
        "text": "Você se vê empreendendo no futuro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina seu aniversário daqui a dez anos?",
      {
        "text": "Você quer aprender um novo idioma?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual experiência você quer viver antes dos 50?",
      {
        "text": "Você se vê morando sozinho(a) em algum momento?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina sua rotina de aposentadoria?",
      {
        "text": "Você quer escrever um livro ou criar algo duradouro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta de saúde você quer alcançar?",
      {
        "text": "Você se vê viajando muito no futuro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina suas amizades daqui a vinte anos?",
      {
        "text": "Você quer ter pets no futuro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual projeto pessoal você quer terminar?",
      {
        "text": "Você se vê morando perto do mar ou da montanha?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina celebrar conquistas futuras?",
      {
        "text": "Você quer fazer voluntariado ou trabalho social?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta financeira de longo prazo você tem?",
      {
        "text": "Você se vê com rotina mais calma ou mais intensa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina seu lar ideal?",
      {
        "text": "Você quer aprender a tocar um instrumento?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual viagem em família você sonha em fazer?",
      {
        "text": "Você se vê mudando de país algum dia?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina seu legado?",
      {
        "text": "Você quer ter um jardim ou horta?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta de aprendizado você tem?",
      {
        "text": "Você se vê com mais ou menos amigos no futuro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina suas manhãs daqui a dez anos?",
      {
        "text": "Você quer fazer uma pós ou especialização?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta de bem-estar você prioriza?",
      {
        "text": "Você se vê com rotina de exercícios fixa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina passar o Natal daqui a cinco anos?",
      {
        "text": "Você quer ter um negócio próprio?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta criativa você tem?",
      {
        "text": "Você se vê morando em casa própria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina envelhecer?",
      {
        "text": "Você quer aprender uma profissão nova?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta de relacionamento você tem para o futuro?",
      {
        "text": "Você se vê com mais tempo livre ou mais ocupado(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina comemorar a aposentadoria?",
      {
        "text": "Você se vê realizando um sonho de infância no futuro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      }
    ]
  },
  {
    "categoryId": "marriage",
    "questions": [
      {
        "text": "Casamento é importante para você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Muito",
          "Um pouco",
          "Não"
        ]
      },
      {
        "text": "Você pretende casar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina o seu casamento?",
      {
        "text": "Você acredita que casamento deve ser para sempre?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que faz um casamento durar?",
      {
        "text": "Você prefere casamento civil ou religioso?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Civil",
          "Religioso",
          "Os dois",
          "Tanto faz"
        ]
      },
      "Como você imagina a festa de casamento?",
      {
        "text": "Casamento íntimo ou grande celebração?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Íntimo",
          "Grande",
          "No meio termo"
        ]
      },
      {
        "text": "Pacto antenupcial faz sentido para você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faria desistir de casar com alguém?",
      {
        "text": "Mudar de sobrenome após casar te importa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual promessa você gostaria de fazer no altar?",
      "Como você vê o papel dos padrinhos e da família na cerimônia?",
      {
        "text": "Lua de mel longa é prioridade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Seria legal, mas não essencial"
        ]
      },
      "O que um casamento significa para você além da festa?",
      {
        "text": "Você acredita em renovação de votos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Talvez"
        ]
      },
      {
        "text": "Você sonha com pedido de casamento tradicional?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina a decoração do casamento?",
      {
        "text": "Você prefere casamento no civil ou na igreja?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição de casamento você gostaria de incluir?",
      {
        "text": "Você aceitaria casamento sem festa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina os votos?",
      {
        "text": "Você prefere noiva/noivo entrar sozinho(a) ou acompanhado(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual música seria perfeita para a primeira dança?",
      {
        "text": "Você aceitaria casamento destino?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina a lista de convidados?",
      {
        "text": "Você prefere vestido/traje clássico ou moderno?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual papel a família teria na cerimônia?",
      {
        "text": "Você aceitaria casamento com orçamento limitado?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina a lua de mel?",
      {
        "text": "Você prefere cerimônia ao ar livre ou fechada?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual promessa você faria além dos votos tradicionais?",
      {
        "text": "Você aceitaria casamento íntimo com poucos convidados?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina as fotos do casamento?",
      {
        "text": "Você prefere buffet ou menu fechado?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição de outra cultura te atrai para um casamento?",
      {
        "text": "Você aceitaria casamento sem alianças?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina o discurso dos padrinhos?",
      {
        "text": "Você prefere casamento de dia ou à noite?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual detalhe tornaria o casamento inesquecível?",
      {
        "text": "Você aceitaria casamento com transmissão online?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina a despedida de solteiro(a)?",
      {
        "text": "Você prefere casamento tradicional ou alternativo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual valor você quer que o casamento represente?",
      {
        "text": "Você aceitaria casamento sem pai/mãe te acompanhando?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina a primeira semana de casados?",
      {
        "text": "Você prefere casamento com muita ou pouca decoração?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição você criaria para o casamento?",
      {
        "text": "Você aceitaria casamento em outra cidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina o bolo ou a sobremesa?",
      {
        "text": "Você prefere casamento com ou sem padrinhos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual momento da cerimônia te emocionaria mais?",
      {
        "text": "Você aceitaria casamento com tema específico?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina os convites?",
      {
        "text": "Você prefere casamento com banda ao vivo ou DJ?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual promessa você espera ouvir do(a) parceiro(a)?",
      {
        "text": "Você aceitaria casamento sem fotógrafo profissional?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina a convivência pós-casamento?",
      {
        "text": "Você prefere casamento grande ou pequeno?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição familiar você incluiria?",
      {
        "text": "Você aceitaria casamento com cerimônia simbólica?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina celebrar aniversários de casamento?",
      {
        "text": "Você prefere aliança clássica ou personalizada?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que o casamento significa para você emocionalmente?",
      {
        "text": "Você aceitaria casamento com cerimônia apenas simbólica?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina lidar com conflitos sendo casados?"
    ]
  },
  {
    "categoryId": "children",
    "questions": [
      {
        "text": "Você quer ter filhos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Quantos filhos você gostaria de ter?",
      {
        "text": "Você adotaria uma criança?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você pretende educar seus filhos?",
      "Qual valor você gostaria de ensinar primeiro?",
      {
        "text": "Qual idade ideal para ter o primeiro filho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Antes dos 30",
          "Entre 30 e 35",
          "Depois dos 35",
          "Não tenho preferência"
        ]
      },
      "Como você imagina a divisão de tarefas com filhos?",
      {
        "text": "Você aceitaria ser pai/mãe solo se necessário?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Que tipo de pai/mãe você quer ser?",
      {
        "text": "Babá ou família cuidando dos filhos te parece ok?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você educaria sobre dinheiro e responsabilidade?",
      {
        "text": "Celular e redes para crianças — qual sua opinião?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Proibir até mais velho",
          "Com limites",
          "Confio no bom senso"
        ]
      },
      "O que você faria se discordasse da educação do parceiro?",
      "Como você lidaria com birras e fases difíceis?",
      {
        "text": "Ter filhos mudaria suas prioridades de carreira?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Um pouco"
        ]
      },
      "Que memória de infância você gostaria de recriar para seus filhos?",
      {
        "text": "Você quer ser pai/mãe biológico(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina o quarto do primeiro filho?",
      {
        "text": "Você aceitaria ter filhos mais tarde na vida?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição você quer passar para os filhos?",
      {
        "text": "Você aceitaria ter apenas um filho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com a ideia de noites mal dormidas?",
      {
        "text": "Você aceitaria escola pública ou privada?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual valor você ensinaria desde cedo?",
      {
        "text": "Você aceitaria ter filhos com diferença grande de idade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina as férias em família?",
      {
        "text": "Você aceitaria creche desde cedo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual brincadeira da infância você quer repetir?",
      {
        "text": "Você aceitaria ter filhos gêmeos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com birras e limites?",
      {
        "text": "Você aceitaria ter filhos por adoção?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito saudável você quer incutir?",
      {
        "text": "Você aceitaria ter filhos antes de casar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você aceitaria ter filhos se a carreira estivesse em ascensão?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual memória de infância você quer recriar?",
      {
        "text": "Você aceitaria ter filhos com necessidades especiais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com críticas sobre educação?",
      {
        "text": "Você aceitaria ter filhos em outro país?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual regra de casa você teria com filhos?",
      {
        "text": "Você aceitaria ter filhos se morasse longe da família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina ensinar sobre dinheiro?",
      {
        "text": "Você aceitaria ter filhos se o parceiro não quisesse?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual atividade você faria com os filhos?",
      {
        "text": "Você aceitaria ter filhos com ajuda de reprodução assistida?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com comparação entre filhos?",
      {
        "text": "Você aceitaria ter filhos e pets juntos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual limite você colocaria em telas?",
      {
        "text": "Você aceitaria ter filhos se a renda fosse instável?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina o nascimento?",
      {
        "text": "Você aceitaria ter filhos se morasse em apartamento pequeno?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição de aniversário você criaria?",
      {
        "text": "Você aceitaria ter filhos se um dos dois viajasse muito?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com a pressão para ter filhos?",
      {
        "text": "Você aceitaria ter filhos se houvesse risco genético?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conselho você daria para um filho adolescente?",
      {
        "text": "Você aceitaria ter filhos se morasse com os pais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina a relação avós-netos?",
      {
        "text": "Você aceitaria ter filhos se um dos dois tivesse filhos de relacionamento anterior?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual valor sobre respeito você ensinaria?",
      {
        "text": "Você aceitaria ter filhos se a saúde mental não estivesse estável?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com a ideia de nunca ter filhos?",
      {
        "text": "Você aceitaria ter filhos se morasse longe da escola ideal?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faria reconsiderar ter filhos?",
      {
        "text": "Você aceitaria ter filhos se morassem longe dos avós?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina ensinar empatia desde cedo?"
    ]
  },
  {
    "categoryId": "home_routine",
    "questions": [
      {
        "text": "Você gosta de cozinhar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você é organizado(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina dividir as tarefas domésticas?",
      {
        "text": "Você gosta de receber visitas em casa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você prefere morar em apartamento ou casa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Apartamento",
          "Casa",
          "Tanto faz"
        ]
      },
      "Como é a sua manhã ideal?",
      {
        "text": "Você é matutino(a) ou noturno(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Matutino(a)",
          "Noturno(a)",
          "Depende do dia"
        ]
      },
      "Como você lida com bagunça em casa?",
      {
        "text": "Você gosta de ter uma rotina fixa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Em parte"
        ]
      },
      "Qual tarefa doméstica você menos gosta de fazer?",
      {
        "text": "Animais de estimação em casa — sim ou não?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina os finais de semana a dois em casa?",
      {
        "text": "TV de fundo durante o jantar te incomoda?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que torna um lar aconchegante para você?",
      {
        "text": "Você gosta de decorar e mudar a casa com frequência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "De vez em quando"
        ]
      },
      "Como você prefere dividir contas da casa?",
      {
        "text": "Você prefere acordar cedo ou dormir até tarde?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina a cozinha ideal?",
      {
        "text": "Você gosta de plantas em casa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual cheiro te faz sentir em casa?",
      {
        "text": "Você prefere casa minimalista ou cheia de objetos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com barulho dos vizinhos?",
      {
        "text": "Você gosta de ter música ambiente em casa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual canto da casa é seu favorito?",
      {
        "text": "Você prefere jantar à mesa ou no sofá?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina a sala de estar?",
      {
        "text": "Você gosta de ter visitas frequentes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rotina noturna te relaxa?",
      {
        "text": "Você prefere lavar louça na hora ou acumular?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com sujeira de pets?",
      {
        "text": "Você gosta de ter velas ou incenso em casa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tarefa doméstica você faz com prazer?",
      {
        "text": "Você prefere varanda ou quintal?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina o banheiro ideal?",
      {
        "text": "Você gosta de ter geladeira sempre cheia?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito matinal é inegociável?",
      {
        "text": "Você prefere ar-condicionado ou ventilador?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com bagunça temporária?",
      {
        "text": "Você gosta de ter quadros ou fotos na parede?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual comida de conforto você sempre tem em casa?",
      {
        "text": "Você prefere cozinha aberta ou separada?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina o quarto ideal?",
      {
        "text": "Você gosta de ter livros espalhados?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rotina de fim de semana em casa te agrada?",
      {
        "text": "Você prefere chuveiro ou banheira?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com falta de espaço?",
      {
        "text": "Você gosta de ter TV no quarto?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual ambiente precisa estar sempre arrumado?",
      {
        "text": "Você prefere cortinas ou persianas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina a área de trabalho em casa?",
      {
        "text": "Você gosta de ter café da manhã elaborado?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito noturno te prepara para dormir?",
      {
        "text": "Você prefere casa com muita luz natural?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com temperatura em casa?",
      {
        "text": "Você gosta de ter flores frescas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rotina de limpeza funciona para você?",
      {
        "text": "Você prefere móveis novos ou antigos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina a garagem ou área externa?",
      {
        "text": "Você gosta de ter snacks sempre disponíveis?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição doméstica você quer criar?",
      {
        "text": "Você prefere casa silenciosa ou com barulho de fundo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com organização de armários?",
      {
        "text": "Você gosta de cozinhar para visitas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual detalhe torna um lar acolhedor para você?",
      {
        "text": "Você prefere morar perto ou longe do centro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você imagina envelhecer no mesmo lar?"
    ]
  },
  {
    "categoryId": "health",
    "questions": [
      {
        "text": "Você pratica atividade física?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você se alimenta bem?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você fuma?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Às vezes"
        ]
      },
      {
        "text": "Você bebe?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Socialmente"
        ]
      },
      {
        "text": "Você dorme bem?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você faz para cuidar da saúde mental?",
      {
        "text": "Você já fez terapia?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Estou fazendo"
        ]
      },
      "Como você lida com estresse no dia a dia?",
      {
        "text": "Exercício físico é prioridade para você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Tento ser"
        ]
      },
      {
        "text": "Você tem restrições alimentares?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Por escolha, não por necessidade"
        ]
      },
      "Como você reage quando está doente?",
      {
        "text": "Check-ups médicos regulares — você faz?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Deveria fazer mais"
        ]
      },
      "O que te ajuda a dormir melhor?",
      {
        "text": "Saúde do parceiro é algo que você se preocupa ativamente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Um pouco"
        ]
      },
      "Como vocês poderiam apoiar a saúde um do outro?",
      {
        "text": "Você faz check-up médico anualmente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito de saúde você quer adotar?",
      {
        "text": "Você toma vitaminas ou suplementos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com dor de cabeça?",
      {
        "text": "Você pratica meditação ou mindfulness?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual alimento você evita por saúde?",
      {
        "text": "Você tem alergias conhecidas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com insônia?",
      {
        "text": "Você bebe água suficiente no dia?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual exercício você mais gosta?",
      {
        "text": "Você evita açúcar ou processed foods?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com ansiedade?",
      {
        "text": "Você usa óculos ou lentes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito ruim de saúde você quer abandonar?",
      {
        "text": "Você faz exames preventivos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com resfriados e gripes?",
      {
        "text": "Você tem plano de saúde?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta de saúde física você tem?",
      {
        "text": "Você evita álcool em excesso?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com estresse crônico?",
      {
        "text": "Você tem histórico familiar de doenças?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rotina de sono funciona para você?",
      {
        "text": "Você evita fumar ou tabaco?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com dores musculares?",
      {
        "text": "Você faz alongamento ou yoga?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito mental te faz bem?",
      {
        "text": "Você evita cafeína à noite?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com falta de energia?",
      {
        "text": "Você tem restrição alimentar por saúde?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta de bem-estar emocional você tem?",
      {
        "text": "Você evita telas antes de dormir?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com enxaquecas?",
      {
        "text": "Você tem rotina de skincare?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito de saúde você mantém há anos?",
      {
        "text": "Você evita comer tarde da noite?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com problemas digestivos?",
      {
        "text": "Você faz acompanhamento psicológico?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta de peso ou forma física você tem?",
      {
        "text": "Você evita sol excessivo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com dores nas costas?",
      {
        "text": "Você tem rotina de hidratação?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito de saúde você aprendeu recentemente?",
      {
        "text": "Você evita automedicação?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com falta de motivação para exercício?",
      {
        "text": "Você tem rotina de pausas no trabalho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta de saúde mental você prioriza?",
      {
        "text": "Você evita junk food com frequência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com problemas de pele?",
      {
        "text": "Você tem rotina de gratidão ou journaling?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir saudável de verdade?"
    ]
  },
  {
    "categoryId": "spirituality",
    "questions": [
      "Você possui alguma religião?",
      {
        "text": "A fé é importante para você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Muito",
          "Um pouco",
          "Não"
        ]
      },
      {
        "text": "Você gostaria que seu parceiro tivesse a mesma religião?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Você acredita em algo maior que você?",
      {
        "text": "Você ora, medita ou tem algum ritual?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Às vezes"
        ]
      },
      "Como a espiritualidade aparece no seu dia a dia?",
      {
        "text": "Diferenças religiosas no casal te preocupam?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te dá sentido de propósito na vida?",
      {
        "text": "Você gostaria de criar filhos com alguma tradição religiosa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com momentos de incerteza sobre o futuro?",
      {
        "text": "Acasal, signo ou superstições influenciam você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Por diversão"
        ]
      },
      "O que você acredita que acontece depois da morte?",
      {
        "text": "Participar de cerimônias religiosas juntos é importante?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Às vezes"
        ]
      },
      {
        "text": "Você acredita em karma ou lei do retorno?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como a espiritualidade te ajuda em momentos difíceis?",
      {
        "text": "Você pratica alguma religião ativamente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual ritual te traz paz?",
      {
        "text": "Você acredita em anjos ou proteção espiritual?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com dúvidas sobre fé?",
      {
        "text": "Você frequenta templos, igrejas ou centros espirituais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual ensinamento espiritual te marcou?",
      {
        "text": "Você acredita em reencarnação?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você define \"milagre\"?",
      {
        "text": "Você ora ou reza com frequência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual prática espiritual você gostaria de experimentar?",
      {
        "text": "Você acredita que tudo acontece por um motivo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com pessoas de fé diferente?",
      {
        "text": "Você lê textos sagrados ou espirituais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual momento te fez questionar a fé?",
      {
        "text": "Você acredita em energia ou vibração?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como a espiritualidade aparece nas suas escolhas?",
      {
        "text": "Você participa de retiros ou eventos espirituais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual valor espiritual guia sua vida?",
      {
        "text": "Você acredita em destino ou livre-arbítrio?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com luto do ponto de vista espiritual?",
      {
        "text": "Você medita regularmente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição espiritual te atrai?",
      {
        "text": "Você acredita em premonições ou sinais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você ensinaria espiritualidade para uma criança?",
      {
        "text": "Você acredita em vida após a morte?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual prática te conecta com algo maior?",
      {
        "text": "Você evita falar de religião em conversas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com críticas à sua fé?",
      {
        "text": "Você acredita em cura espiritual?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual momento de silêncio te fez sentir presença divina?",
      {
        "text": "Você usa amuletos ou símbolos de proteção?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você define \"propósito de vida\"?",
      {
        "text": "Você acredita em oração coletiva?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual festa religiosa ou espiritual você mais valoriza?",
      {
        "text": "Você busca respostas em astrologia ou tarô?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com incerteza sobre o futuro?",
      {
        "text": "Você acredita em perdão espiritual?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual lição espiritual você aprendeu com um erro?",
      {
        "text": "Você pratica gratidão como ritual?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você honra quem partiu?",
      {
        "text": "Você acredita em proteção de antepassados?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual prática espiritual você abandonou e por quê?",
      {
        "text": "Você sente que a fé te limita ou liberta?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você define \"fé\" para si?",
      {
        "text": "Você acredita que o universo conspira a seu favor?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te dá esperança quando tudo parece difícil?",
      {
        "text": "Você acredita que coincidências significativas existem?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com momentos em que a fé parece distante?"
    ]
  },
  {
    "categoryId": "social_media",
    "questions": [
      {
        "text": "Quanto tempo você passa nas redes sociais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Poucas horas por semana",
          "Todo dia, pouco tempo",
          "Várias horas por dia"
        ]
      },
      {
        "text": "Você posta muito da sua vida?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você gosta de expor o relacionamento nas redes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      {
        "text": "Você checa o celular logo ao acordar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Às vezes"
        ]
      },
      "Qual rede social você mais usa?",
      {
        "text": "Stories e status do parceiro precisam mencionar você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Não me importo"
        ]
      },
      {
        "text": "Você seguiria o ex em rede social?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com comparação nas redes?",
      {
        "text": "Limitar tempo de tela no casal faz sentido?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Para mim sim"
        ]
      },
      "O que você nunca postaria nas redes?",
      {
        "text": "Fotos íntimas ou em trajes leves nas redes te incomodam?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reagiria se o parceiro postasse algo que te incomodasse?",
      {
        "text": "Você usa redes para conhecer pessoas novas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Raramente"
        ]
      },
      {
        "text": "Você usa redes sociais todo dia?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rede você usaria se tivesse que escolher só uma?",
      {
        "text": "Você posta stories com frequência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com haters ou comentários negativos?",
      {
        "text": "Você curte posts de ex ou antigos contatos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conteúdo você nunca postaria?",
      {
        "text": "Você usa filtros em todas as fotos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com FOMO nas redes?",
      {
        "text": "Você segue influenciadores ou creators?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rede te consome mais tempo?",
      {
        "text": "Você apaga posts antigos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com comparação de corpo nas redes?",
      {
        "text": "Você usa redes para trabalho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual limite de tempo de tela você impõe?",
      {
        "text": "Você posta fotos sem maquiagem ou filtro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com viralização inesperada?",
      {
        "text": "Você usa LinkedIn ou redes profissionais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rede você considera mais tóxica?",
      {
        "text": "Você responde DMs de desconhecidos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com cancelamentos online?",
      {
        "text": "Você posta opiniões políticas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rede te traz mais alegria?",
      {
        "text": "Você usa modo escuro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com notificações constantes?",
      {
        "text": "Você posta fotos de comida?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rede você abandonou e por quê?",
      {
        "text": "Você usa redes para namoro ou conhecer pessoas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com privacidade online?",
      {
        "text": "Você posta viagens em tempo real?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rede te deixa mais ansioso(a)?",
      {
        "text": "Você usa redes no banheiro ou na cama?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com algoritmos e recomendações?",
      {
        "text": "Você posta selfies com frequência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rede você usa para notícias?",
      {
        "text": "Você bloqueia ou silencia contas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com exposição de filhos ou família?",
      {
        "text": "Você posta conteúdo educativo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rede te conecta com amigos distantes?",
      {
        "text": "Você usa redes durante refeições?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com desinformação?",
      {
        "text": "Você posta memes ou humor?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rede você considera essencial hoje?",
      {
        "text": "Você usa redes para vender ou empreender?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com dependência de likes?",
      {
        "text": "Você posta rotina de exercícios?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual rede você esconderia de certas pessoas?",
      {
        "text": "Você usa redes para aprender algo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com exposição do relacionamento?",
      {
        "text": "Você faria detox de redes por uma semana?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faria deletar todas as redes?"
    ]
  },
  {
    "categoryId": "values",
    "questions": [
      "O que você nunca faria por dinheiro?",
      "Qual valor é inegociável para você?",
      "O que você mais admira em alguém?",
      "O que mais te decepciona nas pessoas?",
      "O que significa respeito para você?",
      "O que é honestidade para você na prática?",
      "Qual causa ou tema você defenderia publicamente?",
      {
        "text": "Política é assunto para discutir no relacionamento?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Com respeito, sim"
        ]
      },
      "O que você faria se visse alguém sendo injustiçado?",
      "Qual comportamento você nunca toleraria?",
      {
        "text": "Mentirinhas para proteger sentimentos são aceitáveis?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que significa lealdade além do relacionamento amoroso?",
      "Qual princípio guiou a maior decisão da sua vida?",
      {
        "text": "Você mudaria de opinião por pressão social?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Raramente"
        ]
      },
      "O que te faz perder o respeito por alguém?",
      "Como você define integridade?",
      {
        "text": "Doar tempo ou dinheiro para causas é importante para você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Muito",
          "Um pouco",
          "Pouco"
        ]
      },
      "O que você ensinaria para uma criança sobre certo e errado?",
      "Qual valor do parceiro é mais importante para você?",
      "O que você faria se visse alguém sendo discriminado?",
      {
        "text": "Você defenderia um amigo mesmo tendo razão o outro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual valor você herdou dos seus pais?",
      {
        "text": "Você mudaria de emprego por ética?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz perder a admiração por alguém?",
      {
        "text": "Você doaria um rim para um desconhecido?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você define \"justiça\"?",
      {
        "text": "Você mentiria para proteger alguém?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual causa você apoiaria com tempo e dinheiro?",
      {
        "text": "Você boicotaria uma marca por valores?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir orgulho moral?",
      {
        "text": "Você denunciaria um crime mesmo com risco?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com dilemas éticos no trabalho?",
      {
        "text": "Você perdoaria uma traição de confiança?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual valor você ensinaria em uma escola?",
      {
        "text": "Você aceitaria suborno em situação extrema?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que agiu corretamente?",
      {
        "text": "Você defenderia um estranho injustiçado?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você define \"coragem moral\"?",
      {
        "text": "Você quebraria uma regra por compaixão?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual valor você nunca negociaria?",
      {
        "text": "Você contaria a verdade que machuca?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que alguém tem caráter?",
      {
        "text": "Você apoiaria um amigo em decisão errada?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com hipocrisia?",
      {
        "text": "Você doaria anonimamente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual valor te guia em relacionamentos?",
      {
        "text": "Você aceitaria emprego em empresa controversa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que fez a coisa certa?",
      {
        "text": "Você perdoaria quem te prejudicou financeiramente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você define \"empatia\" na prática?",
      {
        "text": "Você denunciaria um colega desonesto?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual valor você mais admira em líderes?",
      {
        "text": "Você mentiria em currículo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que alguém é íntegro?",
      {
        "text": "Você apoiaria protesto pacífico?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com valores conflitantes?",
      {
        "text": "Você aceitaria ganhar menos por ética?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual valor você quer deixar como legado?",
      {
        "text": "Você contaria segredo que prometeu guardar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que agiu por medo?",
      {
        "text": "Você defenderia animal maltratado?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você define \"honra\"?",
      {
        "text": "Você aceitaria vantagem injusta?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual valor te guia em decisões financeiras?",
      {
        "text": "Você perdoaria quem mentiu para você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que alguém é confiável?",
      {
        "text": "Você apoiaria amigo em divórcio polêmico?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você lida com valores da sociedade vs. seus?",
      {
        "text": "Você faria sacrifício grande por um valor?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      }
    ]
  },
  {
    "categoryId": "hypotheticals",
    "questions": [
      "Se você ganhasse R$ 10 milhões hoje, o que faria primeiro?",
      "Se pudesse morar em qualquer lugar do mundo, onde seria?",
      "Se tivesse apenas um ano de vida, o que mudaria?",
      "Se pudesse voltar no tempo, mudaria alguma decisão?",
      "Se você pudesse jantar com qualquer pessoa, viva ou morta, quem seria?",
      "Se ganhasse um ano sabático pago, o que faria?",
      "Se pudesse dominar uma habilidade da noite para o dia, qual seria?",
      "Se descobrisse um talento artístico, qual gostaria que fosse?",
      "Se você pudesse trocar de vida com alguém por um dia, quem seria?",
      "Se acordasse com um superpoder, qual escolheria?",
      "Se pudesse apagar uma memória, qual seria?",
      "Se ganhasse uma viagem all-inclusive para qualquer lugar, para onde iria?",
      "Se pudesse jantar com três pessoas da história, quem convidaria?",
      {
        "text": "Se descobrisse que tem um mês de vida, contaria para todos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Se pudesse dominar um idioma da noite para o dia, qual seria?",
      "Se ganhasse um ano sabático, o que faria primeiro?",
      "Se pudesse viver em qualquer época, qual escolheria?",
      {
        "text": "Se pudesse ler mentes por um dia, usaria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Se ganhasse um carro dos sonhos, qual seria?",
      "Se pudesse ter um animal de estimação exótico, qual escolheria?",
      "Se acordasse famoso(a) da noite para o dia, o que faria?",
      {
        "text": "Se pudesse voltar aos 18 anos, mudaria algo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Se ganhasse uma casa em qualquer lugar, onde seria?",
      "Se pudesse ter um talento artístico instantâneo, qual seria?",
      "Se descobrisse um portal para outro mundo, entraria?",
      {
        "text": "Se pudesse nunca mais trabalhar, o que faria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Se ganhasse um encontro com seu eu do futuro, o que perguntaria?",
      "Se pudesse eliminar um problema mundial, qual seria?",
      {
        "text": "Se pudesse reviver um dia da sua vida, qual seria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Se ganhasse ingressos VIP para qualquer evento, qual escolheria?",
      "Se pudesse ter uma conversa honesta com qualquer pessoa viva, quem seria?",
      "Se acordasse com R$ 1 milhão, qual seria a primeira compra?",
      {
        "text": "Se pudesse mudar uma decisão do passado, mudaria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Se ganhasse um curso completo de qualquer área, qual faria?",
      "Se pudesse ter um dia sem consequências, o que faria?",
      "Se descobrisse que pode viajar no tempo uma vez, iria ao passado ou futuro?",
      {
        "text": "Se pudesse ter um clone para fazer tarefas chatas, aceitaria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Se ganhasse um jantar com seu ídolo, o que pediria?",
      "Se pudesse viver em um filme ou série, qual seria?",
      "Se acordasse com a habilidade de falar com animais, o que perguntaria?",
      {
        "text": "Se pudesse apagar um erro da história, qual seria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Se ganhasse uma biblioteca pessoal infinita, por onde começaria?",
      "Se pudesse ter um dia de fama total, como usaria?",
      "Se descobrisse um tesouro escondido, o que faria?",
      {
        "text": "Se pudesse trocar de profissão instantaneamente, qual seria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Se ganhasse um ano em uma ilha deserta com suprimentos, aceitaria?",
      "Se pudesse ter uma conversa com seu eu de 80 anos, o que perguntaria?",
      "Se acordasse com a capacidade de voar, para onde iria primeiro?",
      {
        "text": "Se pudesse eliminar um medo, qual seria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Se ganhasse um passe livre em todos os parques do mundo, qual visitaria primeiro?",
      "Se pudesse ter um dia repetido infinitamente, o que faria?",
      "Se descobrisse que é personagem de um livro, o que mudaria?",
      {
        "text": "Se pudesse ter um desejo realizado sem consequências, qual seria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Se ganhasse um encontro com um cientista famoso, o que perguntaria?",
      "Se pudesse viver em qualquer clima permanentemente, qual escolheria?",
      "Se acordasse com a habilidade de curar uma doença, qual curaria?",
      {
        "text": "Se pudesse ter uma segunda chance em algo, o que seria?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Se ganhasse a oportunidade de colonizar Marte, iria?"
    ]
  },
  {
    "categoryId": "about_us",
    "questions": [
      "O que você acha que temos em comum?",
      "Em que você acha que somos diferentes?",
      "Qual foi a sua primeira impressão sobre mim?",
      "O que você mais admira em mim?",
      "O que você acredita que pode gerar conflitos entre nós?",
      "Você consegue imaginar um futuro ao meu lado?",
      "O que você espera de um relacionamento comigo?",
      "Existe algo que você gostaria de me perguntar e nunca perguntou?",
      "O que você mais gostou de descobrir sobre mim até agora?",
      "Tem algo sobre mim que ainda te intriga?",
      "Qual momento nosso você gostaria de repetir?",
      "O que você acha que eu deveria saber sobre você e ainda não sabe?",
      "Como você se sente quando estamos juntos em silêncio?",
      "O que você gostaria que fizéssemos mais juntos?",
      "Existe algo que você quer que eu mude — ou que eu não mude?",
      "O que você acha que eu não sei sobre você e deveria saber?",
      "Qual momento nosso você guarda com mais carinho?",
      "O que te faz sentir que somos uma boa dupla?",
      "Em que situação você se sente mais conectado(a) comigo?",
      "O que você gostaria que eu entendesse melhor sobre você?",
      "Qual hábito meu te faz sorrir?",
      "O que você admira em mim que raramente diz?",
      {
        "text": "Você se sente à vontade sendo vulnerável comigo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual memória nossa você contaria para um amigo?",
      "O que te faz sentir que estamos evoluindo juntos?",
      "Qual gesto meu te faz sentir amado(a)?",
      "O que você gostaria que fizéssemos mais vezes?",
      "Em que momento você se sentiu mais orgulhoso(a) de nós?",
      {
        "text": "Você se imagina envelhecendo ao meu lado?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que posso confiar em mim?",
      "Qual conversa nossa te marcou profundamente?",
      "O que você gostaria de experimentar comigo?",
      "Em que aspecto você acha que nos complementamos?",
      "O que te faz sentir que sou a pessoa certa para você?",
      {
        "text": "Você se sente ouvido(a) quando fala comigo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição você gostaria de criar só nossa?",
      "O que te faz sentir que superamos bem os desafios?",
      "Qual qualidade minha te inspira?",
      "O que você gostaria que eu soubesse sobre como te amo?",
      "Em que momento você soube que queria algo sério comigo?",
      {
        "text": "Você se sente respeitado(a) por mim?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual plano futuro nosso te empolga mais?",
      "O que te faz sentir que nossa conexão é especial?",
      "Qual elogio meu você mais gostou de receber?",
      "O que você faria diferente na nossa relação se pudesse voltar?"
    ]
  },
  {
    "categoryId": "us_general",
    "questions": [
      {
        "text": "Você se sente à vontade para falar abertamente com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi a sua primeira impressão sobre essa pessoa?",
      {
        "text": "Você acha que vocês se entendem bem mesmo sem se conhecer há muito tempo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês dois têm em comum que mais te surpreendeu?",
      {
        "text": "Você confiaria um segredo leve a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Em que aspecto vocês parecem mais diferentes?",
      {
        "text": "Vocês riem juntos com facilidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conversa com essa pessoa você mais gostou de ter?",
      {
        "text": "Você se sentiria confortável pedindo um favor a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz querer passar mais tempo com essa pessoa?",
      {
        "text": "Você acha que vocês se complementam?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Tem algum assunto que você evita com essa pessoa?",
      {
        "text": "Você sente que essa pessoa te escuta de verdade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você descreveria a dinâmica de vocês em uma palavra?",
      {
        "text": "Você se sentiria bem sendo apresentado(a) a amigos dessa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito ou mania dessa pessoa você já percebeu?",
      {
        "text": "Você acha que essa pessoa te entende sem precisar explicar tudo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que essa pessoa faz que te deixa curioso(a)?",
      {
        "text": "Você se sente respeitado(a) por essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual memória recente com essa pessoa você guardaria?",
      {
        "text": "Você toparia uma viagem curta só com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Existe algo que você gostaria de saber sobre essa pessoa e ainda não perguntou?",
      {
        "text": "Você se sentiria à vontade em silêncio com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa te faz sentir quando estão juntos?",
      {
        "text": "Você acha que vocês têm ritmos parecidos de vida?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual elogio você daria sincero a essa pessoa hoje?",
      {
        "text": "Você confiaria nessa pessoa para te acompanhar num compromisso importante?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês poderiam fazer juntos que ainda não fizeram?",
      {
        "text": "Você sente que essa pessoa te julga pouco?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Tem alguma expectativa que você criou sobre essa pessoa?",
      {
        "text": "Você acha que essa pessoa é sincera com você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como você reage quando discorda dessa pessoa?",
      {
        "text": "Você se sentiria confortável dividindo uma conta com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tema vocês deveriam explorar mais juntos?",
      {
        "text": "Você acha que essa pessoa te motiva a ser melhor?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te impede de se aproximar mais dessa pessoa?",
      {
        "text": "Você se sentiria bem pedindo conselho a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Descreva um momento em que vocês se divertiram juntos.",
      {
        "text": "Você acha que vocês se comunicam bem por mensagem?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual qualidade dessa pessoa você mais admira?",
      {
        "text": "Você se sentiria confortável em pedir desculpas a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês costumam iniciar uma conversa?",
      {
        "text": "Você acha que essa pessoa te trata com carinho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Existe algo que essa pessoa faz e você acha engraçado?",
      {
        "text": "Você se sentiria seguro(a) contando um erro seu a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você acha que essa pessoa pensa de você?",
      {
        "text": "Você acha que essa pessoa te aceita como você é?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual seria um plano ideal para vocês dois num sábado?",
      "Tem algo que você escondeu dessa pessoa até agora?",
      "Como essa pessoa reage quando você está mal?",
      "Qual conversa difícil vocês ainda não tiveram?",
      "O que te faz confiar mais nessa pessoa?",
      "Qual detalhe sobre essa pessoa te marcou?",
      "Se vocês fossem personagens de filme, qual seria o gênero da história de vocês?",
      "O que você gostaria que essa pessoa soubesse sobre você?",
      "Como vocês lidam com pausas ou intervalos longos sem se ver?",
      "Qual valor você acha que vocês compartilham?",
      "Tem algum limite que você precisa deixar claro para essa pessoa?",
      "O que vocês poderiam ensinar um ao outro?",
      "Qual foi a maior surpresa positiva que essa pessoa te deu?",
      "Como você imagina a relação de vocês daqui a um ano?",
      "Existe algo que te incomoda levemente nessa pessoa?",
      "Qual tradição ou ritual vocês poderiam criar juntos?",
      "O que te faz sentir conexão real com essa pessoa?",
      "Qual assunto vocês nunca cansam de discutir?",
      "Como essa pessoa te influencia no dia a dia?",
      "O que você faria diferente na próxima vez que estiverem juntos?",
      "Qual pergunta você faria a essa pessoa agora, sem filtro?",
      "Como vocês celebram pequenas conquistas um do outro?",
      "O que te faz querer conhecer melhor essa pessoa?",
      "Qual momento você gostaria de reviver com essa pessoa?",
      "Existe algo que vocês deveriam esclarecer entre si?",
      "Como você descreveria essa pessoa para um amigo?",
      "Qual plano simples vocês dois poderiam cumprir esta semana?",
      "O que te deixa curioso(a) sobre o passado dessa pessoa?",
      "Como vocês reagem quando um dos dois muda de humor?",
      "Qual seria o título de um livro sobre a história de vocês até aqui?",
      "O que você espera aprender com essa pessoa?",
      "Qual hábito seu essa pessoa provavelmente já notou?",
      "O que vocês dois fariam se ganhassem um dia livre juntos?"
    ]
  },
  {
    "categoryId": "us_friends",
    "questions": [
      {
        "text": "Você considera essa pessoa um(a) amigo(a) de verdade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi o momento em que vocês se tornaram amigos?",
      {
        "text": "Você confia nesse(a) amigo(a) com assuntos pessoais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você mais gosta de fazer com esse(a) amigo(a)?",
      {
        "text": "Você se sentiria à vontade para ligar de madrugada em emergência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual memória com esse(a) amigo(a) você nunca esquece?",
      {
        "text": "Vocês conseguem falar sobre qualquer assunto?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês se apoiaram em momentos difíceis?",
      {
        "text": "Você sente que essa amizade é recíproca?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz rir quando estão juntos?",
      {
        "text": "Você já sentiu ciúmes dessa amizade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito desse(a) amigo(a) te irrita um pouco?",
      {
        "text": "Você contaria um segredo importante a esse(a) amigo(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês se conheceram?",
      {
        "text": "Você se sentiria bem em morar perto desse(a) amigo(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conselho esse(a) amigo(a) já te deu que ficou?",
      {
        "text": "Você acha que vocês se veem com frequência suficiente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você admira nesse(a) amigo(a)?",
      {
        "text": "Você se sentiria confortável emprestando dinheiro a esse(a) amigo(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Tem alguma brincadeira interna que só vocês entendem?",
      {
        "text": "Você acha que essa amizade sobreviveria a uma mudança de cidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com desentendimentos?",
      {
        "text": "Você se sentiria bem apresentando esse(a) amigo(a) à sua família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual plano de amigos vocês ainda não realizaram?",
      {
        "text": "Você sente que pode ser vulnerável com esse(a) amigo(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que esse(a) amigo(a) sabe sobre você que poucos sabem?",
      {
        "text": "Você acha que vocês têm gostos parecidos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa amizade mudou ao longo do tempo?",
      {
        "text": "Você se sentiria bem em trabalhar com esse(a) amigo(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual presente você daria a esse(a) amigo(a) sem motivo?",
      {
        "text": "Você acha que esse(a) amigo(a) te conhece bem?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Existe algo que você gostaria de pedir desculpas nessa amizade?",
      {
        "text": "Você se sentiria confortável pedindo um favor grande?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês comemoram aniversários um do outro?",
      {
        "text": "Você acha que vocês se apoiam nas decisões importantes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual viagem vocês sonham em fazer juntos?",
      {
        "text": "Você se sentiria bem em passar um fim de semana inteiro juntos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir orgulho dessa amizade?",
      {
        "text": "Você acha que essa amizade te faz bem?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual música lembra vocês dois?",
      {
        "text": "Você se sentiria confortável em contar um fracasso a esse(a) amigo(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como esse(a) amigo(a) te ajuda a crescer?",
      {
        "text": "Você acha que vocês envelheceriam bem como amigos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Tem algum assunto proibido entre vocês?",
      {
        "text": "Você se sentiria bem em pedir desculpas por algo nessa amizade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi a maior loucura que vocês fizeram juntos?",
      {
        "text": "Você acha que essa amizade é uma das mais importantes da sua vida?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você faria se esse(a) amigo(a) precisasse de ajuda urgente?",
      "Como vocês mantêm contato quando estão longe?",
      "Qual qualidade dessa amizade você mais valoriza?",
      "Existe algo que você esconde desse(a) amigo(a)?",
      "Como vocês reagem quando um está ocupado demais?",
      "Qual tradição de amizade vocês têm ou gostariam de ter?",
      "O que te faz querer manter essa amizade por muito tempo?",
      "Como vocês lidam com diferenças de opinião?",
      "Qual elogio você nunca disse a esse(a) amigo(a)?",
      "O que vocês poderiam fazer juntos que nunca fizeram?",
      "Como essa amizade te impacta emocionalmente?",
      "Qual momento você gostaria de reviver com esse(a) amigo(a)?",
      "Tem algo que te incomoda nessa amizade e você não falou?",
      "Como vocês se despedem depois de se encontrar?",
      "Qual hobby vocês poderiam começar juntos?",
      "O que esse(a) amigo(a) faz que te surpreende?",
      "Como vocês lidam com amigos em comum?",
      "Qual conversa profunda vocês ainda não tiveram?",
      "O que te faz sentir que essa pessoa é sua pessoa?",
      "Como vocês reagem quando um conhece alguém novo?",
      "Qual detalhe pequeno sobre esse(a) amigo(a) você adora?",
      "O que vocês deveriam fazer mais juntos?",
      "Como essa amizade te ajuda no dia a dia?",
      "Qual seria o apelido perfeito para vocês como dupla?",
      "Existe algo que você gostaria de agradecer a esse(a) amigo(a)?",
      "Como vocês lidam com períodos de distância?",
      "Qual meta vocês poderiam alcançar juntos?",
      "O que te faz querer defender esse(a) amigo(a)?",
      "Como vocês celebram conquistas um do outro?",
      "Qual seria um filme sobre a amizade de vocês?",
      "O que você espera dessa amizade daqui a cinco anos?",
      "Qual situação testou a amizade de vocês e vocês passaram?",
      "O que esse(a) amigo(a) te ensinou sobre você mesmo(a)?"
    ]
  },
  {
    "categoryId": "us_coworkers",
    "questions": [
      {
        "text": "Você se sente confortável trabalhando com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês se complementam no trabalho?",
      {
        "text": "Você confia no julgamento profissional dessa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual projeto vocês fizeram juntos que deu certo?",
      {
        "text": "Você se sentiria à vontade para pedir ajuda a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você admira no jeito que essa pessoa trabalha?",
      {
        "text": "Você acha que essa pessoa cumpre o que promete?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês se comunicam no dia a dia?",
      {
        "text": "Você se sentiria confortável em discordar dela numa reunião?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito de trabalho dessa pessoa te irrita?",
      {
        "text": "Você acha que vocês têm estilos de trabalho compatíveis?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com prazos apertados juntos?",
      {
        "text": "Você se sentiria bem sendo liderado(a) por essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz confiar nessa pessoa no ambiente de trabalho?",
      {
        "text": "Você acha que essa pessoa respeita seu tempo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual feedback você gostaria de dar a essa pessoa?",
      {
        "text": "Você se sentiria confortável em compartilhar ideias novas com ela?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa reage quando recebe críticas?",
      {
        "text": "Você acha que essa pessoa é organizada?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual memória de trabalho com essa pessoa você guarda?",
      {
        "text": "Você se sentiria bem em fazer home office junto dessa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês poderiam melhorar na colaboração?",
      {
        "text": "Você acha que essa pessoa é confiável com informações sensíveis?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês dividem responsabilidades?",
      {
        "text": "Você se sentiria confortável pedindo um favor fora do expediente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual qualidade profissional dessa pessoa você mais valoriza?",
      {
        "text": "Você acha que essa pessoa te trata com respeito?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Tem algum assunto que você evita com essa pessoa no trabalho?",
      {
        "text": "Você se sentiria bem em apresentar essa pessoa a um cliente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com erros um do outro?",
      {
        "text": "Você acha que essa pessoa é proativa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual elogio profissional você daria a essa pessoa?",
      {
        "text": "Você se sentiria confortável em dividir crédito por um projeto?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te impede de colaborar mais com essa pessoa?",
      {
        "text": "Você acha que essa pessoa comunica bem?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa te ajuda a ser mais produtivo(a)?",
      {
        "text": "Você se sentiria bem em fazer um curso junto dessa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conversa de trabalho vocês deveriam ter?",
      {
        "text": "Você acha que essa pessoa te apoia nas decisões?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês reagem sob pressão juntos?",
      {
        "text": "Você se sentiria confortável em pedir desculpas por um erro profissional?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você aprendeu com essa pessoa profissionalmente?",
      {
        "text": "Você acha que essa pessoa é pontual?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual objetivo profissional vocês gostariam de bater juntos?",
      {
        "text": "Você se sentiria bem em ser parceiro(a) de negócios dessa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com diferenças de opinião no trabalho?",
      {
        "text": "Você acha que vocês formam uma boa dupla de trabalho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Existe algo que te incomoda na dinâmica de vocês?",
      "Qual momento de trabalho vocês riram juntos?",
      "Como essa pessoa lida com conflitos no time?",
      "O que vocês deveriam alinhar melhor?",
      "Qual habilidade dessa pessoa você gostaria de ter?",
      "Como vocês dão feedback um ao outro?",
      "Qual plano vocês poderiam fazer para melhorar o time?",
      "O que te faz querer trabalhar mais com essa pessoa?",
      "Como vocês lidam com reuniões longas juntos?",
      "Qual desafio profissional vocês enfrentaram juntos?",
      "Como essa pessoa reage quando você está sobrecarregado(a)?",
      "O que você gostaria que essa pessoa soubesse sobre seu estilo de trabalho?",
      "Qual rotina de trabalho vocês compartilham?",
      "Como vocês celebram entregas concluídas?",
      "Existe algo que você escondeu dessa pessoa no trabalho?",
      "Qual conversa difícil vocês precisam ter no trabalho?",
      "Como vocês lidam com mudanças na empresa juntos?",
      "O que te faz respeitar essa pessoa no ambiente de trabalho?",
      "Qual ferramenta ou método vocês usam bem juntos?",
      "Como vocês mantêm o clima leve no trabalho?",
      "Qual projeto futuro vocês gostariam de fazer juntos?",
      "O que vocês deveriam parar de fazer na colaboração?",
      "Como essa pessoa te influencia profissionalmente?",
      "Qual elogio você nunca disse a essa pessoa no trabalho?",
      "Como vocês lidam com metas conflitantes?",
      "O que te faz querer manter boa relação com essa pessoa?",
      "Qual ritual de trabalho vocês têm ou poderiam ter?",
      "Como vocês reagem quando um recebe reconhecimento?",
      "Qual habilidade vocês poderiam ensinar um ao outro?",
      "O que você espera da relação profissional de vocês daqui a um ano?",
      "Como vocês lidam com estresse no ambiente de trabalho?",
      "Qual momento profissional vocês gostariam de reviver?",
      "Existe algo que vocês deveriam esclarecer sobre papéis e responsabilidades?"
    ]
  },
  {
    "categoryId": "us_roommates",
    "questions": [
      {
        "text": "Você se sente confortável dividindo o espaço com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi a maior surpresa ao morar com essa pessoa?",
      {
        "text": "Vocês conseguem conversar sobre contas e finanças da casa sem brigar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês decidiram dividir os cômodos da casa?",
      {
        "text": "Você confia nessa pessoa para cuidar do apartamento quando você viaja?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito doméstico dessa pessoa mais te incomoda?",
      {
        "text": "Você acha que essa pessoa respeita suas coisas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês cozinham bem juntos?",
      {
        "text": "Você se sentiria à vontade pedindo para ela baixar o volume?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam quando um esquece de pagar uma conta?",
      {
        "text": "Vocês dividem tarefas domésticas de forma justa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual regra da casa vocês deveriam criar?",
      {
        "text": "Você se sentiria confortável emprestando utensílios a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa reage quando você precisa de silêncio?",
      {
        "text": "Você acha que essa pessoa é organizada na cozinha?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi o melhor dia de convivência que vocês tiveram em casa?",
      {
        "text": "Você se sentiria bem recebendo visitas com essa pessoa em casa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir que morar juntos funciona?",
      {
        "text": "Você confiaria nela para receber encomendas importantes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês resolvem conflitos sobre limpeza?",
      {
        "text": "Você acha que vocês têm horários de sono compatíveis?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual objeto emprestado entre vocês virou piada interna?",
      {
        "text": "Você se sentiria confortável discutindo regras da casa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês organizam compras do mercado?",
      {
        "text": "Você acha que essa pessoa limpa depois de si?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual série ou filme vocês assistem juntos no sofá?",
      {
        "text": "Você se sentiria bem dividindo a geladeira sem rotular tudo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você admira na forma como essa pessoa cuida da casa?",
      {
        "text": "Você acha que essa pessoa avisa quando vai trazer alguém?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com visitas inesperadas?",
      {
        "text": "Você se sentiria confortável pedindo para usar o banheiro primeiro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual barulho da casa mais te irrita?",
      {
        "text": "Você confiaria nessa pessoa com a chave de casa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa reage quando você está estressado(a) em casa?",
      {
        "text": "Você acha que vocês têm estilos de convivência parecidos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição de moradia vocês criaram sem perceber?",
      {
        "text": "Você se sentiria bem morando com essa pessoa por mais um ano?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês deveriam combinar melhor sobre banheiro?",
      {
        "text": "Você acha que essa pessoa respeita seu espaço pessoal?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês dividem a conta de internet ou streaming?",
      {
        "text": "Você se sentiria confortável em pedir desculpas por barulho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual memória engraçada de moradia com essa pessoa você guarda?",
      {
        "text": "Você acha que essa pessoa contribui para um clima agradável em casa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te impede de falar certas coisas sobre a convivência?",
      {
        "text": "Você se sentiria bem fazendo uma reunião de moradores com ela?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês reagem quando a louça acumula na pia?",
      {
        "text": "Você acha que vocês conseguiriam morar juntos de novo se precisassem?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual elogio você faria sobre como essa pessoa mantém a casa?",
      "Como vocês lidam com diferenças de temperatura ou ar-condicionado?",
      "Qual planta, pet ou decoração vocês discutiram?",
      "Como essa pessoa te ajuda nos dias mais corridos?",
      "O que vocês fariam diferente se mudassem juntos de novo?",
      "Qual conversa difícil sobre moradia vocês ainda não tiveram?",
      "Como vocês celebram quando a casa está arrumada?",
      "Qual canto da casa é mais seu e qual é mais dela?",
      "Como vocês lidam com cheiros fortes na cozinha?",
      "O que te faz confiar nessa pessoa dentro de casa?",
      "Como vocês se despedem quando um viaja?",
      "Qual meta doméstica vocês poderiam cumprir juntos este mês?",
      "Como essa pessoa reage quando você traz alguém para jantar?",
      "Qual hábito seu provavelmente incomoda essa pessoa?",
      "Como vocês lidam com pacotes e encomendas?",
      "O que vocês deveriam parar de tolerar na convivência?",
      "Qual seria o título de um reality show sobre vocês na casa?",
      "Como vocês mantêm a privacidade morando juntos?",
      "Qual reforma ou mudança vocês gostariam de fazer juntos?",
      "Como essa pessoa te acolhe quando você chega cansado(a)?",
      "O que te faz querer continuar morando com essa pessoa?",
      "Como vocês lidam com barulho de vizinhos juntos?",
      "Qual detalhe da rotina doméstica de vocês mais te agrada?",
      "Como vocês reagem quando a energia ou água acaba?",
      "Qual comida virou especialidade da casa de vocês?",
      "O que você aprendeu sobre convivência com essa pessoa?",
      "Como vocês lidam com recados e avisos na porta?",
      "Qual momento de silêncio confortável vocês tiveram juntos?",
      "Como essa pessoa contribui para a segurança da casa?",
      "O que vocês deveriam agradecer um ao outro pela convivência?",
      "Como vocês imaginam a casa daqui a seis meses?",
      "Qual item da casa vocês mais disputam?",
      "Como vocês lidam quando um quer socializar e o outro quer descanso?"
    ]
  },
  {
    "categoryId": "us_siblings",
    "questions": [
      {
        "text": "Você sente que essa pessoa te conhece melhor do que quase ninguém?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual memória de infância com esse(a) irmão(ã) você mais gosta?",
      {
        "text": "Vocês conseguem falar sobre assuntos da família sem brigar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês brigavam quando eram crianças?",
      {
        "text": "Você confia nesse(a) irmão(ã) com segredos de infância?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como os pais influenciaram a dinâmica entre vocês?",
      {
        "text": "Você acha que a rivalidade entre vocês diminuiu com o tempo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição de irmãos vocês mantêm?",
      {
        "text": "Você se sentiria confortável pedindo ajuda financeira a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você admira nesse(a) irmão(ã) hoje?",
      {
        "text": "Vocês riem juntos de memórias antigas da família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com comparações feitas pela família?",
      {
        "text": "Você acha que essa pessoa te defende fora de casa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual presente de infância marcou a relação de vocês?",
      {
        "text": "Você se sentiria bem morando na mesma cidade que esse(a) irmão(ã)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que esse(a) irmão(ã) faz que ainda te irrita?",
      {
        "text": "Você acha que vocês se parecem mais do que admitem?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês se apoiam em momentos difíceis da família?",
      {
        "text": "Você se sentiria confortável em pedir desculpas por algo antigo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conversa sobre o passado vocês ainda não tiveram?",
      {
        "text": "Você confiaria nessa pessoa para cuidar de algo importante seu?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa te ajudou a crescer?",
      {
        "text": "Você acha que essa pessoa te entende sem precisar explicar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual apelido ou apelido antigo ainda aparece entre vocês?",
      {
        "text": "Você se sentiria bem levando essa pessoa para um evento social?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir orgulho desse(a) irmão(ã)?",
      {
        "text": "Você acha que vocês superaram as brigas de criança?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com festas e reuniões familiares juntos?",
      {
        "text": "Você se sentiria confortável discutindo herança ou bens da família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual diferença entre vocês mais aparece hoje?",
      {
        "text": "Você acha que essa pessoa te admira em algum aspecto?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você gostaria que esse(a) irmão(ã) soubesse sobre você?",
      {
        "text": "Você se sentiria bem em trabalhar no mesmo lugar que esse(a) irmão(ã)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês reagem quando os pais pedem favores diferentes?",
      {
        "text": "Você acha que vocês têm valores parecidos hoje?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual momento adulto aproximou vocês de novo?",
      {
        "text": "Você se sentiria confortável em contar um problema sério a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Que experiência de irmãos vocês ainda nunca viveram juntos?",
      {
        "text": "Você acha que essa pessoa ainda te provoca de propósito?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como seu irmão(ã) costuma te acolher nos dias ruins?",
      {
        "text": "Você se sentiria bem fazendo uma viagem em família só com ela?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conselho de infância desse(a) irmão(ã) ficou com você?",
      {
        "text": "Você acha que essa pessoa te apoia nas decisões de vida?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que ainda te distancia dessa pessoa como irmão(ã)?",
      {
        "text": "Você se sentiria confortável em pedir conselho sobre relacionamentos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com ciúmes entre irmãos?",
      {
        "text": "Você acha que a relação de vocês melhorou na vida adulta?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual elogio sincero você daria a esse(a) irmão(ã)?",
      "Como vocês mantêm contato no dia a dia?",
      "Qual plano de irmãos vocês sonham em realizar?",
      "O que essa pessoa sabe sobre você que ninguém mais sabe?",
      "Como vocês lidam com diferenças de opinião política ou de valores?",
      "Qual memória engraçada da casa antiga vocês repetem?",
      "Como essa pessoa te influencia nas escolhas atuais?",
      "O que vocês deveriam esclarecer sobre o passado?",
      "Como vocês comemoram quando um irmão(ã) dá certo?",
      "Qual hábito herdado da família vocês compartilham?",
      "O que te faz querer manter laço com esse(a) irmão(ã)?",
      "Como vocês reagem quando um se distancia da família?",
      "Qual detalhe pequeno sobre essa pessoa você valoriza?",
      "Como vocês lidam com cuidados aos pais ou avós?",
      "Qual viagem de irmãos vocês gostariam de fazer?",
      "O que te surpreendeu sobre essa pessoa na vida adulta?",
      "Como vocês se reconciliam depois de desentendimentos?",
      "Qual seria um filme sobre a infância de vocês?",
      "O que você espera da relação de irmãos daqui a dez anos?",
      "Como essa pessoa te protege ou te apoiou no passado?",
      "Qual assunto da família é mais delicado entre vocês?",
      "Como vocês lidam com presentes e datas comemorativas?",
      "O que cada um fez pela família e merece reconhecimento?",
      "Como essa pessoa te inspira?",
      "Qual momento você gostaria de reviver com esse(a) irmão(ã)?",
      "Como vocês reagem quando alguém critica a família de vocês?",
      "O que te faz sentir que vocês são time, apesar das diferenças?",
      "Como vocês lidam com mudanças de cidade ou país?",
      "Qual talento desse(a) irmão(ã) você inveja de forma saudável?",
      "Como essa pessoa te ajuda a entender os pais?",
      "O que vocês poderiam ensinar um ao outro hoje?",
      "Qual promessa de infância entre vocês ainda vale?",
      "Como vocês imaginam envelhecer como irmãos?"
    ]
  },
  {
    "categoryId": "us_parent_child",
    "questions": [
      {
        "text": "Você consegue ser honesto(a) com essa pessoa sem medo de decepcionar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual memória com essa pessoa você mais valoriza?",
      {
        "text": "Você acha que essa pessoa te escuta de verdade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você gostaria que essa pessoa entendesse melhor sobre você?",
      {
        "text": "Você confia nessa pessoa para conversas difíceis?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com diferenças de geração?",
      {
        "text": "Você sente que essa pessoa respeita suas escolhas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conselho dessa pessoa ficou marcado?",
      {
        "text": "Você se sentiria confortável pedindo conselho a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir gratidão por essa pessoa?",
      {
        "text": "Você acha que vocês conseguem discordar sem brigar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa reage quando você está passando por dificuldades?",
      {
        "text": "Você se sentiria bem contando um erro importante a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual assunto delicado da família vocês ainda evitam?",
      {
        "text": "Você acha que essa pessoa te apoia nas suas metas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você admira nessa pessoa?",
      {
        "text": "Você se sentiria confortável pedindo ajuda financeira?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês celebram datas importantes juntos?",
      {
        "text": "Você acha que essa pessoa entende sua geração?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito dessa pessoa te lembra sua infância?",
      {
        "text": "Você se sentiria bem morando perto dessa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te impede de falar certas coisas com essa pessoa?",
      {
        "text": "Você acha que essa pessoa ainda tenta te proteger demais?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com expectativas familiares?",
      {
        "text": "Você se sentiria confortável discutindo limites?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição de família vocês mantêm?",
      {
        "text": "Você acha que essa pessoa se orgulha de você?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que essa pessoa fez por você que nunca esqueceu?",
      {
        "text": "Você se sentiria bem apresentando amigos ou parceiro(a) a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês reagem quando discordam de valores importantes?",
      {
        "text": "Você acha que vocês falam com frequência suficiente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual elogio sincero você daria a essa pessoa?",
      {
        "text": "Você conseguiria se desculpar por algo do passado familiar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa te influencia nas decisões atuais?",
      {
        "text": "Você acha que essa pessoa aceita quando você muda de opinião?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Que atividade pai/mãe e filho(a) vocês nunca fizeram juntos?",
      {
        "text": "Você se sentiria bem fazendo uma viagem só com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Com qual frequência vocês se falam ou se veem hoje?",
      {
        "text": "Você acha que essa pessoa te trata como adulto(a)?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual momento recente te aproximou dessa pessoa?",
      {
        "text": "Você se sentiria confortável falando sobre saúde mental?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te incomoda levemente nessa relação?",
      {
        "text": "Você acha que essa pessoa respeita sua privacidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa reage quando você conquista algo?",
      {
        "text": "Você se sentiria bem pedindo opinião sobre uma decisão grande?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual assunto é proibido ou delicado entre vocês?",
      {
        "text": "Você acha que a relação de vocês evoluiu nos últimos anos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você gostaria de agradecer a essa pessoa?",
      "Como vocês lidam com críticas mútuas?",
      "Qual plano futuro vocês gostariam de realizar juntos?",
      "O que essa pessoa te ensinou sobre a vida?",
      "Como vocês reagem em reuniões familiares?",
      "Qual detalhe pequeno dessa pessoa você aprecia?",
      "O que te faz querer manter essa relação próxima?",
      "Como essa pessoa lida com suas independências?",
      "Qual memória engraçada de família vocês repetem?",
      "Qual mal-entendido antigo da família ainda pesa entre vocês?",
      "Como vocês lidam com distância geográfica?",
      "Qual meta vocês poderiam apoiar um ao outro?",
      "O que mudou nessa pessoa desde que você era criança?",
      "Como vocês voltam a se falar depois de uma briga familiar?",
      "Qual seria um filme sobre a história de vocês?",
      "O que você espera dessa relação daqui a cinco anos?",
      "Como essa pessoa te ajudou a se tornar quem você é?",
      "Qual conversa sobre futuro vocês deveriam ter?",
      "Como vocês lidam com comparações com outros parentes?",
      "O que te faz confiar nessa pessoa?",
      "Como essa pessoa reage quando você precisa de espaço?",
      "Qual presente ou gesto dessa pessoa te marcou?",
      "Como vocês poderiam se ver ou se falar mais?",
      "Como vocês lidam com tecnologia e comunicação?",
      "Qual valor vocês compartilham fortemente?",
      "O que te faz sentir orgulho dessa pessoa?",
      "Como essa pessoa celebra suas vitórias?",
      "Qual promessa ou acordo entre vocês ainda vale?",
      "O que você faria diferente na próxima conversa com essa pessoa?",
      "Como vocês lidam com saudades?",
      "Qual aprendizado recente vocês tiveram um com o outro?",
      "O que te faz querer ouvir mais essa pessoa?",
      "Como vocês imaginam essa relação quando envelhecerem?"
    ]
  },
  {
    "categoryId": "us_neighbors",
    "questions": [
      {
        "text": "Você se sente confortável cumprimentar essa pessoa no corredor?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi a primeira vez que vocês se falaram?",
      {
        "text": "Você confiaria nessa pessoa para guardar uma chave extra?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você sabe sobre a rotina dessa pessoa no prédio?",
      {
        "text": "Você acha que essa pessoa respeita o silêncio do prédio?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com barulho ou obras por perto?",
      {
        "text": "Você se sentiria à vontade pedindo um favor pequeno?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual memória de convivência no condomínio você guarda?",
      {
        "text": "Você acha que essa pessoa é considerada com os espaços comuns?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz querer ser um bom vizinho para essa pessoa?",
      {
        "text": "Você se sentiria confortável convidando essa pessoa para um café?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa reage quando vocês se encontram?",
      {
        "text": "Você confiaria nela para avisar se algo estranho acontecer?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual favor pequeno vocês já fizeram um ao outro?",
      {
        "text": "Você acha que vocês têm horários de convivência compatíveis?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te incomoda levemente na convivência de vizinhança?",
      {
        "text": "Você se sentiria bem emprestando um item doméstico a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com elevador, garagem ou portaria juntos?",
      {
        "text": "Você acha que essa pessoa cumpre as regras do condomínio?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conversa de corredor você mais gostou de ter?",
      {
        "text": "Você se sentiria confortável discutindo barulho com ela?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês poderiam fazer juntos no condomínio?",
      {
        "text": "Você acha que essa pessoa é amigável de verdade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa contribui para a segurança do prédio?",
      {
        "text": "Você se sentiria bem pedindo ajuda numa emergência leve?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição ou evento do prédio vocês participaram juntos?",
      {
        "text": "Você acha que vocês poderiam ser amigos fora do prédio?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te impede de criar mais proximidade no prédio?",
      {
        "text": "Você se sentiria confortável compartilhando dados de contato?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês reagem em assembleias ou reuniões de condomínio?",
      {
        "text": "Você acha que essa pessoa respeita suas entregas e encomendas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual elogio você faria sincero a essa pessoa como vizinha?",
      {
        "text": "Você se sentiria bem participando de um churrasco no condomínio com ela?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa lida com animais ou crianças no prédio?",
      {
        "text": "Você acha que essa pessoa contribui para um bom clima no prédio?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês deveriam combinar melhor como vizinhos?",
      {
        "text": "Você se sentiria confortável em pedir desculpas por algum incômodo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual detalhe sobre essa pessoa te surpreendeu positivamente?",
      {
        "text": "Você confiaria nessa pessoa para cuidar de uma planta ou pet por um dia?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com cheiros, fumaça ou ventilação?",
      {
        "text": "Você acha que vocês se comunicam bem quando preciso?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual plano simples vocês poderiam fazer no bairro juntos?",
      {
        "text": "Você se sentiria bem trocando receitas ou dicas com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz confiar nessa pessoa no dia a dia do prédio?",
      {
        "text": "Você sente consideração nas interações com essa pessoa no prédio?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa respeita sua privacidade no prédio?",
      {
        "text": "Você se sentiria confortável pedindo recomendação de serviço a ela?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual assunto de vizinhança vocês evitam?",
      "Como vocês mantêm contato quando um está viajando?",
      "Que gesto de boa vizinhança vocês deveriam reconhecer?",
      "Como essa pessoa te ajudou sem você pedir?",
      "Qual memória engraçada de elevador ou portaria vocês têm?",
      "O que te faz sentir bem morando perto dessa pessoa?",
      "Como vocês lidam com diferenças de estilo de vida?",
      "Qual conversa difícil de vizinhança vocês ainda não tiveram?",
      "Como essa pessoa reage a festas ou visitas na sua casa?",
      "O que vocês poderiam ensinar um ao outro sobre o bairro?",
      "Qual hábito de convivência dessa pessoa você admira?",
      "Como vocês imaginam a vizinhança daqui a um ano?",
      "O que te surpreendeu ao conhecer melhor essa pessoa?",
      "Como vocês lidam com pacotes ou entregas erradas?",
      "Qual gesto de boa vizinhança você gostaria de receber?",
      "Como essa pessoa influencia seu humor no prédio?",
      "O que vocês deveriam parar de tolerar silenciosamente?",
      "Qual seria um filme sobre vocês no condomínio?",
      "Como vocês reagem quando há problemas na administração?",
      "Por que vale a pena cultivar essa vizinhança?",
      "Como essa pessoa lida com regras de lixo e reciclagem?",
      "Qual momento de solidariedade entre vocês te marcou?",
      "Como vocês celebram pequenas conquistas no bairro?",
      "O que você quer que seu vizinho entenda sobre sua rotina?",
      "Como vocês lidam com estacionamento ou vagas?",
      "Qual hobby ou interesse dessa pessoa te deixou curioso(a)?",
      "O que vocês fariam se movessem do prédio amanhã?",
      "Como essa pessoa reage quando você está estressado(a)?",
      "Qual meta de convivência vocês poderiam cumprir este mês?",
      "O que te faz sentir que vocês formam uma boa dupla de vizinhos?",
      "Como vocês lidam com crianças brincando perto das casas?",
      "Qual detalhe do prédio vocês dois valorizam?",
      "O que morar perto dessa pessoa te ensinou?"
    ]
  },
  {
    "categoryId": "us_classmates",
    "questions": [
      {
        "text": "Você se sente confortável estudando com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês se conheceram na escola ou faculdade?",
      {
        "text": "Você confia nessa pessoa para trabalhos em grupo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual matéria vocês mais gostam de estudar juntos?",
      {
        "text": "Você acha que essa pessoa leva os estudos a sério?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você admira no jeito que essa pessoa estuda?",
      {
        "text": "Você se sentiria à vontade pedindo explicação de matéria a ela?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual trabalho em grupo de vocês deu mais certo?",
      {
        "text": "Você acha que vocês se complementam academicamente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês se organizam quando a prova ou entrega está chegando?",
      {
        "text": "Você se sentiria confortável emprestando material escolar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito de estudo dessa pessoa te irrita um pouco?",
      {
        "text": "Você acha que essa pessoa cumpre prazos de trabalho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz confiar nessa pessoa academicamente?",
      {
        "text": "Você se sentiria bem fazendo prova ou trabalho final juntos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual memória de sala de aula com essa pessoa você guarda?",
      {
        "text": "Você acha que essa pessoa te ajuda a aprender?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês se comunicam fora da aula?",
      {
        "text": "Você se sentiria confortável discordando dela em sala?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual professor ou matéria une vocês?",
      {
        "text": "Você confiaria nessa pessoa para revisar seu trabalho?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês poderiam melhorar em trabalhos juntos?",
      {
        "text": "Você acha que vocês têm ritmos de estudo parecidos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa reage quando você não entende algo?",
      {
        "text": "Você se sentiria bem formando dupla fixa com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual elogio acadêmico você daria a essa pessoa?",
      {
        "text": "Você acha que essa pessoa é organizada com anotações?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com notas diferentes?",
      {
        "text": "Você se sentiria confortável pedindo anotações perdidas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual plano de estudos vocês sonham em fazer juntos?",
      {
        "text": "Você acha que essa pessoa participa bem em aula?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te impede de estudar mais com essa pessoa?",
      {
        "text": "Você se sentiria bem estudando para vestibular ou concurso juntos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês reagem sob pressão de prova?",
      {
        "text": "Você acha que essa pessoa respeita seu tempo de estudo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conversa sobre futuro vocês ainda não tiveram?",
      {
        "text": "Você se sentiria confortável contando dificuldades acadêmicas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa te ajuda em matérias difíceis?",
      {
        "text": "Você acha que vocês riem juntos na sala de aula?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês deveriam alinhar melhor em grupo?",
      {
        "text": "Você se sentiria bem apresentando essa pessoa a outros colegas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual momento engraçado de aula vocês viveram juntos?",
      {
        "text": "Você acha que essa pessoa te motiva nos estudos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês celebram quando passam em algo difícil?",
      {
        "text": "Você se sentiria confortável pedindo desculpas por atraso em grupo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual biblioteca, cantina ou corredor é de vocês?",
      {
        "text": "Você acha que vocês manteriam contato depois da formatura?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te surpreendeu sobre essa pessoa nos estudos?",
      "Como vocês lidam com falta ou atraso um do outro?",
      "Qual tradição de classe vocês compartilham?",
      "O que essa pessoa sabe sobre você que colegas não sabem?",
      "Como vocês mantêm foco quando estudam juntos?",
      "Qual meta acadêmica vocês poderiam alcançar juntos?",
      "O que vocês deveriam agradecer um ao outro nos estudos?",
      "Como essa pessoa reage quando você está desanimado(a)?",
      "Qual matéria vocês deveriam explorar juntos?",
      "Como vocês lidam com competição entre colegas?",
      "Qual detalhe pequeno sobre essa pessoa você admira?",
      "O que te faz querer manter amizade além da escola?",
      "Como vocês reagem quando um tira nota alta e o outro não?",
      "Qual evento escolar vocês gostariam de reviver?",
      "Como essa pessoa te influencia academicamente?",
      "O que vocês fariam diferente no próximo trabalho em grupo?",
      "Qual seria um filme sobre vocês na escola?",
      "Como vocês lidam com distrações enquanto estudam?",
      "O que te faz sentir que vocês são bons parceiros de estudo?",
      "Como essa pessoa lida com feedback de professores?",
      "Qual hobby ou interesse fora da escola vocês compartilham?",
      "O que vocês deveriam esclarecer sobre expectativas de grupo?",
      "Como vocês imaginam a vida daqui a um ano, fora da sala?",
      "Qual conselho de estudo essa pessoa te deu?",
      "Como vocês se apoiam em semanas de prova?",
      "O que te incomoda levemente na dinâmica de vocês?",
      "Como essa pessoa celebra suas conquistas?",
      "Qual plano pós-formatura vocês sonham juntos?",
      "O que você aprendeu com essa pessoa além da matéria?",
      "Como vocês lidam com grupos grandes de classe?",
      "O que você queria perguntar a essa pessoa depois da aula?",
      "Como vocês reagem quando a aula cancela?",
      "O que te faz confiar nessa pessoa fora do ambiente escolar?"
    ]
  },
  {
    "categoryId": "us_teammates",
    "questions": [
      {
        "text": "Você confia nessa pessoa dentro do time?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês se conheceram no time ou projeto?",
      {
        "text": "Você se sente confortável competindo ou jogando ao lado dela?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual vitória ou entrega de vocês mais te orgulha?",
      {
        "text": "Você acha que essa pessoa cumpre o que combina com o grupo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você admira no desempenho dessa pessoa?",
      {
        "text": "Você se sentiria à vontade pedindo ajuda durante uma partida ou entrega?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês se comunicam durante treino ou trabalho?",
      {
        "text": "Você acha que vocês se complementam no time?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito dessa pessoa no time te irrita um pouco?",
      {
        "text": "Você se sentiria confortável dando feedback direto a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com pressão antes de competir ou apresentar?",
      {
        "text": "Você acha que essa pessoa mantém o espírito do time?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual memória de time com essa pessoa você nunca esquece?",
      {
        "text": "Você se sentiria bem sendo capitão(ã) ou líder com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz confiar nessa pessoa no grupo?",
      {
        "text": "Você acha que essa pessoa respeita as regras do grupo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa reage quando o time está perdendo?",
      {
        "text": "Você se sentiria confortável em discordar da estratégia dela?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual elogio você daria ao papel dela no time?",
      {
        "text": "Você confiaria nessa pessoa num momento decisivo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês distribuem funções dentro do time ou projeto?",
      {
        "text": "Você acha que essa pessoa é confiável nos treinos ou prazos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês poderiam melhorar como dupla?",
      {
        "text": "Você se sentiria bem comemorando vitória só com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa te ajuda a superar erros?",
      {
        "text": "Você acha que vocês comunicam bem durante a ação?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição ou ritual de time vocês compartilham?",
      {
        "text": "Você se sentiria confortável pedindo desculpas por um erro no time?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te impede de jogar ou trabalhar mais com essa pessoa?",
      {
        "text": "Você acha que essa pessoa aceita críticas construtivas?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês celebram quando dá certo?",
      {
        "text": "Você se sentiria bem formando dupla fixa com ela?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual conversa difícil sobre o time vocês ainda não tiveram?",
      {
        "text": "Você acha que essa pessoa te motiva a dar o melhor?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa lida com conflitos no grupo?",
      {
        "text": "Você se sentiria confortável contando uma insegurança sobre performance?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês deveriam alinhar melhor na estratégia?",
      {
        "text": "Você acha que vocês lidam bem com derrota juntos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual momento engraçado de vestiário ou bastidor vocês viveram?",
      {
        "text": "Você se sentiria bem viajando com o time só com essa pessoa por perto?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês reagem quando um brilha mais que o outro?",
      {
        "text": "Você acha que essa pessoa é justa com todos do grupo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual meta de time vocês sonham alcançar juntos?",
      {
        "text": "Você se sentiria confortável pedindo para ela cobrir sua posição?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que essa pessoa sabe sobre você que o time não sabe?",
      {
        "text": "Você acha que vocês formam uma boa dupla no time?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês mantêm foco em dias ruins?",
      "Qual técnica ou talento dessa pessoa no time te impressiona?",
      "Como essa pessoa te influencia dentro do grupo?",
      "Que atitude dessa pessoa no time você valoriza e raramente reconhece?",
      "Como vocês lidam com lesão, atraso ou imprevisto?",
      "Qual detalhe pequeno sobre essa pessoa você valoriza no time?",
      "O que te faz querer continuar no mesmo time que ela?",
      "Como vocês reagem quando o treinador ou líder cobra mais?",
      "Qual plano de treino ou projeto vocês gostariam de fazer juntos?",
      "Como essa pessoa reage quando você está nervoso(a)?",
      "O que te surpreendeu positivamente sobre ela no time?",
      "Como vocês lidam com egos ou competição interna?",
      "Qual seria um documentário sobre vocês no time?",
      "Como vocês se apoiam depois de uma derrota dura?",
      "O que vocês fariam diferente na próxima partida ou entrega?",
      "Como essa pessoa contribui para a união do grupo?",
      "Qual conversa sobre futuro do time vocês deveriam ter?",
      "Como vocês lidam com mudanças de escalação ou função?",
      "Qual detalhe da parceria de vocês no time poderia melhorar?",
      "Como essa pessoa celebra suas conquistas individuais?",
      "Qual viagem ou evento de time vocês gostariam de reviver?",
      "O que você aprendeu com essa pessoa no esporte ou projeto?",
      "Como vocês imaginam o time daqui a um ano?",
      "Qual gesto de companheirismo dessa pessoa te marcou?",
      "Como vocês lidam com expectativas externas sobre o time?",
      "O que te faz sentir que vocês são parceiros de verdade?",
      "Como essa pessoa reage quando você erra feio?",
      "Qual meta individual vocês poderiam apoiar um ao outro?",
      "Como vocês mantêm amizade fora do time?",
      "O que vocês deveriam esclarecer sobre papéis?",
      "Como essa pessoa te inspira a continuar?",
      "O que você diria a essa pessoa no vestiário ou no intervalo do projeto?",
      "Como vocês reagem quando alguém critica o time?"
    ]
  },
  {
    "categoryId": "us_romantic",
    "questions": [
      {
        "text": "Você se sente amado(a) por essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual foi o momento em que você soube que gostava dessa pessoa?",
      {
        "text": "Você confia nessa pessoa completamente?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você mais ama na rotina de vocês?",
      {
        "text": "Você acha que vocês se comunicam bem sobre sentimentos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual memória romântica você nunca esquece?",
      {
        "text": "Você se sentiria confortável falando sobre o futuro juntos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês se conheceram ou se aproximaram?",
      {
        "text": "Você acha que essa pessoa te respeita?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir conectado(a) a essa pessoa?",
      {
        "text": "Você se sentiria bem passando um fim de semana inteiro só com ela?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual hábito dessa pessoa te encanta?",
      {
        "text": "Você acha que vocês lidam bem com conflitos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com dias difíceis juntos?",
      {
        "text": "Você se sentiria confortável pedindo desculpas primeiro?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual elogio romântico você ainda não disse?",
      {
        "text": "Você acha que essa pessoa te conhece de verdade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Que ritual de casal vocês querem criar em breve?",
      {
        "text": "Você se sentiria bem apresentando essa pessoa à sua família?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa te surpreende positivamente?",
      {
        "text": "Você acha que vocês têm objetivos de vida compatíveis?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual viagem ou date vocês sonham em fazer?",
      {
        "text": "Você se sentiria confortável discutindo finanças juntos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te impede de falar certas coisas no relacionamento?",
      {
        "text": "Você sente que essa pessoa torce pelos seus sonhos?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês celebram datas especiais?",
      {
        "text": "Você se sentiria bem morando junto com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Sobre o que vocês dois ainda não foram totalmente honestos?",
      {
        "text": "Você acha que vocês mantêm a chama viva no dia a dia?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que você admira nessa pessoa como parceiro(a)?",
      {
        "text": "Você se sentiria confortável falando sobre ciúmes?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como essa pessoa reage quando você está vulnerável?",
      {
        "text": "Você acha que essa pessoa te escuta sem julgar?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual tradição de casal vocês têm ou gostariam de ter?",
      {
        "text": "Você se sentiria bem fazendo terapia de casal com essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que vocês poderiam melhorar na convivência?",
      {
        "text": "Você acha que vocês riem juntos com frequência?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês mantêm intimidade emocional?",
      {
        "text": "Você se sentiria confortável contando um medo profundo?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual detalhe pequeno dessa pessoa te faz sorrir?",
      {
        "text": "Você se sente plenamente aceito(a) nesse relacionamento?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que te faz sentir seguro(a) nesse relacionamento?",
      {
        "text": "Você se sentiria bem passando um período longo longe por necessidade?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Como vocês lidam com diferenças de humor ou energia?",
      {
        "text": "Você acha que vocês se escolheriam de novo hoje?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "Qual presente simbólico representaria vocês?",
      {
        "text": "Você se sentiria confortável pedindo mais carinho a essa pessoa?",
        type: QuestionType.SINGLE_CHOICE,
        "options": [
          "Sim",
          "Não",
          "Depende"
        ]
      },
      "O que essa pessoa faz que te faz sentir especial?",
      "Como vocês reagem quando discordam de algo importante?",
      "Qual meta de casal vocês gostariam de alcançar?",
      "Qual parte da sua história você ainda não compartilhou de verdade?",
      "Como essa pessoa te ajuda a crescer?",
      "Qual canção vocês associam ao começo do relacionamento?",
      "O que te incomoda levemente no relacionamento?",
      "Como vocês lidam com rotina e monotonia?",
      "Qual date ou momento a dois você repetiria num instante?",
      "Qual gesto pequeno do dia a dia você gostaria de agradecer?",
      "Como essa pessoa comemora quando algo dá certo para você?",
      "Qual plano espontâneo vocês poderiam fazer esta semana?",
      "O que te faz querer construir futuro com essa pessoa?",
      "Como vocês lidam com família e amigos no relacionamento?",
      "Qual conversa sobre limites vocês deveriam ter?",
      "Como essa pessoa respeita quando você precisa ficar sozinho(a)?",
      "O que vocês fariam diferente no próximo encontro?",
      "Se a história de vocês virasse filme, seria comédia romântica ou drama?",
      "Como vocês imaginam o relacionamento daqui a cinco anos?",
      "O que te surpreendeu ao conviver mais de perto?",
      "Como vocês lidam com redes sociais e privacidade?",
      "Qual gesto de carinho você mais gosta de receber?",
      "O que te faz confiar nessa pessoa com o coração?",
      "Como essa pessoa te acolhe depois de um dia ruim?",
      "Qual assunto vocês nunca cansam de conversar?",
      "O que vocês deveriam esclarecer sobre expectativas?",
      "Como vocês mantêm romance no meio da correria?",
      "Qual promessa entre vocês ainda vale muito?",
      "O que te faz sentir orgulho desse relacionamento?",
      "Como essa pessoa reage quando você está com ciúmes?",
      "O que vocês descobriram um sobre o outro nas últimas semanas?",
      "O que você faria para fortalecer a relação este mês?",
      "Como vocês lidam com saudade?"
    ]
  }
];

function normalizeQuestion(entry) {
  if (typeof entry === 'string') {
    return { text: entry, type: QuestionType.TEXT };
  }
  return {
    text: entry.text,
    type: entry.type ?? QuestionType.TEXT,
    options: entry.options,
  };
}

export const BUILT_IN_QUESTIONS = BANK_SECTIONS.flatMap((section) =>
  section.questions.map((entry, index) => {
    const question = normalizeQuestion(entry);
    return {
      id: `builtin-${section.categoryId}-${index + 1}`,
      categoryId: section.categoryId,
      type: question.type,
      text: question.text,
      ...(question.options ? { options: question.options } : {}),
      custom: false,
    };
  }),
);

export const BUILT_IN_QUESTION_COUNT = BUILT_IN_QUESTIONS.length;

export { BANK_SECTIONS };
