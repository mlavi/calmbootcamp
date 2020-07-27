#!/bin/bash
set -ex

# -*- Mysql secure installation
echo "Altering root password..."

mysql --user=root \
  --connect-expired-password --password="$(sudo grep -oP 'temporary password(.*): \K(\S+)' /var/log/mysqld.log)"<<-EOF
SET GLOBAL validate_password.policy=LOW;
ALTER user 'root'@'localhost' IDENTIFIED BY '@@{MySqlPassword}@@';
FLUSH PRIVILEGES;
EOF

echo "Creating webapp database.table..."
mysql --user=root --password='@@{MySqlPassword}@@'<<-"EOF"
CREATE DATABASE IF NOT EXISTS webapp ;
CREATE TABLE IF NOT EXISTS webapp.visitors ( \
  id INT NOT NULL AUTO_INCREMENT , \
  time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP , \
  message VARCHAR(80) NULL DEFAULT NULL , \
  PRIMARY KEY (id)) \
  ENGINE = InnoDB CHARSET=ascii COLLATE ascii_general_ci COMMENT = 'testing';
  
# create app users and set permissions
FLUSH PRIVILEGES;
CREATE USER 'webapp'@'%' IDENTIFIED WITH mysql_native_password BY '@@{MySqlPassword}@@' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
GRANT SELECT, INSERT ON *.* TO 'webapp'@'%';

FLUSH PRIVILEGES;
CREATE USER 'webapp'@'localhost' IDENTIFIED WITH mysql_native_password BY '@@{MySqlPassword}@@' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
GRANT SELECT, INSERT ON *.* TO 'webapp'@'localhost';

FLUSH PRIVILEGES;

EOF
