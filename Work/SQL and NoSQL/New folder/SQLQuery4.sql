
insert into Customer values(1,'ashwin','KTM')
insert into Customer values(2,'akash','TVM')
insert into Customer values(3,'anu','KLM')
insert into Customer values(3,'anu','KLM')

update Customer set Adress = 'New Delhi'

update Student set email='NA'
where email = null

delete Student where StudID in 
( 
select StudID   from Student
where Datediff(year,DOB,GETDATE())>20
)


delete from Student where DOB

select * from Student



update Student set FirstName='XXX',DOB=GETDATE() where 
FirstName like '___a%'

delete Student where State like'%a'

update Student set LastName='Jan' where DATEPART(month,DOB)=10

delete Student where State like 'K%'

select * from Student

delete from Student where DATEPART(day,DOB)=5 and DATEPART(month,DOB)=6

delete Employee where salary>5000 
and deptno in (select deptno from Department where Deptname='Toy')

update Employee set deptno = 2, FirstName='Jack'
where Empno=1

insert into Orders values(1,1,'2021-12-10')
insert into Orders values(2,3,'2021-10-10')
insert into Orders values(3,1,'2021-11-10')

insert into OrderItem values(9,2,'Apple',10)
insert into OrderItem values(7,3,'Chilly',5)
insert into OrderItem values(8,3,'Carrot',6)

alter table Customer alter column address varchar(100)

create table Course(Courseid varchar(5) primary key,StreamID varchar(20),Title varchar(40),Description varchar(200),fees numeric)
insert into Course values(1,'S1','Science','Description1',500)
insert into Course values(2,'S2','Science','Description2',600)
insert into Course values(3,'S3','Science','Description3',700)
insert into Course values(4,'S4','Science','Description4',800)
insert into Course values(5,'S5','Science','Description5',500)

create table Batch(BatchID varchar(30),CourseID varchar(5),BatchName char(1))

insert into Batch values('1','1','A')
insert into Batch values('2','2','B')
insert into Batch values('3','1','C')
insert into Batch values('4','1','D')

drop table Student

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
grade char(3) check (grade in('A','A+','A-','B','B+','B-','C','C+','C-',
'D','D+','D-','F','F+','F-')))


select * from Customer 
join Orders
on Customer.Custno =Orders.custno
join 
OrderItem
on OrderItem.orderno=Orders.orderno



select Employee.FirstName,Employee.Deptno,salary from Employee
where deptno in (select deptno from Employee where Commission<> null)
and salary in (select salary from Employee where Commission<> null)


delete from Customer where  Custno=1

select * from Employee

drop table Student
select * from Student
alter table Student drop column MiddleName
insert into Student values('1','Madhu','Ashwin','1996-10-22','KTM','THL','KL','680605','14126','vinimadhu111@gmail.com','A')
insert into Student values('2','Madhu','Akash','2000-09-04','KTM','THL','KL','680665','34126','vinimadhu112@gmail.com','B')
insert into Student values('3','Vinod','Akshay','2006-10-12','TVM','KYU','KL','681115','12456','vinimadhu131@gmail.com','A-')
