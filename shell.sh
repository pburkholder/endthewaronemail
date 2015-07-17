#!/bin/bash

slackopts='-g testmessages -p'
sleep=12
echo "Starting with sleep, $sleep, and opts, $slackopts"
cat message.txt | 
  while read line; do 
    sleep $sleep; 
    [ ".$line" == '..' ] && continue; 
    echo $line 
    echo $line | slackcat $slackopts
  done
