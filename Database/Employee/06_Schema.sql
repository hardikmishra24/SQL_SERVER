Create Schema hr;
Go

Create Table hr.Consultant(
ConsultantId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
Name Nvarchar(50) Not Null,
Position Nvarchar(50) Not Null
);

Select * from hr.Consultant;