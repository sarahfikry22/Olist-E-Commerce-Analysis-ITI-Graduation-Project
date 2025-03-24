USE Sarah_Olist_DWH
GO

--1) Check if there is a previous Dimension Table called 'Fact_OrderLifecycle', and Dropping it if exists:
IF EXISTS ( 
		   SELECT 
					* 
		   FROM
				sys.tables
		   WHERE 
				name = 'Fact_OrderLifecycle'
		   AND 
				type = 'U')
DROP TABLE Fact_OrderLifecycle 
GO

--2) Create Fact Table 'Fact_OrderLifecycle' for DWH:
CREATE TABLE Fact_OrderLifecycle( 
					   order_SK INT PRIMARY KEY IDENTITY,
					   order_id NVARCHAR(50),
					   order_item_id INT,
					   customer_id INT,
					   product_id INT,
					   seller_id INT,
					   review_id INT,
					   order_status VARCHAR(20),
					   Device_Type VARCHAR(10),
					   Date_Key INT,
					   shipping_limit_date INT,
					   order_purchase_timestamp INT,
					   order_approved_at INT,
					   order_delivered_carrier_date INT,
					   order_delivered_customer_date INT,
					   order_estimated_delivery_date INT,
					   purchase_timestamp TIME,
					   price FLOAT,
					   freight_value FLOAT,
					   Total_Order_Price FLOAT,
			  
					   CONSTRAINT FK_Fact_OrderLifecycle_DIM_Customers FOREIGN KEY (customer_id)
					   REFERENCES DIM_Customers (Customer_SK),

					   CONSTRAINT FK_Fact_OrderLifecycle_DIM_Products FOREIGN KEY (product_id)
					   REFERENCES DIM_Products (product_SK),

					   CONSTRAINT FK_Fact_OrderLifecycle_DIM_Sellers FOREIGN KEY (seller_id)
					   REFERENCES DIM_Sellers (seller_SK),

					   CONSTRAINT FK_Fact_OrderLifecycle_DIM_Reviews FOREIGN KEY (review_id)
					   REFERENCES DIM_Reviews (review_SK),
				       ----------------------------
					   CONSTRAINT FK_Fact_OrderPayments_DimDate1 FOREIGN KEY (Date_Key)
					   REFERENCES DimDate (DateSK),
					   ---------------------------- 
					   CONSTRAINT FK_Fact_OrderPayments_DimDate2 FOREIGN KEY (shipping_limit_date)
					   REFERENCES DimDate (DateSK),
					   ---------------------------- 
					   CONSTRAINT FK_Fact_OrderPayments_DimDate3 FOREIGN KEY (order_purchase_timestamp)
					   REFERENCES DimDate (DateSK),
					   ---------------------------- 
					   CONSTRAINT FK_Fact_OrderPayments_DimDate4 FOREIGN KEY (order_approved_at)
					   REFERENCES DimDate (DateSK),
					   ---------------------------- 
					   CONSTRAINT FK_Fact_OrderPayments_DimDate5 FOREIGN KEY (order_delivered_carrier_date)
					   REFERENCES DimDate (DateSK),
					   ---------------------------- 
					   CONSTRAINT FK_Fact_OrderPayments_DimDate6 FOREIGN KEY (order_delivered_customer_date)
					   REFERENCES DimDate (DateSK),
					   ---------------------------- 
					   CONSTRAINT FK_Fact_OrderPayments_DimDate7 FOREIGN KEY (order_estimated_delivery_date)
					   REFERENCES DimDate (DateSK)
					   )