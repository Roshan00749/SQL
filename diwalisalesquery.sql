use aar;
show tables;
desc salesdata;
select distinct state from salesdata;

select * from  salesdata where state="Delhi";

/* rename table */
alter table diwalisalesdata rename to Salesdata;

/* Different types of select query on Salesdata */
desc salesdata;

select * from salesdata;




select * from salesdata where state='Gujarat';
select * from salesdata where state='Bihar';

select * from salesdata where state='Delhi' limit 100;

select * from salesdata where state='Delhi' and gender='M';

select * from salesdata where state='Delhi' and age_group='18-25';

select * from salesdata where state='Delhi' and (occupation='IT Sector' or
occupation='Automobile');

select * from salesdata where state in('Delhi','punjab','Bihar');

select * from salesdata where state not in('Delhi','punjab','Bihar');

select * from salesdata where User_ID in(1000588,1000732,1001193);

select State from salesdata;

select distinct state from salesdata;

select sum(Amount)/sum(orders) as average_amount from salesdata;

/* group by clause */

select state,count(orders),sum(Amount)as Total_amount from salesdata group by state order by state;

select Age_group,count(orders),sum(Amount)as Total_amount from salesdata group by Age_group order by Age_group;

select state,count(*) as NO_OF_ORDERS,sum(Amount)as Total_Sales,avg(Amount) as Avg_Sales 
from salesdata group by state order by state;

select Gender,count(*) as NO_OF_ORDERS,sum(Amount)as Total_Sales from salesdata group by gender;

select Age_Group,Count(*) as NO_OF_ORDERS,sum(Amount)as Total_Sales from 
salesdata group by Age_Group order by Age_Group;

select Age_Group,Count(*) as NO_OF_ORDERS,sum(Amount)as Total_Sales from 
salesdata where Gender='M' group by Age_Group order by Age_Group;

select * from salesdata where age between 60 and 90  order by age limit 50;

select * from salesdata where amount between 20000 and 30000 order by amount;

select * from salesdata where age between 60 and 90  order by age desc;



/* like clause : display names of customers starting from letter a*/


select Cust_name from salesdata where Cust_name like 'B%' limit 100;

select Cust_name from salesdata where Cust_name like '%a';

select Cust_name from salesdata where Cust_name like '%a%';

select Cust_name from salesdata where Cust_name like '___a%';

select Cust_name from salesdata where Cust_name like '_an%' order by Cust_name;



/* Aggregate Function */

select sum(Amount) as Total_Amount_Rs from salesdata;

select max(Amount) as Max_Amount from salesdata;

select min(Amount) as Min_Amount from salesdata;

select * from salesdata where amount=(select min(Amount) as Min_Amount from salesdata);



select count(*) as Total_Orders from salesdata;

select count(*) as Total_Orders from salesdata where state='Delhi';

select sum(Amount) as Total_Amount,count(orders) from salesdata where state='Delhi';

select avg(amount) as Avg_Orders from salesdata;



/* sql Join */
create table dept(deptno int primary key auto_increment,
deptname varchar(30),
branch varchar(20));

desc dept;

alter table dept auto_increment 101;

insert into dept(deptname,branch) values
('hr','delhi'),
('finance','noida'),
('marketing','rohini'),
('production','okhla'),
('sales','gurugram'),
('IT','delhi');

select * from dept;

commit;

create table emp1(id int primary key auto_increment,
empname varchar(20),
age int default 18,
post varchar(30),
deptno int references dept(deptno),
salary decimal(12,2) );

alter table emp1 auto_increment 1001;

insert into emp1(empname,age,post,deptno,salary)
values('arpita',23,'ASStmanager',103,45000),
('himansi',30,'data scientist',104,75000),
('radhika ',33,'Data Analyst',105,45000);
commit;
select * from emp;
select * from emp1;


/*INNER JOIN  */
select empname,age,post,deptname,branch
from emp,dept
where emp.deptno=dept.deptno;


select empname,age,post,deptname,branch
from emp
inner join
dept
on emp.deptno=dept.deptno;

select * from emp
cross join 
dept;

/* UNION*/
SELECT empname FROM emp
UNION 
SELECT empname FROM emp1;


/* UNION ALL*/
SELECT age FROM emp
UNION ALL
SELECT age FROM emp1;

select max(salary) from emp;

/* SUB QUERY */
select empname,age,post,salary from emp
where salary=(select max(salary) from emp);


/* display all employee who worked in same department where arpit is working */
select deptno from emp where empname='arpit' and id=1001;


select * from emp where deptno=(select deptno from emp where empname='arpit' and id=1001);


select * from emp where exists(SELECT deptno FROM dept WHERE deptno=105);

select * from dept where exists(select deptno from emp  where dept.deptno=emp.deptno and age>=30);

SELECT empname
FROM emp
WHERE deptno = ANY
  (SELECT deptno
  FROM dept
  WHERE branch ="gurugram");
  
select * from emp;

select * from dept;

SELECT empname
FROM emp
WHERE deptno = ALL
  (SELECT deptno
  FROM dept
  WHERE branch ="rohini");

/*SQL Case */
SELECT ID,empname,salary,
CASE
    WHEN salary > 30000 and  salary <=40000 THEN 'Average'
    WHEN salary > 40000 and  salary <=50000 THEN 'Medium'
    ELSE 'Higher'
END AS Category
FROM emp;

select Cust_name,Amount,
case
	when amount>=2000 and amount <=5000 then "Minimum"
	when amount>=5000 and amount <=10000 then "average"
	when amount>=10000 and amount <=15000 then "good"
    else 'very Good'
end
as Remark
from salesdata;


/* Update records */

select * from emp;

update emp set salary=salary+salary*0.10;

select id,upper(empname),upper(post) from emp;

select curdate();
select current_time();
select current_user();
select curtime();

update emp set salary=salary+5000 where id=1001;

update emp set post="asst manager" where id=1003;
commit;

/* delete */

delete from emp where id=1001;
commit;

rollback;

select upper(empname),length(empname) from emp;

select upper(Cust_name),length(Cust_name) from salesdata where length(Cust_name)<4;







    