# Troubleshooting MariaDB Service Failed to Start 

## 1. Login to Database Server

```bash
ssh peter@stdb01
```

## 2. Verify MariaDB Installation

```bash
mariadb --version
```


## 3. Restart MariaDB Service

```bash
sudo systemctl restart mariadb
```


## 4. Check MariaDB Service Status

```bash
sudo systemctl status mariadb
```

If service shows:

```text
status=1/FAILURE
```

Proceed to check logs.


## 5. View Detailed Service Logs

```bash
sudo journalctl -xeu mariadb.service
```


## 6. Check MariaDB Log Directory

```bash
ls /var/log/mariadb
```

If:

```text
Permission denied
```

Switch to root.



## 7. Switch to Root User

```bash
sudo su -
```

## 8. Access MariaDB Logs

```bash
ls /var/log/mariadb

cd /var/log/mariadb

ls
```



## 9. Read MariaDB Error Logs

```bash
sudo cat mariadb.log
```

Example error:

```text
[ERROR] mariadbd:
Can't create/write to file
'/run/mariadb/mariadb.pid'
(Errcode: 13 "Permission denied")
```

This indicates **permission issue on `/run/mariadb` directory**.



## 10. Verify Directory Permissions

```bash
ls -l /run/mariadb
```



## 11. Fix Permissions

```bash
sudo chmod 755 /run/mariadb
```

Permissions:

* `u` : User
* `g` : Group
* `o` : Others
* `rwx` : Read + Write + Execute


## 12. Restart MariaDB Service

```bash
sudo systemctl restart mariadb
```


## 13. Verify Service is Running

```bash
sudo systemctl status mariadb
```

Expected:

```text
active (running)
```

