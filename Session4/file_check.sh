#!/bin/bash
u=0
i=$(ls $2)
for file in $i
do 
  if [[ $file == $1 ]] then
    echo File exits
    echo -e "contens of $1 :\n"
    cat $2/$1
    u=1
  fi
done
if [[ $u = 0 ]]
then
  echo File not found
fi
