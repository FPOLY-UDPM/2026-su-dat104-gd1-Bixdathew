  select 
     b.brand_name as [Tên Thương Hiệu],
        p.product_name as [Tên Sản Phẩm],
        st.quantity as [Tồn Kho],
            s.store_name as [Tên Cửa Hàng]
from
    production.products p   
    join production.brands b on p.brand_id = b.brand_id
    join production.stocks st on p.product_id = st.product_id
    join sales.stores s on st.store_id = s.store_id

    ----

    SELECT 
    p.product_id AS [Mã Sản Phẩm],
    p.product_name AS [Tên Sản Phẩm],
    b.brand_name AS [Thương Hiệu],
    st.store_name AS [Tên Cửa Hàng],
    s.quantity AS [Số Lượng Tồn Kho]
FROM production.products p
JOIN production.brands b ON p.brand_id = b.brand_id
JOIN production.categories c ON p.category_id = c.category_id
JOIN production.stocks s ON p.product_id = s.product_id
JOIN sales.stores st ON s.store_id = st.store_id
ORDER BY p.product_name, st.store_name;

---=======================
  select 
     b.brand_name as [Tên Thương Hiệu],
        p.product_name as [Tên Sản Phẩm],
        st.quantity as [Tồn Kho],
            s.store_name as [Tên Cửa Hàng]
from
    production.products p   
    join production.brands b on p.brand_id = b.brand_id
    join production.stocks st on p.product_id = st.product_id
    join sales.stores s on st.store_id = s.store_id

    ----
SELECT 
    category_id, 
    MAX(list_price) AS Gia_Lon_Nhat, 
    MIN(list_price) AS Gia_Nho_Nhat
FROM production.products
GROUP BY category_id
HAVING MAX(list_price) > 4000 
   AND MIN(list_price) < 500;

   ------------------------------

   SELECT 
    category_id, 
    AVG(list_price) AS Gia_Trung_Binh
FROM production.products
GROUP BY category_id
HAVING AVG(list_price) BETWEEN 500 AND 1000;
-------------------------------


SELECT 
    order_id, 
    SUM(quantity * list_price * (1 - discount)) AS net_value
FROM sales.order_items
GROUP BY order_id
HAVING SUM(quantity * list_price * (1 - discount)) BETWEEN 19000 AND 25000;
    SELECT 
    p.product_id AS [Mã Sản Phẩm],
    p.product_name AS [Tên Sản Phẩm],
    b.brand_name AS [Thương Hiệu],
    st.store_name AS [Tên Cửa Hàng],
    s.quantity AS [Số Lượng Tồn Kho]
FROM production.products p
JOIN production.brands b ON p.brand_id = b.brand_id
JOIN production.categories c ON p.category_id = c.category_id
JOIN production.stocks s ON p.product_id = s.product_id
JOIN sales.stores st ON s.store_id = st.store_id
ORDER BY p.product_name, st.store_name;

---=======================


SELECT 
    s.store_name AS [Tên Cửa Hàng],
    st.quantity AS [Tồn Kho]
FROM sales.stores s
JOIN production.stocks st ON s.store_id = st.store_id
where st.quantity < 10
ORDER BY st.quantity ASC;
---Tìm cửa hàng có tồn kho dưới 10 sản phẩm cho từng mặt hàng

