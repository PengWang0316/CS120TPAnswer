#! /bin/bash
printf "%s.%s\n%s.%s\n%s.%s\n%s.%s\n" "$RANDOM" "$RANDOM" "$RANDOM" "$RANDOM" "$RANDOM" "$RANDOM" "$RANDOM" "$RANDOM" > temp
var=$(cat temp)
