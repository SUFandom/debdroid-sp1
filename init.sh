#!/bin/bash

if (grep -i "Debdroid-starter NO SERVICE PACK" /var/lib/debdroid-start/keychain)
then
./inject.sh 
else
echo "No Keychain Available, You didn't install the Debdroid -starter or your system is already updated"
exit
fi 
