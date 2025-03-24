USE Sarah_Olist_DWH
GO

-- 1) Drop any foreign key constraints that reference the 'DIM_Sellers' table
DECLARE @ConstraintName NVARCHAR(200)
DECLARE FK_CURSOR CURSOR FOR
SELECT name 
FROM sys.foreign_keys 
WHERE referenced_object_id = OBJECT_ID('DIM_Sellers');

OPEN FK_CURSOR
FETCH NEXT FROM FK_CURSOR INTO @ConstraintName

WHILE @@FETCH_STATUS = 0
BEGIN
    EXEC('ALTER TABLE Fact_OrderLifecycle DROP CONSTRAINT ' + @ConstraintName)
    FETCH NEXT FROM FK_CURSOR INTO @ConstraintName
END

CLOSE FK_CURSOR
DEALLOCATE FK_CURSOR
GO

--2) Check if there is a previous Dimension Table called 'DIM_Sellers', and Dropping it if exists:
IF EXISTS (
		   SELECT
					* 
		   FROM
				sys.tables
		   WHERE 
				name = 'DIM_Sellers'
		   AND 
				type = 'U'
		  )
DROP TABLE DIM_Sellers 
GO

--3) Create a new Dimension Table 'DIM_Sellers' for DWH:
CREATE TABLE DIM_Sellers(
					  seller_SK INT PRIMARY KEY IDENTITY,
					  seller_id NVARCHAR(50),
					  seller_city NVARCHAR(50),
					  seller_state VARCHAR(5),
					  seller_zip_code_prefix INT,
					  seller_name NVARCHAR(50),
					  Start_Date DATETIME,
					  End_Date DATETIME,
					  Is_Current TINYINT DEFAULT(1)
					  )


