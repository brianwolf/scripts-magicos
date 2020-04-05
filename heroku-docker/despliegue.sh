. ./scripts/heroku-docker/ambiente.env

. ./scripts/heroku-docker/login.sh

heroku create $HEROKU_APP

heroku container:login
heroku container:push web -a $HEROKU_APP
heroku container:release web -a $HEROKU_APP
