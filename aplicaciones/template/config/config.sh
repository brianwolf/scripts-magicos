. template/config/default_vars.sh

# ---------------------------
# FUNCIONES
# ---------------------------
function get() {
    echo ${vars[$1]}
}

function all_vars() {
    for KEY in "${!vars[@]}"; do
        echo "$KEY:${vars[$KEY]}"
    done
}

# ---------------------------
# CARGA DE VARIABLES
# ---------------------------

# VARIABLES DE AMBIENTE
for KEY in "${!vars[@]}"; do
    
    enviroment_var="${!KEY}"
    default_var=${vars[$KEY]}

    vars[$KEY]=${enviroment_var:-$default_var}
done


# VARIABLES POR PARAMETRO
for argument in "$@"; do

    key=$(echo $argument | cut -f1 -d=)
    value=$(echo $argument | cut -f2 -d=)

    if [[ $key == *"--"* ]]; then

        key="${key/--/}"
        value_default=${vars[$key]}

        vars[$key]=${value:-value_default}
    fi
done
