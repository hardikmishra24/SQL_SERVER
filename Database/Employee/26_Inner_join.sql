-- An INNER JOIN is used to combine rows from two or more tables based on a related column.
-- INNER JOIN returns only the rows where a match exists in both tables. 
CREATE TABLE Department
(
    DepartmentId INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Department (DepartmentId, DepartmentName)
VALUES
(10, 'HR'),
(20, 'IT'),
(30, 'Finance'),
(40, 'Marketing');


CREATE TABLE Employees
(
    EmployeeId INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary DECIMAL(10,2),
    DepartmentId INT
);


Create Table People
(
    EmployeeId INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary DECIMAL(10,2),
    DepartmentId INT
);

ALTER TABLE People
ADD CONSTRAINT FK_Employee_Department
FOREIGN KEY (DepartmentId)
REFERENCES Department(DepartmentId);

INSERT INTO People (EmployeeId, Name, Salary, DepartmentId)
VALUES
(1, 'Manisha', 55000, 10),
(2, 'Manish', 50000, 20),
(3, 'Rahul', 60000, 30),
(4, 'Priya', 45000, 20);

SELECT * FROM People;
SELECT * FROM Department;

SELECT
    e.EmployeeId,
    e.Name,
    e.Salary,
    d.DepartmentName
FROM People AS e
INNER JOIN Department AS d
    ON e.DepartmentId = d.DepartmentId;