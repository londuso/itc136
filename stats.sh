#!/bin/bash

diskused=$( df -h | grep “/dev/sda1” | awk ‘{print $5}’ )

memfree=$( free -mh | grep Mem: | awk '{print $7}' )

connections=$( netstat | grep tcp )

users=$( who )

echo "This is a snapshot of your current system:

      Disk Used: $diskused
      Free Memory: $freemem
      Open Internet Connections: $connections
      Logged-in Users: $users"
