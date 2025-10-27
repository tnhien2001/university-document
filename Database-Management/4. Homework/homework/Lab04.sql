use northwind;

-- Câu 1: Theo mỗi  OrderID cho biết số lượng Quantity của mỗi ProductID chiếm tỷ lệ bao nhiêu phần trăm.
SELECT 	OrderId, ProductID, Quantity,
		sum(Quantity) over (partition by OrderId) as 'Số lượng hàng theo mỗi hóa đơn',
        concat(round(((Quantity / sum(Quantity) over (partition by OrderId))*100),2),' %') as 'Tỷ lệ (%) của Quantity theo ProductID'
FROM orderitem;

-- Câu 2: Xuất các hóa đơn kèm theo thông tin ngày trong tuần của hóa đơn là : Thứ 2,3,4,5,6,7,Chúa Nhật.
select 	*, dayname(orderdate) as 'Day in week'
from orderdata;

-- Câu 3: Với mỗi ProductID trong OrderItem xuất các thông tin gồm OrderID, ProductID, ProductName, UnitPrice, 
-- Quantity, ContactInfo, ContactType. Trong đó ContactInfo ưu tiên Fax, nếu không thì dùng Phone của Supplier sản phẩm đó. 
-- Còn ContactType là ghi chú đó là loại ContactInfo nào.
select 	o.OrderID, o.ProductID, p.ProductName, o.UnitPrice, o.Quantity,
		if(s.Fax is null, s.Phone, s.Fax) as ContactInfo,
        if(s.Fax is null, 'Phone', 'Fax') as ContactType
from OrderItem as o
join product as p on o.productid = p.id
join supplier as s on p.supplierid = s.id
order by o.OrderID;

-- Câu 4: Cho biết Id của database Northwind, Id của bảng Supplier, Id của User mà bạn đang đăng nhập là bao nhiêu. 
-- Cho biết luôn tên User mà đang đăng nhập 
-- Database info
SELECT SCHEMA_NAME AS database_name
FROM INFORMATION_SCHEMA.SCHEMATA
WHERE SCHEMA_NAME = 'Northwind';

-- Table info
SELECT TABLE_SCHEMA, TABLE_NAME, ENGINE, CREATE_TIME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'Northwind' AND TABLE_NAME = 'Supplier';

-- Current user
SELECT USER() AS 'current_user', 
CURRENT_USER() AS effective_user;

-- Câu 5: Cho biết các thông tin user_update, user_seek, user_scan và user_lookup trên bảng Order trong database Northwind 
-- Table access stats (Performance Schema)
SELECT OBJECT_SCHEMA,
       OBJECT_NAME,
       COUNT_READ AS user_seek,
       COUNT_FETCH AS user_lookup,
       COUNT_INSERT AS user_update,
       COUNT_DELETE AS user_scan
FROM performance_schema.table_io_waits_summary_by_table
WHERE OBJECT_SCHEMA = 'Northwind'
  AND OBJECT_NAME = 'Order';

-- Câu 6: Dùng WITH phân chia cây như sau : Mức 0 là các Quốc Gia(Country), 
-- Mức 1 là các Thành Phố (City) thuộc Country đó, 
-- Và mức 2 là các Hóa Đơn (Order) thuộc khách hàng từ Country-City đó.


-- Câu 7: Xuất những hóa đơn từ khách hàng France 
-- mà có tổng số lượng Quantity lớn hơn 50 của các sản phẩm thuộc hóa đơn ấy.
with OrderFromFrance as
		(
		select 	od.ID, od.OrderNumber, od.CustomerID, od.TotalAmount,
				sum(oi.Quantity) over (partition by OrderId) as SumQuantity
		from customer as c
		join orderdata as od on od.customerid = c.id
		join orderitem as oi on oi.orderid = od.id
		where c.Country = 'France')
        
select 	distinct(ID), 
		OrderFF.OrderNumber, OrderFF.CustomerID, OrderFF.TotalAmount, 
		OrderFF.SumQuantity
from OrderFromFrance as OrderFF
where SumQuantity > 50;


