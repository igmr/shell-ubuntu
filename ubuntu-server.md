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


