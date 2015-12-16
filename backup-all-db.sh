#!/bin/bash
docker exec -i mysql mysqldump -uroot -p --all-databases | gzip -9 > ./backup/all-databases-$(date "+%b_%d_%Y_%H_%M_%S").sql.gz
