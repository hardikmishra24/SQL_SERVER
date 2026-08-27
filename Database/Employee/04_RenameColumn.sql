USE hr;

GO

EXEC sp_rename 
    'dbo.Employee.Designation',
    'JobTitle',
    'COLUMN';

SELECT * FROM dbo.Employee;

GO