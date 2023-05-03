#!/bin/bash

# Script Name:                  Script Name
# Author:                       Your Name
# Date of latest revision:      00/00/0000
# Purpose:                      Purpose

# Declaration of variables

# Declaration of functions


# Main


#!/bin/bash

# Check if script is running as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

# Use lshw to display system information about CPU
echo "CPU:"
lshw -class processor | grep -E "product|vendor|physical id|bus info|width"

# Use lshw to display system information about RAM
echo "RAM:"
lshw -class memory | grep -E "description|physical id|size"

# Use lshw to display system information about Display adapter
echo "Display Adapter:"
lshw -class display | grep -E "description|product|vendor|physical id|bus info|width|clock|capabilities|configuration|resources"

# Use lshw to display system information about Network adapter
echo "Network Adapter:"
lshw -class network | grep -E "description|product|vendor|physical id|bus info|logical name|version|serial|size|capacity|width|clock|capabilities|configuration|resources"





# End