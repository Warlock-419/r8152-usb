#!/bin/bash

#variaveis

#check dependencias

#instalar dependencias
echo "================================================="
echo "realizando o apt update"
echo "================================================="
apt update

echo "================================================="
echo "instalando os pacotes necessarios para a compilação"
echo "================================================="
apt install build-essential automake autoconf linux-headers-$(uname -r) dkms wget -y

echo "================================================="
echo "realizando o download do novo driver"
echo "================================================="
wget http://12244.wpc.azureedge.net/8012244/drivers/rtdrivers/cn/nic/0010-r8152.53-2.10.0.tar.bz2

echo "================================================="
echo "descompactando e acessando o arquivo do novo driver"
echo "================================================="
tar jxvf 0010-r8152.53-2.10.0.tar.bz2
cd r8152-2.10.0


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

#echo "================================================="
#echo "Reiniciando..."
#echo "================================================="
#shutdown -r now
