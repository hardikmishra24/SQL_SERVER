Create Table LoginLog
(
 LogId int Identity(1,1),
 LoginName Varchar(100),
 LoginTime DateTime
);

Create Trigger trgLoginAudit
On All Server 
For LOGON  -- Logon means the event of a user successfully connection to SQL
As 
Begin
    Insert into hr.dbo.LoginLog
    (
    LoginName,
    LoginTime
    )
    Values 
    (
      Original_Login(), --returns the name of the login that originally connected to SQL Server.
      GETDATE()
    );
End;


SELECT * FROM LoginLog; 