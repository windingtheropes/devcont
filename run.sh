echo "${PUBLICKEY}\n" >> /home/user/.ssh/authorized_keys
service ssh restart
/bin/sh
