#!/bin/sh

## Script Docker actions repertoire ##


# Définition des variables

rep_src="/home/olivier/Téléchargements"
rep_dest="/home/olivier/Images"


# Check existence du répertoire source

if [ -d $rep_src ]
then echo "le repertoire source existe"
else echo "le repertoire source n'existe pas"
exit 1
fi

# Check existence du répertoire destination

if [ -d $rep_dest ]
then echo "le repertoire source existe"
else echo "le repertoire source n'existe pas"
exit 1
fi

# Check les images dans /home/Telechargement et les déplace dans /home/images


find "$rep_src" -name *.jpg -type f -print0 | while read -d '' file
do
	mv $file $rep_dest/
done
