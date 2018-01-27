#!/bin/python

'''
import os importando as libs do sistema do linux
para podermos executar os comandos.

importante instalar o pv

apt-get install pv

rodar: python vector.py

'''

import os

'''

'''

print "\n\n\t\t\tRsync escolha uma das opcoes abaixo:\n"

opcao_escolhida = int(input("\nEntre com uma das opcoes abaixo:\n (1) pasta 1: \n (2) pasta 2: \n"))

if opcao_escolhida == 1:
        print "copiando para pasta 1"
        os.system("rsync -avr root@123.456.789:/var/www/xyz/uploads* /var/www/zys/uploads | pv -p -e -t -a -r")

elif opcao_escolhida == 2:
        print "copiando para pasta 2"
        os.system("rsync -avr root@123.456.789:/var/www/xyz/uploads* /var/www/zys/uploads | pv -p -e -t -a -r")
else:
    print "\n\tOPCAO INVALIDA \n"
