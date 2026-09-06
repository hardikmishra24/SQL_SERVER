Use hr

-- The foreign key establishes the relationship between the two tables and enforces referential integrity in the SQL Server.
Alter table dbo.Employee
Add Constraint Fk_Employee Foreign Key (EmpId)
References dbo.Person1 (PersonId)
