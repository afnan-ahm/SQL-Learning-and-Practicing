Select *
From customer_data.dbo.customer_address

----show name and city column from the database

Select name,city
From customer_data.dbo.customer_address

----- Insert information into table 

Insert into customer_data.dbo.customer_address
(customer_id, address, city, state, zipcode, country)
Values (2645, '333 SQL Road', 'Jackson', 'Ml', 49202, 'US')

-------

Update customer_data.dbo.customer_address
SET address = '123 New Address'
Where customer_id = 2645

------------

--Create table if not Exists
--Drop Table if exists

---------------------------------------------
--Duplicate will not be shown

Select Distinct customer_id
From customer_data.dbo.customer_address

-------

Select country
From customer_data.dbo.customer_address
Where LEN(country) > 2

Select customer_id
From customer_data.dbo.customer_address
Where SUBSTRING(country,1,2) = 'US'

--people who only lives in U.S

Select Distinct customer_id
From customer_data.dbo.customer_address
Where SUBSTRING(country,1,2) = 'US'

Select distinct customer_id
From customer_data.dbo.customer_address
Where trim(state) = 'OH'