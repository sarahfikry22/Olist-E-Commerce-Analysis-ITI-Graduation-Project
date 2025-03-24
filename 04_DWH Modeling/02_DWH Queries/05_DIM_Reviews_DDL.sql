USE Sarah_Olist_DWH
GO

-- 1) Drop any foreign key constraints that reference the 'DIM_Reviews' table
DECLARE @ConstraintName NVARCHAR(200)
DECLARE FK_CURSOR CURSOR FOR
SELECT name 
FROM sys.foreign_keys 
WHERE referenced_object_id = OBJECT_ID('DIM_Reviews');

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


--2) Check if there is a previous Dimension Table called 'DIM_Book', and Dropping it if exists:
IF EXISTS (
		   SELECT
					* 
		   FROM
				sys.tables
		   WHERE 
				name = 'DIM_Reviews'
		   AND 
				type = 'U'
		  )
DROP TABLE DIM_Reviews
GO

--3) Create a new Dimension Table 'DIM_Book' for DWH:
CREATE TABLE DIM_Reviews(
					  review_SK INT PRIMARY KEY IDENTITY,
					  review_id NVARCHAR(50),
					  order_id NVARCHAR(50),
					  review_score INT,
					  review_creation_date DATETIME,
					  review_answer_timestamp DATETIME,
					  review_status VARCHAR(10),
					  Start_Date DATETIME,
					  End_Date DATETIME,
					  Is_Current TINYINT DEFAULT(1)
					  )


