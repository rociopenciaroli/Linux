## Crontab - uso básico y comandos

- [x] Ale Dc


En estas carpetas se guardan los scripts a ejecutarse segun frecuenca de ejecución
```js
/etc/cron.  
/etc/cron.daily  
/etc/cron.hourly  
/etc/cron.monthly  
/etc/cron.weekly  
```

```js
crontab -e  # editar archivo crontab del usuario logueado  
crontab -l  # lista las tareas cargadas  
crontab -d  # borra el crontab del usuario  
crontab -u nombre_user # es para ver o editar el cron de otros usuarios  
```

Crontab tiene predefinidas funciones para ser ejecutadas en un período de tiempo o dada una condición:
```js
@reboot  # ejecutará una tarea si se reinicia el sistema  
@yearly  # ejecutará una tarea  
@weekly  # ejecutará una tarea una vez por semana  
@daily   # ejecutará una tarea todos los dias  
@hourly  # ejecutará una tarea cada una hora  
```

Algunos ejemplos:
```js
@daily root apt-get update

@monthly  /home/aledc/scripts/respaldo.sh
```

## Ejecutar tarea de Lunes a Viernes a las 8:00
```js
0 8 * * 1-5 /home/aledc/restart_dockers.sh
````


