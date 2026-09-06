-- A view is a name given to a query that can be used as a table.

Use hr;
Go

Create View HIghSalaryEmployee
As 
Select Salary 
From dbo.Employee
Where Salary > 350000;