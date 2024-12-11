create table product(
pcode int primary key auto_increment,
pname varchar (100) not null,
unitprice decimal (18,2),
brand varchar (50),
qnty int check (qnty<0),
color varchar (20));

desc product;



use roshandb;

create table customers(
cid int primary key,
cname varchar (50),
age int,
city varchar(100),
phone varchar(10) ,
gender varchar(50),
salary decimal(10,2));

alter table customers
add email varchar(100);
alter table customers
modify gender varchar(40);
alter table customers
drop column salary;
desc customers;

create table employee(
empid int,
name varchar(20),
age int(40),
address varchar(50),
post varchar(10),
salary decimal(18,2),
gender char,
aadhaarno varchar(12));
alter table employee
add primary key (empid);
alter table employee
modify name varchar(20) not null;


desc employee; 


insert into employee (empid, name, age, address, post, salary, gender, aadhaarno)
value ('1', 'Amit', '35', 'Dwarka', 'Manager', '50000', 'm', '123456789012'),
('2', 'Rohit', '29', 'Rohini', 'SM', '20000', 'm', '239038745673'),
('3', 'Priya', '27', 'Vasant Kunj', 'HR', '30000', 'f', '987654321098'),
('4', 'Sunita', '32', 'Pitampura', 'Developer', '45000', 'f', '456789123456'),
('5', 'Karan', '41', 'Janakpuri', 'Director', '80000', 'm', '321654987321'),
('6', 'Nidhi', '30', 'Lajpat Nagar', 'Accountant', '35000', 'f', '112233445566'),
('7', 'Anil', '28', 'Karol Bagh', 'SM', '25000', 'm', '789456123789'),
('8', 'Suman', '34', 'Noida', 'Designer', '40000', 'f', '998877665544'),
('9', 'Rakesh', '26', 'Gurgaon', 'SM', '22000', 'm', '776655443322'),
('10', 'Megha', '31', 'Saket', 'HR', '32000', 'f', '334455667788'),
('11', 'Vikas', '33', 'Rajouri Garden', 'Engineer', '48000', 'm', '445566778899'),
('12', 'Pooja', '29', 'Greater Kailash', 'Designer', '37000', 'f', '556677889900'),
('13', 'Aakash', '25', 'Shalimar Bagh', 'SM', '23000', 'm', '667788990011'),
('14', 'Neha', '36', 'Connaught Place', 'Manager', '52000', 'f', '778899001122'),
('15', 'Manoj', '40', 'Paschim Vihar', 'Director', '75000', 'm', '889900112233'),
('16', 'Swati', '27', 'Preet Vihar', 'HR', '31000', 'f', '990011223344'),
('17', 'Rahul', '39', 'Sadar Bazar', 'Developer', '47000', 'm', '101112131415'),
('18', 'Sneha', '28', 'Jor Bagh', 'Accountant', '34000', 'f', '111213141516'),
('19', 'Vijay', '31', 'Malviya Nagar', 'SM', '24000', 'm', '121314151617'),
('20', 'Ritika', '30', 'Green Park', 'Designer', '36000', 'f', '131415161718');

select * from employee;
select * from employee
where empid='10';
select * from employee
where age between 20 and 40;
select * from employee
where gender='m';
select * from employee
where post='manager';
select * from employee
where age >=30;
select * from employee
where age>=30 and gender='m';
select * from employee
where post='manager' or post='sm';
select * from employee
where empid in(1,5,7,9);
select * from employee
where post in ('hr' , 'sales');
select distinct (post)
from employee;





select count(*) as total_no_of_employee from employee;

select sum(salary) as sum_salary from employee;
select avg(salary) as average_salary from employee;
select max(salary) as max_salary from employee;
select min(salary) as min_salary from employee;
select * from diwalisalesdata;
/* rename */
alter table diwalisalesdata rename to salesdata;
/* Different types of select query on salesdata */
desc salesdata;
select * from salesdata;
select count(*) as total from salesdata;














use roshandb;
create table pets(
pid int primary key auto_increment,
pname varchar(30),
owner varchar(50),
species varchar(20),
gender char,
dob varchar(20),
death varchar(30));

desc pets; 



insert into pets (pid, pname, owner, species, gender, dob, death)
values('2', 'tiger', 'rahul', 'dog', 'm', '2020-06-07', null),
('3', 'puppy', 'rohit', 'cow', 'm', '2020-06-28', null),
('4', 'tommy', 'sumit', 'cat', 'f', '2020-06-08', null),
('5', 'sheru', 'amit', 'dog', 'm', '2020-09-28', null),
('6', 'shinu', 'rumit', 'dog', 'f', '2020-08-08', null);


select * from pets;
select * from pets
where species='dog';
alter table pets
add color varchar(20);


















