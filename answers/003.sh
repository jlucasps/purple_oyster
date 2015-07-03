#!/bin/bash

# Write a bash script the list all directories inside the folder /opt/resources/

file /opt/resources/* | grep directory | awk -F ":" '{ print $1 }'
