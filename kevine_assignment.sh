#!/bin/bash

#prompt the user to enter a directory name

read -p "Enter a directory name: " dir_name

#Defining submission 1 and 2 files
file1=submission1.txt
file2=submission2.txt

# if conditions to check directories, files and their creation

if [ -f "$dir_name" ]; then
	echo "Error message: $dir_name already exists as a file"
elif [ -d "$dir_name" ]; then
	echo "Directory $dir_name already exist"
	cd $dir_name
	touch "$file1"
	touch "$file2"
elif [ -f "$dir_name/$file1" ]; then
	echo "The $file1 already exist"
elif [ -f "$dir_name/$file2" ]; then
	echo "The $file2 already exist"
elif [ ! -d "$dir_name" ]; then
	echo "Directory $dir_name does not exist"
	mkdir $dir_name
	cd $dir_name
	touch $file1
	touch $file2
else 
	echo "Have a good day"
fi


