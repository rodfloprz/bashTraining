#!/bin/bash

echo "all parameters: $*"
echo "number of params: $#"

for param in $*
  do
	  # inputs ./loops.sh nana admin config.yaml setup-scripts/ perez

	  if [ -d "$param" ]
	  then
		  echo "executing scripts in the folder"
	  fi

	  echo $param
  done

sum=0
while true
  do
    read -p "enter a score: " score

    if [ "$score" == "q" ]
    then
      break
    fi

    sum=$(($sum+$score))
    echo "total score: $sum"  
  done
