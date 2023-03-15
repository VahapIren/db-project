--"union" combine, sort and remove dublicates
select * from TESTERS
union
select * from DEVELOPERS;


--"union all" directly combine table dont sort or dont remove dublicates
select * from TESTERS
union all
select * from DEVELOPERS;

--if all column are same it will be same
select NAMES from TESTERS
union
select NAMES from DEVELOPERS;

select NAMES from TESTERS
minus
select NAMES from DEVELOPERS;

select NAMES from DEVELOPERS
minus
select NAMES from TESTERS;

select NAMES from TESTERS
intersect
select NAMES from DEVELOPERS;

--how to find dublicates names in employees table
select FIRST_NAME from EMPLOYEES group by FIRST_NAME having count(FIRST_NAME)>1;

select * from REGIONS;

select * from EMPLOYEES;

select lower(EMAIL||'@gmail.com') as new_email from EMPLOYEES;

select e.EMPLOYEE_ID,j.JOB_ID from EMPLOYEES e,JOB_HISTORY j;



