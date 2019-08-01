#! /bin/bash

# You can use this program to detect how many arguments in the command line
index=1
for arg in "$@"
do
  printf "Argument %d: %s\n" "$index" "$arg"
  index=$(( $index + 1 ))
done
echo 'You have '$(( $index - 1 )) 'indexs.'
