-- Stored procedure is used when you have a situation, where you write the same query again and again,
-- so to avoid this we use stored procedure and call it by just it's name.
-- Here we have talked about user defined stored procedure
-- Do not use sp_ prefix for user defined stored procedure becuase it is used by pre defined stored procedures already.
Create Procedure spGetEmployees
As
Begin 
    Select Name, Salary from dbo.Employee
End

spGetEmployees

-- Stored Procedure using parameters. 
Create Proc spGetEmployeesById @PId int
as 
Begin
   Select Name, PersonId from dbo.Person1 Where PersonId = @PId
End

spGetEmployeesById 4


-- To view a stored procedure we use a user defined stored procedure :-

sp_helptext spGetEmployees

-- To change the definition of a stored procedure :-
Alter Procedure spGetEmployees
As
Begin 
    Select Name, Salary from dbo.Employee order by Salary
End

-- To drop a procedure 
Drop proc spGetEmployees

-- To encrypt the text of stored procedure (to lock the data in the stored procedure)
sp_helptext spGetEmployeesById

Alter Proc spGetEmployeesById @PId int 
With Encryption
as 
Begin
   Select Name, PersonId from dbo.Person1 Where PersonId = @PId
End