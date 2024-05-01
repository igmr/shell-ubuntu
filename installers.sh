#!/bin/bash

# =============================================================================
# Install Update System
# =============================================================================
sudo apt update -y  && sudo apt upgrade -y
# =============================================================================
# Install Utils
# =============================================================================
sudo apt install -y software-properties-common net-tools ufw curl wget neofetch apt-transport-https gpg git zsh rar tree gcc
# =============================================================================
# Install App
# =============================================================================
sudo apt install -y gparted filezilla solaar vlc
# =============================================================================
# Install Cascadia-Code font
# =============================================================================
sudo apt install -y fonts-cascadia-code
# =============================================================================
# Install Apache2
# =============================================================================
sudo apt install -y apache2 apache2-utils apache2-doc
# =============================================================================
# Install 1Password App
# =============================================================================
wget https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb
sudo dpkg -i 1password-latest.deb
sudo apt install -f -y
sudo rm -f 1password-latest.deb
# =============================================================================
# Install Hyper Term App
# =============================================================================
wget -O hyper.deb https://releases.hyper.is/download/deb
sudo dpkg -i hyper.deb
sudo apt install -f -y
sudo rm -f hyper.deb
# =============================================================================
# Install Brave Browser
# =============================================================================
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
# =============================================================================
# Install Visual Studio Code App
# =============================================================================
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code
# =============================================================================
# Install Sublime Text App
# =============================================================================
sudo apt-get -y install apt-transport-https
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get -y update
sudo apt-get -y install sublime-text
# =============================================================================
# Install StarUml
# =============================================================================
wget https://staruml.io/api/download/releases-v6/StarUML_6.0.1_amd64.deb
sudo dpkg -i StarUML_6.0.1_amd64.deb
sudo apt install -f -y
sudo rm -f StarUML_6.0.1_amd64.deb
# =============================================================================
# Install Google Chrome Browser
# =============================================================================
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f -y
sudo rm -f google-chrome-stable_current_amd64.deb
# =============================================================================
# Install Postman App
# =============================================================================
sudo snap install postman
# =============================================================================
# Install Workbeach App
# =============================================================================
sudo snap install mysql-workbench-community
# =============================================================================
# Install ssh
# =============================================================================
sudo apt install -y openssh-server openssh-client
# =============================================================================
# Actualización y limpiar sistema
# =============================================================================
sudo apt update -y  && sudo apt autoremove -y && sudo apt autoclean -y

# =============================================================================
# =============================================================================
# =============================================================================
# Configuración del cortafuegos
# =============================================================================
# =============================================================================
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

exit 0
