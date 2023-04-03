#!/bin/bash
############################################################################################
# Clinton Howard (cjh_719(at)outlook.com - April 3 2023
############################################################################################

# script study and practice for the PNPT

## ping sweep script for /24
### it takes in an argument $1 of a /24 IP address. example: 192.168.0

if [ "$1" == ""] # if argument is blank print error message
then
echo "You forgot an IP address!"
echo "Syntax: ./ipsweep.sh 192.168.1"

for ip in `seq 1 254`; # for loop to sequentially go through each of 

do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
