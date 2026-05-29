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
