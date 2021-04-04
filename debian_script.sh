#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m'
# Install apps
echo -e "${GREEN}Installing apps...${NC} "
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git net-tools curl wget ufw docker docker-compose fail2ban
echo -e "${GREEN}All apps have been successfully installed... :)${NC}"
# Configure security
echo -e "${GREEN}Starting security configuration!${NC}"
sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
sed -i 's/AddressFamily any/AddressFamily inet/g' /etc/ssh/sshd_config
sudo service sshd restart
sudo ufw allow ssh
sudo ufw enable
sudo ufw status
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
sudo service fail2ban restart
sudo fail2ban-client status sshd
echo -e "${GREEN}Security configuration successfull. please review!${NC}"
