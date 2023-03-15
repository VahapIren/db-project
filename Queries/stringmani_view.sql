--how can we rename the column that we displayed
select FIRST_NAME as "given_name",LAST_NAME as "surname" from EMPLOYEES where rownum<5;

--text functions, string mani.
--java first_name+" "+last_name
--in sql concat is ||

select first_name||' '||last_name as "full_name" from EMPLOYEES;
select first_name||' x '||last_name as "full_name" from EMPLOYEES;

--add @gmail.com and name ne wcolumn to full_email
select (EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

--making all upper case
select upper(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

--making all lower case
select lower(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

--length (values)
select FIRST_NAME, length(FIRST_NAME) as "length_name" from EMPLOYEES
order by "length_name" desc ;

--substr(colName,begIndex,NumOfChar)
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials" from EMPLOYEES;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
       first_name||' '||last_name as "full_name",
       lower(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

--VIEW
CREATE VIEW EmailList as select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
       first_name||' '||last_name as "full_name",
       lower(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

select "full_name" from EMAILLIST;

--to remove view
drop view EMAILLIST;




