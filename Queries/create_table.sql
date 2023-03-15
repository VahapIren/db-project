/*
 create table syntax:
      create table TableName(
               colName1 DataType Constraints,
               colName2 DataType Constraints,
               colName3 DataType Constraints,
                ...
        );
 */
 CREATE TABLE ScrumTeam_vahap(
     Emp_ID INTEGER PRIMARY KEY,
     FirstName varchar(30) not null,
     LastName varchar(30) ,
     JobTitle varchar(20)
 );
select * from ScrumTeam_vahap WHERE Emp_ID>0;

--INSERT INTO
INSERT INTO ScrumTeam_vahap(emp_id, firstname, lastname, jobtitle)
values (1, 'Severus', 'Snape','Tester');

INSERT INTO ScrumTeam_vahap VALUES (2,'Harold', 'Finch', 'Developer');
INSERT INTO ScrumTeam_vahap VALUES (3,'John', 'Buffay', 'SM');
INSERT INTO ScrumTeam_vahap VALUES (4,'Harry', 'Scofield', 'PO');

UPDATE ScrumTeam_vahap
set JOBTITLE='Tester'
where Emp_ID=4;

DELETE FROM ScrumTeam_vahap
where Emp_ID=3;

commit;



