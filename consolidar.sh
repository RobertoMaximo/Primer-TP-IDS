#!/bin/bash

while true; do

 if [ -n "$(ls -A ~/EPNro1/entrada)" ]; then
   cat -n ~/EPNro1/entrada/* >> ~/EPNro1/salida/FILENAME.txt
   mv ~/EPNro1/entrada/*  ~/EPNro1/procesado/
 fi

 sleep 2

done
