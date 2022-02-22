create database hospital_db

use hospital_db


create table Patients(id integer primary key identity, name varchar(50) not null,phone varchar(10))
alter table Patients add location varchar(50)
alter table Patients drop column location
alter table Patients add addr varchar(50)
alter table Patients add gender varchar(6), age smallint
alter table Patients alter column age smallint not null

Exec sp_help Patients


insert into Patients values('Ashwin',909019091,'addr Test @123','M',25)

select * from Patients

insert into Patients (name,phone,addr,gender,age)  values('Akash',1212121212,'addr Test @ 1122','M',22),
('Akash',1212121212,'addr Test @ 1122','M',22)

update Patients set Name = 'Akskhay', phone=2312321233  where id = 3
delete from Patients where id = 4
drop table Patients

use master

drop database hospital_db


