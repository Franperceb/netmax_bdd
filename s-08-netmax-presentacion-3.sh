#!/bin/bash
#@Autor: Jorge Francisco Pereda Ceballos / Edgar Cristobal Garcia Sandoval
#@Fecha creación: 24/06/2023
#@Descripción: Copia archivos binarios

#Si ocurre un error, el programa termina.
set -e
set -o pipefail

#En caso de no encontrar el directorio, extrae el contenido del archivo zip
if [ ! -d "/unam-bdd/proy-final/carga-inicial/pdfs" ]; then
  echo "Copiando archivos pdf de muestra "
  mkdir -p /unam-bdd/proy-final/carga-inicial/
  unzip carga-inicial/pdfs.zip -d /unam-bdd/proy-final/carga-inicial/pdfs
else
  echo "=> Los archivos PDF de muestra ya fueron copiados"
fi

if [ ! -d "/unam-bdd/proy-final/carga-inicial/trailers" ]; then
  echo "Copiando archivos de video de muestra"
  mkdir -p /unam-bdd/proy-final/carga-inicial/trailers
  unzip carga-inicial/trailers.zip -d /unam-bdd/proy-final/carga-inicial/trailers
else
  echo "=> Los archivos de video de muestra ya fueron copiados."
fi
#actualiza permisos
chmod -R 755 /unam-bdd/proy-final