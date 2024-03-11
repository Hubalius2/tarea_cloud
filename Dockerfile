# Usa la imagen base de NGINX
FROM nginx:latest

# Copia el archivo HTML al directorio de NGINX
COPY index.html /usr/share/nginx/html
COPY dashboard.html /usr/share/nginx/html

# Expone el puerto 80 para que pueda ser accesible desde fuera del contenedor
EXPOSE 80

# Inicia NGINX en primer plano cuando se ejecute el contenedor
CMD ["nginx", "-g", "daemon off;"]
