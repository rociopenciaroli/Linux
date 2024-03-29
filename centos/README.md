[![aledc.com](https://github.com/aledc7/Scrum-Certification/blob/master/recursos/aledc.com.svg)](https://aledc.com)
[![License](https://github.com/aledc7/Scrum-Certification/blob/master/recursos/mit-license.svg)](https://aledc.com)
[![GitHub release](https://github.com/aledc7/Scrum-Certification/blob/master/recursos/release.svg)](https://aledc.com)
[![Dependencies](https://github.com/aledc7/Scrum-Certification/blob/master/recursos/dependencias-none.svg)](https://aledc.com)

# Comandos de Centos


## Cambiar zona horaria
```php
sudo timedatectl set-timezone America/Argentina/Buenos_Aires
````

## Actualizar Sistema Operativo
Como solucionar el error de __Espacio Insuficiente__ al querer actualizar el Sistema Operativo:

Error:
```php
At least xMB more space needed on the /boot filesystem
````

Primero, Listar kernel para ver cuantos tenemos (debe quedar solo 1)
```php
yum list kernel
````

Instalar esta utilidad
```php
yum install yum-utils
package-cleanup --oldkernels --count=2
````

Limitar solo a 2 los kernels que se guarden
```php
installonly_limit=2
````

listar los kernels, para elegir cual borraremos
```php
rpm -qa | grep kernel
````

borramos el kernel mas viejo 
```php
rpm -e kernel-3.09.0-862.9.1.el7.x86_64
````

Luego de esto se podrá actualizar sin probemas
```php
sudo yum update
````
Luego de actualizar con el update, nuevamente podemos borrar el kernel anterior, que ya quedó viejo.

```php
sudo rpm -e kernel-3.10.0-862.9.1.el7.x86_64
````

## Instalar última versión de git
```php
$ sudo yum install https://centos7.iuscommunity.org/ius-release.rpm
$ sudo yum erase git
$ sudo yum install epel-release 
$ sudo yum install git2u
````


