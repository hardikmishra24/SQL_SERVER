Create Synonym Emp For dbo.Employee;


INSERT INTO Emp
(   EmpId,
    Name,
    Email,
    Phone,
    HireDate,
    Salary,
    Address,
    Designation,
    Age
)
VALUES
(    3,
    'Amit',
    'AH23@abc.com',
    '22545678',
    '2017-03-10',
    67000,
    'Noida',
    'Lead',
    20
);
SELECT * FROM dbo.Employee;

SELECT name, base_object_name, type  --base_object_name This tells you what actual object the synonym points to.
FROM sys.synonyms;  --sys.synonyms is a SQL Server system catalog view.