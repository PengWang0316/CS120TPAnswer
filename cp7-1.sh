#! /bin/bash
# The origin code does not have then keywork

if ! echo ${PATH} |grep -q /usr/games
then
  PATH=$PATH:/usr/games
fi
