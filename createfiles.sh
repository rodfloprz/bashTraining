#!/bin/bash

  function create_file() {
    file_name=$1
    is_shell_script=$2
    touch $file_name
    echo "file $file_name created"

    if [ "$is_shell_script" == true ]
    then
	    chmod u+x $file_name
	    echo "execute permission"
    fi
  }

  create_file test.txt
  create_file myfile.yaml
  create_file script.sh true
