#!/bin/bash

#Primero le pedimos que nos idique la ruta donde 
#se encuentra la carpeta origen y comprobamos si
#existe



echo "Ingrese la ruta de la carpeta de origen"
read ruta_carpeta_origen

if [ -d $ruta_carpeta_origen ];
then
echo "Sí, la carpeta destino existe."
else
echo "No, no existe la carpeta"
exit
fi

#validamos que la carpeta de destino exista#!/bin/bash

#Primero le pedimos que nos idique la ruta donde       
#se encuentra la carpeta origen y comprobamos si       
#existe

echo "Ingrese la ruta de la carpeta de destino"
read ruta_carpeta_destino

if [ -d $ruta_carpeta_destino ];
then
echo "Sí, la carpeta destino existe."
else
echo "No, no existe la carpeta"
exit
fi

#verificamos el contenido de la carpeta origen
echo "El contenido de la carpeta origen es:"
ls -l  $ruta_carpeta_origen

#copiamos el contenido de la carpeta origen
for i in `find $ruta_carpeta_origen -type f` ; do cp -r $i $ruta_carpeta_destino ; done


#Imprimimos el contenido de las carpetas para ver que tengan el mismo contenido
#contenido de la carpeta destino
echo "Contenido de la carpeta de destino:"
ls -l $ruta_carpeta_destino
