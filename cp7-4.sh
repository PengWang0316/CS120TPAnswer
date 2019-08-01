#! /bin/bash

_ltrim() #@ Trim characters from the left
{
  local trim_string
  _TRIM=$1   # input string or number
  _NUM=$2    # number of trims from the left
  trim_string=${_TRIM:_NUM}
  _TRIM=$trim_string
}

ltrim() #@ Print trimmed string
{
  _ltrim "$@" && printf "%s\n" "$_TRIM"
}

_rtrim() #@ Trim characters from the right
{
  local trim_string
  _TRIM=$1           # input string or number
  _NUM=$2            # number of trims from the right
  _LEN=${#_TRIM}     # get length of input
  trim_string=${_TRIM::_LEN - _NUM}
  _TRIM=$trim_string
}

rtrim() #@ Print trimmed string
{
  _rtrim "$@" && printf "%s\n" "$_TRIM"
}
