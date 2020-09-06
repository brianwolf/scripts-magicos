source ./scripts/versionado/ambiente.sh


# BORRADO DEL ARCHIVO Y COMMIT
rm -f ./tag
git add .
git commit -m 'Borrado de archivo de version automatico'
git push http://$TAGEAR_GIT_USER:$TAGEAR_GIT_TOKEN@github.com/$TAGEAR_GIT_USER/$TAGEAR_GIT_REPO.git --tags
