ssh username@hostname

sudo nano /etc/ssh/sshd_config

 PermitRootLogin: no

sudo systemctl restart sshd