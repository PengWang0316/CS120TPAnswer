#! /bin/bash
_max3() #@ Sort 3 integers and store in $_MAX3, $_MID3 and $_MIN3
{       #@ USAGE:
    [ $# -ne 3  ] && return 5
    [[ $1 =~ [^0-9]+ ]] || [[ $2 =~ [^0-9]+ ]] || [[ $3 =~ [^0-9] ]] && echo 'We need three integers.' && return 1 
    [ $1 -gt $2 ] && { set -- $2 $1 $3; }
    [ $2 -gt $3 ] && { set -- $1 $3 $2; }
    [ $1 -gt $2 ] && { set -- $2 $1 $3; }
    _MAX3=$3
    _MID3=$2
    _MIN3=$1
}
