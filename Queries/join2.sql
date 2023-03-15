select * from EMPLOYEES;
select *
from DEPARTMENTS;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,d.DEPARTMENT_ID from
EMPLOYEES e right join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID ;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,d.DEPARTMENT_ID
from EMPLOYEES e right join DEPARTMENTS d on
e.DEPARTMENT_ID=d.DEPARTMENT_ID where e.DEPARTMENT_ID is null ;--******

--get me firstname,lastname, and departman name,city for all employeees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY from EMPLOYEES e join
DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID;

--get me firstname,lastname, and departman name,city,countryname for all employeees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,COUNTRY_NAME from EMPLOYEES e join
DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
join COUNTRIES c on c.COUNTRY_ID = l.COUNTRY_ID;






