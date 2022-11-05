#!/bin/bash
echo "Criando usuarios do sistema..."

useradd guest10 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd guest10 -e

useradd guest11 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd guest11 -e


useradd guest12 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd guest12 -e

echo "Finalizado"
