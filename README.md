# Ubuntu .dotfile

```sh
            .-/+oossssoo+/-.               igmr@DellOptiPlex7050 
        `:+ssssssssssssssssss+:`           --------------------- 
      -+ssssssssssssssssssyyssss+-         OS: Ubuntu 22.04.4 LTS x86_64 
    .ossssssssssssssssssdMMMNysssso.       Host: OptiPlex 7050 
   /ssssssssssshdmmNNmmyNMMMMhssssss/      Kernel: 6.5.0-21-generic 
  +ssssssssshmydMMMMMMMNddddyssssssss+     Uptime: 55 mins 
 /sssssssshNMMMyhhyyyyhmNMMMNhssssssss/    Packages: 1644 (dpkg), 9 (snap) 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Shell: bash 5.1.16 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   Terminal: /dev/pts/0 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   CPU: Intel i7-6700 (8) @ 4.000GHz 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   GPU: Intel HD Graphics 530 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   Memory: 844MiB / 15846MiB 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.
 /sssssssshNMMMyhhyyyyhdNMMMNhssssssss/                            
  +sssssssssdmydMMMMMMMMddddyssssssss+                             
   /ssssssssssshdmNNNNmyNMMMMhssssss/
    .ossssssssssssssssssdMMMNysssso.
      -+sssssssssssssssssyyyssss+-
        `:+ssssssssssssssssss+:`
            .-/+oossssoo+/-.
```

## Instalación de paquetes

```sh
sudo apt install curl -y
bash <(curl -s https://raw.githubusercontent.com/igmr/shell-ubuntu/main/installers.sh)
```

## Crear carpeta

```sh
bash <(curl -s https://raw.githubusercontent.com/igmr/shell-ubuntu/main/folder.sh)
```

## Descargar configuración de .zshrc para Ubuntu

```sh
bash <(curl -s https://raw.githubusercontent.com/igmr/shell-ubuntu/main/.zshrc-pull.sh)
source ~/.zshrc
```

## Descargar configuración de .hyper.js para Ubuntu

```sh
bash <(curl -s https://raw.githubusercontent.com/igmr/shell-ubuntu/main/.hyper-pull.sh)
```

## Configuración de git

```sh
# =============================================================================
# Descargar configuración de git
# =============================================================================
bash <(curl -s https://raw.githubusercontent.com/igmr/shell-ubuntu/main/git.sh)
# =============================================================================
# Generar clave ssh
# =============================================================================
ssh-keygen -t rsa -b 4096 -C "igmrivan@gmail.com"
# =============================================================================
# Mostrar ssh public
# =============================================================================
cat ~/.ssh/id_rsa.pub
```

## Configuración de MySQL

```sh
# =============================================================================
# Install MySQL
# =============================================================================
sudo apt install -y mysql-client mysql-server mysql-common
# =============================================================================
# Iniciar servicio de MySQL
# =============================================================================
sudo systemctl start mysql
# =============================================================================
# Habilitar MySQL al iniciar sesión
# =============================================================================
sudo systemctl enable mysql
# =============================================================================
# Establecer contraseña de MySQL
# =============================================================================
sudo mysql --user="root" --execute="ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'MySQL94.';"
# =============================================================================
# Configurar mysql in firewall
# =============================================================================
sudo ufw allow 3306
```

## Instalacion de PHP8.1

```sh
# =============================================================================
# Instalación de PHP8.1
# =============================================================================
sudo apt install -y php8.1 libapache2-mod-php8.1 php8.1-pgsql php8.1-sqlite3 php8.1-interbase php8.1-odbc php8.1-sybase php8.1-mysql php8.1-common php8.1-cli php8.1-common php8.1-cli php8.1-opcache php8.1-readline php8.1-mbstring php-pear php8.1-intl php8.1-dom php8.1-curl php8.1-cgi php-json
# =============================================================================
# Instalación de composer
# =============================================================================
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer
```

## Instalacion de PHP8.2

```sh
# =============================================================================
# Instalación de PHP8.2
# =============================================================================
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php8.2 -y
sudo apt install -y php8.2-cli php8.2-common php8.2-fpm php8.2-mysql php8.2-zip php8.2-gd php8.2-mbstring php8.2-curl php8.2-xml php8.2-bcmath
# =============================================================================
# Instalación de composer
# =============================================================================
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer
```

## Configuración de Zsh && OhMyZsh

```sh
# =============================================================================
# Instalación de zsh 
# =============================================================================
sudo apt install zsh
# =============================================================================
# Cambiar bash por zsh
# =============================================================================
chsh -s $(which zsh)
# =============================================================================
# Instalación de OhMyZsh
# =============================================================================
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# =============================================================================
# Instalación de plugin
# =============================================================================
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
```

## Configuración de NodeJS

```sh
# =============================================================================
# Instalación de nvm
# =============================================================================
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
# =============================================================================
# Recargar configuración de nvm
# =============================================================================
source ~/.zshrc
# =============================================================================
# Instalación de ultima versión de Node JS
# =============================================================================
nvm install node
```

## Instalación de Docker && Portainer

```sh
# =============================================================================
# Añadir claves GPG
# =============================================================================
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# =============================================================================
# Añadir fuente de respositorios al APT
# =============================================================================
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
# =============================================================================
# Instalación de docker
# =============================================================================
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# =============================================================================
# Correr contenedor de prueba
# =============================================================================
sudo docker run hello-world

# =============================================================================
# Crear grupo docker
# =============================================================================
sudo groupadd docker
# =============================================================================
# Agregar usuario actual al grupo docker
# =============================================================================
sudo usermod -aG docker $USER
# =============================================================================
# Activar cambios del grupo
# =============================================================================
newgrp docker
# =============================================================================
# Correr contenedor de prueba
# =============================================================================
docker run hello-world

# =============================================================================
# Crear volumen para datos de portainer 
# =============================================================================
docker volume create portainer_data
# =============================================================================
# Ejecutar portainer
# =============================================================================
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
# =============================================================================
# Acceder a portainer desde navegador web
# =============================================================================
https://localhost:9443
```

