create table Role(role_id int identity primary key, role_name varchar(20))

create table Users(user_id int identity primary key, fname varchar(20) not null, lname varchar(20) not null, mobile_number varchar(10),date_of_Join date,Modify_date date,role_id int references Role(role_id))

create table login(login_id int primary key identity, userName varchar(20),password varchar(20),user_id int references Users(user_id))

create table Views(pageId int primary key identity,pageName varchar(20),views int)

create table Resource(resourceId int primary key identity,resourceName varchar(20),status varchar(10))

create table Customers(custId int primary key identity,enquiryDate date,fName varchar(20) not null, lName varchar(20) not null,qualification varchar(20), age int not null,percentage float,dob date)

create table ResourceEnergy(resEnergyId int primary key identity,enquiryDate date, status varchar(10),resourceID int references Resource(resourceId))

alter table  ResourceEnergy add custId int references Customers(custId)

create table Modules(moduleId int primary key identity,name varchar(20),description varchar(100),numberOfVideos int )

create table Courses(courseId int primary key identity,courseName varchar(20) not null,courseDesc varchar(100),courseStatus varchar(10),duration int,modifyTime datetime,moduleId int references Modules(moduleId))

create table Batch(batchId int identity primary key, batchName varchar(20) not null, batchStatus varchar(10),startDate date,endDate date, custId int references Customers(custId),courseId int references Courses(courseId))

create table CourseEnquiry(cEnqID int primary key identity,status varchar(10),enqDate date,courseId int references Courses(courseId),custId int references Customers(custId))

Exec sp_help ResourceEnergy;