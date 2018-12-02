# Comandos LINUX para Administración y Monitoreo

- [x] Ale DC

#### El propósito de este repositorio es listar los comandos que frecuentemente utilizo par administrar y monitorear Servers en las Distribuciónes Ubuntu Server y Centos. Todos ellos para ser ejecutados en la terminal.


______________________________________________________________________________________________________

para saber que versión de sistema operativo tenemos:
```
cat /etc/*relase
```
otra forma saber que versión de sistema operativo tenemos:
```
lsb_release -a
```

verificar si el sistema operativo es de 32 o 64 bits:
```
uname -m
```

Verificar version de Centos:
```
cat /etc/centos-release
```

Comprueba version de kernel:
```
uname -r
```

Listar comandos de la terminal:
```
# listar todos los comandos 
history

# listar los ultimos 20 comandos
history 20

# volver a ejecutar un comando por su número
!77    donde 77 será el número del comando que aparece listado.

# borrar historial
history -c

# archivo en donde se guardan los comandos dentro de la carpeta de cada usuario
.bash_history
```

Indicar la ruta actual en la que estamos parados
```
pwd
```



Listar archivos:
```
# mostrar archivos y sus tamaños
ls -sh

# ordenar por fecha de modificacion
ls -t
```

Listar usuarios en ubuntu:
```
compgen -u
```
Listar grupos:
```
compgen -g
```
Agregar/Borrar grupo:
```
group add nombre_grupo
group del nombre_gripo
```
Agregar usuario:
```
adduser
```

Mostrar a que grupos pertenece un usuario:
```
groups nombre_user
```

Agregar un usuario a un grupo:
```
usermod -aG nombre_grupo nombre_usuario
usermod -aG sudo nombre_usuario

```

Borrar usuario y todos sus archivos:
```
deluser --remove-home nomre_usuario
```

Borrar una carpeta y todas sus subcarpetas:
```
rm -rf nombre_carpeta
```


Como crear un script

```
#!/bin/bash
function pause(){
   read -p "$*"
}
pause 'Entrando al Docker de INFLUX Y GRAFANA, con usuario ROOT -  Presione Enter'
docker exec -u 0 -i -t --privileged 204a5d5419b2 /bin/bash
```

Luego guardar el script con extension .sh y dar permisos de ejecución:
```
chmod =x nombre_archivo.sh
```
Para ejecutar el script se deberá anteponer ./
```
./nomhre_script.sh
```

Buscar archivos:
```

# buscar en todo el sistema de archivos
find / -name nombre_archivo

# buscar en la carpeta actual
find -name nombre_archivi
```

Zona Horaria
```
# listar zona horaria actual
```
timedatectl
```
# listar zonas horarias
timedatectl list-timezones

# setear zona horaria
timedatectl set-timezone America/Argentina/Buenos_Aires

# otra posible opcion de hacer lo mismo
apt-get install systemd-services
dpkg-reconfigure tzdata
```

Ver paquetes instalados:
```
dpkg -l
````

Desinstalar paquetes
```
apt-get remove nombre_paquete
apt-get purge nombre_paquete
apt-get purge paquete*
apt-get clean nombre_paquete
```

Procesos
```
# listar todos los procesos
ps -a

# version completa
ps -axF

# matar procesos por su número pid
kill -9 numero_proceso

# matar procesos por su nombre
pkill nombre_proceso
```

Cambiar contraseña
```
# cambiar contraseña del usuario actual
passwd

# cambiar clave de algun usuer especifico
passwd nombre_user
```

Ubicación de los archivos Logs en Ubuntu:
```
# logs de instalaciones
/var/log/apt/history.log

# errores del sistema
/var/log/apport.log

# registro de logins 
/var/log/auth.log

# servicio de logs iniciar, detener, reiniciar
service rsyslog status
service rsyslog start
service rsyslog stop
service rsyslog restart
```


Monitoreo de Logs y demas
```
# mostrar log en tiempo real
tail -f 

# mostrar cierta cantidad de lineas de un log
tail -n ruta_archivo   (donde n será el numero de lineas que se quiera mostrar)
```



Intentos de acceso como root
```
grep root /var/log/auth.log |tail -10
```

Logs Mysql
```
cat /var/log/mysql/error.log
```

Log Servidor Apache 
```
cat /var/log/apache2/error.log
```

Nginx Accesos
```
cat /var/log/nginx/access.log | tail -10
```
Log de Nginx 
```
cat /var/log/nginx/error.log
```

Log del Mail Server 
```
tail -10 /var/log/mail.err
```

Tiempos de respuesta del servidor
```
iostat
```

cuanto tiempo hace que el server está arriba.
```
uptime
```

Salud del disco rígido
```
df -h
```

Memoria RAM disponible
```
free -h
```


Verificacion de Procesos
```
top
```


Verificacion de puertos

```
netstat -atun 
```
