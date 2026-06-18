# Disable SELinux Permanently

## Step 1: Install Required Packages

Connect to given App Server and install the required SELinux packages using your distribution's package manager.

### For RedHat / CentOS

```bash
sudo yum install selinux-policy 
```

### For Debian / Ubuntu

```bash
sudo apt install policycoreutils 
```

---

## Step 2: Permanently Disable SELinux

To ensure SELinux remains disabled after a reboot, modify the SELinux configuration file.

Open the configuration file:

```bash
sudo nano /etc/selinux/config
```

Locate the following line:

```text
SELINUX=enforcing
```

Change it to:

```text
SELINUX=disabled
```

Save the file and exit the editor.

