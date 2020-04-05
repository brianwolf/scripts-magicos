. ./scripts/heroku/ambiente.sh

echo "$HEROKU_API_KEY" | docker login $HEROKU_REGISTRY --username $DOCKER_USER --password-stdin
