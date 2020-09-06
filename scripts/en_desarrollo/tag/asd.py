#!/usr/bin/python
import subprocess
import os

VERSION_INICAL = '1.0.0'
ARCHIVO_CON_VERSION_SIGUIENTE = './tag'


siguiente_version = None












salida_consola = str(subprocess.check_output(['git', 'tag'])).strip()
lista_tags = salida_consola.split('\n') if salida_consola else []

ultima_version = lista_tags[-1] if lista_tags else VERSION_INICAL



print(salida_consola)
print(lista_tags)
print(ultima_version)


def generar_siguiente_version(version_anterior):

    if os.path.exists(ARCHIVO_CON_VERSION_SIGUIENTE):
        siguiente_version = obtener_version_forzada()
        


    if not version_anterior:
        version_anterior = VERSION_INICAL

    principal = version_anterior.split('.')[0]
    secundario = version_anterior.split('.')[1]
    terciario = '0'


def obtener_version_forzada():
    with open(ARCHIVO_CON_VERSION_SIGUIENTE, 'r') as archivo:
        return archivo.read().strip()


def borrar_version_forzada_y_commitear():
    with open(ARCHIVO_CON_VERSION_SIGUIENTE, 'r') as archivo:
        return archivo.read().strip()




def aumentar_version(version_anterior):

    if not version_anterior:
        version_anterior = VERSION_INICAL

    principal = version_anterior.split('.')[0]
    secundario = version_anterior.split('.')[1]
    terciario = '0'

    secundario = int(secundario) + 1

    return '{0}.{1}.{2}'.format(principal, secundario, terciarios)



