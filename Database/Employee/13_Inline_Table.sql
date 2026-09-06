-- Scalar Functions takes one or more parameters and returns only a single value. Must include Return statements.
Create function ShowMessage()
returns varchar(100) -- It will return string with 100 characters max.
as 
begin -- start the body of the funciton
      return 'Welcome to the function'
end  -- ebd the body of the function 

select dbo.ShowMessage();


-- Parameter with a single parameter
Create function TakeANumber(@num as int) 
returns int 
as 
begin 
    return (@num * @num)
end

select dbo.TakeANumber(2);


-- Parameter with a multiple parameter
Create function Addition(@num1 as int, @num2 as int) 
returns int 
as 
begin 
    return (@num1 + @num2)
end

Select dbo.Addition(4, 5)
Select dbo.Addition(2, 3)


-- Altering a function.
Alter function Addition(@num1 as int, @num2 as int, @num3 as int)
returns int
as 
begin
return(@num1 + @num2 + @num3)
end

Select dbo.Addition(4, 5, 6)
Select dbo.Addition(3, 7, 9)

drop function dbo.TakeANumber  -- While droping a function do not use the parenthesis at the end ().



-- If else statement in a funciton.
Create function CheckVoterAge(@age as int)
returns varchar(100)
as 
  begin
      declare @str varchar(100) -- declare is used to declare a variable. Here variable name is str.
      if @age >= 18

     begin 
      set @str = 'You are eligible to vote'
     end

else 
     begin
      set @str = 'You are not eligible to vote'
     end
     return @str
  end

  Select dbo.CheckVoterAge(20)

-- Scalar function can call other functions
Create function GetMyDate()
returns datetime
as 
begin 
    return getdate()
end

Select dbo.GetMyDate();