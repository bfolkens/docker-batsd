LOCAL_NAME=batsd
VERSION=latest
PUBLIC_NAME=docker-batsd
REPOSITORY=bfolkens


.PHONY: all build tag release 

all: build

build:
	docker build -t $(LOCAL_NAME):$(VERSION) --rm .

tag: build
	docker tag $(LOCAL_NAME):$(VERSION) $(REPOSITORY)/$(PUBLIC_NAME):$(VERSION)

release: tag
	docker push $(REPOSITORY)/$(PUBLIC_NAME):$(VERSION)

