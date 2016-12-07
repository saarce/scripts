#!/bin/bash
#
#exemple: ${couleur}text{neutre}

vertclair='\e[1;32m'
bleuclair='\e[1;34m'
violetclair='\e[1;35m'
cyanclair='\e[1;36m'
rose='\e[1;31m'

neutre='\e[0;m'

git add --all
echo -e "${vertclair}Les fichiers ont étés ajoutés à la file d'attente${neutre}"
while [ -z $commit ]
do
		read -p 'Commentaire : ' commit
done
git commit -m "$commit" && echo -e "${vertclair}Votre push à correctement été commenté${neutre}"
echo -e "${cyanclair}----> ${vertclair}Votre commentaire est le suivant : ${neutre}$commit" && git push origin master && echo -e "${vertclair}Vos fichiers ont correctement étés push${neutre}" || echo -e "${rose}## ERREUR ##${neutre}"