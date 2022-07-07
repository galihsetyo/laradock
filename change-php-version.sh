docker-compose build php-fpm
docker-compose build workspace
docker-compose down
docker-compose up -d nginx mysql workspace
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ss-dock_mysql_1
