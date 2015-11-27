#!/bin/bash
for ip in `cat host.txt`
do
./autossh.sh $ip
echo "autossh SUCCESS!"
ssh root@$ip "echo root:51test.com | chpasswd"
echo "autochpa SUCCESS!"
done
