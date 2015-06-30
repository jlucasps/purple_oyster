#!/bin/bash

# Write a bash script the outputs to STDOUT each user and its respective home folder, separated by comma.
#   Tips: package awk
#   The output should be in the following pattern, not considering the hash (#) and spaces in the beginning of each line:

# root,/root
# daemon,/usr/sbin
# bin,/bin
# sys,/bin

cat /etc/passwd | awk -F ":" '{ printf "%s,%s\n", $1, $6 }'
