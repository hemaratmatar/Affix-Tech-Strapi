
   
build-dev:
	docker build -t affix-frontend -f Dockerfile.dev .

###################

build-local:
	docker build \
		-t affix-frontend-production:local \
		--build-arg CADDYFILE=Caddyfile.local \
		--build-arg BASE_URL=http://localhost:1337/api \
		-f Dockerfile.production .

###################

build-production:
	docker build \
		-t affix-frontend-production:production \
		--build-arg CADDYFILE=Caddyfile.production \
		--build-arg BASE_URL=https://cloud.affix-tech.com/api \
		-f Dockerfile.production .