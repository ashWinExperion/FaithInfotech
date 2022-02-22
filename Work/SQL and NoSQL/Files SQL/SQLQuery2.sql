--DDL>>Create Table-Alter Table-Drop Table

--Create Table
create table emp_details (id int primary key identity,empName varchar(50) not null,age smallint,empLocation varchar(50))

--Allter Table
alter table emp_details  add dob date;

--To view the table structure we have a stored procedure, just execute it to see the table structure
Exec sp_help emp_details;


--Alter table drop a column
Alter table emp_details drop column dob;

--Assignmant Hospital ->patient(5,6 column)




--Insert Into
insert into emp_details values('Tom',2,'USA','2018-10-20')
insert into emp_details values('Jerry',1,'USA','2019-10-20')
insert into emp_details values('Mickey',3,'USA','2017-10-20')

--Update
Update emp_details set empName = 'donald' where empName = 'Tom'
Update emp_details set empName = 'Donald' where empName = 'donald'

--Delete
Delete from emp_details where empName='Donald'

--Select All
select * from emp_details

--Drop a a table
drop table emp_details