#!/bin/bash
#
#exemple: ${couleur}text{neutre}

vertclair='\e[1;32m'

neutre='\e[0;m'

while [ -z $email ]
do
		read -p 'Votre login : ' email
done

while [ -z $depot ]
do
		read -p 'Nom du dépot : ' depot
done

blih -u $email repository create $depot
echo -e "${vertclair}Le dépot $depot à correctement été créé${neutre}"
blih -u $email repository setacl $depot ramassage-tek r
echo -e "${vertclair}Les droits de ramassage ont étés correctement appliqués${neutre}"
git clone git@git.epitech.eu:/$email/$depot
echo -e "${vertclair}Le dépot $depot à été cloné avec succès${neutre}"
