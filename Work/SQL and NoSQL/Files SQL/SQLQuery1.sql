--1>>Create DB using Command
create database employee_db;

--2>>List out all the Databases(User defined and Sys) in the Serever
Select name from master.sys.sysdatabases ;

--3>>To switch the database we working on
-- b4 it was in master DB now we switched to employee_db
Use employee_db;
Use master

-->4>> To delete a DB - DROP DATABAE db_name
create database employee_db2;
--drop database employee_db2;
-- We cann't delete the DB while using it, so we have to switch the DB

--5>> To BackUp the DB
backup database employee_db to disk = 'E:\Work\empBackUp.bak';

--6>> Differential backup is used to make only the new changes that happened after the last back up
backup database employee_db to disk = 'E:\Work\empBackUp.bak' with Differential


