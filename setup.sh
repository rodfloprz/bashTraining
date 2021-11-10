#|/bin/bash
echo "Setup and configure Server"

file_name=config.yaml

config_dir=$1

# file conditions is important to review
#if [ -d "config" ]
if [ -d "$config_dir" ]
then
	echo "reading config directory contents"
	#Another topoic to review is how to use commands and then assign them to a variable
	#config_files=$(ls config)
	config_files=$(ls "$config_dir")
else
	echo "config dir not found, Creating one"
	mkdir "$config_dir"
	touch "$config_dir"/config.sh
	# mkdir config
fi

user_group=$2 
if [ "$user_group" == "rfloresp" ]
then 
	echo "configure the serevr"
elif [ "$user_group" == "admin" ]
then
	echo "administer the server"
else
	echo "No premition to configure server, wrong user group"
fi


# check operators in bash 
# num_files=
# if [ num_files -lt 10 ]

# file contditions
# if [ -f "config.yaml" ]

echo "using file $file_name to configure something"

echo "here are all configuration files: $config_files"
