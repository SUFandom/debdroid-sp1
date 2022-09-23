#!/bin/bash

# Exit Vars
: ${DIALOG_OK=0}
: ${DIALOG_CANCEL=1}
: ${DIALOG_ESC=255}
if (grep -i "Debdroid" /etc/os-release)
then
if (dialog --backtitle "Debdroid SP1 Setup" --title "Action" --yes-label "Install" --no-label "Cancel" --yesno "Do you want to install Debdroid Service Pack 1??" 0 0)
then
chmod +x diagnose/*
chmod +x git-manager/*
chmod +x git-manager/usr-share/*
chmod +x res/*
cp os-release/os-release /usr/lib/os-release
cp diagnose/diagnose /bin/
mkdir /usr/share/git-manager/
cp git-manager/git-manager /usr/bin 
cp -r git-manager/usr-share/* /usr/share/git-manager
mkdir /var/lib/git-manager/
touch /var/lib/git-manager/key
mkdir /var/lib/git-manager/cache
mkdir /usr/share/diagnose
mv res/Visual-studio /usr/share/diagnose/Visual-studio
fi
else 
echo "OS Not Supported for Upgrade"
fi 
