# Comandos LINUX para Administración 

### El propósito de este repositorio es listar todos los comandos que mas frecuentemente utilizo par administrar servidores en las distribuciónes Ubuntu Server y Centos.


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

Listar archivos:
```
# mostrar archivos y sus tamaños
ls -sh
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


### Como crear un script

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



Monitoreo de Logs y demas
```
# mostrar log en tiempo real
tail -f 

# mostrar cierta cantidad de lineas de un log
tail -n ruta_archivo   (donde n será el numero de lineas que se quiera mostrar)




```
