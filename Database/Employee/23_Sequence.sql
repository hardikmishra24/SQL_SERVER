-- Sequence object 

Create Sequence [dbo].[SequenceObject]
As Int
Start with 1
Increment By 1
 
Select next value for [dbo].[SequenceObject]

-- To retrieve the currenet sequence value
Select * from sys.sequences where name = 'SequenceObject'

CREATE TABLE Training(
    TrainingId int PRIMARY KEY,
    TrainingName nvarchar(50) NOT NULL,
    TrainingDate date NOT NULL)

    Insert into Training
    Values(Next VAlue For SequenceObject, 'SEO', '11/23/2022');

    INSERT INTO Training
    VALUES(NEXT VALUE FOR SequenceObject, 'SQL Server', '11/24/2022');

    SELECT * FROM dbo.Training