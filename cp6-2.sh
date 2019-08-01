#! /bin/bash

max3() #@ Sort 3 integers and store in an array
{      #@ USAGE: max3 N1 N2 N3 [VARNAME]
  varName=${4:-_MAX3}
  [[ ! $varName =~ ^[characters,_][[:alnum:],_]*$ ]] && echo 'Wrong variable name.' && return 1
  declare -n _max3=$varName
  (( $# < 3 )) && return 4
  (( $1 > $2 )) && set -- "$2" "$1" "$3"
  (( $2 > $3 )) && set -- "$1" "$3" "$2"
  (( $1 > $2 )) && set -- "$2" "$1" "$3"
  _max3=( "$3" "$2" "$1" )
}
