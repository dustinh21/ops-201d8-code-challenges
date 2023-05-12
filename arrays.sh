#!/bin/bash

# Script: Ops 201 Class 04 Ops Challenge Solution
# Author: Dustin H                 
# Date of latest revision:  
# Purpose: Function that uses an array to push directories and text files

# Main
# Defines array
DIRS=(dir1 dir2 dir3 dir4)

#loop to create the directory and text document
for a in ${DIRS[@]}
do
   mkdir "$a"
   touch "$a"/"new.txt"
done

# End