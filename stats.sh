#!/bin/bash

diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}' )

memfree=$( free -mh | grep Mem: | awk '{print $7}' )

connections=$( netstat | grep tcp )

users=$( who )

echo -e "This is a snapshot of your current system:

      \e[36m      Disk Used: $diskused
      \e[35m      Free Memory: $memfree
      \e[33m      Open Internet Connections: $connections
      \e[32m      Logged-in Users: $users"
