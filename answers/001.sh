# 1 - Write a bash script that shows the username of all users present in the system
echo "scenario-001:"
cat /etc/passwd | awk -F ":" '{ print $1}'
