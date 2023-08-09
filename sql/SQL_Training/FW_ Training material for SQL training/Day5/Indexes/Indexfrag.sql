-- Demonstration 1A

-- Step 1: Open a new query window against the tempdb database

USE tempdb;
GO

-- Step 2: Create a table as a heap

CREATE TABLE dbo.PhoneLog
( PhoneLogID int IDENTITY(1,1) NOT NULL Primary Key,
  LogRecorded datetime2 NOT NULL,
  PhoneNumberCalled nvarchar(100) NOT NULL,
  CallDurationMs int NOT NULL
);
GO

-- Step 3: Create another index to this table
--         (nonclustered indexes will be discussed in module 8)

CREATE INDEX IX_PhoneLog_LogRecorded 
  ON dbo.PhoneLog (LogRecorded);
GO

-- Step 4: Query sys.indexes to view the structure

SELECT * FROM sys.indexes WHERE OBJECT_NAME(object_id) = N'PhoneLog';
GO

-- Step 5: Insert some data into the table

SET NOCOUNT ON;

DECLARE @Counter int = 0;

WHILE @Counter < 10000 BEGIN
  INSERT dbo.PhoneLog (LogRecorded, PhoneNumberCalled, CallDurationMs)
    VALUES(SYSDATETIME(),'999-9999',CAST(RAND() * 1000 AS int));
  SET @Counter += 1;
END;
GO

-- Step 6: Modify the data in the table 
-- (this might take a few moments but you can 
--  check the messages tab to see the count go to 10000)

SET NOCOUNT ON;

DECLARE @Counter int = 0;

WHILE @Counter < 10000 BEGIN
  UPDATE dbo.PhoneLog SET PhoneNumberCalled = REPLICATE('9',CAST(RAND() * 100 AS int))
    WHERE PhoneLogID = @Counter;
  IF @Counter % 100 = 0 PRINT @Counter;
  SET @Counter += 1;
END;
GO

-- Step 7: Check the level of fragmentation via sys.dm_db_index_physical_stats

SELECT * FROM sys.dm_db_index_physical_stats(DB_ID(),OBJECT_ID('dbo.PhoneLog'),NULL,NULL,NULL);
GO

-- Step 8: Note the forwarded record count


-- Step 10: Check the level of fragmentation via sys.dm_db_index_physical_stats

SELECT * FROM sys.dm_db_index_physical_stats(DB_ID(),OBJECT_ID('dbo.PhoneLog'),NULL,NULL,NULL);
GO

-- Step 11: Check the forwarded record count

-- Step 12: Drop the table

DROP TABLE dbo.PhoneLog;
GO

