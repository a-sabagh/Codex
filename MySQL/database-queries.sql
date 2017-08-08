
#create database
#@IF NOT EXIST
#@CHARACTER SET
#@COLLATE
CREATE DATABASE IF NOT EXISTS [db_name] CHARACTER SET=[character_set] COLLATE=[collate];

#alter table
ALTER DATABASE CHARACTER SET [character_set] 
ALTER DATABASE COLLATE [collate]
ALTER DATABASE CHARACTER SET [character_set] COLLATE [collate]

#drop database
DROP DATABASE IF EXISTS [db_name];