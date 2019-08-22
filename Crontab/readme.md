# Crontab - Uso Básico y Comandos

[![aledc.com](https://github.com/aledc7/Scrum-Certification/blob/master/recursos/aledc.com.svg)](https://aledc.com)
[![License](https://github.com/aledc7/Scrum-Certification/blob/master/recursos/mit-license.svg)](https://aledc.com)
[![GitHub release](https://github.com/aledc7/Scrum-Certification/blob/master/recursos/release.svg)](https://aledc.com)
[![Dependencies](https://github.com/aledc7/Scrum-Certification/blob/master/recursos/dependencias-none.svg)](https://aledc.com)

- [x] Ale Dc


## Comandos basicos y su descripcion:
```js
crontab -e  # editar archivo crontab del usuario logueado  
crontab -l  # lista las tareas cargadas  
crontab -d  # borra el crontab del usuario  
crontab -u nombre_user # es para ver o editar el cron de otros usuarios  
```

## En estas carpetas se guardan los Scripts a ejecutarse segun frecuenca de ejecución:

```js
/etc/cron.  
/etc/cron.daily  
/etc/cron.hourly  
/etc/cron.monthly  
/etc/cron.weekly  
```



## Crontab tiene predefinidas funciones para ser ejecutadas en un período de tiempo o dada una condición:
```js
@reboot  # ejecutará una tarea si se reinicia el sistema  
@yearly  # ejecutará una tarea  una vez al año
@weekly  # ejecutará una tarea una vez por semana  
@daily   # ejecutará una tarea todos los dias  
@hourly  # ejecutará una tarea cada una hora  
```

## Algunos ejemplos:

## Ejecutar tarea de Lunes a Viernes a las 8:00
```js
0 8 * * 1-5 /home/aledc/restart_dockers.sh
````


```js
@daily root apt-get update

@monthly  /home/aledc/scripts/respaldo.sh
```


## FORMATO DE LAS TAREAS

Las tareas cron tienen 5 asteriscos __separados por espacios__, seguidos del comando a ejecutar. 



## Los 5 asteriscos

###  De izquierda a derecha, los asteriscos representan:
- __Minutos__: de 0 a 59.
- __Horas__: de 0 a 23.
- __Día del mes__: de 1 a 31.
- __Mes__: de 1 a 12.
- __Día de la semana__: de 0 a 6, siendo 0 el domingo.



# Troubleshooting 
Si por alguna razón, crontab no ejecuta el script a la hora indicada, esto puede solucionarse reiniciando el servicio

```php
sudo /etc/init.d/cron restart
````




