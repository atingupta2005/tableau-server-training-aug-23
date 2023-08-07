sudo mkdir /mnt/fscommon
if [ ! -d "/etc/smbcredentials" ]; then
sudo mkdir /etc/smbcredentials
fi
if [ ! -f "/etc/smbcredentials/saatin6879393.cred" ]; then
    sudo bash -c 'echo "username=saatin6879393" >> /etc/smbcredentials/saatin6879393.cred'
    sudo bash -c 'echo "password=XtFLT/BAgeFTJnI+lLWdIeQpdXqap29sFWVPzGHrOXYX5LHNvgSVR/84Mia6VO26BNaA04ua+04x+ASt+wwcAw==" >> /etc/smbcredentials/saatin6879393.cred'
fi
sudo chmod 600 /etc/smbcredentials/saatin6879393.cred

sudo bash -c 'echo "//saatin6879393.file.core.windows.net/fscommon /mnt/fscommon cifs nofail,credentials=/etc/smbcredentials/saatin6879393.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30" >> /etc/fstab'
sudo mount -t cifs //saatin6879393.file.core.windows.net/fscommon /mnt/fscommon -o credentials=/etc/smbcredentials/saatin6879393.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30
