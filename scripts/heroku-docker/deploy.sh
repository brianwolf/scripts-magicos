echo "$HEROKU_API_KEY" | docker login --username $HEROKU_EMAIL --password-stdin $DOCKER_REGISTRY 

heroku create $HEROKU_APP

heroku container:login
heroku container:push web -a $HEROKU_APP
heroku container:release web -a $HEROKU_APP