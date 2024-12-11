use roshandb;
show tables;
desc salesdata;
select * from salesdata;
select * from salesdata
where state='delhi';
select * from salesdata where state='maharashtra';
select * from salesdata where state='gujarat';
select cust_name,age,gender,state from salesdata;
select * from salesdata where gender='f' and state='delhi';
select distinct(cust_name) from salesdata where state='delhi';
select * from salesdata where age>50 and state='delhi' and gender='m';
select * from salesdata where state='delhi' and (occupation='it sector'
 or occupation='govt');
 select * from salesdata
 where state not in('delhi');
 select * from salesdata
 where state in ('delhi','punjab','bihar');
 select * from salesdata
 where age between 90 and 100;
 select count(*) as totalsales from salesdata;
 select sum(amount) from salesdata;
 select avg(amount) from salesdata;
 select max(amount) from salesdata;
 select min(amount) from salesdata;
 select count(*) from salesdata where age_group='18-25';
 select cust_name from salesdata 
 where cust_name like 'a%';
 select cust_name from salesdata 
 where cust_name like '%a';
 select cust_name from salesdata 
 where cust_name like '%a%';
 select cust_name from salesdata 
 where cust_name like '_a%';
 select cust_name from salesdata 
 where cust_name like '__a%';
 select cust_name from salesdata 
 where cust_name like '_am%';
 
 
 
 select * from salesdata;
 select * from salesdata order by amount;
 select * from salesdata order by amount limit 10;
 select * from salesdata where state='delhi' order by amount limit 10;
 select * from salesdata order by amount desc limit 10;
 select * from salesdata order by cust_name;
 select state from salesdata;
 select distinct state from salesdata;
 select sum(amount) as delhiamount from salesdata where state='delhi';
 
 select state,sum(amount) as totalamount from salesdata group by state order by state;
 
 select age_group,count(*) as no_of_orders,sum(amount)as total_sales
 from salesdata where gender='m' group by age_group order by age_group;
 
 select zone,sum(amount) as totalamount from salesdata
 group by zone;
 select marital_status,sum(amount) as totalamount from salesdata
 group by marital_status;
 
 select state,sum(amount) as totalamount,count(*) from 
 salesdata group by state having count(*)>1000;
 
 create table delhitable 
 as select * from salesdata
 where state='delhi';
 commit;
 select * from delhitable;
 create table Maharashtratable
 as select * from salesdata
 where state='Maharashtra';
 commit;
 select * from Maharashtratable;
 
 
 
