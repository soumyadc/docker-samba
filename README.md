Motivation and Ref: https://pimylifeup.com/raspberry-pi-samba/


## SAMBA on Alpine linux
---------------------
- Install the basic samba package using 
```
apk add samba
```
  REF: https://wiki.alpinelinux.org/wiki/Setting_up_a_samba-server
- create a smb.conf file

```'conf'
[pimylifeupshare]
path = /home/pi/shared
writeable=Yes
create mask=0777
directory mask=0777
public=no
```

- Add samba user
```
adduser -s /sbin/nologin -h /home/samba -H -D samba
```
- set samba password
```
echo -e "1234"\\n"1234" | smbpasswd -s -a samba

#echo -e "$SMB_PASSWD\n$SMB_PASSWD" | smbpasswd -s -a $SMB_USER
```
- start the samba service manually and in forground
```
smbd --foreground --no-process-group --log-stdout --configfile /etc/samba/smb.conf
```

> in advanced distros you can run it as service command as daemon. for this docker purpose and light footprint, we just use the above method

