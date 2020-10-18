for argument in "$@"; do

    key=$(echo $argument | cut -f1 -d=)
    value=$(echo $argument | cut -f2 -d=)

    if [[ $key == *"--"* ]]; then
        v="${key/--/}"
        declare $v="${value}"
    fi
done

args+=('--local_dir' ${local_dir})
args+=('--format' ${format})

echo ${args}
