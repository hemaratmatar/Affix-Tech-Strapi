run-dev:
	docker-compose up

### DEV

build-dev:
	cd client && $(MAKE) build-dev
	cd server && $(MAKE) build

# run-dev:
# 	docker-compose -f docker-compose-dev.yml up

### LOCAL (prod config)

build-local:
	cd affix-frontend && $(MAKE) build-local
	cd affix-backend && $(MAKE) build-dev

run-local:
	ENV=local docker-compose -f docker-compose-production.yml up
	

### PRODUCTION
# Env values come from affix-backend/.env.production (git-ignored, never committed).
# See doc/06-deployment-and-operations.md for the full bootstrap sequence
# (first boot needs the HTTP-only nginx conf before a TLS cert exists).

build-production:
	docker compose --env-file ./affix-backend/.env.production -f docker-compose-production.yml build

run-production:
	docker compose --env-file ./affix-backend/.env.production -f docker-compose-production.yml up -d

# One-time (or renewal-forcing) certificate issuance. Requires nginx to
# already be serving the ACME http-01 challenge path for both domains
# (see nginx/conf.d/bootstrap.conf.example for the first-ever run).
certbot-init:
	docker compose --env-file ./affix-backend/.env.production -f docker-compose-production.yml run --rm certbot \
		certonly --webroot -w /var/www/certbot \
		-d affix-tech.com -d www.affix-tech.com \
		--email ${CERTBOT_EMAIL} --agree-tos --no-eff-email
	docker compose --env-file ./affix-backend/.env.production -f docker-compose-production.yml run --rm certbot \
		certonly --webroot -w /var/www/certbot \
		-d api.affix-tech.com \
		--email ${CERTBOT_EMAIL} --agree-tos --no-eff-email
	docker compose --env-file ./affix-backend/.env.production -f docker-compose-production.yml restart nginx

logs-production:
	docker compose --env-file ./affix-backend/.env.production -f docker-compose-production.yml logs -f

stop-production:
	docker compose --env-file ./affix-backend/.env.production -f docker-compose-production.yml down

stop:
	docker-compose down
