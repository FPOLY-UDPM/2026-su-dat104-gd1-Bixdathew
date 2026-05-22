SELECT [category_id], ROUND(AVG (list_price),1) as GiaTb
   --,[product_name]
    --,[brand_id]
    --,[category_id]
    --,[model_year]
    --,[list_price]
FROM [BikeStores].[production].[products]
WHERE product_name like '%Trek%'
group by category_id 
having  (ROUND(AVG (list_price),1)) > 200 
ORDER BY ROUND(AVG (list_price),1) desc 
