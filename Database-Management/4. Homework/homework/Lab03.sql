use northwind;

-- Câu 1: Sắp xếp sản phẩm tăng dần theo UnitPrice, và tìm 20% dòng có UnitPrice cao nhất 
-- (Lưu ý: Dùng ROW_NUMBER)
select *
from (
	select *, row_number() over (order by UnitPrice) as RowNum
    from OrderItem
    ) as MyDerivedTable
where MyDerivedTable.RowNum between 2000 and MyDerivedTable.RowNum;

-- Câu 2: Với mỗi hóa đơn, xuất danh sách các sản phẩm, số lượng (Quantity) 
-- và số phần trăm của sản phẩm đó trong hóa đơn. 
-- (Gợi ý: ta lấy Quantity chia cho tổng Quantity theo hóa đơn * 100 + ‘%’. Dùng SUM … OVER)
select 	OrderId, ProductId, Quantity,
		Quantity / sum(Quantity) over (partition by OrderId)
from OrderItem;

-- Câu 3: Xuất danh sách các nhà cung cấp kèm theo các cột USA, UK, France, Germany, Others. 
-- Nếu nhà cung cấp nào thuộc các quốc gia  này thì ta đánh số 1 còn lại là 0 
-- (Gợi ý: Tạo bảng tạm theo chiều dọc trước với tên nhà cung cấp và thuộc quốc gia USA, UK, France, Germany hay Others. 
-- Sau đó PIVOT bảng tạm này để tạo kết quả theo chiều ngang)
select CompanyName, ContactName, City,
	SUM(CASE WHEN Country = 'USA' THEN 1 ELSE 0 END) as 'USA',
    SUM(CASE WHEN Country = 'UK' THEN 1 ELSE 0 END) as 'UK',
	SUM(CASE WHEN Country = 'France' THEN 1 ELSE 0 END) as 'France',
	SUM(CASE WHEN Country = 'Germany' THEN 1 ELSE 0 END) as 'Germany',
    SUM(CASE WHEN Country not in ('USA','UK','France','Germany') THEN 1 ELSE 0 END) as 'Others'
from supplier
group by CompanyName, ContactName, ContactTitle, City;

-- Câu 4: Xuất danh sách các hóa đơn gồm OrderNumber, OrderDate (format: dd mm yyyy), 
-- CustomerName, Address (format: “Phone: …… , City: …. and Country: ….”), 
-- TotalAmount làm tròn không chữ số thập phân và đơn vị theo kèm là Euro)
select 	OrderNumber, date_format(OrderDate, '%d/%m/%Y') as OrderDate,
		concat(c.FirstName,' ', c.LastName) as CustomerName,
        concat('Phone: ',c.phone,', City: ', c.city, ' and Country: ', c.country) as Address,
        concat('Total Amount: ', round(o.TotalAmount), ' Euro') as TotalAmount
from orderdata as o
join customer as c on o.customerid = c.id;

-- Câu 5: Xuất danh sách các sản phẩm dưới dạng đóng gói bags. Thay đổi chữ bags thành ‘túi’ 
-- (Lưu ý: để dùng tiếng việt có dấu ta ghi chuỗi dưới dạng N’túi’)
select 	Id, ProductName, replace(package,'bags','túi') as Package
from product
where Package in 	(select package
					from product
					where package like '%bags');
                    
-- Câu 6: Xuất danh sách các khách hàng theo tổng số hóa đơn mà khách hàng đó có, 
-- sắp xếp theo thứ tự giảm dần của tổng số hóa đơn, 
-- kèm theo đó là  các thông tin phân hạng DENSE_RANK và nhóm (chia thành 3 nhóm) 
-- (Gợi ý: dùng NTILE(3) để chia nhóm).
select 	concat(c.FirstName,' ',c.LastName) as FullName, c.City, c.Country, 
		count(o.OrderNumber) as 'Tổng số hóa đơn',
        ntile(3) over (
        order by count(o.OrderNumber) desc
        ) as 'DENSE_RANK'
from customer as c
join orderdata as o on c.id = o.customerid
group by c.FirstName, c.LastName,c.City, c.Country;
