select 
    p.ProductName TenSanPham
    ,c.CategoryName TenLoaiSanPham
from 
    Products p  
    inner join Categories c on p.CategoryID = c.CategoryID
    order by c.CategoryName, p.ProductName
---DB Northwind
----1. Liệt kê tên nhóm SP (Categories), sản phẩm (Products)

    --------------------

    
SELECT 
    o.OrderID AS [Mã Đơn Hàng],
    o.OrderDate AS [Ngày Đặt],
    o.ShippedDate AS [Ngày Giao],
    o.ShipName AS [Tên Người Nhận],
    o.ShipAddress AS [Địa Chỉ Giao Hàng],
    c.CompanyName AS [Tên Công Ty Khách Hàng],
    c.ContactName AS [Người Liên Hệ],
    c.City AS [Thành Phố],
    c.Country AS [Quốc Gia]
FROM dbo.Orders o
INNER JOIN dbo.Customers c ON o.CustomerID = c.CustomerID;

--DB Northwind
--1. Liệt kê tên nhóm SP (Categories), sản phẩm (Products)
--2. Liệt kê thông tin đơn hàng, kèm theo tthông tin khách hàng hàng (Orders, Customers)

---------------------

select 
o.CustomerID AS [Mã Khách Hàng],
o.EmployeeID AS [Mã Nhân Viên],
o.OrderID AS [Mã Đơn Hàng],
o.OrderDate AS [Ngày Đặt Hàng],
o.RequiredDate AS [Ngày Yêu Cầu],  
e.FirstName AS [Tên Nhân Viên],
e.LastName AS [Họ Nhân Viên]
from dbo.Orders o
 join dbo.Employees e on o.EmployeeID = e.EmployeeID

 ------------
select
o.OrderID AS [Mã Đơn Hàng],
o.OrderDate AS [Ngày Đặt Hàng],
o.RequiredDate AS [Ngày Yêu Cầu],
o.ShippedDate AS [Ngày Giao Hàng],
e.FirstName + ' ' + e.LastName AS [Tên Nhân Viên]
from dbo.Orders o
join dbo.Employees e on o.EmployeeID = e.EmployeeID

--Liệt kê thông tin đơn hàng, kèm theo tthông tin nhân viên (Orders, Employees)

select 
e.FirstName + ' ' + e.LastName AS [Tên Nhân Viên],
e.Title AS [Chức Vụ],
m.FirstName + ' ' + m.LastName AS [Tên Người Quản Lý]
from dbo.Employees e
left join dbo.Employees m on e.ReportsTo = m.EmployeeID