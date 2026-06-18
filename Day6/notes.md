# Configure Cron Job on Linux (RHEL/CentOS)

## Step 1: Connect to the Server

Login to the target server using SSH:

```bash
ssh username@hostname
```

Example:

```bash
ssh tony@stapp01
```

---

## Step 2: Install Cron Service

Install the `cronie` package (used for cron scheduling):

```bash
sudo yum install cronie
```

---

## Step 3: Restart Cron Service

Restart the cron daemon to ensure it is active:

```bash
sudo systemctl restart crond
```

Verify status:

```bash
sudo systemctl status crond
```

---

## Step 4: Switch to Root User

Gain administrative privileges:

```bash
sudo su -
```

---

## Step 5: Edit Crontab

Open the crontab editor:

```bash
crontab -e
```

Add the following entry:

```cron
*/5 * * * * echo hello > /tmp/cron_text
```

### Explanation:

* `*/5` → Every 5 minutes
* `*` → Every hour
* `*` → Every day of month
* `*` → Every month
* `*` → Every day of week

This command writes `hello` into `/tmp/cron_text` every 5 minutes.

---

## Step 6: Verify Cron Entry

Display configured cron jobs:

```bash
crontab -l
```

Expected output:

```cron
*/5 * * * * echo hello > /tmp/cron_text
```

---

## Verification

After 5 minutes, check the file:

```bash
cat /tmp/cron_text
```

Expected output:

```text
hello
```
