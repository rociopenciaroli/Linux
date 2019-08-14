# Comandos LINUX - Manual de Bolsillo   

[![aledc.com](https://github.com/aledc7/Scrum-Certification/blob/master/recursos/aledc.com.svg)](https://aledc.com)
[![License](https://github.com/aledc7/Scrum-Certification/blob/master/recursos/mit-license.svg)](https://aledc.com)
[![GitHub release](https://github.com/aledc7/Scrum-Certification/blob/master/recursos/release.svg)](https://aledc.com)
[![Dependencies](https://github.com/aledc7/Scrum-Certification/blob/master/recursos/dependencias-none.svg)](https://aledc.com)


- [x] Ale DC

#### El propósito de este repositorio es listar los comandos que frecuentemente utilizo par administrar y monitorear Servers en las Distribuciónes Ubuntu Server y Centos. Todos ellos para ser ejecutados en la terminal.


______________________________________________________________________________________________________

# para saber que versión de sistema operativo tenemos:
```
cat /etc/*release
```
# Otra forma saber que versión de sistema operativo tenemos:
```
lsb_release -a
```

# Verificar si el sistema operativo es de 32 o 64 bits:
```
uname -m
```

# Verificar version de Centos:
```
cat /etc/centos-release
```

# Comprueba version de kernel:
```
uname -r
```

# Listar comandos de la terminal:

# listar todos los comandos 
```
history

```
# listar los ultimos 20 comandos
```
history 20
```
# volver a ejecutar un comando por su número
```
!77    donde 77 será el número del comando que aparece listado.
```
# borrar historial
```
history -c
```
# archivo en donde se guardan los comandos dentro de la carpeta de cada usuario
```
.bash_history
```

# Indicar la ruta actual en la que estamos parados
```
pwd
```

# Listar archivos:
```
# mostrar archivos y sus tamaños
ls -sh
```
# Mostrar archivos con sus permisos en formato de numero (777)
```
stat -c %a nombre_archivo
```
# ordenar por fecha de modificacion
```
ls -t
```
# Listar usuarios en ubuntu:
```
compgen -u
```
# Listar grupos:
```
compgen -g
```
# Agregar/Borrar grupo:
```
group add nombre_grupo
group del nombre_gripo
```
# Agregar usuario:
```
adduser
```

# Mostrar a que grupos pertenece un usuario:
```
groups nombre_user
```

# Agregar un usuario a un grupo:
```
usermod -aG nombre_grupo nombre_usuario
usermod -aG sudo nombre_usuario
```

# Borrar usuario y todos sus archivos:
```
deluser --remove-home nomre_usuario
```

# Borrar una carpeta y todas sus subcarpetas:
```
rm -rf nombre_carpeta
```

# Como crear un script

```
#!/bin/bash
function pause(){
   read -p "$*"
}
pause 'Entrando al Docker de INFLUX Y GRAFANA, con usuario ROOT -  Presione Enter'
docker exec -u 0 -i -t --privileged 204a5d5419b2 /bin/bash
```

# Luego guardar el script con extension .sh y dar permisos de ejecución:
```
chmod +x nombre_archivo.sh
```
# Para ejecutar el script se deberá anteponer ./
```
./nomhre_script.sh
```

# Buscar archivos:

# buscar en todo el sistema de archivos
```
find / -name nombre_archivo
```
# buscar en la carpeta actual
```
find -name nombre_archivi
```

# buscar una carpeta o archivos
```
find / -type f -name carpeta_que busco*
find / -type d -name archivo_Que_busco*
```
# buscar archivos que tengan ciertos permisos
```
find / -type d -perm 777
```

# buscar si el archivo está vacío
```
find . -type f -empty
```
# buscar por tamaño de archivo
```
find . -size 21k
find . -size 5M
```
# Modificados los datos en las últimas X*24h (- dtime n)
```
find . -tipe f -dtime 2  (en las últimas 48h = 2*24)
```

# Accedidos en las últimas X*24h (- atime n)
```
find . -tipe f -atime 2  (en las últimas 48h = 2*24)
```


# Buscar la localización de un fichero binario, fuente o manual
```
whereis grep
grep: /bin/grep /usr/share/man/man1/grep.1.gz /usr/share/man/man1p/grep.1p.gz
```

# Existe un paquete llamado __locate__ que también es usado para buscar.
### Este paquete no es nativo por lo que debe ser instalado
```
apt-get install mlocate
```
## luego hay que crear una base de datos con el indice de los archivos del sistema
```
updatedb
```
## luego podremos buscar con locate
```
locate nombre_paquete
```

# Zona Horaria

## instalar el paquete en caso de que no esté instalado:
```
apt-get install tzdata
```
## Opción para configurar la zona horaria con una sola linea creando un enlace simbolico 
```
ln -fs /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
```

# listar zona horaria actual
```
timedatectl
```
# listar zonas horarias
```
timedatectl list-timezones
```
# setear zona horaria
```
timedatectl set-timezone America/Argentina/Buenos_Aires
```
# otra posible opcion de hacer lo mismo
```
apt-get install systemd-services
dpkg-reconfigure tzdata
```

# Ver paquetes instalados:
```
dpkg -l
````

# Desinstalar paquetes
```
apt-get remove nombre_paquete
apt-get purge nombre_paquete
apt-get purge paquete*
apt-get clean nombre_paquete
```

# Procesos

# listar todos los procesos
```
ps -a
```
# version completa
```
ps -axF
```
# matar procesos por su número pid
```
kill -9 numero_proceso
```
# matar procesos por su nombre
```
pkill nombre_proceso
```

# Cambiar contraseña

# cambiar contraseña del usuario actual
```
passwd
```
# cambiar clave de algun usuer especifico
```
passwd nombre_user
```

# Ubicación de los archivos Logs en Ubuntu:

# logs de instalaciones
```
/var/log/apt/history.log
```
# errores del sistema
```
/var/log/apport.log
```

# registro de logins 
```
/var/log/auth.log
```

# servicio de logs iniciar, detener, reiniciar
```php
service rsyslog status
service rsyslog start
service rsyslog stop
service rsyslog restart
```


# Monitoreo de Logs y demas
# mostrar log en tiempo real
```php
tail -f 
```
# mostrar cierta cantidad de lineas de un log
```php
tail -n ruta_archivo   (donde n será el numero de lineas que se quiera mostrar)
```



# Intentos de acceso como root
```php
grep root /var/log/auth.log |tail -10
```

# Logs Mysql
```php
cat /var/log/mysql/error.log
```

# Log Servidor Apache 
```php
cat /var/log/apache2/error.log
```

# Nginx Accesos
```php
cat /var/log/nginx/access.log | tail -10
```
# Log de Nginx 
```
cat /var/log/nginx/error.log
```

# Log del Mail Server 
```php
tail -10 /var/log/mail.err
```

# Tiempos de respuesta del servidor
```php
iostat
```

# cuanto tiempo hace que el server está arriba.
```php
uptime
```

# Salud del disco rígido
```php
df -h
```

# Memoria RAM disponible
```php
free -h
```


# Verificacion de Procesos
```
top
```


# Verificacion de puertos
```php
netstat -atun 
```

# Verificar que Proceso tiene tomado un puerto:
```php
netstat -tulpn
```

# Restablecer el escritorio de Ubuntu
```
dconf reset -f /
```

# Montar Unidades de Discos externos en la terminal


1. - Primero se debe ver como se llama la unidad que se quiere montar

```php
sudo fdisk -l
````

allí se listaran todas las unidades, se debe buscar algo parecido a  __/dev/sdb1__. 

2. Una vez tengamos identificado el disco tenemos que crear una carpeta para montarlo, para seguir las convenciones de ubuntiu es recomendable montarlo en la carpeta __/media/usb/__
```

sudo  mkdir /media/usb
```
3. Una vez tenemos la carpeta creada solo resta montar
```php
sudo mount /dev/sdb1 /media/usb
````

4. una vez tranajado con el disco, se deberá desmontar
```php
sudo umount /media/usb
```




