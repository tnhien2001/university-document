use northwind;

select * from customer limit 5;
select * from orderdata limit 5;
select * from orderitem limit 5;
select * from product limit 5;
select * from supplier limit 5;

-- Câu 1: Theo mỗi  OrderID cho biết số lượng Quantity của mỗi ProductID chiếm tỷ lệ bao nhiêu phần trăm.
SELECT 	OrderId, ProductID, Quantity,
		sum(Quantity) over (partition by OrderId) as 'Số lượng hàng theo mỗi hóa đơn',
        concat(round(((Quantity / sum(Quantity) over (partition by OrderId))*100),2),' %') as 'Tỷ lệ (%) của Quantity theo ProductID'
FROM orderitem;

-- Câu 2
