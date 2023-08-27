#!/bin/bash
i=0
s=$(find .  -type f -not -name "$2*" -name "*.$1"| head -n1)
while [[ -n $s ]]
do
  ((i++))
  mv $s "$2$i.$1"
  s=$(find .  -type f -not -name "$2*" -name "*.$1"| head -n1)
done

