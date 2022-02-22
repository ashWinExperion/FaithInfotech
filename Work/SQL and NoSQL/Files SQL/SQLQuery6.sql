select employeecode,employeename,departmentcode,locationcode,sum(salary) 
from Employeemasters 
group by
grouping sets(
	(employeecode,employeename,departmentcode,locationcode),
	(departmentcode),
	(locationcode),
	()
)

select * from Employeemasters where salary = 3000
select * from Employeemasters where salary < 3000
select * from Employeemasters where salary > 3000
select * from Employeemasters where salary >= 3000
select * from Employeemasters where salary <= 3000
select * from Employeemasters where salary != 3000
select * from Employeemasters where salary !> 3000
select * from Employeemasters where salary !< 3000
select * from Employeemasters where salary in(5000,3000)
select * from Employeemasters where salary not in(5000,3000)
select * from Employeemasters where salary between 10 and 4000
select * from Employeemasters where salary > 3000 and salary <5000
select * from Employeemasters where salary not between 3000 and 4000
select * from Employeemasters where employeename  like '__d%'
select * from Employeemasters where employeename  like '__[da]h%'
select * from Employeemasters where employeename  like '__[^da]%'
select * from Employeemasters where  exists (select employeename from Employeemasters where employeename like 'F%' )

create table employeemaster2
(
id int identity primary key,
empCode varchar(10),
empName varchar(20),
depcode varchar(20),
location varchar(10),
salary int
)

insert into employeemaster2 values('E008','Sham','IT','ERM',9000)

insert into employeemaster2 values('E009','Hari','HR','KTM',4000)

insert into employeemaster2 values('E010','Lal','IT','ERM',3000)

insert into employeemaster2 values('E011','Dhanya','HR','KLM',6000)

insert into employeemaster2 values('E0005','Praveena','HR','TVM',5000)

select * from Employeemasters intersect select * from employeemaster2 order by locationcode
select * from Employeemasters union all select * from employeemaster2 order by locationcode
