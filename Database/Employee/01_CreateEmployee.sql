CREATE DATABASE hr;
GO

  
USE hr;
CREATE TABLE Employee(
    EmployeeId int,
    Name nvarchar(50) NOT NULL,
    Email nvarchar(50) NOT NULL,
    Phone varchar(50),
    HireDate date,
    Salary money
);

SELECT * FROM Employee;
GO
