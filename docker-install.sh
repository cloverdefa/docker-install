#!/bin/bash
sudo apt-get update
sudo apt-get install -y curl
sleep 2s
cd
curl -fsSL https://get.docker.com -o get-docker.sh
sleep 2s
sudo sh get-docker.sh
sleep 2s
sudo usermod -aG docker $(whoami)
sleep 2s
echo -e "OK!Docker安裝完畢 \n"
echo -e "開始安裝Docker-compose \n"
sleep 3s
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sleep 2s
sudo chmod +x /usr/local/bin/docker-compose
sleep 2s
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sleep 2s
docker version
sleep 2s
docker-compose --version
echo -c "Docker-compose安裝完成，3秒後重新啟動系統以使設定及安裝生效"
sleep 3s
sudo reboot