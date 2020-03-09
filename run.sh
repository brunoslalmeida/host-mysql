#!/bin/bash
cwd=$(pwd)

docker stop mysql
docker rm mysql

docker run -d \
        --hostname mysql \
        --name mysql \
        --network internal \
        --restart=always \
        -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD \
        -v $cwd/var/lib/mysql:/var/lib/mysql \
        mysql:5