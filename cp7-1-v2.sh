#! /bin/bash

# the code was missing a 'then' keyword after the 'if' keyword

if ! echo ${PATH} |grep -q /usr/games
then
  PATH=$PATH:/usr/games
fi
