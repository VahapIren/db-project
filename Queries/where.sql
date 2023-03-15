--I want to see first name,lastname,phonenumber of david(s)
select first_name,LAST_NAME,PHONE_NUMBER from EMPLOYEES where first_name='David';

--we choose also lastname
select first_name,LAST_NAME,PHONE_NUMBER from EMPLOYEES where first_name='David' and last_name='Lee';

--get me all information who is making more than 7000 salary
select * from EMPLOYEES where SALARY>7000;

--get me email of who is making less than 4000
select EMAIL,SALARY from EMPLOYEES where SALARY<4000;

--get me all info who is working as IT_PROG or SA_REP
select * from EMPLOYEES where JOB_ID='IT_PROG' or JOB_ID='SA_REP';

--get me firstname,lastname,salary who is making more than 5000 and less than 10000
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES where SALARY>=5000 and SALARY<=10000;
--same as upper
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES where SALARY between 5000 and 10000;

select * from EMPLOYEES where EMPLOYEE_ID between 130 and 170;

--get me all info where employee_id 135,176,154,129
select * from EMPLOYEES where employee_id=135 or employee_id=176 or employee_id=129 or EMPLOYEE_ID=154;
--same as upper
select * from EMPLOYEES where employee_id in(135,176,154,129);

--get me city of where country_id IT,US,UK;
select CITY,COUNTRY_ID from LOCATIONS where country_id in('US','UK','IT');

