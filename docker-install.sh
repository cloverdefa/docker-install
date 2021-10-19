curl -fsSL https://get.docker.com -o get-docker.sh    #下載官方docker安裝捷徑
echo ""
echo "=================="
echo ""
echo "執行 sudo sh docker/get-docker.sh"    #執行下載的docker安裝捷徑
echo ""
echo "=================="
echo ""
echo "執行 sudo usermod -aG docker $(whoami)"    #給予docker使用者帳號權限
echo ""
echo ""
echo "=================="
echo ""
echo ""
echo "執行 sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose"    #下載docker-compose
echo "sudo chmod +x /usr/local/bin/docker-compose"   #賦予docker-compose執行權限
echo "=================="
echo "sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose"   #建立docker-compose捷徑
sudo reboot     #重開機使設定生效
