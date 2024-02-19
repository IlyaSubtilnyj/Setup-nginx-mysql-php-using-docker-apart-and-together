#!/bin/bash

SCRIPT_DIR="$(dirname "$0")"

#Port on which container is can be accessed
HOST_PORT="3307"

#Container name
container_name="mysql1"

#Volume name where all data will be stored
container_database_colume_name="${container_name}_volume"

#This won't recreate database
docker volume create $container_database_colume_name

docker run --name $container_name --env-file "${SCRIPT_DIR}/.env" \
    -v $container_database_colume_name:/var/lib/mysql \
    --publish $HOST_PORT:3306 --detach mysql

#CAN BE ACCESSED LIKE THIS: mysql -u USER_NAME -p USER_PASSWORD -h127.0.0.1 -P $HOST_PORT