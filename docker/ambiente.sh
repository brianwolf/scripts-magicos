# PUBLICAS

export DOCKER_USER=${DOCKER_USER:-brianwolf94}
export DOCKER_TOKEN=${DOCKER_TOKEN:-64f0e37f-eb5a-4072-8b5b-a1a2b7e7b7cf}


# PRIVADAS

export DOCKER_NOMBRE_IMAGEN=circleci
export DOCKER_NAMESPACE=brianwolf94
export DOCKER_REGISTRY=docker.io

export DOCKER_ARCHIVO_ARGUMENTOS=./docker/env/argumentos.env
export DOCKER_ARCHIVO_AMBIENTE=./docker/env/ambiente.sh

export DOCKER_DOCKERFILE=./docker/Dockerfile

export CIRCLE_SHA1_SHORT=${CIRCLE_SHA1:0:7}
export DOCKER_TAG=${CIRCLE_SHA1_SHORT:-local}

export DOCKER_NETWORK=docker-red

export DOCKER_PUERTO_INTERNO=5000
export DOCKER_PUERTO_EXTERNO=5000