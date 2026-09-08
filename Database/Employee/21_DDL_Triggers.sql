-- DDL triggers respond to DDL events like CREATE, ALTER, DROP, GRANT, DENY, REVOKE, or UPDATE STATISTICS
-- Its purpose is to automatically record changes made to the database structure, such as when someone creates, alters, or drops a table.
CREATE TABLE dbo.TableLog(
   LogID int IDENTITY(1,1) PRIMARY KEY,
   EventVal xml NOT NULL,
   EventDate datetime NOT NULL,
   ChangedBy SYSNAME NOT NULL
);

Create Trigger trgTAblechanges
On Database
For 
CREATE_TABLE,  -- They are predefined sql server ddl event types. We do not define them ourselves
ALTER_TABLE,
DROP_TABLE
AS
BEGIN
Insert into TableLog
Values(EVENTDATA(), GETDATE(), User); --The EVENTDATA() value inserted into the EventVal field is an inbuilt function of the DDL trigger
End

Create Table TestforDDL(Tested Varchar(5));

select * from dbo.TableLog