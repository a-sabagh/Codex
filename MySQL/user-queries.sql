#Create user
CREATE USER 'USERNAME'@'localhost' IDENTIFIED BY 'USERNAME';
#Grant privileges
GRANT ALL PRIVILEGES ON * . * TO 'USERNAME'@'localhost';
#Drop user
DROP USER 'USERNAME'@'localhost'