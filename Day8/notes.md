# Install Ansible Using pip3

## Step 1: Switch to Root User

Run the following command to switch to the root user:

```bash
sudo su -
```


## Step 2: Check if pip3 is Installed

Verify pip3 installation:

```bash
pip3 --version
```

If pip3 is not installed, install it first.
```bash
sudo yum install python3-pip
```

## Step 3: Install Ansible (Specific Version)

Install Ansible version 4.8.0 using pip3:

```bash
pip3 install ansible==4.8.0
```

Verify installation:

```bash
ansible --version
```
