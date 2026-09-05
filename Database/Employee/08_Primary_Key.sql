-- A primary key is a constraint that uniquely identify each row in the table. It do not allows NULL value.
-- A table can have only one primary key. A primary key can be defined on one column or multiple columns called composite key.

USE hr;

GO

ALTER TABLE dbo.Employee
ALTER COLUMN EmpId int NOT NULL;

Go
ALTER TABLE dbo.Employee
ADD CONSTRAINT PK_EmpId PRIMARY KEY (EmpId);