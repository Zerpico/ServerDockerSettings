#!/bin/bash
set -e

mysql --protocol=socket -uroot -p$MYSQL_ROOT_PASSWORD <<EOSQL
CREATE DATABASE nextcloud;

CREATE USER 'nextcloud'@'%' IDENTIFIED BY '$NEXTCLOUD_PASSWORD';
GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'%' WITH GRANT OPTION;
EOSQL