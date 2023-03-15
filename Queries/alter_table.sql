select * from SCRUMTEAM_VAHAP where EMP_ID>0;

--adding new column
ALTER TABLE SCRUMTEAM_VAHAP ADD salary INTEGER;

--updating existing employees salary
UPDATE SCRUMTEAM_VAHAP SET salary =100000 where EMP_ID=1;
UPDATE SCRUMTEAM_VAHAP SET salary =90000 where EMP_ID=2;
UPDATE SCRUMTEAM_VAHAP SET salary =120000 where EMP_ID=4;

--rename the column
ALTER TABLE SCRUMTEAM_VAHAP rename column salary to annual_salary;

--delete, drop column
Alter TABLE SCRUMTEAM_VAHAP drop column annual_salary;

--how to change table name
ALTER TABLE SCRUMTEAM_VAHAP rename to agileteam;

select * from agileteam;
commit;

--truncate, if we want to delete all data from the table, but still keep the structure
TRUNCATE TABLE agileteam;

--if we wnt to delete the table and data together
DROP TABLE agileteam;
