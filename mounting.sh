#!/bin/bash

container_name="nginx1"

#docker run --name $container_name -v ~/php-projects/nginx_conf/public:/usr/share/nginx/html -d -p 80:80 nginx
docker run --name $container_name \
    --mount type=bind,source=/home/ilya/php-projects/nginx_conf/public,target=/usr/share/nginx/html,readonly \
    --detach --publish 80:80 nginx
