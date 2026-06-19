# Ensure you are executing commands as thor, not root
sudo su - thor

# generate a common ssh key for all app servers with type rsa and bit 2048
ssh-keygen -t rsa -b 2048

# Press Enter for default path and Enter again for empty passphrase.
# This creates:
# ~/.ssh/id_rsa
# ~/.ssh/id_rsa.pub

# Copy public key to each app server

ssh-copy-id tony@stapp01
# Enter password once.

ssh-copy-id steve@stapp02
# Enter password once.

ssh banner@stapp03
# Enter password once.

# Verify Passwordless Authentication
ssh tony@stapp01
exit

ssh steve@stapp02
exit

ssh banner@stapp03
exit
