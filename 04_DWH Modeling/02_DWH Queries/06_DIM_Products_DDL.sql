USE Sarah_Olist_DWH
GO

-- 1) Drop any foreign key constraints that reference the 'DIM_Products' table
DECLARE @ConstraintName NVARCHAR(200)
DECLARE FK_CURSOR CURSOR FOR
SELECT name 
FROM sys.foreign_keys 
WHERE referenced_object_id = OBJECT_ID('DIM_Products');

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
				name = 'DIM_Products'
		   AND 
				type = 'U'
		  )
DROP TABLE DIM_Products
GO

--3) Create a new Dimension Table 'DIM_Book' for DWH:
CREATE TABLE DIM_Products(
					  product_SK INT PRIMARY KEY IDENTITY,
					  product_id NVARCHAR(50),
					  product_category_English_name VARCHAR(100),
					  product_category_name NVARCHAR(100),
					  product_name_lenght INT,
					  product_description_lenght INT,
					  product_photos_qty INT,
					  product_weight_g INT,
					  product_length_cm INT,
					  product_height_cm INT,
					  product_width_cm INT,
					  product_name VARCHAR(100),
					  brand_name VARCHAR(20),
					  brand_country VARCHAR(10),
					  brand_foundation_year INT,
					  brand_status VARCHAR(10),
					  brand_tier VARCHAR(10),
					  Start_Date DATETIME,
					  End_Date DATETIME,
					  Is_Current TINYINT DEFAULT(1)
					  )

					  


