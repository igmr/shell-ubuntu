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

