#!/bin/bash

read -e -p "Bonjour, voulez vous (R)ecevoir ou (E)nvoyer des fichiers ? \n" rep
if [ $rep == 'R' ]
then
	git pull
elif [ $rep == 'E' ]
then
	read -e -p "Fonctionnalité en cours (appuie sur entrée cplc)" -i "." chemin
	echo "Quel message de commit dois je mettre ? : "
	read msg
	git add $chemin
	git commit -m "$msg"
	git push
else
	echo "Erreur là mon chef relance le programme"
fi

exit 0
