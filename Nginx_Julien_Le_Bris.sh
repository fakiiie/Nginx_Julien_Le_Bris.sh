docker volume create nginx_volume
echo "<h1>Bienvenue sur mon serveur Nginx !</h1>" > index.html
docker run -v nginx_volume:/usr/share/nginx/html --name nginx_container_temp nginx bash -c "cat > /usr/share/nginx/html/index.html" < index.html
docker run -d -p 8080:80 -v nginx_volume:/usr/share/nginx/html --name nginx_container nginx
