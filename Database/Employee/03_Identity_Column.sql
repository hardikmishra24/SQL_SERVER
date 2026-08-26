Select * from dbo.Person1

SET IDENTITY_INSERT Person1 ON;

Insert into dbo.Person1 (PersonId, Name) values(1, 'Harry');
Insert into dbo.Person1 values('John');
Insert into dbo.Person1 values('Tom');

Delete from Person1 Where PersonId = 1

Insert into dbo.Person1 values('Sara');

SET IDENTITY_INSERT Person1 OFF;