-- A table can have only one clustered index and a clustered index determine the order of the table.

Create Table Freshers
(
Id int NOt null primary Key,
Name Varchar(50),
Salary int Not Null
)

Insert into Freshers
Values 
(1, 'Arun', 30000),
(2, 'Raj', 90000),
(3, 'Harry', 75000)

Select * from Freshers;


Create Clustered Index Ix_Person1_Name_Salary
On Freshers(Name Desc, Salary Asc)