$connectTestResult = Test-NetConnection -ComputerName saatin6879393.file.core.windows.net -Port 445
if ($connectTestResult.TcpTestSucceeded) {
    # Save the password so the drive will persist on reboot
    cmd.exe /C "cmdkey /add:`"saatin6879393.file.core.windows.net`" /user:`"localhost\saatin6879393`" /pass:`"XtFLT/BAgeFTJnI+lLWdIeQpdXqap29sFWVPzGHrOXYX5LHNvgSVR/84Mia6VO26BNaA04ua+04x+ASt+wwcAw==`""
    # Mount the drive
    New-PSDrive -Name Z -PSProvider FileSystem -Root "\\saatin6879393.file.core.windows.net\fscommon" -Persist
} else {
    Write-Error -Message "Unable to reach the Azure storage account via port 445. Check to make sure your organization or ISP is not blocking port 445, or use Azure P2S VPN, Azure S2S VPN, or Express Route to tunnel SMB traffic over a different port."
}

# --------------------------------------

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
