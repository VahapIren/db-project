--find the highest 14th salary
select * from EMPLOYEES order by SALARY desc;
select * from(select SALARY from EMPLOYEES order by SALARY desc) where ROwnum<15;
select min(SALARY) from(select distinct SALARY from EMPLOYEES order by SALARY desc ) where rownum<15;

--find employee info who is making 14th highest salary(with dublicates)
select * from EMPLOYEES where SALARY=(select min(SALARY) from(select SALARY from EMPLOYEES order by SALARY desc ) where rownum<15);
--find employee info who is making 14th highest salary(without dublicates)
select * from EMPLOYEES where SALARY=(select min(SALARY) from(select distinct SALARY from EMPLOYEES order by SALARY desc ) where rownum<15);

