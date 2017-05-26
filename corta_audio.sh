#!/bin/bash

zenity --forms --text "\t\t\t\t\tScript para cortar ligações:\n\nEntre com o tempo inicial, depois com o tempo desejado apos o inicio. \n\n\t\t\t\t\t\tLeonardo Ribeiro" --title "Corta Gravações"

arquivo=$(zenity --file-selection)

tempoinicio=$(zenity --forms --text="Entre com o tempo Inicio Exemplo: 00:30:12" --add-entry="digite o tempo:")

tempofim=$(zenity --forms --text="Entre com o tempo desejado apos inicio: 00:00:12" --add-entry="digite o tempo:")

comando=$(ffmpeg -ss $tempoinicio -t $tempofim -i $arquivo recortado.wav)
echo '\n\n'
echo  'Arquivo:  ' $arquivo
echo 'Tempo de inicio: ' $tempoinicio
echo 'Tempo Determinado:' $tempofim
echo 'Arquivo de Saida: recortado.wav'

mv recortado.wav /home/administrador/gravacoes_cortadas

zenity --warning --text "Concluido, verifique a pasta gravacoes_cortadas : recortado.wav!"
