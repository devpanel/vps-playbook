#!/bin/bash
set -e

echo "Create ${HOME}/.devpanel/"
mkdir -p ~/.devpanel/

echo "Create ${HOME}/.devpanel/docker-compose.yml"
cat <<EOF >> ${HOME}/.devpanel/docker-compose.yml
version: '3'
services:
  database:
    image: mysql:5.7
    ports:
      - 3306:3306
    volumes:
      - "./data/mysql:/var/lib/mysql/"
    environment: 
      - MYSQL_ROOT_PASSWORD={{ database_password }}
EOF

echo "docker compose up -d";
cd ~/.devpanel/;
docker compose up -d;