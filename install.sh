#!/bin/bash

WHOIS="igmr"
UBUNTU_PATH="/home/igmr"
USERNAME="Ivan Martinez"
EMAIL="igmrivan@gmail.com"
reset
# =============================================================================
# Actualización del sistema
# =============================================================================
sudo apt update -y  && sudo apt upgrade -y
# =============================================================================
# Utilerias
# =============================================================================
sudo apt install -y software-properties-common net-tools ufw curl wget neofetch apt-transport-https gpg git zsh rar tree
# =============================================================================
# php8
# =============================================================================#
sudo apt install -y php8.1 libapache2-mod-php8.1 php8.1-pgsql php8.1-sqlite3 php8.1-interbase php8.1-odbc php8.1-sybase php8.1-mysql php8.1-common php8.1-cli php8.1-common php8.1-cli php8.1-opcache php8.1-readline php8.1-mbstring php-pear php8.1-intl php8.1-dom php8.1-curl php8.1-cgi php-json
# =============================================================================#
# Apache
# =============================================================================
sudo apt install -y apache2 apache2-utils apache2-doc
# =============================================================================
# ssh
# =============================================================================
sudo apt install -y openssh-server openssh-client
# =============================================================================
# sqlite
# =============================================================================
sudo apt install -y sqlite3 sqlite3-doc sqlitebrowser
# =============================================================================
# MySQL
# =============================================================================
sudo apt install -y mysql-client mysql-server mysql-common
# =============================================================================
# Fuente
# =============================================================================
sudo apt install -y fonts-cascadia-code
# =============================================================================
# Raspberry Pi Imager
# =============================================================================
sudo apt install rpi-imager
# =============================================================================
# App
# =============================================================================
sudo apt install -y gparted filezilla solaar vlc bleachbit
# =============================================================================

# =============================================================================
# Composer CLI
# https://getcomposer.org/download/
# =============================================================================
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
# =============================================================================
# App 1Password
# https://1password.com/es/
# =============================================================================
wget https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb
sudo dpkg -i 1password-latest.deb
sudo apt install -f -y
sudo rm -f 1password-latest.deb
# =============================================================================
# App Hyper term
# https://hyper.is/
# =============================================================================
wget -O hyper.deb https://releases.hyper.is/download/deb
sudo dpkg -i hyper.deb
sudo apt install -f -y
sudo rm -f hyper.deb
# =============================================================================
# App Brave browser
# https://try.bravesoftware.com/
# =============================================================================
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
# =============================================================================
# App Visual Studio Code
# https://code.visualstudio.com/
# =============================================================================
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install code
# =============================================================================
# App PostgreSQL
# https://www.postgresql.org/download/linux/ubuntu/
# =============================================================================
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt update
sudo apt install postgresql-12 postgresql-client -y
# =============================================================================
# App pgAdmin4
# https://www.postgresql.org/
# =============================================================================
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install pgadmin4 -y
sudo apt install pgadmin4-desktop -y
# =============================================================================
# Sublime Text
# https://www.sublimetext.com/docs/linux_repositories.html
# =============================================================================
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
# =============================================================================
# App Start UML
# https://staruml.io/
# =============================================================================
wget https://staruml.io/download/releases-v5/StarUML_5.1.0_amd64.deb
sudo dpkg -i StarUML_5.1.0_amd64.deb
sudo apt install -f -y
sudo rm -f StarUML_5.1.0_amd64.deb
# =============================================================================
# App Google Chrome
# https://www.google.com/intl/es-419/chrome/
# =============================================================================
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f -y
sudo rm -f google-chrome-stable_current_amd64.deb
# =============================================================================

# =============================================================================
# Postman
# =============================================================================
sudo snap install postman
# =============================================================================
# Workbeach
# =============================================================================
sudo snap install mysql-workbench-community
# =============================================================================

# =============================================================================
# Actualización y limpiar sistema
# =============================================================================
sudo apt update -y  && sudo apt autoremove -y && sudo apt autoclean -y

# =============================================================================
# Configuración del cortafuegos 
# =============================================================================
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow 3306
sudo ufw allow 5432
sudo ufw enable

# =============================================================================
# Configuración de Apache2
# =============================================================================
sudo systemctl enable apache2
sudo chown www-data:www-data /var/www/html/ -R
sudo chown -R $USER:$USER /var/www

# =============================================================================
# Configuración de Apache2 con php8
# =============================================================================
sudo a2enmod php8.1
sudo systemctl restart apache2

# =============================================================================
# Crear carpetas
# =============================================================================
USER=$WHOIS
DATA="data"
APP="app"
cd /
if [ ! -d "$DATA" ]; then
	sudo mkdir $DATA
	sudo chown -R $USER $DATA
	sudo chgrp -R $USER $DATA
	sudo chmod 775 $DATA
fi

if [ ! -d "$APP" ]; then
	sudo mkdir $APP
	sudo chown -R $USER $APP
	sudo chgrp -R $USER $APP
	sudo chmod 775 $APP
fi

# =============================================================================
# Cargar de configuración de hyperTerm
# =============================================================================
if [ -f "$UBUNTU_PATH/.hyper.js" ]; then
    rm -f  ~/.hyper.js
fi
curl -o ~/.hyper.js https://raw.githubusercontent.com/igmr/shell-ubuntu/main/.hyper.js


# =============================================================================
# Eliminar paquete snap
# =============================================================================
sudo snap remove firefox 
# =============================================================================
# Actualización de paquetes snap
# =============================================================================
sudo snap refresh

# =============================================================================
# Configuración de git
# =============================================================================
git config --global user.name "$USERNAME"
git config --global user.email "$EMAIL"
git config --global core.editor code
git config --global init.defaultBranch main

# =============================================================================
# Docker
# =============================================================================
# Instalación de dependencias
# =============================================================================
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
# =============================================================================
# Agregar clave GPG Docker
# =============================================================================
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
# =============================================================================
# Configurar repositorio
# =============================================================================
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# =============================================================================
# Actualización de repositorios
# =============================================================================
sudo apt-get update
# =============================================================================
# Instalación de Docker Engine
# =============================================================================
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# =============================================================================
# Comprobación de instalación
# =============================================================================
sudo docker run hello-world

exit 0
