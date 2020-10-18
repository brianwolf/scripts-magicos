# Nueva estructura de scripts

> ahora se puede ejecutar pasandole parametros

## :tada: Probar ejemplo

Se prueba ejecutando algo asi, asi se pueden ver todos los casos:

```bash
export VAR_2="por variable de ambiente"
. template/prueba.sh --VAR_3="por parametro"
```

El resultado debe ser algo como:

```bash
VAR_1: por archivo default

todas las variables cargadas:
VAR_2:por variable de ambiente
VAR_3:por parametro
VAR_1:por archivo default
```

## :tada: Uso

- Todos los scripts deben empezar cargando la configuracion ejecutando esta linea

```bash
. <ruta de tu script>/config/config.sh
```

- Dentro del script se obtiene el valor de una variable asi:

```bash
$(get SOY_UNA_CLAVE)
```

- En el archivo llamado *default_vars.sh* estan las variales predefinidas que usaran todos los scripts

- El orden de prioridad de las variables es el siguiente:
*default_vars.sh* **<** variables de ambiente **<** parametros

- Cualquier script que cargue el *config.sh* **gana la funcionalidad** de que se le carguen variables por parametros con el siguiente formato:

```bash
soy_un_sctipt.sh --CLAVE="soyo su VALOR"
```
