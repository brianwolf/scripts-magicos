HEROKU_APP=${HEROKU_APP:-circleci-template-heroku}


# credenciales de Heroku
HEROKU_EMAIL=${HEROKU_EMAIL:-brian.d.lobo@gmail.com}
HEROKU_API_KEY=${HEROKU_API_KEY:-a9320074-aa10-4e92-9bf4-2d6818bddd75}
HEROKU_REGISTRY=${HEROKU_REGISTRY:-registry.heroku.com}


# imagen de docker
DOCKER_IMAGE_NAME=${DOCKER_IMAGE_NAME:-circleci}
DOCKER_NAMESPACE=${DOCKER_NAMESPACE:-brianwolf94}

CIRCLE_SHA1_SHORT=${CIRCLE_SHA1:0:7}
DOCKER_TAG=${CIRCLE_SHA1_SHORT:-local}


# forma para que virtualenv no me sustituya algunas variables
DOLAR=$