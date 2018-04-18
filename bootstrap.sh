#!/bin/bash
echo $0: starting bootstrap process

curl -sGS --retry 3 --retry-delay 10 --data-urlencode id=$DB_BACKUPS_TESTING_ID --data-urlencode key=$1 https://app.remorabackup.com/get_util -o backup

chmod 700 ./backup

echo $0: beginning backup process
./backup $1
