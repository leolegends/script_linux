#!/bin/bash

# Programa de pobre ###
#

while true; do
  choice="$(zenity --width=250 --height=240 --list --column "Everest de pobre" --title="Everest de pobre" \
  "Placa-mãe" \
  "Processador" \
  "Memória" \
  "USB" \
  "Sair")"

  case "${choice}" in
     "Placa-mãe" )
       dmidecode |grep -A 5 Base | zenity --list --title "Informações de Hardware" --text " Abaixo estão listados as informações da sua placa mãe...\n" --column "Placa Mãe"  --width=700 --height=270
;;
      "Processador" )
       dmidecode --type 4 |grep -A 47 Processor | zenity --list --title "Informações do Processador" --text " Abaixo estão listados as informações do processador...\n" --column "Processador"  --width=700 --height=500
;;
      "Memória" )
      dmidecode --type 6 | grep Enable | zenity --list --title "Informações da Memória" --text " Abaixo estão listados as informações de memória...\n" --column "Memória"  --width=500 --height=250
;;
     "USB" )
       lsusb -v |grep -A 1 idVendor | zenity --list --title "Dispositivos USB" --text " Abaixo estão listados os dispositivos USB...\n" --column "USB"  --width=500 --height=400
;;
        *)
            break
          ;;
        esac

done

