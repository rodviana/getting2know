# Getting2Know

Perguntas para duas pessoas se conhecerem.

## Sobre

Projeto pessoal do **Rodrigo**. A ideia é criar um espaço onde duas pessoas respondem perguntas e descobrem coisas novas uma sobre a outra.

Hoje o app tem login e uma tela inicial com o fluxo planejado. Sessões e perguntas ainda vêm depois.

**Combinado do projeto:** código em inglês (classes, tabelas, campos do JSON); telas e mensagens de erro em português.

---

## Documentação

| Documento | Pra que serve |
|-----------|----------------|
| [docs/setup.md](./docs/setup.md) | Instalar Docker, subir o app, resolver pepino comum |
| [docs/architecture.md](./docs/architecture.md) | Como o código está organizado — **leia antes de codar** |
| [Swagger UI](http://localhost:3000/swagger-ui/index.html) | Testar a API no navegador (com o app rodando) |

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

| Parte | Tecnologia |
|-------|------------|
| API | Java 11, Spring Boot 2.7, Maven |
| Banco | PostgreSQL 15 (via JDBC + procedures) |
| Login | JWT + BCrypt |
| Front | React 18 + Vite + Tailwind |

---

## Como rodar

Tudo roda no **Docker** — você não precisa instalar Java nem Node na máquina.

Passo a passo completo: **[docs/setup.md](./docs/setup.md)**

Resumo rápido:

```bash
docker compose up --build --force-recreate --remove-orphans
```

| O quê | Onde abrir |
|-------|------------|
| Telas do sistema | http://localhost:3000 |
| Swagger (testar API) | http://localhost:3000/swagger-ui/index.html |

**Login de teste:** `demo@getting2know.com` / `admin123`

---

## Padrão de código

Tudo explicado em detalhe em **[docs/architecture.md](./docs/architecture.md)**.

Se você está começando no projeto, esse é o segundo arquivo depois do setup.
