--how to find employeees info of who is making hightest salary i n the company
select * from EMPLOYEES order by SALARY desc ;

--get me highest salary
select max(salary) from EMPLOYEES;

select * from EMPLOYEES where SALARY = 24000;

--subquery solution in one shot
select * from EMPLOYEES where SALARY=(select max(salary) from EMPLOYEES);

--finding second highest salary
select max(salary) from EMPLOYEES where SALARY<24000;

--subquery solution in one shot
select max(salary) from EMPLOYEES where SALARY<(select max(salary) from EMPLOYEES);

--employee info of who is making second highest salary
select * from EMPLOYEES where SALARY=(select max(salary) from EMPLOYEES where SALARY<(select max(salary) from EMPLOYEES));

--10 employees list
select *
from EMPLOYEES where rownum <11;

--salary list
select * from EMPLOYEES order by SALARY desc ;

--list the employees who is making top 10 salary
select * from (select * from EMPLOYEES order by SALARY desc) where rownum <11;



