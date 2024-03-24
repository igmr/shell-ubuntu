# Ubuntu Server

## SSH

1. Acceder al directorio .SSH.
2. Generar clave SSH.
3. Crear (`nano ~/.ssh/config`) y agregar configuración de conexión SSH.

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

## FTP

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


