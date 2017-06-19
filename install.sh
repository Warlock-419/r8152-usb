#!/bin/bash

#variaveis
arch="amd64"

#check dependencias

#instalar dependencias
echo "realizando o apt update"
apt update

echo "instalando os pacotes necessarios para a compilação"
apt install build-essential automake autoconf linux-headers-$arch dkms wget -y

echo "criando e acessando o diretorio para o novo driver"
mkdir /home/nil/realtek-usb
cd /home/nil/realtek-usb

echo "realizando o download do novo driver"
wget http://12244.wpc.azureedge.net/8012244/drivers/rtdrivers/cn/nic/0007-r8152.53-2.08.0.bz2

echo "descompactando e acessando o arquivo do novo driver"
tar jxvf 0007-r8152.53-2.08.0.bz2
cd r8152-2.08.0

echo "compilando o novo driver"
make

echo "realizando a instalação do novo driver"
make install
