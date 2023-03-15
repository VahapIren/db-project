select * from EMPLOYEES;
select * from DEPARTMENTS;

--department_id is same parameter

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
where d.DEPARTMENT_ID is null;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e right join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e full join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,d.DEPARTMENT_ID
from EMPLOYEES e full outer join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
where e.DEPARTMENT_ID is null or
      d.DEPARTMENT_ID is null ;

select *
from COUNTRIES where COUNTRY_NAME like 'A%a';

select count(COUNTRY_NAME) from COUNTRIES where COUNTRY_NAME like '%A%';

select JOB_ID from EMPLOYEES group by JOB_ID ;
select JOB_ID,count(*) from EMPLOYEES group by JOB_ID ;

select JOB_ID,max(SALARY) from EMPLOYEES group by JOB_ID ;
select JOB_ID,min(SALARY) from EMPLOYEES group by JOB_ID ;
select JOB_ID,avg(SALARY) from EMPLOYEES group by JOB_ID ;

select JOB_ID,sum(SALARY) from EMPLOYEES group by JOB_ID ;

select JOB_ID ,count(*)from EMPLOYEES group by JOB_ID having max(SALARY)>2000;

select JOB_ID,avg(SALARY)  from EMPLOYEES group by JOB_ID having avg(SALARY)>6000;
select JOB_ID,count(*)  from EMPLOYEES group by JOB_ID having min(SALARY)>6000;
