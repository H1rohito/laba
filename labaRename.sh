#!/bin/bash

reFile(){
	suffix=$1
	folder=$2
	for file in "$folder"/*
		do
		if [ -f "$file" ]
			then 
			fileName=$(basename "$file" | sed 's/\.[^.]*$//')
			extension=$(basename "$file" | awk -f. '{printf $NF}')
			mv -- "$file" "${fileName}_${suffix}.${extension}"
		fi
	done
	}
	
	if [ -z "$1" ] || [ -z "$2" ] 
		then
		echo "Ожидаются: <suffix> <folder>" 
		exit 1
	fi
	
reFile "$1" "$2"
