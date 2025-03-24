USE Sarah_Olist_DWH
GO

--1) Check if there is a previous Dimension Table called 'Fact_OrderPayments', and Dropping it if exists:
IF EXISTS ( 
		   SELECT 
					* 
		   FROM
				sys.tables
		   WHERE 
				name = 'Fact_OrderPayments'
		   AND 
				type = 'U')
DROP TABLE Fact_OrderPayments 
GO

--2) Create Fact Table 'Fact_OrderPayments' for DWH:
CREATE TABLE Fact_OrderPayments( 
					   payment_SK INT PRIMARY KEY IDENTITY,
					   order_id NVARCHAR(50),
					   payment_sequential INT,
					   customer_id INT,
					   Date_Key INT,
					   payment_type VARCHAR(20),
					   bank_name NVARCHAR(50),
					   payment_installments INT,
					   payment_value FLOAT,
			  
					   CONSTRAINT FK_Fact_OrderPayments_DIM_Customers FOREIGN KEY (customer_id)
					   REFERENCES DIM_Customers (Customer_SK),
			  
					   CONSTRAINT FK_Fact_OrderPayments_DimDate FOREIGN KEY (Date_Key)
					   REFERENCES DimDate (DateSK)
					   )