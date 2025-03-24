--	Customers
alter table customers
add  Customer_City nvarchar(50) , Customer_State varchar(5)

UPDATE customers 
SET Customer_City = geolocation_city,
    Customer_State = geolocation_state
FROM Customers  ,Geolocation 
where geolocation_zip_code_prefix =customer_zip_code_prefix

-- sellers
alter table Sellers 
add  Seller_City nvarchar(50) , Seller_State varchar(5)

UPDATE Sellers 
SET Seller_City = geolocation_city,
    Seller_State = geolocation_state
FROM Sellers  ,Geolocation 
where geolocation_zip_code_prefix =seller_zip_code_prefix