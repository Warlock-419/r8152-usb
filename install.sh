#!/bin/bash

#variaveis
arch="amd64"

#check dependencias

#instalar dependencias
echo "================================================="
echo "realizando o apt update"
echo "================================================="
apt update

echo "================================================="
echo "instalando os pacotes necessarios para a compilação"
echo "================================================="
apt install build-essential automake autoconf linux-headers-$arch dkms wget -y

echo "================================================="
echo "criando e acessando o diretorio para o novo driver"
echo "================================================="
mkdir /home/nil/realtek-usb
cd /home/nil/realtek-usb

echo "================================================="
echo "realizando o download do novo driver"
echo "================================================="
wget http://12244.wpc.azureedge.net/8012244/drivers/rtdrivers/cn/nic/0007-r8152.53-2.08.0.bz2

echo "================================================="
echo "descompactando e acessando o arquivo do novo driver"
echo "================================================="
tar jxvf 0007-r8152.53-2.08.0.bz2
cd r8152-2.08.0

echo "================================================="
echo "compilando o novo driver"
echo "================================================="
make

echo "================================================="
echo "realizando a instalação do novo driver"
echo "================================================="
make install

echo "================================================="
echo "FIM"
echo "================================================="
