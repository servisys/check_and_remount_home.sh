# check_and_remount_home.sh

This simple script is useful to check if a particular mountpoint is up.

If not it can execute a command to mount it.

Very simple script that can be surely improved.

## SETUP ##

1. mount your partition/nfs/sshfs or whetever you want to check
2. after succesfull mount, create an empty file named MOUNT_CHECK with the command
touch MOUNT_CHECK
3. if all is gon ok, and file MOUNT_CHECK is present go on
4. setup a cronjob every minute wit command

`crontab -e`

and adding 

`* * * * * /root/check_and_remount_home.sh`

5. that's all.
