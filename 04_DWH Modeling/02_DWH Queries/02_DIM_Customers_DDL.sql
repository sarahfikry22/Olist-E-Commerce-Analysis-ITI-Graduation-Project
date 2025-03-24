USE Sarah_Olist_DWH
GO

-- 1) Drop any foreign key constraints that reference the 'DIM_Customers' table
DECLARE @ConstraintName NVARCHAR(200)
DECLARE @TableName NVARCHAR(200)

DECLARE FK_CURSOR CURSOR FOR
SELECT fk.name AS ConstraintName, t.name AS TableName
FROM sys.foreign_keys fk
JOIN sys.tables t ON fk.parent_object_id = t.object_id
WHERE fk.referenced_object_id = OBJECT_ID('DIM_Customers');

OPEN FK_CURSOR
FETCH NEXT FROM FK_CURSOR INTO @ConstraintName, @TableName

WHILE @@FETCH_STATUS = 0
BEGIN
    EXEC('ALTER TABLE ' + @TableName + ' DROP CONSTRAINT ' + @ConstraintName)
    FETCH NEXT FROM FK_CURSOR INTO @ConstraintName, @TableName
END

CLOSE FK_CURSOR
DEALLOCATE FK_CURSOR
GO

--2) Check if there is a previous Dimension Table called 'DIM_Book', and Dropping it if exists:
IF EXISTS (
		   SELECT
					* 
		   FROM
				sys.tables
		   WHERE 
				name = 'DIM_Customers'
		   AND 
				type = 'U'
		  )
DROP TABLE DIM_Customers 
GO

--3) Create a new Dimension Table 'DIM_Book' for DWH:
CREATE TABLE DIM_Customers(
					  customer_SK INT PRIMARY KEY IDENTITY,
					  customer_id NVARCHAR(50),
					  customer_unique_id NVARCHAR(50),
					  customer_city NVARCHAR(50),
					  customer_state VARCHAR(5),
					  customer_zip_code_prefix INT,
					  gender VARCHAR(10),
					  customer_Login_type VARCHAR(20),
					  age INT,
					  Start_Date DATETIME,
					  End_Date DATETIME,
					  Is_Current TINYINT DEFAULT(1)
					  )


