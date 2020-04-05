source ./scripts/versionado/ambiente.sh


# OBTENER TAGS
IFS='v' read -r -a array <<< "$(git tag | sort -V | tail -1)"


# GENERAR SIGUIENTE TAG
ULTIMA_VERSION_INT=${array[1]:-0}
VERSION_FINAL="v$((ULTIMA_VERSION_INT + 1))"

echo "Version a desplegar: $VERSION_FINAL"


# SUBIR TAG
git tag $VERSION_FINAL
git push http://$TAGEAR_GIT_USER:$TAGEAR_GIT_TOKEN@github.com/$TAGEAR_GIT_USER/$TAGEAR_GIT_REPO.git --tags


# GUARDO CONFIGURACION PARA LOS DEMAS JOBS
echo $VERSION_FINAL >> ./TAG