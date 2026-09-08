-- DML triggers 

Create TAble EmpLog(
LogID int Identity(1,1) Not null,
EmpId int Not Null,
Operation nvarchar(10) Not Null,
Updated Datetime Not Null
)

-- For trigger 
Create Trigger dbo.trgEmployeeInsert
On dbo.Employee
For Insert 
As 
Begin
Insert into dbo.EmpLog(EmpId, Operation, Updated)
Select EmpId, 'Insert', Getdate() 
from inserted;
End;

Insert into Employee
Values(1,'Manisha'
           ,'MD456@abc.com'
           ,6799878453
           ,'11/07/2015'
           ,50000
           ,'Jaipur'
           ,'Manager'
           ,20)

Insert into Employee
Values(2,'Manish'
           ,'MH456@abc.com'
           ,6795878453
           ,'01/07/2025'
           ,50000
           ,'Delhi'
           ,'Fresher'
           ,25)

Select * from dbo.EmpLog


-- After Triggers - It fires only after the specified triggering SQL statement completed successfully
Create Trigger dbo.trgEmployeeUpdate
On dbo.Employee
After Update
As 
Insert Into dbo.Emplog(EmpId, Operation, Updated)
Select EmpId, 'Update', GETDATE() from deleted;

Update Employee
Set salary = 55000
Where EmpId = 1

-- Instead of Trigger
Create Trigger dbo.trgInsteadOfDelete
On dbo.Employee
Instead of Delete
As
INSERT INTO dbo.EmpLog(EmpID, Operation, Updated)
SELECT EmpID, 'DELETE', GETDATE() FROM DELETED;

DELETE FROM Employee
WHERE EmployeeID = 16;


disable Trigger dbo.trgEmployeeInsert
ON dbo.Employee

Enable Trigger dbo.trgEmployeeInsert
ON dbo.Employee
