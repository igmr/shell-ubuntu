# Ubuntu .dotfile

```shell
            .-/+oossssoo+/-.               igmr@Dell-OptiPlex-7040 
        `:+ssssssssssssssssss+:`           ----------------------- 
      -+ssssssssssssssssssyyssss+-         OS: Ubuntu 22.04.3 LTS x86_64 
    .ossssssssssssssssssdMMMNysssso.       Host: OptiPlex 7040 
   /ssssssssssshdmmNNmmyNMMMMhssssss/      Kernel: 6.2.0-37-generic 
  +ssssssssshmydMMMMMMMNddddyssssssss+     Uptime: 0 hour, 00 mins 
 /sssssssshNMMMyhhyyyyhmNMMMNhssssssss/    Packages: 1911 (dpkg), 14 (snap) 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Shell: zsh 5.8.1 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   Resolution: 1920x1080 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   DE: Unity 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   WM: Mutter 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   WM Theme: Adwaita 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Theme: Yaru-dark [GTK2/3] 
 /sssssssshNMMMyhhyyyyhdNMMMNhssssssss/    Icons: Yaru [GTK2/3] 
  +sssssssssdmydMMMMMMMMddddyssssssss+     Terminal: HyperTerm 
   /ssssssssssshdmNNNNmyNMMMMhssssss/      Terminal Font: Cascadia Code 
    .ossssssssssssssssssdMMMNysssso.       CPU: Intel i5-6500 (4) @ 3.600GHz 
      -+sssssssssssssssssyyyssss+-         GPU: Intel HD Graphics 530 
        `:+ssssssssssssssssss+:`           Memory: 2980MiB / 15868MiB 
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

```shell
bash <(curl -s https://raw.githubusercontent.com/igmr/shell-ubuntu/main/.zshrc-pull.sh)
source ~/.zshrc
```

## Descargar configuración de .hyper.js para Ubuntu

```shell
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
```

## Configuración de Zsh

```sh
# =============================================================================
# Cambiar Shell
# =============================================================================
chsh -s $(which zsh)
# =============================================================================
# Ejecutar Zsh
# =============================================================================
> zsh
zsh.newuser-install.
You are seeing this message because you have no zsh startup files
(the files .zshenv, .zprofile, .zshrc, .zlogin in the directory
~). This function can help you with a few settings that should
make your use of the shell easier.

You can:

(q)  Quit and do nothing.  The function will be run again next time.

(0)  Exit, creating the file ~/.zshrc containing just a comment.
     That will prevent this function being run again.

(1)  Continue to the main menu.

(2)  Populate your ~/.zshrc with the configuration recommended
     by the system administrator and exit (you will need to edit
     the file by hand, if so desired).

--- Type one of the keys in parentheses --- 0
# =============================================================================
# Reiniciar
# =============================================================================
reboot
```

## Configuración de OhMyZsh

Instalar OhMyZsh

```sh
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

```shell
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
