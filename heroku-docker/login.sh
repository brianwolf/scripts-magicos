. ./scripts/heroku-docker/ambiente.env

echo "$HEROKU_API_KEY" | docker login --username $HEROKU_EMAIL --password-stdin $HEROKU_REGISTRY 
