# login to the database server using Secure shell
ssh peter@stdb01

# check if mariadb is installed
mariadb --version

# Trying to restart mariadb service
sudo systemctl restart mariadb

# check mariadb status
sudo systemctl status mariadb

# status shows exit code as 1
# view the detailed error logs
sudo journalctl -xeu mariadb.service

ls /var/log/mariadb
# permission denied

# switch to root user
sudo su -

# list the contents inside the directory
ls /var/log/mariadb

# change to this directory
cd /var/log/mariadb

# list the contents of the directory
ls

# use cat command to open the contents of the file
sudo cat mariadb.log

# it will show an error like this
# [ERROR] mariadbd: Can't create/write to file '/run/mariadb/mariadb.pid' (Errcode: 13 "Permission denied")

# to view the permissions of the /run/mariadb directory
ls -l /run/mariadb

# change mode to u=rwx + go=r-x for the directory
sudo chmod 755 /run/mariadb

# restart mariadb service
sudo systemctl restart mariadb

# verify the status of mariadb service, it should show status as running
sudo systemctl status mariadb

