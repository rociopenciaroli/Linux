# Comandos LINUX para Administración 

#### El propósito de este repositorio es listar todos los comandos que mas frecuentemente utilizo par administrar servidores en las distribuciónes Ubuntu Server y Centos.


para saber que versión de sistema operativo tenemos:
```
cat /etc/*relase
```
otra forma saber que versión de sistema operativo tenemos:
```
lsb_release -a
```

verificar si el sistema operativo es de 32 o 64 bits
```
uname -m
```

Verificar version de Centos
```
cat /etc/centos-release
```

Comprueba version de kernel
```
uname -r
```
Listar usuarios en ubuntu
```
compgen -u
```
Listar grupos 
```
compgen -g
```
Agregar grupo
```
group add nombre_grupo
group del nombre_gripo
```
Agregar usuario
```
adduser
```

Mostrar a que grupos pertenece un usuario
```
groups nombre_user
```

Agregar un usuario a un grupo
```
usermod -aG nombre_grupo nombre_usuario
```

Borrar usuario y todos sus archivos:
```
deluser --remove-home nomre_usuario
```

Borrar una carpeta y todas sus subcarpetas:
```
rm -rf nombre_carpeta
```







comandos para administracion de servidores Linux
