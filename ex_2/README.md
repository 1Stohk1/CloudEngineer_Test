# Rules

## Installing and running ssh-server
In order to establish a connection as a client to the remote machine having the IP adress 192.168.1.100, it should have installed openssh-server package.
```bash
sudo apt-get install openssh-server
```
Then the daemon should automatically start, to check it you can use:
```bash
systemctl status sshd
```
If the daemon is not active you can use:
```bash
sudo systemctl start sshd
```

## Connecting

Automatically the protocol open and listen to requests towards the port 22, if this option has left unaltered the ssh connection will try to communicate to this port.

### Advanced
Change the default port, disable access through password and root access.
To permit a safe access the ssh host could permit only some IP addresses to connect, this could be done through the use of the routing table.

The reason why the crontab is addressing the backup itself to a different file sits behing maintanance, if i want to change the scheduled time with which the daemon calls the backup i will touch only the crontab file, for the same reason if i want to change the folder or the compression and ssh address where i want to send the backup i will manage only the shell script.