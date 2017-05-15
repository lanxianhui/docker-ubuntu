#!/bin/bash

# avoid dpkg frontend dialog / frontend warnings
export DEBIAN_FRONTEND=noninteractive


# Install OpenSSH
apt-get update &&
apt-get install -y openssh-server &&
mkdir /var/run/sshd &&
echo 'root:admin' | chpasswd &&
sed -i 's/^PermitRootLogin .*/PermitRootLogin yes/' /etc/ssh/sshd_config &&
sed -i 's/session\s*required\s*pam_loginuid.so/session optional pam_loginuid.so/g' /etc/pam.d/sshd &&
echo 'export VISIBLE=now' >> /etc/profile &&



# Install startup script for container
#mv /assets/startup.sh /usr/sbin/startup.sh &&
#chmod +x /usr/sbin/startup.sh &&

# Remove installation files
rm -r /assets/


exit $?
