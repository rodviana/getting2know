# Como subir o projeto na sua máquina

Guia passo a passo para rodar o **Getting2Know** pela primeira vez. A ideia é: instalar o Docker, rodar um comando, abrir o navegador.

---

## O que você precisa

| Item | Observação |
|------|------------|
| **Docker Desktop** | Versão recente |
| **Git** | Só se for clonar o repo (se já tem a pasta, pula) |
| **Navegador** | Chrome, Firefox ou Edge |

Você **não** precisa instalar Java, Node ou PostgreSQL — o Docker cuida disso.

---

## 1. Instalar o Docker Desktop

### Windows

1. Baixe em [docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop/).
2. Instale e aceite usar **WSL 2** se pedir (é o recomendado).
3. Reinicie o PC se o instalador pedir.
4. Abra o **Docker Desktop** e espere ficar verde/pronto.

### macOS

1. Baixe o Docker Desktop pro seu Mac (Intel ou Apple Silicon).
2. Arraste pra pasta Applications e abra.
3. Espere terminar de iniciar.

---

## 2. Ver se o Docker está ok

Abra o terminal (PowerShell no Windows) e rode:

```bash
docker version
```

Tem que aparecer **Client** e **Server**. Se der erro de "pipe" ou "daemon", o Docker Desktop não está aberto — abre o app e tenta de novo.

Teste básico:

```bash
docker run hello-world
```

Se aparecer mensagem de sucesso, tá pronto.

---

## 3. Pegar o código

Se ainda não tem o projeto:

```bash
git clone <url-do-repositorio>
cd getting2know
```

Já está na pasta? Pula pro próximo passo.

---

## 4. Subir tudo

Na pasta onde está o `docker-compose.yml`:

```bash
docker compose up --build --force-recreate --remove-orphans
```

O que acontece:

- Monta a **API** (Java) e o **front** (React).
- Sobe o **PostgreSQL**.
- Na **primeira vez** (banco novo), cria tabelas, procedures e o usuário de demonstração.

A primeira vez pode demorar uns minutos (baixar imagens + build).

**Rodar em segundo plano** (libera o terminal):

```bash
docker compose up --build --force-recreate --remove-orphans -d
```

**Parar tudo:**

```bash
docker compose down
```

**Zerar o banco e começar do zero** (apaga dados):

```bash
docker compose down -v
docker compose up --build --force-recreate --remove-orphans
```

---

## 5. Abrir o sistema

Com os containers rodando:

| O quê | URL |
|-------|-----|
| **Telas** (login, início) | http://localhost:3000 |
| **API direta** | http://localhost:8080 |
| **Swagger** (testar endpoints) | http://localhost:3000/swagger-ui/index.html |

### Login de teste

| Campo | Valor |
|-------|-------|
| E-mail | `demo@getting2know.com` |
| Senha | `admin123` |

Com esse usuário você entra e vê a tela inicial do Getting2Know.

---

## 6. Testar a API no Swagger (opcional)

Útil pra ver se o back está respondendo sem depender do front.

1. Abra http://localhost:3000/swagger-ui/index.html
2. Vá em **Auth** → **POST /api/v1/auth/login**
3. **Try it out**, coloque e-mail e senha, execute.
4. Copie o `token` da resposta.
5. Clique no **cadeado Authorize** e cole: `Bearer <token>`
6. Teste o endpoint **Home**.

---

## 7. Conectar no banco (pgAdmin, DBeaver, etc.)

Com o Docker rodando, o Postgres fica na porta **5433** da sua máquina (5432 costuma estar ocupada por outro Postgres):

| Campo | Valor |
|-------|-------|
| Host | `localhost` |
| Porta | `5433` |
| Banco | `getting2know` |
| Usuário | `postgres` |
| Senha | `postgres` |

Esses valores vêm do `docker-compose.yml`. Se mudar lá, muda na ferramenta também.

### pgAdmin (resumido)

1. **Add New Server** → nome qualquer (ex.: Getting2Know).
2. Aba **Connection**: host `localhost`, porta `5433`, database `getting2know`, user/senha `postgres`.
3. Salvar. As tabelas ficam em **Databases → getting2know → Schemas → public → Tables**.

### DBeaver (resumido)

1. Nova conexão PostgreSQL.
2. Mesmos dados da tabela acima.
3. **Test Connection** → **Finish**.

### IntelliJ / DataGrip (resumido)

1. Janela **Database** → **+** → PostgreSQL.
2. Mesmos dados → **Test Connection** → **OK**.

**Não conectou?** Confere se o container `getting2know-db` está up (`docker compose ps`). A API fala com o banco pela rede interna do Docker; a porta **5433** é só para ferramentas na sua máquina (pgAdmin, DBeaver).

---

## Deu ruim? Coisas comuns

### `dockerDesktopLinuxEngine` pipe not found (Windows)

O Docker Desktop não está aberto. Abre o app e espera ficar pronto.

### Porta 3000 ou 8080 em uso

Outro programa está usando a porta. Fecha ele ou muda o mapeamento no `docker-compose.yml` (formato `porta-do-pc:porta-do-container`).

### Porta 5432 em uso (Postgres)

Outro Postgres (ou outro projeto Docker) já usa a 5432. Este projeto expõe o banco na **5433** no host — confere o `docker-compose.yml`. Se ainda falhar ao subir, pare o outro serviço ou mude para outra porta livre (ex.: `5434:5432`).

### Login não funciona / "Falha ao carregar usuário"

Credenciais corretas:

| Campo | Valor |
|-------|-------|
| E-mail | `demo@getting2know.com` |
| Senha | `admin123` |

Se o erro continua, o banco pode ter subido **sem rodar as migrations** (comum quando a primeira tentativa de `docker compose up` falhou no meio, ex. por porta ocupada). O Postgres só inicializa o schema na **primeira** criação do volume.

**Correção recomendada** — zera o volume e sobe de novo:

```bash
docker compose down -v
docker compose up --build --force-recreate --remove-orphans
```

**Alternativa** — aplicar o schema no banco que já está rodando (na pasta do projeto):

```bash
docker exec -i getting2know-db psql -v ON_ERROR_STOP=1 -U postgres -d getting2know \
  < server/src/main/resources/database/V001_schema_users.sql
docker exec -i getting2know-db psql -v ON_ERROR_STOP=1 -U postgres -d getting2know \
  < server/src/main/resources/database/P_FIND_USER_BY_EMAIL.sql
docker exec -i getting2know-db psql -v ON_ERROR_STOP=1 -U postgres -d getting2know \
  < server/src/main/resources/database/P_FIND_USER_BY_ID.sql
docker exec -i getting2know-db psql -v ON_ERROR_STOP=1 -U postgres -d getting2know \
  < server/src/main/resources/database/V002_seed_demo.sql
docker exec -i getting2know-db psql -v ON_ERROR_STOP=1 -U postgres -d getting2know \
  < server/src/main/resources/database/V003_schema_questions_sessions.sql
```

Depois aplique as procedures em `server/src/main/resources/database/P_*.sql` na ordem numérica do `docker-compose.yml` (perguntas e sessões).

### Perguntas padrão desatualizadas (ainda aparecem 122 em vez de 303)

O Postgres só roda os scripts de `docker-entrypoint-initdb.d` na **primeira** criação do volume. Se o banco já existia antes da expansão da base, aplique a migration de atualização:

```bash
docker exec -i getting2know-db psql -v ON_ERROR_STOP=1 -U postgres -d getting2know \
  < server/src/main/resources/database/V007_seed_default_questions.sql
```

Confira a contagem:

```bash
docker exec getting2know-db psql -U postgres -d getting2know \
  -c "SELECT COUNT(*) FROM questions WHERE is_system = TRUE;"
```

Deve retornar **303**. As perguntas vêm da API (`GET /api/v1/questions`), não do front — o arquivo `builtInQuestionBank.js` só serve para gerar o SQL (`node scripts/generate-question-seed.mjs`).

### API reiniciando / erro de banco

Espera o Postgres ficar saudável. Se continuar:

```bash
docker compose down
docker compose up --build --force-recreate --remove-orphans
```

### Mudei o código e não apareceu

Roda de novo com `--build` pra reconstruir as imagens:

```bash
docker compose up --build --force-recreate --remove-orphans
```

---

## E agora?

- Entender como o código está organizado: [architecture.md](./architecture.md)
- Visão geral do repo: [README.md](../README.md)
