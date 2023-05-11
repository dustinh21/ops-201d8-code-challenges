In this script, the run_commands() function takes a domain name as an argument and runs the whois, dig, host, and nslookup commands against it, saving the results to a file named <domain_name>.txt. The function also outputs a message to the terminal indicating where the results were saved, and opens the file in the user's default text editor using the $EDITOR variable.

The script prompts the user to enter a domain name using the read command, and passes the user input as an argument to the run_commands() function.

Note that you may need to install some of these utilities, such as whois and dig, if they are not already installed on your system.