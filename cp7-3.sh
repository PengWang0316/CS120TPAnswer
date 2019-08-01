#! /bin/bash

# You can use p flag to control printing
# example: paliandrome -p abba
palindrome() {
  local OPTIND opt isPrint=false str=$1
  # Check the p flag
  while getopts ":p:" opt; do
     case "${opt}" in
        p) isPrint=true
           str=$2;;
     esac
  done
  shift $((OPTIND-1))

  length=${#str}
  eIndex=$(( length - 1 ))
  halfIndex=$(( length / 2 ))

  for (( i=0; i < halfIndex ; ++i,--eIndex ))
  do
     if [ ${str:i:1} != ${str:eIndex:1} ]
     then
       if [ $isPrint == true ]
       then
         printf "The string '%s' is not a palindrome.\n" "$str"
       fi
       return 1
     fi
  done

  if [ $isPrint == true ]
  then
    printf "The string '%s' is a palindrome.\n" "$str"
  fi
  return 0
}
