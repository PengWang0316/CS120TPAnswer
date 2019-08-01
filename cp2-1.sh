#! /bin/bash
#The wrong command: tr A Z < $HOME/temp > $HOME/temp

#The problem is we do not have $HOME/temp file and we should use a pipeline for this command
#If we create the temp file first and run the command, it will be fine
echo 'AAABBBAAA' > $HOME/temp
cat $HOME/temp
tr A B < $HOME/temp | { read str; echo $str > $HOME/temp; }
cat $HOME/temp

