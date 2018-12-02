### Archivos principales de Nginx en Ubuntu


Iniciar/detener/status
```
systemctl status nginx  
systemctl start nginx  
systemctl stop nginx  
systemctl restart nginx  
```
Rutas Principales

```
/var/www/                   # contenedor de archivos a publicar en el server  
/etc/nginx/nginx.conf       # archivo de configuracion  
/var/log/nginx/access.log   # solicitudes de acceso  
/var/log/nginx/error.log    # errores del server  
```
