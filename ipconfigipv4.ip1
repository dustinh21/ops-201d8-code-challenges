#!/bat

# Script Name:                  Challenge12
# Author:                       Dustin H
# Date of latest revision:      5/4/23
# Purpose:                      


# Define a variable to hold the filename
$filename = "network_report.txt"

# Define a function to search for IPv4 addresses
function Search-IPv4Address {
    # Read the contents of the file into a variable
    $content = Get-Content $filename

    # Use Select-String to search for IPv4 addresses and return only the matching text
    $matches = Select-String -InputObject $content -Pattern '\b(?:\d{1,3}\.){3}\d{1,3}\b' | ForEach-Object { $_.Matches.Value }

    # Return the array of matching IPv4 addresses
    return $matches
}

# Run the ipconfig command and save the output to a file
ipconfig /all > $filename

# Search for IPv4 addresses in the file
$ipv4Addresses = Search-IPv4Address

# Output the matching IPv4 addresses to the console
Write-Host "IPv4 Addresses:"
foreach ($ipv4Address in $ipv4Addresses) {
    Write-Host $ipv4Address
}

# Remove the file when finished
Remove-Item $filename
