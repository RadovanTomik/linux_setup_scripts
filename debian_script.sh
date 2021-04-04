#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m'
echo"{GREEN}Installing apps...{NC≈} "
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
sudo apt-get install net-tools
sudo apt-get install curl
sudo apt-get install wget
sudo apt-get install w3m
sudo apt-get install ufw
sudo apt-get install docker
sudo apt-get install docker-compose
