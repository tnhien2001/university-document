use northwind;

-- Phân trang - Lấy từ 50 đến 100
select *
from (
	select *, row_number() over (order by Id) as RowNum
    from OrderItem
    ) as MyDerivedTable
where MyDerivedTable.RowNum between 50 and 100;

-- Lấy từ vị trí 2000 đến hết
select *
from (
	select *, row_number() over (order by Id) as RowNum
    from OrderItem
    ) as MyDerivedTable
where MyDerivedTable.RowNum between 2000 and MyDerivedTable.RowNum;

-- create table OrderByMonth
-- select customerID, month(OrderDate) as MonthOrder, count(OrderNumber) as OrderSum
-- from orderdata
-- group by customerid, month(orderdate);

select *
from orderbymonth
order by customerid;

-- Pivot table để xuất danh sách các KH và số hóa đơn theo tháng
-- select customerByMonth.CustomerId
-- from (
-- 		select * from OrderByMonth.CustomerId
--         isnull (CustomerByMonth.1,0) as 'Tháng 1'
--         Pivot (Sum(OrderSum) for MonthOrder In ([1], [2], [3], [4], [5], [6],
-- 												[7], [8], [9], [10], [11], [12])) 
--                                                 as PivotedOrder)CustomerByMonth
                                                
SELECT 
    CustomerId,
    SUM(CASE WHEN MONTH(OrderDate) = 1 THEN TotalAmount ELSE 0 END) AS `Tháng 1`,
    SUM(CASE WHEN MONTH(OrderDate) = 2 THEN TotalAmount ELSE 0 END) AS `Tháng 2`,
    SUM(CASE WHEN MONTH(OrderDate) = 3 THEN TotalAmount ELSE 0 END) AS `Tháng 3`,
    SUM(CASE WHEN MONTH(OrderDate) = 4 THEN TotalAmount ELSE 0 END) AS `Tháng 4`,
    SUM(CASE WHEN MONTH(OrderDate) = 5 THEN TotalAmount ELSE 0 END) AS `Tháng 5`,
    SUM(CASE WHEN MONTH(OrderDate) = 6 THEN TotalAmount ELSE 0 END) AS `Tháng 6`,
    SUM(CASE WHEN MONTH(OrderDate) = 7 THEN TotalAmount ELSE 0 END) AS `Tháng 7`,
    SUM(CASE WHEN MONTH(OrderDate) = 8 THEN TotalAmount ELSE 0 END) AS `Tháng 8`,
    SUM(CASE WHEN MONTH(OrderDate) = 9 THEN TotalAmount ELSE 0 END) AS `Tháng 9`,
    SUM(CASE WHEN MONTH(OrderDate) = 10 THEN TotalAmount ELSE 0 END) AS `Tháng 10`,
    SUM(CASE WHEN MONTH(OrderDate) = 11 THEN TotalAmount ELSE 0 END) AS `Tháng 11`,
    SUM(CASE WHEN MONTH(OrderDate) = 12 THEN TotalAmount ELSE 0 END) AS `Tháng 12`
FROM OrderData
GROUP BY CustomerId;

select Id, OrderNumber, OrderDate,
	Case 
		when month(OrderDate) < 4 then 'Quy 1'
        when month(OrderDate) < 7 then 'Quy 2'
        when month(OrderDate) < 10 then 'Quy 3'
		else 'Quy 4'
	end as OrderPeriod
from OrderData

-- Hàm CAST cho phép chuyển đổi 1 biểu thức nào đó sang 1 kiểu dữ liệu bất kỳ mong muốn

-- Hàm CONVERT: cho phép chuyển đổi 1 biểu thức nào đó sang 1 kiểu data bất kỳ mong muốn 
-- nhưng có thể theo 1 định dạng nào đó (đặc biệt đối với kiểu dữ liệu ngày)
-- Cú pháp: CONVERT(Kiểu-data, biểu thức [Định danh])
-- + Kiểu dữ liệu: tên kiểu dữ liệu mà biểu thức sẽ đc chuyển đổi sang.
-- + Biểu thức: là tên của cột bên trong bảng hoặc 1 biểu thức tính toán muốn chuyển sang kiểu data mới
-- + Định dạng: một con số chỉ định việc định dạng cho việc chuyển đổi dữ liệu từ dạng ngày sang dạng chuỗi 


-- Hàm STR: chuyển đổi kiểu data số sang kiểu data chuỗi. Đảm bảo đủ vùng trắng 
-- để chứa các ký số khi chuyển đổi sang kiểu data chuỗi
-- Cú pháp: STR(Số thực, Số ký tự [Số lẻ]) -> Chuỗi
-- + Số thực: là 1 biểu thức có kiểu data số thực.
-- + Số ký tự: Số vùng trắng dùng để chứa các ký số sau khi chuyển sang kiểu data chuỗi
-- + Số lẻ: chỉ định số thập phân.
-- + Chuỗi: là chuỗi ký tự kết quả chứa các ký số sau khi đã chuyển đổi kiểu data số thành data chuỗi.

-- Hàm ASCII
-- Cú pháp: ASCII (character)
-- VD: ASCII('a') -> Giá trị trả về = 97

-- Hàm SPACE
-- Cú pháp: SPACE(integer)
-- VD: select ('SQL') + SPACE(1) + ('Tutorials') -> Giá trị trả về = SQL Tutorials

-- Hàm CharIndex: Trả vè vị trí đc tìm thấy của một chuỗi trong chuỗi cha
-- Cú pháp: CHARINDEX(string1, string2[,start_location])
-- VD: select CHARINDEX('SQL','Well organized understand SQL tutorial') -> Value = 27
-- select CHARINDEX('SQL','Well organized understand SQL tutorial', 30) -> Value = 0 
-- (bởi giá trị bắt đầu truyền vào từ ký tự 30 trở đi

-- Hàm REPLACE: Hàm thay thế chuỗi
-- Cú pháp: REPLACE('string1','string2', 'string3')
-- SELECT REPLACE('All Function', 'All', 'SQL') -> Value = SQL Function

-- Hàm Upper và Lower

-- Hàm left, right, substring: cắt chuỗi bên trái, phải và ở giữa
-- LEFT('string1',số ký tự)
-- RIGHT('string1',số ký tự)
-- SUBSTRING('string1',vị trí, số ký tự)