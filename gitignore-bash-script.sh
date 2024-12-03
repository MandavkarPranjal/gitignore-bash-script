#!/usr/bin/env bash

##### COLORS #####
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
GREY='\033[0;90m'
NOCOLOR='\033[0m'
####################

selection=$(curl -sfL https://www.toptal.com/developers/gitignore/api/list | tr "," "\n" | fzf )
if [[ -n "$selection" ]]; then
    echo -e "${GREY}Getting .gitignore ...${NOCOLOR}"
    curl -fLw '\n' "https://www.toptal.com/developers/gitignore/api/$(echo "$selection")" >> .gitignore

    echo -e "${GREEN}                             Done!                             ${NOCOLOR}"
    echo -e "${GREEN}–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––${NOCOLOR}"
else
    echo -e "${RED}No selection made.${NOCOLOR}"
fi
