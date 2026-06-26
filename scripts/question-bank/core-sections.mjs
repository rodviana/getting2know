import { QuestionType } from '../../client/src/constants/questionTypes.js';

export const CORE_SECTIONS = [
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
      "O que você mudaria em si se pudesse mudar só uma coisa?"
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
      "O que te deixa mais irritado(a) no dia a dia?"
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
      "Tem algum talento escondido que pouca gente conhece?"
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
      "O que você espera da relação com a família do parceiro?"
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
      }
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
      "O que você espera de um parceiro em momentos difíceis?"
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
      }
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
      "O que significa para você \"estar presente\" numa conversa?"
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
      "Como você imagina as finanças do casal no futuro?"
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
      "O que você faria se perdesse o emprego amanhã?"
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
      "O que você faria diferente se soubesse que vai viver até os 90?"
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
      }
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
      "Que memória de infância você gostaria de recriar para seus filhos?"
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
      "Como você prefere dividir contas da casa?"
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
      "Como vocês poderiam apoiar a saúde um do outro?"
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
      }
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
      }
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
      "Qual valor do parceiro é mais importante para você?"
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
      "Se descobrisse um talento artístico, qual gostaria que fosse?"
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
      "Existe algo que você quer que eu mude — ou que eu não mude?"
    ]
  }
];
