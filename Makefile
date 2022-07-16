REGISTRY_ID=ghcr.io/artofland/backend

build:
	docker build --platform=linux/amd64 -t $(REGISTRY_ID):master .

push:
	docker push $(REGISTRY_ID):master