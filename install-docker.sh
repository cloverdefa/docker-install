#!/bin/bash
sudo apt-get update  #同步最新APT庫
sudo apt-get install -y curl  #安裝curl
cd  #切換至使用者目錄
curl -fsSL https://get.docker.com -o get-docker.sh  #下載Docker官方安裝捷徑
sudo sh get-docker.sh  #執行Docker安裝捷徑
sudo usermod -aG docker $(whoami)  #添加Docker 權限賦予使用者
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose  #下載docker-compose官方檔案
sudo chmod +x /usr/local/bin/docker-compose  #賦予docker-compose執行權限
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose  #建立docker-compose運行捷徑
sudo rm -r ~/docker   #清理下載資料夾
sudo rm ~/get-docker.sh   #清理下載安裝捷徑
sudo reboot  #重新啟動