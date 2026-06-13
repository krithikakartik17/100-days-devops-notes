## How to disable direct root SSH login

Login to the desired server

```bash
ssh username@hostname
```

Open sshd_config file in nano editor

```bash
sudo nano /etc/ssh/sshd_config
```
```bash
  PermitRootLogin: no
```

Save (CTRL+O) and exit (CTRL+X)

Restart sshd service

```bash
sudo systemctl restart sshd
```
