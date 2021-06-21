https://pimylifeup.com/raspberry-pi-samba/

sudo apt-get install samba samba-common-bin

mkdir /home/pi/shared

sudo nano /etc/samba/smb.conf

```
[pimylifeupshare]
path = /home/pi/shared
writeable=Yes
create mask=0777
directory mask=0777
public=no
```
sudo smbpasswd -a pi

sudo systemctl restart smbd
OR
sudo service samba restart




SAMBA on Alpine linux
---------------------
	https://wiki.alpinelinux.org/wiki/Setting_up_a_samba-server
	samba-alpine-docker/supervisord.conf at master  pwntr/samba-alpine-docker  GitHub

	Start the smbd process manually
	smbd --foreground --no-process-group --log-stdout --configfile /etc/samba/smb.conf

RUN the following
	adduser -s /sbin/nologin -h /home/samba -H -D samba
	echo -e "1234"\\n"1234" | smbpasswd -s -a samba
	#echo -e "$SMB_PASSWD\n$SMB_PASSWD" | smbpasswd -s -a $SMB_USER
	smbd --foreground --no-process-group --log-stdout --configfile ./smb.conf

smb.conf
```
[pimylifeupshare]
path = /home/pi/shared
writeable=Yes
create mask=0777
directory mask=0777
public=no
```

