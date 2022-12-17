Select*

From cars.dbo.car_info


Select distinct fuel_type

From cars.dbo.car_info

-----minimum and maximum lengths

Select 
MIN(Length) as min_length,
Max(Length) as max_length

From cars.dbo.car_info

---Fill in missing data

Select*

From cars.dbo.car_info

Where num_of_doors is null

Update cars.dbo.car_info
Set num_of_doors ='four'
Where make ='mazda'and fuel_type = 'diesel'

------
Select Distinct num_of_cylinders

From cars.dbo.car_info

Update cars.dbo.car_info
Set num_of_cylinders = 'two'
Where num_of_cylinders = 'tow'

---------

Select 
MIN(compression_ratio) as min_compression_ratio,
Max(compression_ratio) as max_compression_ratio
From cars.dbo.car_info
Where compression_ratio <> 70

-----Delete

SELECT COUNT(*) AS num_of_rows_to_delete
FROM cars.dbo.car_info
WHERE compression_ratio = 70;

Delete cars.dbo.car_info
Where compression_ratio = 70


Select Distinct drive_wheels

From cars.dbo.car_info

Update cars.dbo.car_info
Set drive_wheels = Trim(drive_wheels)
Where

