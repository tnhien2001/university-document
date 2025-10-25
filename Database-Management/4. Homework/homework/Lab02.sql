use northwind;

-- Câu 1:-Xuất danh sách các nhà cung cấp (gồm Id, CompanyName, ContactName, City, Country, Phone) 
-- kèm theo giá min và max của các sản phẩm mà nhà cung cấp đó cung cấp. 
-- Có sắp xếp theo thứ tự Id của nhà cung cấp 
-- (Gợi ý : Join hai bản Supplier và Product, dùng GROUP BY tính Min, Max)
select 	s.Id, s.CompanyName, s.ContactName, s.City, s.Country, s.Phone, 
		min(p.UnitPrice) as 'Giá thấp nhất của mặt hàng',
        max(p.UnitPrice) as 'Giá cao nhất của mặt hàng'
from supplier as s
join product as p on s.id = p.supplierid
group by s.Id, s.CompanyName, s.ContactName, s.City, s.Country, s.Phone
order by s.id;

-- Câu 2: -Cũng câu trên nhưng chỉ xuất danh sách nhà cung cấp có sự khác biệt giá 
-- (max – min) không quá lớn (<=30).(Gợi ý: Dùng HAVING)
select 	s.Id, s.CompanyName, s.ContactName, s.City, s.Country, s.Phone, 
		min(p.UnitPrice) as 'Giá thấp nhất của mặt hàng',
        max(p.UnitPrice) as 'Giá cao nhất của mặt hàng'
from supplier as s
join product as p on s.id = p.supplierid
group by s.Id, s.CompanyName, s.ContactName, s.City, s.Country, s.Phone
having max(p.UnitPrice) <= 30 and min(p.UnitPrice) <= 30
order by s.id;

-- Câu 3: Xuất danh sách các hóa đơn (Id, OrderNumber, OrderDate) 
-- kèm theo tổng giá chi trả (UnitPrice*Quantity) cho hóa đơn đó, 
-- bên cạnh đó có cột Description là “VIP” nếu tổng giá lớn hơn 1500 và “Normal” 
-- nếu tổng giá nhỏ hơn 1500(Gợi ý: Dùng UNION)
select	'VIP' as Type,
		od.Id, od.OrderNumber, od.OrderDate,
        (oi.UnitPrice * oi.Quantity) as 'Tổng hóa đơn chi trả'
from orderdata as od
join orderitem as oi on od.id = oi.orderid
where (oi.UnitPrice * oi.Quantity) > 1500
union
select	'Normal' as Type,
		od.Id, od.OrderNumber, od.OrderDate,
        (oi.UnitPrice * oi.Quantity) as 'Tổng hóa đơn chi trả'
from orderdata as od
join orderitem as oi on od.id = oi.orderid
where (oi.UnitPrice * oi.Quantity) <= 1500
order by Id;

-- Câu 4: -Xuất danh sách những hóa đơn (Id, OrderNumber, OrderDate) 
-- trong tháng 7 nhưng phải ngoại trừ ra những hóa đơn từ khách hàng France. (Gợi ý: dùng EXCEPT)
-- a) Không dùng Except
select o.Id, o.OrderNumber, o.OrderDate, c.Country
from customer as c
join orderdata as o on o.customerid = c.id
where month(o.orderdate) = 7 and c.country != 'France';

-- b) Dùng Except
select o.Id, o.OrderNumber, o.OrderDate, c.Country
from customer as c
join orderdata as o on o.customerid = c.id
where month(o.orderdate) = 7
except
select o.Id, o.OrderNumber, o.OrderDate, c.Country
from customer as c
join orderdata as o on o.customerid = c.id
where c.country = 'France';

-- Câu 5: Xuất danh sách những hóa đơn (Id, OrderNumber, OrderDate, TotalAmount)  
-- nào có TotalAmount nằm trong top 5 các hóa đơn. 
-- (Gợi ý : Dùng IN)
select Id, OrderNumber, OrderDate, TotalAmount
from orderdata
order by totalamount
limit 5;

-- Dùng IN:
select Id, OrderNumber, OrderDate, TotalAmount
from orderdata
where id in 	(select customerid 
				from orderdata 
                group by  customerid
				order by count(OrderNumber));
                