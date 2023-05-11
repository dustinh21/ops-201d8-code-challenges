
#!/bin/bash

# Script Name:                  Domain name search
# Author:                       Dustin Haggett
# Date of latest revision:      5/10/2023
# Purpose:                      Get domain info quickly in linux terminal

#

# Define a function to run all the commands and output the results to a file
run_commands() {
  domain="$1"
  whois "$domain" > "$domain.txt"
  dig "$domain" >> "$domain.txt"
  host "$domain" >> "$domain.txt"
  nslookup "$domain" >> "$domain.txt"
  echo "Results for $domain saved to $domain.txt"
  $EDITOR "$domain.txt"
}

# Prompt the user to enter a domain name
read -p "Enter a domain name: " domain_name

# Call the function with the user input as an argument
run_commands "$domain_name"
