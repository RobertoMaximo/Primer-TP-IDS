#!/bin/bash

echo "Menu"
echo "1) Crear entorno"
echo "2) Correr proceso"
echo "3) Ordenar por numero de padron"
echo "4) Ordenar por notas mas altas"
echo "5) Buscar padron"
echo "6) Salir"

read -p "Elija una opcion:" opcion

case $opcion in
    1)if [ -e "EPNro1" ]; then
      echo "Ya creaste un entorno"
      else
      mkdir -p ~/EPNro1/entrada ~/EPNro1/salida ~/EPNro1/procesado
      echo "Entorno creado"
      fi
      ;;

      2)cp "$HOME/consolidar.sh" "$HOME/EPNro1/"
      bash ~/EPNro1/consolidar.sh &
      echo "Ejecutando proceso en segundo plano"
      ;;

      3) if [ -f ~/EPNro1/salida/FILENAME.txt ]; then
      sort -nr -k 2 ~/EPNro1/salida/FILENAME.txt
      else
         echo "no existe el archivo"
       fi
       ;;

       4) if [ -f ~/EPNro1/salida/FILENAME.txt ]; then
      sort -nr -k 5 ~/EPNro1/salida/FILENAME.txt
      else
         echo "no existe el archivo"
       fi
       ;;

       5)read -p "Ingrese un numero de padron:" pa
       grep "$pa" ~/EPNro1/salida/FILENAME.txt 
       ;;

       esac
