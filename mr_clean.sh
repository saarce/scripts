#!/bin/bash
#
#exemple: ${couleur}text{neutre}
 
vertclair='\e[1;32m'

neutre='\e[0;m'

find -type f \( -name "*~" -o -name "#*#" -o -name "*.o" \) -delete
echo -e "${vertclair}CLEAN DONE.${neutre}"
ls