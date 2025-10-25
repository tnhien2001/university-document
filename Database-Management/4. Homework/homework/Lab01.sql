use northwind;

-- Câu 1: Truy vấn danh sách các Customer
select *
from customer
limit 5;

-- Câu 2: -	Truy vấn danh sách các Customer 
-- theo các thông tin Id, FullName (là kết hợp FirstName-LastName), City, Country
-- Cách 1:
select Id, concat(FirstName, ' ', LastName) as 'FullName', City, Country
from customer
limit 5;

-- Cách 2:
select 	Id, 
		concat_ws(' ', FirstName, LastName) as 'FullName', 
        City, 
        Country
from customer
limit 5;

-- Câu 3: 
-- Cho biết có bao nhiêu khách hàng từ Germany và UK, đó là những khách hàng nào
select Id, FirstName, LastName, City, Phone, Country, count(*) as 'Khách hàng từ Đức và Anh'
from customer
where country in ('Germany', 'UK')
group by Id, FirstName, LastName, City, Phone, Country;
                    
-- Câu 4 : Truy vấn danh sách các khách hàng với ID là 5,10, từ 1-10, và từ 5-10
-- Danh sách khách hàng với ID là 5
select *
from customer
limit 1
offset 4; -- offset là bỏ qua 4 dòng đầu

-- Danh sách khách hàng với ID là 10
select *
from customer
limit 1
offset 9; -- offset là bỏ qua

-- Danh sách khách hàng với ID là 1-10
select *
from customer
limit 10;

-- Danh sách khách hàng với ID là 5-10
select *
from customer
limit 6
offset 4; -- offset là bỏ qua

-- Câu 5:
-- Truy vấn các khách hàng ở các sản phẩm (Product) mà đóng gói dưới dạng bottles 
-- có giá từ 15 đến 20 mà không từ nhà cung cấp có ID là 16
select c.FirstName, c.LastName, Country, c.Phone, p.package, p.supplierid, p.unitprice
from customer as c
join orderdata as od on od.customerid = c.id
join orderitem as oi on oi.orderid = od.id
join product as p on oi.productid = p.id
where p.package like '%bottles' and p.unitprice between 15 and 20 and p.supplierid != 16 
order by p.unitprice;
