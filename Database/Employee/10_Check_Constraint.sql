-- check constraint checks if the value enetered in the column is outside the specified constraint then it throws an error.
-- Like it doesn't allow a negative value to be entered in the age column.

Use hr;
Go

Alter Table dbo.Employee
Add Age int Not Null;

ALTER TABLE Employee
Add Constraint Ck_Employee_Age Check (Age > 0 AND Age < 150);