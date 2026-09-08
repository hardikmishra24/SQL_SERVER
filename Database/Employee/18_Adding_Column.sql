Alter Table dbo.Person1
Add Salary Int; 

Select * from dbo.Person1;
Insert into dbo.Person1

Update dbo.Person1
Set Salary = CASE PersonId
                  When 1 Then 50000
                  When 2 Then 54000
                  When 3 Then 65000
                  When 4 Then 75000
                  When 5 Then 80000
                  When 6 Then 68000
        End;