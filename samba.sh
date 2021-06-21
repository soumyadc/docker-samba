adduser -s /sbin/nologin -h /home/samba -H -D samba
#echo -e "$SMB_PASSWD\n$SMB_PASSWD" | smbpasswd -s -a $SMB_USER
echo -e "1234"\\n"1234" | smbpasswd -s -a samba
smbd --foreground --no-process-group --log-stdout --configfile ./smb.conf
