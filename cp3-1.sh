#! /bin/bash

askNumber() {
  #echo 'Please enter a number between 20 and 30: '
  #read number
getInput
  while [[ $number =~ [^0-9] || $number < 20 || $number > 30 ]]
  do
    echo 'Invalid number.'
    getInput
  done
  printf "your input is %s\n" $number
}

getInput() {
  echo 'Please enter a number between 20 and 30: '
  read number
}
