# Getting started

## Run mysql container in development enviroment
```sh```
docker-compose up -d
```
## Run it in production enviroment
```sh```
cp .env.dev .env.production
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
```

## Backup your databases
```sh```
# Ensure you have docker-machine installed
eval "$(docker-machine env your_machine_name)"
./backup-all-db.sh
```
