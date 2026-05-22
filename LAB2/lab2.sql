select first_name, last_name, state 
from sales.customers 
where state = 'NY' order by first_name

select city, count(*)as Totacustomer 
from sales.customers 
where state = 'NY' group by city having count(*) >=10 order by city desc

SELECT YEAR(order_date) AS OrderYear, COUNT(*) AS TotalOrders
FROM sales.orders
GROUP BY YEAR(order_date)
ORDER BY OrderYear;