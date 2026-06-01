## How to create temporary user with an expiry date on remote linux server

Login to remote server:

```bash
ssh username@IPAddress_or_Hostname
```

(Use hostname if IP address is dynamic)

Now create the user with expiry date:

```bash
sudo adduser -e yyyy-mm-dd [username]
```
