# Ubuntu Server

## SSH

1. Acceder al directorio `~/.ssh`.
2. Generar clave SSH (`ssh-keygen -b 4096 -t rsa`).
3. Crear archivo config (`nano ~/.ssh/config`) y agregar configuración de conexión SSH hacia el servidor.

```bash
host             <name>
    HostName     <ip-server>
    User         <user-name>
    Port         <port-number>
    IdentityFile /path/to/ssh.pub
```

4. Copiar clave SSH a servidor.

```bash
ssh-copy-id -i path/to/ssh.pub <username>@<ip-server>
```

6. Acceso por SSH

```bash
ssh <host>
```

## Actualización del sistema

```bash
sudo apt update -y  && sudo apt autoremove -y && sudo apt autoclean -y
```

Instalar paquetes adicionales

```bash
sudo apt install -y software-properties-common
sudo apt install -y net-tools
sudo apt install -y ufw
sudo apt install -y curl
sudo apt install -y wget
sudo apt install -y neofetch
sudo apt install -y apt-transport-https
sudo apt install -y gpg
sudo apt install -y git
sudo apt install -y rar
sudo apt install -y unzip
sudo apt install -y tree
sudo apt install -y gcc
```

## Active backup For Business Agent

1. Copiar archivo a servidor

```bash
scp ~/Downloads/install.run ubuntu@192.168.100.100:/home/ubuntu
```

2. Acceder a servidor
3. Installar Active Backup For Business Agent `sudo ~/install.run`.
4. Conectar a servidor NAS `sudo abb-cli -c`

```bash
Enter server address: <ip-server>
Enter username: <user-nas>
Enter password: <password-user-nas>
Connecting...
The SSL certificate of the Synology NAS is not trusted. To learn how to obtain a valid certificate, please have a registered domain by setting up DDNS (http://sy.to/ddns) and applying for Let's Encrypt (http://sy.to/letsencrypt) certificate. Proceed anyway? [y/n](default: y): y

Server address: <ip-nas>
Username: <user-nas>
Backup type: Server
Applied template: Default
Backup destination: ActiveBackupforBusiness
Source type: Entire device backup
Restoration privilege: admin, administrators
Back up by time: Monday, Tuesday, Wednesday, Thursday, Friday Start at: 03:00(Daily/Weekly)
Retention policy: Keep all versions
Backup window: Disabled
Data transfer compression: Enable
Data transfer encryption: Enable
Bandwidth consumption limit: Disabled
Compression at backup destination: Disabled
Encryption at backup destination: Disabled
Backup verification: Disabled
Pre/post script: Disabled
Confirm authentication? [y/n](default: y): y
Confirming authentication...
Successfully connected
```

## FTP Server

```bash
# =============================================================================
# Instalación de servidor FTP
# =============================================================================
sudo apt install -y vsftpd
# =============================================================================
# Editar archivo de configuracion /etc/vsftpd.conf
# =============================================================================
sudo nano /etc/vsftpd.conf
# =============================================================================
# Descomentar linea: # write_enable=YES
# =============================================================================
# Uncomment this to enable any form of FTP write command.
write_enable=YES
# =============================================================================
# Reiniciar servicio vsftpd
# =============================================================================
sudo systemctl restart vsftpd
# =============================================================================
# Habilitar inicio de servicio vsftp
# =============================================================================
sudo systemctl enable vsftpd
```

## zsh & OH My Zsh
1. Instalaión de zsh `sudo apt install -y zsh`
2. Cambiar de bash a zsh `chsh -s $(which zsh)`
3. Salir del servidor `logout`
4. Acceder al servidor `ssh <host-server>`
5. Instación de OhMyZsh `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
6. Instalación del extensiones

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
```

7. Eliminar contenido de archivo `~/.zshrc`
8. Agregar configuracion al archivo `~/.zshrc`

```bash
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        git
        postgres
        node
        colorize
        fast-syntax-highlighting
        zsh-autosuggestions
        web-search
    )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# General
alias cls="clear"
alias zshrc="reset && nano ~/.zshrc"
alias src="reset && source ~/.zshrc"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

# ubuntu
alias up="sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y"

```

9. Cargar configuracion de archivo .zshrc `source ~/.zshrc`


