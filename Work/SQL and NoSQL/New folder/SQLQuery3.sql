create database EmployeeDB
go 
use EmployeeDB

create table Department( Deptno numeric(2) primary key,
	Deptname varchar(20) unique,
	Floor numeric(2),
	Location varchar(20))


create table Employee(Empno numeric(3) primary key,
	ManagerID numeric(3),
	FirstName varchar(20) not null,
	LastName varchar(20),
	UserID varchar(20),
	deptno numeric(2) references Department(Deptno),
	salary numeric(7,2),
	Commission numeric(3),
	Joining_date date,
	Designation varchar(25))


select Empno as id,FirstName,deptno as deptid into emp2 from Employee

INSERT INTO Department values(5,'Accounts',1,'TVM');
insert into Employee values(2,1,'Akash','Madhu','userID2',5,30000,2,'2020-10-10','Lead')

INSERT INTO Department values(2,'Marketing’',2,'TVM');
INSERT INTO Department values(3,'Sales',3,'TVM');
INSERT INTO Department values(4,'Manufacturing',2,'TVM');


insert into Employee values(1,null,'Akash','Madhu','userID2',2,30000,2,'2020-10-10','Manager')
insert into Employee values(3,1,'Amal','Vinod','userID3',3,40000,3,'2020-09-09','Des3')
insert into Employee values(4,null,'Akshay','Vinod','userID4',4,20000,4,'2020-08-08','Manager')
insert into Employee values(6,1,'Amar','nod','userID6',4,20000,4,'2020-08-08','Lead')
insert into Employee values(7,1,'Manish','Mod','userID7',4,20000,4,'2020-08-08','Lead')
insert into Employee values(8,null,'King','Ashwin','userID7',4,20000,4,'2020-08-08','Owner')

select * from Employee
drop table emp2
select Empno as id,FirstName as LastName,deptno as deptid into emp2 from Employee



select * from Employee where Employee.Empno=Employee.ManagerID

select CONCAT('For every year ',Employee.FirstName,' ',Employee.LastName,Department.Deptname,' earns ',Employee.salary*12)
from Employee
join Department
ON Department.Deptno=Employee.deptno

select Department.Deptname,Employee.FirstName
from Employee
join Department
on Employee.deptno=Department.Deptno
order by Deptname ASC,FirstName DESC

select Department.Deptname,Employee.FirstName
from Employee
join Department
on Employee.deptno=Department.Deptno
where Deptname in ('Toy','Shoe')

select Department.Deptname,Employee.FirstName
from Employee
join Department
on Employee.deptno=Department.Deptno
where Deptname='DALLAS'

select Department.Deptno,Employee.FirstName
from Employee
join Department
on Employee.deptno=Department.Deptno
where Employee.deptno in 
(select deptno from Employee where Employee.FirstName like 'Manish')

 


select e1.FirstName managerName,e2.FirstName as employeeName from Employee as e1, Employee as e2 
where e1.Empno=e2.ManagerID

select concat(Employee.FirstName,' ',Employee.LastName,' , ',Department.Deptname) as 'Employee and department'
from Employee
join Department
on Employee.deptno=Department.Deptno

update Department set Deptname ='DALLAS'
where Deptname like 'Sales'

select e1.FirstName as Employee,e1.ManagerID as ManagerID,e2.FirstName as Manager 
from Employee as e1, Employee as e2
where e1.Empno=e2.ManagerID

Union
select e1.FirstName as Employee,e1.ManagerID as ManagerID1,e2.FirstName as Manager 
from Employee as e1, Employee as e2
where ManagerID1=NULL

select * from Department

select Employee.Designation
from Employee
join Department
on Employee.deptno=Department.Deptno
and Department.Deptno='5'

alter table Employee
alter column Commission varchar(20)

update Employee set Employee.Commission='Scott'
where Empno  in (1,2,3,4)

select CONCAT(Employee.FirstName,Employee.LastName),
Employee.Joining_date from Employee where Employee.Joining_date in
(select min(Employee.Joining_date) from Employee )

select CONCAT(Employee.FirstName,Employee.LastName),
Employee.Joining_date,Employee.salary 
from Employee where Employee.Empno
in
(select e1.Empno from Employee as e1,Employee as e2 where e1.salary=e2.salary and e1.Empno!=e2.Empno)
and
Employee.Commission='Scott'

alter table Employee add  HRA numeric(7,2)
alter table Employee add  PF numeric(7,2) check(PF<5000)

update Employee set salary=salary+10+20

create table Customer(Custno numeric(3) primary key,Custname varchar(20),Adress varchar(40))

create table Orders(orderno numeric(3) primary key,custno numeric(3) references Customer(Custno),orderdate date)

alter table Customer
alter column adress varchar(100)

create table Student(
StudID varchar(20) primary key,
LastName varchar(25),
MiddleName varchar(30),
FirstName varchar(20),
DOB date default getdate(),
address varchar(50),
city varchar(20),
State varchar(2),
zipcode varchar(10),
fax varchar(10),
email varchar(30),
grade char(1) check (grade in('A','A+','A-','B','B+','B-','C','C+','C-',
'D','D+','D-','F','F+','F-')))

alter table Student drop column MiddleName

EXEC sp_rename Student, Participant;


create table Batch(BatchID varchar(30),CourseID varchar(5),BatchName char(1))
create table Course(Courseid varchar(5) primary key,StreamID varchar(20),Title varchar(40),Description varchar(200),fees numeric)
create table Student(




create table OrderItem(ItemID numeric(3) primary key,orderno numeric(3) references  orders(orderno),itemName varchar(20),quantity numeric(2))
select Employee.Empno,CONCAT(Employee.FirstName,Employee.LastName),
Employee.salary 
from Employee 
where Employee.salary >
(select avg(salary) from Employee)
and Employee.deptno in
(select deptno from Employee where FirstName like '%t%' or LastName like '%t%' )


select * from Employee