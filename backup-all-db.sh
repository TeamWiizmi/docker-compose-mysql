#!/bin/bash
read -s -p "Mysql User: " USER
echo "\n"
read -s -p "Mysql Password: " PASS

docker exec -it mysql mysqldump -u$USER -p$PASS --all-databases > ./backup/all-databases-$(date "+%b_%d_%Y_%H_%M_%S").sql