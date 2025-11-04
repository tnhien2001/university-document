use northwind;
-- Câu 1: 1.Tạo các view sau :
-- a/ uvw_DetailProductInOrder với các cột sau OrderId, OrderNumber, OrderDate, ProductId, ProductInfo 
-- ( = ProductName + Package. Ví dụ: Chai 10 boxes x 20 bags), UnitPrice và Quantity
-- b/ uvw_AllProductInOrder với các cột sau OrderId, OrderNumber, OrderDate, ProductList 
-- (ví dụ “11,42,72” với OrderId 1), và TotalAmount 
-- ( = SUM(UnitPrice * Quantity)) theo mỗi OrderId  (Gợi ý dùng FOR XML PATH để tạo cột ProductList)

-- a/
-- create view uvw_DetailProductInOrder as
-- 	select oi.OrderID, od.OrderNumber, od.OrderDate, p.id as ProductID,
-- 			concat(p.ProductName,' ', p.Package) as ProductInfo, 
--             p.UnitPrice, oi.Quantity
--     from orderdata as od
--     join orderitem as oi on oi.orderid = od.iduvw_allproductinorderOrderID
--     join product as p on oi.productid = p.id;uvw_allproductinorder

select * from uvw_DetailProductInOrder order by oi.OrderID;

-- b/ uvw_AllProductInOrder với các cột sau OrderId, OrderNumber, OrderDate, ProductList 
-- (ví dụ “11,42,72” với OrderId 1), và TotalAmount 
-- ( = SUM(UnitPrice * Quantity)) theo mỗi OrderId  (Gợi ý dùng FOR XML PATH để tạo cột ProductList)

-- Dùng group_concat thay cho FOR XML PATH
-- Cú pháp: group_concat([Distinct] col_name [order by] [separator str_val])
-- create view uvw_AllProductInOrder as
-- 	select 	oi.OrderID, od.OrderNumber, od.OrderDate,
-- 			concat('ProductID: ', oi.ProductID, ' -> OrderID: ', oi.OrderID) as ProductList,
--             (sum(p.UnitPrice * oi.Quantity) over (partition by oi.OrderID)) as TotalAmount
--     from orderdata as od
--     join orderitem as oi on oi.orderid = od.id
--     join product as p on oi.productid = p.id;

select * from uvw_AllProductInOrder;

-- Câu 2: Dùng view “uvw_DetailProductInOrder“ truy vấn những thông tin có OrderDate trong tháng 7  
select * 
from uvw_DetailProductInOrder 
where month(OrderDate) = 7;

-- Câu 3: Dùng view “uvw_AllProductInOrder” truy vấn những hóa đơn Order có ít nhất 3 product trở lên 
-- Bước đầu tiên, Update View trước:
-- alter view uvw_AllProductInOrder as
-- 	select 	oi.OrderID, od.OrderNumber, od.OrderDate,
-- 			concat('ProductID: ', oi.ProductID, ' -> OrderID: ', oi.OrderID) as ProductList,
--             (sum(oi.Quantity) over (partition by oi.OrderID)) as Quantity,
--             (sum(p.UnitPrice * oi.Quantity) over (partition by oi.OrderID)) as TotalAmount
--     from orderdata as od
--     join orderitem as oi on oi.orderid = od.id
--     join product as p on oi.productid = p.id;

select *		
from uvw_AllProductInOrder
where Quantity > 3;

-- Câu 4: Hai view trên đã readonly chưa ? Có những cách nào làm hai view trên thành readonly ?
-- Các cách để làm VIEW thành Read only là:
-- + Hai view trên vẫn chưa là Read Only


-- Câu 5: Thống kê về thời gian thực thi khi gọi hai view trên. View nào chạy nhanh hơn ?  
-- Bật profiling một lần
SET profiling = 1;

-- Thực thi view thứ nhất
SELECT * FROM uvw_DetailProductInOrder;

-- Thực thi view thứ hai
SELECT * FROM uvw_AllProductInOrder;

-- Xem kết quả thống kê thời gian
SHOW PROFILES;

