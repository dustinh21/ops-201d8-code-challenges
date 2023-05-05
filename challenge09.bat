#!/bat

# Script Name:                  Challenge09
# Author:                       Dustin H
# Date of latest revision:      5/4/23
# Purpose:                      

# Declaration of variables

# Declaration of functions


# Main

Get-EventLog -LogName System -After (Get-Date).AddDays(-1) | Out-File "$env:home\Desktop\last_24.txt"

Get-EventLog -LogName System -EntryType Error | Out-File "$env:home\Desktop\errors.txt"

Get-EventLog -LogName System -InstanceId 16

Get-EventLog -LogName System -Newest 20

Get-EventLog -LogName System -Newest 500 | Select-Object -Property Source, Message | Format-List -Wrap



# End