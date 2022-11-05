#!/bin/bash

echo "criando os diretorios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando os grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando os usuarios"
echo "SETOR ADM"
useradd carlos  -c "Carlos Matos" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_ADM
useradd maria  -c "Maria Silva" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_ADM
useradd joao  -c "João Ramos" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_ADM

echo "SETOR VEN"
useradd debora  -c "Debora Gomes" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_VEN 
useradd sebastiana  -c "Sebastiana Lima" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_VEN
useradd roberto  -c "Roberto Souza" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_VEN

echo "SETOR SEC"
useradd josefina  -c "Josefina Costa" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_SEC
useradd amanda  -c "Amanda Vidal" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_SEC
useradd rogerio  -c "Rogerio Sá" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_SEC
 
echo "configurando as propriedades da pasta"
chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "configurando as permissoes de pasta"
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "configuracao do sistema finalizada!"

