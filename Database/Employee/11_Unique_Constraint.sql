-- Unique Key Constraint ensures the uniqueness of all the values and no duplicate values are entered in a column of a table.
Use hr;
Go
Alter Table dbo.Employee
Add Constraint UNQ_EMPLOYEE_Phone Unique(Phone);