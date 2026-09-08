-- To create a stored procedure without output parameters.
Select * from Person1

sp_help spPersonCountByName;
Create Procedure spPersonCountByName
@Names nvarchar(20),  -- This represents input parameters
@EmployeeCount int output -- This represents output parameters
as
Begin
Select @EmployeeCount = COUNT(PersonId) from dbo.Person1 where Name = @Names
End

Declare @Count int
Exec spPersonCountByName 'Harry', @Count Output;
if(@Count is null)
Print '@Count is null'
else
Print @Count