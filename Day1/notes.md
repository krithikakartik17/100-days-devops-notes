### How to create a user in Linux with non interactive shell on a remote server

Login to remote server by using this command: 

```bash
ssh username@ipaddress_or_hostname
```

Enter the given password

(If the IP address of the given server is dynamic, use the hostname)

Now for creating a user we use the below command:

```bash
sudo adduser [username]
```

For creating a user with Non-Interactive shell as per the challenge, we will modify the command as shown below:

```bash
sudo adduser -s /sbin/nologin [username]
```

This ensures that the user is able to run the services but cannot login to the shell to configure anything inside the server.

This is the best security practice following least privilege of access and zero trust principle.
