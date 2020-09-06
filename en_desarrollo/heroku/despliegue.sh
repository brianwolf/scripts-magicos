. ./scripts/heroku/ambiente.sh


heroku create $HEROKU_APP

git init
heroku git:remote -a $HEROKU_APP

git add .
git commit -am "Despliegue a Heroku"
git push heroku master