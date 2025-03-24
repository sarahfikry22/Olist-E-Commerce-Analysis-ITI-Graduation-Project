
-- Check if there is a previous DWH that's name is Olist_DWH or not:

IF EXISTS (
		   SELECT 
				name 
           FROM 
				sys.databases 
           WHERE 
				name = 'Sarah_Olist_DWH'
		  )
DROP DATABASE Sarah_Olist_DWH


--Create a new DWH:

CREATE DATABASE Sarah_Olist_DWH