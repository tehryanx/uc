#!/bin/bash

# get input as a long string of hex octets
hex_input=`echo $@ | xxd -c 9999 -ps`

# remove line term and loop through each octet
for i in $(echo $hex_input | sed 's/0a$//' | sed 's/\(..\)/\1\n/g'); do
	echo -n "%$i" 
done; echo


