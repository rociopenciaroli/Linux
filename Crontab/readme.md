## Crontab - Comandos básicos

- [x] Ale Dc


En estas carpetas se guardan los scropts a ejecutarse segun frecuenca de ejecución
```
/etc/cron.
/etc/cron.daily
/etc/cron.hourly
/etc/cron.monthly
/etc/cron.weekly
```

``
crontab -e  # editar archivo crontab del usuario logueado
crontab -l  # lista las tareas cargadas
crontab -d  # borra el crontab del usuario
crontab -u nombre_user # es para ver o editar el cron de otros usuarios
``

Crontab tiene predefinidas funciones para ser ejecutadas en un período de tiempo o dada una condición:
``
@reboot  # ejecutará una tarea si se reinicia el sistema
@yearly  # ejecutará una tarea
@weekly  # ejecutará una tarea una vez por semana
@daily   # ejecutará una tarea todos los dias
@hourly  # ejecutará una tarea cada una hora
``

Algunos ejemplos:
``
@daily root apt-get update

@monthly  /home/aledc/scripts/respaldo.sh
``

