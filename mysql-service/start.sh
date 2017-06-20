#!/bin/sh

# Run the MySQL container, with a database named 'users' and credentials
# for a users-service user which can access it.
echo "Starting DB..."  
docker run --name db -d -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=domo_mom_db -e MYSQL_USER=user1 -e MYSQL_PASSWORD=root  -p 3306:3306  mysql:latest

# Wait for the database service to start up.
echo "Waiting for DB to start up..."  
sleep 20s

# Run the setup script.
echo "Setting up initial data..."  
docker exec -i db mysql -uroot -proot < rolloutScriptMOMv1.4.sql 


