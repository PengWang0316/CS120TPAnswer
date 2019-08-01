#! /bin/bash

var=192.168.0.123
set -- ${var//./' '}
echo $2
