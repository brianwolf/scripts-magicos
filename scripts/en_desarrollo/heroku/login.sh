# . ./scripts/heroku/ambiente.sh
. ./heroku/ambiente.sh

echo "$HEROKU_EMAIL
$HEROKU_API_KEY" | heroku login -i

# rm -fr login

# echo $HEROKU_EMAIL | heroku login -i