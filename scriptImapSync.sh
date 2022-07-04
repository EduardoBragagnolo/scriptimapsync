#!/bin/bash


#arquivo .csv com as contas de emails e senhas provisórias cadastradas apenas para essa migração:
INPUT=arquivo_de_contas.csv 

while IFS=, read -r field1 field2
	do
			imapsync --host1 myserver.com --ssl1 --port1 993 --user1 "$field1" --password1 "$field2"\
					 --host2 myserver.com --ssl2 --port2 993 --user2 "$field1" --password2 "$field2"

	done < arquivo_de_contas.csv
