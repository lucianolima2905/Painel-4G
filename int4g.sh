#!/bin/bash
echo "America/Sao_Paulo" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime > /dev/null 2>&1
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1
clear
echo -e "\E[44;1;37m           Painel 4G           \E[0m"
echo ""
echo -e "                \033[1;31mATENCAO"
echo ""
echo -e "\033[1;32mINFORME SEMPRE A MESMA SENHA"
echo -e "\033[1;32mSEMPRE CONFIRME AS QUESTOES COM\033[1;37m Y"
echo ""
echo -e "\033[1;36mINICIANDO INSTALACAO"
echo ""
echo -e "\033[1;33mAGUARDE..."
apt-get update -y > /dev/null 2>&1
apt-get install nano -y > /dev/null 2>&1
echo ""
echo -e "\033[1;36mINSTALANDO O APACHE2\033[0m"
echo ""
echo -e "\033[1;33mAGUARDE..."
apt-get install apache2 -y > /dev/null 2>&1
apt-get install cron curl unzip -y > /dev/null 2>&1
echo ""
echo -e "\033[1;36mINSTALANDO DEPENDENCIAS\033[0m"
echo ""
echo -e "\033[1;33mAGUARDE..."
apt-get install php5 libapache2-mod-php5 php5-mcrypt -y > /dev/null 2>&1
service apache2 restart 
echo ""
echo -e "\033[1;36mINSTALANDO O MySQL\033[0m"
echo ""
echo -e "\033[1;33mAGUARDE..."
sleep 1
apt-get install mysql-server php5-mysql -y </dev/tty
echo ""
clear
echo -e "\033[1;36mINSTALANDO O PHPMYADMIN\033[0m"
echo ""
echo -e "\033[1;31mATENCAO \033[1;33m!!!"
echo ""
echo -e "\033[1;32mSELECIONE A OPCAO \033[1;31mAPACHE2 \033[1;32mCOM A TECLA '\033[1;33mESPACO\033[1;32m'"
echo ""
echo -e "\033[1;32mSELECIONE \033[1;31mYES\033[1;32m NA OPCAO A SEGUIR (\033[1;36mdbconfig-common\033[1;32m)"
echo -e "PARA CONFIGURAR O BANCO DE DADOS"
echo ""
echo -e "\033[1;32mLEMBRE SE INFORME A MESMA SENHA QUANDO SOLICITADO"
echo ""
echo -ne "\033[1;33mEnter, Para Prosseguir!\033[1;37m"; read
apt-get install phpmyadmin -y
php5enmod mcrypt
service apache2 restart
apt-get install libssh2-1-dev libssh2-php -y > /dev/null 2>&1
php -m |grep ssh2
apt-get install php5-curl -y > /dev/null 2>&1
service apache2 restart
clear
echo -e "\033[1;36mFINALIZANDO INSTALACAO\033[0m"
echo ""
echo -e "\033[1;33mAGUARDE..."
echo ""    
cd /var/www/html
wget https://www.dropbox.com/s/h72yokb08h475qc/internet4g.zip > /dev/null 2>&1
unzip internet4g.zip > /dev/null 2>&1
chmod 0777 img
cd img
chmod 0777 icone perfil icons
cd /var/www/html
rm -r index.html > /dev/null 2>&1
rm -r internet4g.zip > /dev/null 2>&1
cd 
service apache2 restart
mysql -h localhost -u root -p -e "CREATE DATABASE net"
service apache2 restart
echo ""
tput setaf 7 ;
tput bold ; read -p "Digite sua Senha: " password ; tput sgr0
echo ""
clear
echo "Altere no codigo abaixo SUASENHAAQUI e coloque a senha que utilizou durante a instalacao no lugar de 'SUA_SENHA'"
sleep 5
nano /var/www/html/conexao.php
clear
wget  https://github.com/lucianolima2905/Painel-4Graw/main/net.sql
echo "Digite a senha do PhpMyAdmin"
mysql -h localhost -u root -p net < net.sql
rm net.sql
service apache2 restart
clear
echo "CONCLUIDO"