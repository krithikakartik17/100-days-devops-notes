ssh username@hostname
sudo yum install cronie
sudo systemctl restart crond
sudo su -
crontab -e
*/5 * * * * echo hello > /tmp/cron_text
crontab -l
