--get me unique job_ids
select distinct job_id from EMPLOYEES;

--get me average salary for IT_PROG
select avg(SALARY) from EMPLOYEES where JOB_ID='IT_PROG';

--get me all job_ids average salary *****
select JOB_ID,avg(SALARY),count(*),sum(SALARY) from EMPLOYEES group by JOB_ID;

select JOB_ID,avg(SALARY),count(*),sum(SALARY) from EMPLOYEES where SALARY>5000 group by JOB_ID;

--get me job_ids where their avg salary is more than 5000
select JOB_ID,avg(SALARY),count(*),sum(SALARY) from EMPLOYEES group by JOB_ID having avg(SALARY)>5000;

--**********"where" making filter before the grouping, but "having" making filter after the grouping*******************
select JOB_ID,avg(SALARY),count(*),sum(SALARY) from EMPLOYEES where SALARY>5000 group by JOB_ID having avg(SALARY)>10000;

select SALARY from EMPLOYEES where JOB_ID='PU_CLERK';




