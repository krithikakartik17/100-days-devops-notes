# Linux File Permissions – Make Script Executable for All Users

## Step 1: Log in to App Server


```bash
ssh username@hostname
```

---

## Step 2: Switch to Root User

Gain administrative privileges to modify permissions:

```bash
sudo su -
```

---

## Step 3: Check Current Permissions

Verify the current permissions of the script:

```bash
ls -l /tmp/xfusioncorp.sh
```

> Note: A script typically requires both **read (`r`)** and **execute (`x`)** permissions to run.

---

## Step 4: Grant Permissions to All Users


Give:

* Owner → Read, Write, Execute (`rwx`) 111 -> 7
* Group → Read, Execute (`r-x`) 101 -> 5
* Others → Read, Execute (`r-x`) 101 -> 5

```bash
chmod 755 /tmp/xfusioncorp.sh
```

---


## Step 5: Verify Changes

Confirm the permissions were applied successfully:

```bash
ls -l /tmp/xfusioncorp.sh
```
