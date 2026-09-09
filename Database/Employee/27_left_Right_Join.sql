-- Left Join
-- All rows from the left table, and the matching rows from the right table. INNER JOIN gives only matching rows.
--If there is no match, SQL Server returns NULL for the right-table columns.

SELECT * FROM People;
SELECT * FROM Department;

Select 
e.EmployeeId, e.Name, e.Salary, d.DepartmentName
From People As e
Left Join Department As d
On e.DepartmentId = d.DepartmentId;

-- Right Join
-- All rows from the right table, and the matching rows from the left table.
Select 
e.EmployeeId, e.Name, e.Salary, d.DepartmentName, d.DepartmentId
From People As e
Right Join Department As d
On e.DepartmentId = d.DepartmentId;


-- Full Join
-- FULL JOIN gives matching rows + unmatched rows from both tables.
Select 
e.EmployeeId, e.Name, e.Salary, d.DepartmentName, d.DepartmentId
From People As e
Full Join Department As d
On e.DepartmentId = d.DepartmentId;



-- Self Join 

ALTER TABLE People
ADD ManagerId INT;

UPDATE People
SET ManagerId =
    CASE EmployeeId
        WHEN 1 THEN NULL
        WHEN 2 THEN 1
        WHEN 3 THEN 1
        WHEN 4 THEN 2
    END;


    SELECT
    e.EmployeeId,
    e.Name AS EmployeeName,
    e.ManagerId,
    m.Name AS ManagerName
FROM People AS e
INNER JOIN People AS m
    ON e.ManagerId = m.EmployeeId;