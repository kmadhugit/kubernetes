.PHONY: test
#make build NAME=cont PORT=8000
ifeq ($(NAME),)
NAME := hello-container
endif
ifeq ($(PORT),)
PORT := 8080
endif
IMGNAME := madhukandasamy/${NAME}:latest

build-nocache:
	docker build --no-cache -t ${IMGNAME} source

build:
	docker build -t ${IMGNAME} source

run-inter: build
	docker run --rm -it -eNAME=${NAME} -e PORT=${PORT} -p ${PORT}:${PORT} -e DEBUG_FLAG=True --name ${NAME} ${IMGNAME}

run: build
	docker run --rm -d  -eNAME=${NAME} -e PORT=${PORT} -p ${PORT}:${PORT} -e DEBUG_FLAG=True --name ${NAME} ${IMGNAME}

stop:
	docker stop -t 1 ${NAME}

test:
	cd test && $(MAKE)

push:
	docker push ${IMGNAME}
