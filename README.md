Comando de instalação:

apt update && apt upgrade -y && apt install dos2unix -y && wget https://raw.githubusercontent.com/TH-NET/Painel4G/main/int4g.sh && chmod +x int4g.sh && dos2unix int4g.sh && ./int4g.sh


Comando para sincronizar painel:

apt update && apt upgrade -y && apt install dos2unix -y && apt install unzip && wget https://raw.githubusercontent.com/TH-NET/SincronizadorDePainelWeb/main/SINC.zip && unzip SINC.zip && chmod +x *.sh && dos2unix *.sh
