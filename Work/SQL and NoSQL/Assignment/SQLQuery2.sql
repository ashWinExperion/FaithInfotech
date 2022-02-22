/*CREATE DATABASE*/
create database assignment1
use assignment1

/*TABLE SALES CREATED*/
CREATE TABLE sales
	(orederID int identity primary key,
	orderDate date default GETDATE(),
	ordPrice int,
	ordQty int check(ordQty>1) default 1,
	custName varchar(20) not null)

/*INSERTING VALUES INTO SALES TABLE*/

insert into sales values('2020/11/22',150,2,'John')
insert into sales values('2020/07/10',180,2,'Tom')
insert into sales values('2020/06/13',400,5,'Jerry')
insert into sales values('2020/06/15',320,2,'John')
insert into sales values('2020/11/22',800,4,'Bond')
insert into sales values('2020/09/02',730,4,'Chaplin')
insert into sales values('2020/10/03',1000,2,'Mickey')


/*COUNT THE ORDER MADE BY CUSTOMER WITH NAME JHON*/
select count(*) from sales where custName='John'

/*COUNT DISTINCT CUSTOMERS*/
select count(distinct custName)  from sales

/*SUM OF ALL THE ORDERS QUANTITY*/
select sum(ordQty)as ord_Sum from sales 

--AVERAGE OF THE QUANTITY OF ALL ORDERS
select avg(ordQty) as ord_avqQty from sales 

--AVERAGE OF ALL ORDER QUANTITY WITH ORDER PRICE GREATER THAN 300
select avg(ordQty) from sales as ord_avqQty where ordPrice > 300

--MINIMUM ORDER PRICE 
select min(ordPrice) as min_ordPrice from sales 

--CUSTOMER WITH 'N' AT END OF NAME
select custName from sales where custName like '%n'

-- DIFFERENT CUSTOMER NAME
select distinct custName from sales

--SUM OF ORDER PRICE BY EACH CUSOMER
select sum(ordPrice),custName from sales group by custName

--CUSTOMERS WITH ORDER PRICE GREATER THAN 700
select custName from sales group by custName having sum(ordPrice) > 700


--CUSTOMERS WITH ORDER QUANTITY MORE THAN 3
select custName from sales group by custName having sum(ordQty)>3

--CUSTOMER WHO SPEN MORE THAN 600
select custName from sales group by custName having sum(ordPrice)>600

--ORDER BY ASC OF PRICE
select * from sales order by ordPrice

--ORDER BY DESC PRICE
select * from sales order by ordPrice desc

