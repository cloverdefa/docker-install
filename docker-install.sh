#!/bin/bash
sudo apt-get update  #同步最新APT庫
sudo apt-get install -y curl  #安裝curl
sleep 2s  
cd
curl -fsSL https://get.docker.com -o get-docker.sh  #下載Docker官方安裝捷徑
sleep 2s
sudo sh get-docker.sh  #執行Docker安裝捷徑
sleep 2s
sudo usermod -aG docker $(whoami)  #添加Docker 權限賦予使用者
sleep 2s
docker version  #檢查Docker安裝版本
echo "OK!Docker安裝完畢 \n"
sleep 3s
echo "開始安裝Docker-compose \n"
sleep 3s
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose  #下載docker-compose官方檔案
sleep 3s
sudo chmod +x /usr/local/bin/docker-compose  #賦予docker-compose執行權限
sleep 3s
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose  #建立docker-compose運行捷徑
sleep 3s
docker-compose --version   #檢查docker-compose安裝版本
sleep 3s
echo "Docker-compose安裝完成，3秒後重新啟動系統以使設定及安裝生效"
sleep 3s
sudo rm -r ~/docker   #清理下載資料夾
sudo reboot  #重新啟動