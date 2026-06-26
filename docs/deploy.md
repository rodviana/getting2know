# Deploy em produção — getting2know.com.br

Guia para publicar o **Getting2Know** numa VPS com o domínio **getting2know.com.br** (Registro.br + HTTPS).

Desenvolvimento local continua em [setup.md](./setup.md).

---

## Visão geral

```
Navegador
   │
   ▼
getting2know.com.br  (DNS → IP da VPS)
   │
   ▼
Caddy :443  (HTTPS automático)
   │
   ▼
Docker client :3000  (nginx + React)
   │
   ├── /api/*  →  API Spring Boot
   └── /       →  telas React
                        │
                        ▼
                   PostgreSQL (rede interna Docker)
```

---

## 1. Domínio no Registro.br

1. Acesse [registro.br](https://registro.br) e faça login.
2. Confirme que **getting2know.com.br** está ativo na sua conta.
3. Abra o domínio → **DNS** → modo **Avançado** (se pedir).
4. Crie os registros **A** apontando para o **IP público da VPS**:

| Tipo | Nome | Destino |
|------|------|---------|
| A | `@` | `IP_DA_VPS` |
| A | `www` | `IP_DA_VPS` |

5. Salve e aguarde a propagação (minutos a algumas horas).

Verificar no seu computador:

```bash
dig +short getting2know.com.br
dig +short www.getting2know.com.br
```

Os dois devem retornar o IP da VPS.

---

## 2. Preparar a VPS

Conecte via SSH:

```bash
ssh root@IP_DA_VPS
```

Atualize o sistema e instale Docker:

```bash
apt update && apt upgrade -y
curl -fsSL https://get.docker.com | sh
```

Firewall — libere SSH e HTTPS:

```bash
ufw allow OpenSSH
ufw allow 80
ufw allow 443
ufw enable
```

Instale o Caddy (HTTPS automático):

```bash
apt install -y debian-keyring debian-archive-keyring apt-transport-https curl
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | tee /etc/apt/sources.list.d/caddy-stable.list
apt update
apt install -y caddy
```

---

## 3. Clonar o projeto

```bash
git clone <url-do-repositorio> getting2know
cd getting2know
```

---

## 4. Configurar segredos

```bash
cp .env.prod.example .env.prod
nano .env.prod
```

Preencha com valores fortes:

| Variável | Exemplo |
|----------|---------|
| `POSTGRES_PASSWORD` | senha longa e aleatória |
| `JWT_SECRET` | string aleatória com **pelo menos 32 caracteres** |
| `CORS_ALLOWED_ORIGINS` | `https://getting2know.com.br,https://www.getting2know.com.br` |

Gere segredos na VPS, se quiser:

```bash
openssl rand -base64 32
```

---

## 5. Subir os containers

```bash
docker compose -f docker-compose.prod.yml --env-file .env.prod up --build -d
```

Confira se está tudo saudável:

```bash
docker compose -f docker-compose.prod.yml ps
curl -s http://127.0.0.1:3000/api/health
```

O app fica em `127.0.0.1:3000` — só acessível na VPS (Caddy expõe na internet).

---

## 6. Configurar HTTPS (Caddy)

Copie o Caddyfile do repositório:

```bash
cp deploy/Caddyfile /etc/caddy/Caddyfile
systemctl reload caddy
```

O arquivo já aponta para `getting2know.com.br` e `www.getting2know.com.br`:

```
getting2know.com.br, www.getting2know.com.br {
    reverse_proxy localhost:3000
}
```

O Caddy obtém o certificado Let's Encrypt sozinho (portas 80 e 443 precisam estar abertas e o DNS já propagado).

Teste:

```bash
curl -I https://getting2know.com.br/api/health
```

Abra no navegador: **https://getting2know.com.br**

---

## 7. Atualizar depois de mudanças no código

Na pasta do projeto na VPS:

```bash
git pull
docker compose -f docker-compose.prod.yml --env-file .env.prod up --build -d
```

---

## Comandos úteis

| Ação | Comando |
|------|---------|
| Ver logs | `docker compose -f docker-compose.prod.yml logs -f` |
| Parar | `docker compose -f docker-compose.prod.yml down` |
| Status Caddy | `systemctl status caddy` |
| Logs Caddy | `journalctl -u caddy -f` |

---

## Deu ruim?

### DNS não resolve

- Confira os registros A no Registro.br.
- Aguarde mais tempo ou teste com `dig`.

### Caddy não emite certificado

- DNS precisa apontar para a VPS **antes** do Caddy pedir o certificado.
- Portas 80 e 443 abertas no firewall da VPS **e** no painel do provedor (Hostinger, etc.).

### Login ou API falham no domínio

- `CORS_ALLOWED_ORIGINS` no `.env.prod` deve incluir `https://getting2know.com.br` e `https://www.getting2know.com.br`.
- Depois de editar: `docker compose -f docker-compose.prod.yml --env-file .env.prod up -d`.

### Site abre pelo IP mas não pelo domínio

- DNS ainda propagando ou registro A errado.

### Quer zerar o banco

```bash
docker compose -f docker-compose.prod.yml --env-file .env.prod down -v
docker compose -f docker-compose.prod.yml --env-file .env.prod up --build -d
```

**Cuidado:** apaga todos os dados.

---

## Diferença do ambiente local

| Item | Local (`docker-compose.yml`) | Produção (`docker-compose.prod.yml`) |
|------|------------------------------|--------------------------------------|
| Postgres exposto | porta 5433 no host | só rede interna Docker |
| API exposta | porta 8080 no host | só via nginx do client |
| Client | `localhost:3000` | `127.0.0.1:3000` + Caddy |
| Senhas | valores fixos de dev | `.env.prod` |
| CORS | localhost | getting2know.com.br |

---

## Próximo passo

- Rodar local: [setup.md](./setup.md)
- Entender o código: [architecture.md](./architecture.md)
