# Passwordless SSH Authentication Setup (From Jump Host to App Servers)

## Objective

Configure passwordless SSH authentication from user thor on Jump Host to all app servers using their respective sudo users.

## Step 1: Switch to thor User

Ensure commands are executed as thor, not root.

```bash
sudo su - thor
```

Verify current user:

```bash
whoami
```

Expected output:

```text
thor
```


## Step 2: Generate SSH Key Pair

Generate a common SSH key using RSA algorithm with 2048-bit key length.

```bash
ssh-keygen -t rsa -b 2048
```

Meaning:

* `-t rsa` : Key type = RSA
* `-b 2048` : Key size = 2048 bits

Press:

* `Enter` : Save to default location
* `Enter` : No passphrase

Generated files:

```text
~/.ssh/id_rsa
~/.ssh/id_rsa.pub
```

Check generated keys:

```bash
ls -la ~/.ssh
```



## Step 3: Copy Public Key to App Servers

### App Server 1

```bash
ssh-copy-id tony@stapp01
```

Enter password once.


### App Server 2

```bash
ssh-copy-id steve@stapp02
```

Enter password once.



### App Server 3

```bash
ssh-copy-id banner@stapp03
```

Enter password once.


## Step 4: Verify Password-less Authentication

### Verify App Server 1

```bash
ssh tony@stapp01
exit
```

---

### Verify App Server 2

```bash
ssh steve@stapp02
exit
```

---

### Verify App Server 3

```bash
ssh banner@stapp03
exit
```
