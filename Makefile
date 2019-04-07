TAG := latest
IMAGE := lucacri/ombi

build:
	@docker build -t ${IMAGE}:${TAG} .

push:
	@docker push ${IMAGE}:${TAG}
