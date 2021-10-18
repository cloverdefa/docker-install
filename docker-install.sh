curl -fsSL https://get.docker.com -o get-docker.sh    #下載docker官方安裝捷徑
sudo sh get-docker.sh    #執行下載的docker官方安裝捷徑
sudo usermod -aG docker (whoami)    #給予docker使用者帳號權限
sudo reboot     #重開機使設定生效
