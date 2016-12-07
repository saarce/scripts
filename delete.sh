#!/bin/bash
#
#exemple: ${couleur}text{neutre}

vertclair='\e[1;32m'
rose='\e[1;31m'

neutre='\e[0;m'

blih -u julien.omacini@epitech.eu repository delete $1 && echo -e "${vertclair}DONE.${neutre}" || echo -e "${rose}ERREUR${neutre}"