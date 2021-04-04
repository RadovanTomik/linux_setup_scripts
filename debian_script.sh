#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m'
echo -e "${GREEN}Installing apps...${NC} "
# Install apps
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y git net-tools curl wget ufw docker docker-compose

