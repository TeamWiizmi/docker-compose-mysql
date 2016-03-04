#!/bin/bash
MACHINE_NAME=$(docker-machine active)
mkdir -p ./backup/$MACHINE_NAME > /dev/null 2>&1

if [[ ! -z "$1" ]]; then
  docker exec -i mysql mysqldump -uroot -p --databases $1 | gzip -9 > ./backup/$MACHINE_NAME/$1-$(date "+%b_%d_%Y_%H_%M_%S").sql.gz
fi