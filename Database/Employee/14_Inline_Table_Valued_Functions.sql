-- Inline Table Valued are user defined functions which takes a single sql statement and returns a table set not a value.
-- Specify table as return type and there is no begina and end blocks.

Create function fn_GetStudents()
returns table 
as 
return(select * from Person1)

select * from dbo.Person1;


-- Parameterized inline function
Create function fn_GetId(@Ids int)
returns table
as 
return(select * from dbo.Person1 where PersonId >= @Ids)

select * from  fn_GetId(4);