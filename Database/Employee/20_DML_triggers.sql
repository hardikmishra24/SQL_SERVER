-- DML after triggers
Use hr;
Go
Create table dbo.Person1Audit(
Id int,
AuditData varchar(50)
)

ALTER TABLE dbo.Person1Audit
ALTER COLUMN AuditData VARCHAR(100);

Select * from dbo.Person1Audit
Select * from dbo.Person1


Create Trigger tr_Person1_ForInsert
On dbo.Person1
For Insert
As 
Begin
     Select * from inserted  -- Inserted TAble is a special table which can be only accessed <<in the context of a trigger.
     
     Declare @Id int -- A variable named Id of type int.
     Select @Id = PersonId from inserted -- The id which is present for the particular row which we inserted now is saved into the @Id variable from the inserted table.
     
     insert into dbo.Person1Audit           
     values(@Id, 'New employeee with Id = ' + Cast(@Id as nvarchar) + 'is added at' + cast(Getdate() as nvarchar(20)))
                                         -- Here we cast the id from int to nvarchar
End

Insert into dbo.Person1 values ('Jane', 50000)


-- Delete trigger (trigger for delete action)
Create Trigger tr_Person1_ForDelete
On dbo.Person1
For Delete
As 
Begin
     Select * from Deleted  -- Deleted Table is a special table which can be only accessed <<in the context of a trigger.
     
     Declare @Id int -- A variable named Id of type int.
     Select @Id = PersonId from deleted-- The id which is present for the particular row which we inserted now is saved into the @Id variable from the inserted table.
     
     insert into dbo.Person1Audit           
     values(@Id, 'New employeee with Id = ' + Cast(@Id as nvarchar) + 'is deleted at' + cast(Getdate() as nvarchar(20)))
                                         -- Here we cast the id from int to nvarchar
End

Delete from dbo.Person1 where PersonId = 4 