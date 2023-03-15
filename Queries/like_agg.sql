--get me all info who is working as IT_PROG or SA_REP
select * from EMPLOYEES where JOB_ID in('IT_PROG','SA_REP');

--how many employeee working as IT_PROG or SA_REP
select count(*) from EMPLOYEES where JOB_ID in('IT_PROG','SA_REP');

--how many employee making more tahan 8000
select count(*) from EMPLOYEES where SALARY>8000;

--how many unique first names we have?
select  count(distinct FIRST_NAME) from EMPLOYEES;

--get me all employees information based on who is making more salary to low salary
select * from employees order by SALARY desc ;
select * from employees order by SALARY asc ;

--get me all employees information order by alphabetical based on firstname
select * from employees order by FIRST_NAME asc ; --default is ascending order

--get me all employees whose first name starts with C
select * from EMPLOYEES where FIRST_NAME like 'C%'; --take all after C
select * from EMPLOYEES where FIRST_NAME like 'Ch%'; --take all after Ch
select * from EMPLOYEES where FIRST_NAME like 'C____'; --take after C 4 characters

--get me 5 letter first names where the middle Char is 'z'
select * from EMPLOYEES where FIRST_NAME like '__z__';

--get me first name where second char is 'u'
select * from EMPLOYEES where FIRST_NAME like '_u%';

--find me min salary
select min(salary) from EMPLOYEES ;

--find me max salary
select
    --find me average salary
select avg(salary) from EMPLOYEES;

--round
select round(avg(salary),2) from EMPLOYEES;

select sum(salary) from EMPLOYEES;







