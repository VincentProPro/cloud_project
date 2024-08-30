#!/bin/bash

export MYSQLCONNSTR_DB_APP_HOST=127.0.0.1
export MYSQLCONNSTR_DB_APP_PORT=3306
export MYSQLCONNSTR_DB_APP_DATABASE=forge
export MYSQLCONNSTR_DB_APP_USERNAME=root
export MYSQLCONNSTR_DB_APP_PASSWORD=root

#echo $MYSQLCONNSTR_DB_APP_USERNAME

composer install

php artisan migrate --force 

php artisan db:seed

php artisan serve
