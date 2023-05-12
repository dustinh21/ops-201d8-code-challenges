#!/bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution
# Author: Dustin H                  
# Date of latest revision:     
# Purpose: Print a string to the terminal

# Defines variable result
result="The user session history for this PC is:"

# Defines function sessionHistory
function sessionHistory {
	echo $result
	sudo last
}

# This function calls sessionHistory
sessionHistory

# End