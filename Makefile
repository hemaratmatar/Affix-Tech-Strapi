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
		

### PROD

build-production:
	cd affix-frontend && $(MAKE) build-production
	cd affix-backend && $(MAKE) build-dev	

run-production:
	ENV=production docker-compose -f docker-compose-production.yml up
	
stop:
	docker-compose down
