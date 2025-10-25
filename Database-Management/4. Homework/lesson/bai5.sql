-- Các hàm RANKING
-- Cho phép đánh số liên tục (xếp loại) cho các tập hợp kết quả

-- 1. Hàm ROW_NUMBER
-- Cú pháp: row_number (..) over ([ <Mệnh đề Partition by> ] <Mệnh đề ORDER BY>)

-- VD1:
-- Giả sử muốn sắp xếp theo tuổi:
-- SELECT row_number() over (order by Age) as 'row number by age', ==> Sắp xếp theo tuổi
-- 		FirstName, Age
-- FROM person;

-- VD2:
-- Giả sử chỉ muốn sắp xếp theo số bản ghi của từng dòng.
-- SELECT row_number() over (order by (select 1)) as 'Row Number By Record Set', ==> Sắp xếp theo bản ghi từng dòng
-- 			FirstName, Age
-- FROM Person;
-- Có thể ranking bằng Row_number và thêm Partition
-- Dùng Partition để lọc ra nhóm cần đánh số
-- VD3: Xếp loại theo Giới tính và sắp xếp theo tuổi
-- SELECT row_number() over (partition by Gender order by Age) as 'Partition by Gender'
-- 		FirstName, Age, Gender
-- FROM Person;

-- 2. Rank
-- 1 dòng có cùng sắp xếp giá trị cột như các dòng khác có cùng một xếp loại
-- Cú pháp: rank () over ([<Mệnh đề Partition by>] <Mệnh đề Order by>)
-- Trong đó:
-- + <Mệnh đề Partition By> là 1 cột hay tập hợp các cột đc sử dụng để quyết định
-- việc đánh số liên tục trong hàm RANK
-- + <Mệnh đề Order by> là 1 cột hay tập hợp các cột đc sử dụng để sắp xếp tập hợp
-- kết quả trong nhóm (partition)

-- VD1: 
-- SELECT rank() over (order by Age) as 'Rank by Age',
-- 		FirstName, Age
-- FROM Person;
-- => Thường sẽ đánh số thiếu vì do đánh số dựa trên vị trí dòng.
-- => Nếu vị trí dòng đã qua thì đánh số theo vị trí dòng hiện tại.
-- Nếu muốn có nhiều xếp loại trong tập hợp bản ghi thì với từng xếp loại bạn cần đặt 1 nhóm cụ thể
-- bằng cách sử dụng mệnh đề Partition By trong RANK.

-- VD2: Xếp loại theo Gender và sắp xếp theo Age
-- SELECT rank() over (partition by Gender order by Age) as 'Partition by Gender',
-- 		FirstName, Age, Gender
-- FROM Person;

-- 3. DENSE_RANK
-- Giống hàm Rank, tuy nhiên KHÔNG CUNG CẤP KHOẢNG CÁCH GIỮA CÁC SỐ XẾP LOẠI.
-- Hàm sẽ xếp loại liên tục cho từng giá trị Order By cụ thể.
-- Cú pháp: Tương tự như RANK: DENSE_RANK() over ([<Mệnh đề Partition by>] <Mệnh đề Order by>)
-- VD1:
-- SELECT dense_rank() over (order by Age) as 'Dense Rank by Age',
-- 		FirstName, Age
-- FROM Person;

-- 4. NTILE
-- Hàm phá vỡ tập hợp bản ghi trong 1 số cụ thể của các nhóm.
-- Cú pháp như các hàm RANKING khác.

-- VD1: 
-- SELECT  FirstName, Age,
-- 		ntile(3) over (order by Age) as 'Age Groups' ==> Gom nhóm theo tuổi thành 3 nhóm
-- FROM Person;

-- Là 1 hàm rất có ích nếu muốn trả lại 1 nhóm cụ thể trong các bản ghi
-- Xuất ra nhóm người có độ tuổi trung bình (Nhóm Age 2) từ ví dụ trên.
-- VD2:
-- SELECT FirstName, Age,
-- 		Age as 'Age Groups'
-- FROM (SELECT FirstName, Age,
-- 			ntile(3) over (order by Age) as 'AgeGroup'
-- 		FROM Person)
-- WHERE AgeGroup=2;

-- *** SUM...Over ***
-- Over cho phép lấy thông tin "kết/tổng" mà không cần dùng group by
-- Nói cách khác truy xuất tất cả các dòng kèm theo thông tin tổng theo nhóm
-- VD1:
-- SELECT sum(cost) over (partition by CustomerNo) as 'Cost',
-- 			OrderNum, CustomerNo
-- FROM Orders;            

-- Dễ dàng tính tỷ lệ theo từng dòng:
-- VD2:
-- SELECT customerID, orderDate, orderAmount,
-- 			orderAmount / sum(orderAmount) over (partition by customerID) as Pct
-- FROM orders;

-- Ngoài ra có thể dùng hàm *** AVG...Over ***
-- Cú pháp tương tự SUM...Over
-- VD:
-- SELECT x.*
-- from
-- (
-- 		SELECT CustomerID, ProductID, OrderDate, OrderAmount,
--         avg(orderAmount) over (partition by productID) as productAVG
--         from orders
-- ) as x
-- where x.orderAmount < x.productAVG

-- Các hàm dùng cho Date
-- Getdate() : Trả về ngày tháng và thời gian hiện tại.
-- Datepart() : Trả về 1 phần của ngày tháng/thời gian.
-- Dateadd() : Thêm hoặc bớt 1 khoảng thời gian nhất định từ một ngày.
-- Datediff(): Trả về thời gian giữa 2 ngày tháng.
-- Convert(): Hiển thị dữ liệu ngày tháng/thời gian trong các định dạng khác nhau.

-- Hàm trừ thời gian:
-- VD1: SELECT datediff(day, '01/06/2000', '01/10/2000') => Kết quả 4.
-- VD2: SELECT datediff(month, '01/06/2000', '01/10/2000') => Kết quả 5.

-- Lấy ngày hiện tại:
-- VD: SELECT getdate()
-- chữ viết tắt: Hour = hh(0-23), Minute = Mi(0-59), Second = Ss (0-59)
-- Milisecond = Ms (0-999), Day of year = Dy (1-366),
-- Day = dd (1-31), Year = yy (1753 - 9999)

-- Giá trị ngày cộng với 1 số:
-- VD: SELECT dateadd (mm,4,'01/01/99')
-- ==> Thêm vào trường mm (tháng) với giá trị 4. => 05/01/99

-- Giá trị chênh lệch giữa 2 ngày:
-- VD: SELECT datediff (mm,'01/01/99', '05/01/99')
-- ==> Kết quả 4. (so sánh giữa 2 trường tháng).

-- Giá trị ngày định dạng tương ứng:
-- VD: SELECT datename (dw,'01/01/2000')
-- ==> Kết quả: Saturday.

-- Hàm COALESCE: trả về biểu thức có giá trị khác NULL 
-- đầu tiên trong số những biểu thức đc truyền vào COALESCE
-- VD1:
-- SELECT Name,
-- 		  coalesce(Business_Phone, Cell_Phone, Home_Phone) as Contact_Phone
-- FROM Contact_Info;

-- Hàm hệ thống: dùng để chỉnh sửa Database (Dành cho SQL Server)
-- db_id(database_name): Mã số định danh CSDL
-- db_name(database_id): Tên CSDL
-- host_id(): Số định danh của trạm làm việc
-- host_name(): Tên trạm làm việc
-- isnull(expr, value): Giá trị của biểu thức (expr) sẽ được thay thế với giá trị này.
-- object_id('object_name'): Số định danh của đối tượng CSDL.
-- suser_sid('login_name'): Số định danh bảo mật sid đối với tên đăng nhập của người sử dụng
-- suser_id('login_name'): Số định danh đăng nhập người dùng
-- suser_sname(server_user_id): Trả về tên định danh đăng nhập từ số định danh bảo mật
-- 								của người dùng
-- suser_name(server_user_id): Tên định danh đăng nhập của người sử dụng
-- user_id(user_name): Số định danh CSDL của người sử dụng.

-- Hàm WITH:
-- Cho phép thực hiện 1 vòng lặp đệ quy. 
-- Sử dụng nó trên dữ liệu dạng cây sẽ cho thấy tính tiện dụng của nó.
-- Cấu trúc dữ liệu dạng cây (Cha-Con)

-- CTE (Common Table Expression) là 1 bảng chứa dữ liệu tạm thời 
-- từ câu lệnh đc định nghĩa trong pvi của nó.
-- Tương tự như 1 bảng dẫn xuất (derived table) ở chỗ nó không đc lữu trữ như 1 đối tượng
-- và chỉ kéo dài trong suốt thời gian của câu truy vấn.
-- Không giống như bản dẫn xuất, CTE có thể tự tham chiếu tới bản thân của nó
-- và có thể tham chiếu nhiều lần trong 1 câu truy vấn.
-- ***Mục đích của CTE:***
-- + Tạo truy vấn đệ quy (recursive query)
-- + Thay thế View trong 1 số trường hợp
-- + Cho phép nhóm 1 cột từ truy vấn con.
-- + Tham chiếu tới bảng kết quả nhiều lần trong cùng 1 lệnh.

-- Cú pháp của CTE:
-- WITH Expression_name [(column_name[,...n])]
-- AS (CTE_query_definition)
-- SELECT
-- FROM expression_name;
