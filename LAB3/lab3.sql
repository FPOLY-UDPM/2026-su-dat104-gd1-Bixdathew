SELECT [customer_id]
, first_name + last_name as Full_name
      ,[first_name]
      ,[last_name]
      ,[phone]
      ,[email]
      ,[street]
      ,[city]
      ,[state]
      ,[zip_code]
      
  FROM [BikeStores].[sales].[customers]

  WHERE first_name + last_name like 'W%' or first_name + last_name like '%a' 

  -----------------------------

  SELECT[product_id]
      ,[product_name]
      ,[brand_id]
      ,[category_id]
      ,[model_year]
      ,round( [list_price] , 2) as Gia_tien
  FROM [BikeStores].[production].[products]
where model_year = 2018 and list_price > 1000 

------------------------------

SELECT 
 *
FROM sales.orders
WHERE order_date >= '2016-02-01' 
  AND order_date <= '2017-02-28';
  SELECT  
    FORMAT(order_date, 'MM-yyyy') AS ThangNam, 
    COUNT(order_id) AS SoLuongDonHang
FROM sales.orders
WHERE order_date >= '2016-02-01' 
  AND order_date <= '2017-02-28'
GROUP BY FORMAT(order_date, 'MM-yyyy')
ORDER BY SoLuongDonHang DESC;

SELECT TOP 1 
    FORMAT(order_date, 'MM-yyyy') AS ThangNam, 
    COUNT(order_id) AS SoLuongDonHang
FROM sales.orders
WHERE order_date >= '2016-02-01' 
  AND order_date <= '2017-02-28'
GROUP BY FORMAT(order_date, 'MM-yyyy')
ORDER BY SoLuongDonHang DESC;

-------------------------------

