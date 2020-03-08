#!/bin/bash
docker stop mysql

docker run -d --rm \
        --hostname mysql \
        --name mysql \
        --network internal \
        --restart=always \
        -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD \
        -v /var/lib/mysql:/var/lib/mysql \
        mysql:5