# Add "01-" prefix to any file in a directory
ls -la | awk '{print $9}' | for file in 00* ; do  cp $file 01-$file ; done

# Get the mac address from a device and change ":" symbols to "-", make this a variable for another script
$(ifconfig ens192 2>/dev/null|awk '/ether/ {print $2}' | sed  's/:/-/g')
