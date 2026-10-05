# Affix-Tech-Strapi

Affix Tech platform: a React (Create React App) frontend backed by a Strapi
v4 CMS/API, with MySQL as the database and Cloudinary for media uploads.

## Tech stack

| Layer      | Technology                                            |
|------------|--------------------------------------------------------|
| Frontend   | React 17 (CRA/react-scripts 5), Redux + redux-thunk, Tailwind CSS |
| Backend    | Strapi 4 (Node.js), REST API                          |
| Database   | MySQL 8                                               |
| Media      | Cloudinary (upload provider for both admin + frontend) |
| Reverse proxy / TLS | nginx + certbot (Let's Encrypt), production only |
| Containerization | Docker / Docker Compose                         |

## Repository structure

```
.
├── affix-frontend/         React app (CRA)
│   ├── Dockerfile.local         # dev image used by docker-compose-local.yml
│   ├── Dockerfile.production    # multistage build -> static files served behind nginx
│   └── nginx.frontend.conf      # internal static file server (no TLS; edge nginx handles that)
├── affix-backend/          Strapi app
│   ├── Dockerfile.local
│   ├── Dockerfile.production
│   ├── .env.example              # dev env template
│   └── .env.production.example   # production env template (copy -> .env.production)
├── nginx/
│   └── conf.d/
│       ├── affix-tech.conf          # edge reverse proxy, TLS termination (needs certs to exist)
│       └── bootstrap.conf.example   # HTTP-only conf for first-ever cert issuance
├── seed/                    # local-only DB fixtures (git-ignored)
├── docker-compose-local.yml       # local dev stack (mysql + strapi + frontend, no TLS)
├── docker-compose-production.yml  # production stack (adds nginx + certbot, no exposed DB port)
└── Makefile                       # top-level run/build/deploy shortcuts
```

Node versions (see each app's `.nvmrc`): frontend `20.19.4`, backend
`16.20.2` (Dockerfiles build both on `node:20-bullseye` — works, but keep
the backend's engines range, `>=12.x.x <=16.x.x`, in mind if you hit native
module issues).

## Environment variables

Nothing secret is committed. Copy the example files and fill in real values:

```bash
cp affix-backend/.env.example affix-backend/.env.dev              # local dev
cp affix-backend/.env.production.example affix-backend/.env.production  # production
```

Key variables (production example, see the file for the full list and comments):

- `DATABASE_NAME` / `DATABASE_USERNAME` / `DATABASE_PASSWORD` / `MYSQL_ROOT_PASSWORD`
- `APP_KEYS`, `JWT_SECRET`, `API_TOKEN_SALT`, `ADMIN_JWT_SECRET`, `TRANSFER_TOKEN_SALT`
  (generate unique random values per environment, e.g.
  `node -e "console.log(require('crypto').randomBytes(16).toString('base64'))"`)
- `CLOUDINARY_NAME` / `CLOUDINARY_KEY` / `CLOUDINARY_SECRET`
- `REACT_APP_API_BASE_URL` (build-time, baked into the frontend bundle)
- `CERTBOT_EMAIL` (used only by `make certbot-init`)

Database dumps/fixtures are never tracked in git — the local compose file
mounts `seed/affix-demo.sql` (git-ignored) instead of a repo-tracked `.sql`
file. Production MySQL data lives in a named Docker volume
(`affix-tech-production-mysql`), not a bind mount inside this repo.

## Running locally

Requires Docker + Docker Compose.

```bash
make build-local   # builds frontend (against http://localhost:1337/api) + backend images
make run-local      # docker compose -f docker-compose-production.yml up (ENV=local)
```

or, for the lighter dev-oriented compose file (hot reload, MySQL on localhost:3306):

```bash
docker compose --env-file ./affix-backend/.env.dev -f docker-compose-local.yml up -d --build
```

This starts:
- `mysql` — `127.0.0.1:3306`
- `strapi-backend` — `http://localhost:1337` (admin at `/admin`)
- `affix-frontend` — `http://localhost:3000`

Rebuild a single service after a code change (the images are not
volume-mounted, so a restart alone won't pick up new code):

```bash
docker compose --env-file ./affix-backend/.env.dev -f docker-compose-local.yml up -d --build affix-frontend
docker compose --env-file ./affix-backend/.env.dev -f docker-compose-local.yml up -d --build strapi-backend
```

Tail logs / stop:

```bash
docker compose -f docker-compose-local.yml logs -f
docker compose -f docker-compose-local.yml down
```

## Deployment (production)

Target: a self-hosted Docker host (e.g. an Oracle Cloud Always Free ARM VM —
4 OCPU / 24GB RAM free tier) running the full stack via
`docker-compose-production.yml`: nginx (TLS termination) → frontend
(static) + strapi-backend (API), with MySQL reachable only on the internal
Docker network (no published port).

Domains: `affix-tech.com` / `www.affix-tech.com` (frontend),
`api.affix-tech.com` (backend API).

### 1. First-time server setup

```bash
git clone https://github.com/hemaratmatar/Affix-Tech-Strapi.git
cd Affix-Tech-Strapi
cp affix-backend/.env.production.example affix-backend/.env.production
# edit affix-backend/.env.production with real secrets
```

### 2. Bootstrap TLS certificates (first run only)

nginx needs a certificate before it can start the HTTPS server blocks, and
certbot needs nginx serving HTTP to complete the ACME challenge — chicken
and egg, solved by a temporary HTTP-only config:

```bash
# Temporarily swap in the HTTP-only bootstrap config
cp nginx/conf.d/bootstrap.conf.example nginx/conf.d/affix-tech.conf.bootstrap
mv nginx/conf.d/affix-tech.conf nginx/conf.d/affix-tech.conf.full
mv nginx/conf.d/affix-tech.conf.bootstrap nginx/conf.d/affix-tech.conf

make build-production
make run-production

# Issue the certificates (requires DNS for all 3 domains already pointing at this host)
make certbot-init

# Switch back to the real TLS config and restart nginx
mv nginx/conf.d/affix-tech.conf.full nginx/conf.d/affix-tech.conf
docker compose --env-file ./affix-backend/.env.production -f docker-compose-production.yml restart nginx
```

### 3. Normal deploys (after the first run)

```bash
git pull
make build-production
make run-production
```

### 4. Operations

```bash
make logs-production      # follow logs for all services
make stop-production       # docker compose down
```

Certificates auto-renew: the `certbot` service runs `certbot renew` every
12 hours and only acts when a cert is within 30 days of expiry.

### Security notes

- MySQL has no published port in production — only reachable from
  `strapi-backend` over the internal Docker network.
- All secrets (`.env`, `.env.*`, `*.pem`, `*.key`, `*.crt`, `*.sql`) are
  git-ignored; never commit filled-in copies of the `.example` files.
- Database data lives in a named Docker volume, not inside the git
  checkout — back it up separately (e.g. `mysqldump` + encrypted offsite
  upload); see comments in `docker-compose-production.yml`.
