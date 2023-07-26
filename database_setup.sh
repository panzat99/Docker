#!/bin/bash

database_setup(){
    psql -U postgres -c "CREATE USER $1 WITH CREATEDB LOGIN PASSWORD '$2';" -c "CREATE DATABASE $3 WITH OWNER $1;"
}

database_setup $nc_user $nc_pw $nc_db
database_setup $vw_user $vw_pw $vw_db