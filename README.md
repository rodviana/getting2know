# Getting2Know

Perguntas para duas pessoas se conhecerem.

## Sobre

Projeto pessoal do **Rodrigo**. A ideia é criar um espaço onde duas pessoas respondem perguntas e descobrem coisas novas uma sobre a outra.

Hoje o app tem login, perguntas customizadas e sessões **persistidas no PostgreSQL**:

1. **Início** — montar questionário, entrar com código ou gerenciar perguntas
2. **Minhas perguntas** — cadastrar perguntas de texto, seleção única ou múltipla (salvas no banco)
3. **Montar questionário** — escolher exatamente quais perguntas entram na sessão
4. **Sala de espera** — compartilhar código; polling até o parceiro entrar
5. **Perguntas** — cada pessoa responde de verdade; revelação quando os dois enviam
6. **Resumo e histórico** — revisar o que foi respondido

As perguntas embutidas do app continuam no front; sessões e perguntas customizadas usam a API.

**Combinado do projeto:** código em inglês (classes, tabelas, campos do JSON); telas e mensagens de erro em português.

---

## Documentação


| Documento                                                 | Pra que serve                                           |
| --------------------------------------------------------- | ------------------------------------------------------- |
| [docs/setup.md](./docs/setup.md)                          | Instalar Docker, subir o app, resolver pepino comum     |
| [docs/deploy.md](./docs/deploy.md)                        | Publicar na VPS com **getting2know.com.br**             |
| [docs/architecture.md](./docs/architecture.md)            | Como o código está organizado — **leia antes de codar** |
| [Swagger UI](http://localhost:3000/swagger-ui/index.html) | Testar a API no navegador (com o app rodando)           |


---

## Estrutura do repositório

```
getting2know/
├── docs/           # Documentação
├── server/         # API Java (Spring Boot)
├── client/         # Telas React
└── docker-compose.yml
```

Dentro do server, a ideia é simples: **controller** recebe a requisição, **service** pensa na regra, **repository** fala com o banco.

```
controller/  →  service/  →  repository/
                  ↑
               model/  (Request, Response, enums)
```

---

## Stack


| Parte | Tecnologia                            |
| ----- | ------------------------------------- |
| API   | Java 11, Spring Boot 2.7, Maven       |
| Banco | PostgreSQL 15 (via JDBC + procedures) |
| Login | JWT + BCrypt                          |
| Front | React 18 + Vite + Tailwind            |


---

## Como rodar

Tudo roda no **Docker** — você não precisa instalar Java nem Node na máquina.

Passo a passo completo: **[docs/setup.md](./docs/setup.md)**

Resumo rápido:

```bash
docker compose up --build --force-recreate --remove-orphans
```


| O quê                | Onde abrir                                                                                 |
| -------------------- | ------------------------------------------------------------------------------------------ |
| Telas do sistema     | [http://localhost:3000](http://localhost:3000)                                             |
| Swagger (testar API) | [http://localhost:3000/swagger-ui/index.html](http://localhost:3000/swagger-ui/index.html) |


**Login de teste:** `demo@getting2know.com` / `admin123`

---

## Padrão de código

Tudo explicado em detalhe em **[docs/architecture.md](./docs/architecture.md)**.

Se você está começando no projeto, esse é o segundo arquivo depois do setup.