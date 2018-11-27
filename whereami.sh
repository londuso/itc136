#!/bin/bash

whereiam=$(pwd)
whoiam=$(whoami)
myuid=$(id | awk -F "=" '{print $2}' | awk -F "(" '{print $1}')


echo "Where am I?  "
echo "$whereiam"

echo "Who am I? "
echo "$whoiam"

echo "What's my User ID? "
echo "$myuid"

echo "Do I have sudo priviledges? "
sudo -l

echo "What processes am I running? "
top -U $whoiam
