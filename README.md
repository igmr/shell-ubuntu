# Ubuntu .dotfile

```shell
            .-/+oossssoo+/-.               igmr@ThinkPad-T480 
        `:+ssssssssssssssssss+:`           ------------------ 
      -+ssssssssssssssssssyyssss+-         OS: Ubuntu 22.04.2 LTS x86_64 
    .ossssssssssssssssssdMMMNysssso.       Host: 20L6A04C06 ThinkPad T480 
   /ssssssssssshdmmNNmmyNMMMMhssssss/      Kernel: 5.19.0-41-generic 
  +ssssssssshmydMMMMMMMNddddyssssssss+     Uptime: 16 mins 
 /sssssssshNMMMyhhyyyyhmNMMMNhssssssss/    Packages: 1734 (dpkg), 12 (snap) 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Shell: zsh 5.8.1 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   Resolution: 1920x1080 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   DE: Unity 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   WM: Mutter 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   WM Theme: Adwaita 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Theme: Yaru-dark [GTK2/3] 
 /sssssssshNMMMyhhyyyyhdNMMMNhssssssss/    Icons: Yaru [GTK2/3] 
  +sssssssssdmydMMMMMMMMddddyssssssss+     Terminal: HyperTerm 
   /ssssssssssshdmNNNNmyNMMMMhssssss/      Terminal Font: Cascadia Code 
    .ossssssssssssssssssdMMMNysssso.       CPU: Intel i5-8350U (8) @ 3.600GHz 
      -+sssssssssssssssssyyyssss+-         GPU: Intel UHD Graphics 620 
        `:+ssssssssssssssssss+:`           Memory: 3224MiB / 7822MiB 
            .-/+oossssoo+/-.
```

## Instalación de paquetes

```shell
sudo apt install curl -y
bash <(curl -s https://raw.githubusercontent.com/igmr/shell-ubuntu/main/install.sh)
```

## Sincronizar configuración de .zshrc - Ubuntu

```shell
bash <(curl -s https://raw.githubusercontent.com/igmr/shell-ubuntu/main/.zshrc-pull.sh)
source ~/.zshrc
```

## Sincronizar configuración de .hyper.js - Ubuntu

```shell
bash <(curl -s https://raw.githubusercontent.com/igmr/shell-ubuntu/main/.hyper-pull.sh)
```

## Github

Crear llave ssh

```shell
ssh-keygen -t rsa -b 4096 -C "igmrivan@gmail.com"
```

Obtener ssh key

```shell
cat ~/.ssh/id_rsa.pub
```

## Configuración de MySQL

Iniciar MySQL

```shell
sudo systemctl start mysql
```

Habilitar que inicie MySQL al encender equipo

```shell
sudo systemctl enable mysql
```

Configurar credenciales de MySQL

```shell
sudo mysql --user="root" --execute="ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'MySQL94.';"
```

## PostgreSQL

Abrir sesión del usuario posgres

```shell
sudo su - postgres
```

Configurar credenciales de PostgreSQL

```shell
psql -c "ALTER user postgres with password 'PostgreSQL94.'"
```

Cerrar sesión del usuario posgres

```shell
exit
```

## Zsh

Cambiar shell

```bash
chsh -s $(which zsh)
```

Reiniciar el equipo

```bash
reboot
```

Ejecutar Zsh

```shell
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
```

## OhMyZsh

Instalar OhMyZsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Instalar plugin

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
```

## NodeJS

Instalar nvm

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
```

Actualizar .zshrc

```shell
source ~/.zshrc
```

Instalar version 18.16.0

```shell
nvm install 18.16.0
```
