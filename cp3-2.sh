#! /bin/bash

checkFile() {
  getFileName
  while [ ! -f $fileName ]
  do
    echo 'Did not fine the file: '$fileName
    getFileName
  done
  echo 'Found the file: '$fileName
}

getFileName() {
  echo 'Please enter a file name: '
  read fileName
}
