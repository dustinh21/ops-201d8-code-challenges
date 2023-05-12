#!/bat

# Script Name:                  Script Name
# Author:                       Your Name
# Date of latest revision:      00/00/0000
# Purpose:                      Purpose

# Declaration of variables

# Declaration of functions


# Main

@echo off
set source="C:\Users\j.thompson\Desktop\My Project Files"
set destination="C:\Users\j.thompson\Desktop\Backup"
echo Starting backup of %source% to %destination%...
robocopy %source% %destination% /E /ZB /DCOPY:T /MT:8 /R:3 /W:5 /LOG:"%destination%\backup.log"
echo Backup completed.







# End