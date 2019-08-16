##Add ssh rsa key to multiple servers, also registers multiple servers to known_hosts file
#!/bin/bash
while IFS= read -r line; do
echo $line
#Script is written to run in home directory, if not, change the relative path to known_hosts file
ssh-keyscan $line >> .ssh/known_hosts
#Change password with your root password
echo "password" | sshpass ssh-copy-id -f -i id_rsa.pub root@$line
#Make a server list, line by line, put the list in the same directory with this script.
done < list.txt
