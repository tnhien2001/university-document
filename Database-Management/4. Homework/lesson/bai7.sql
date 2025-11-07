-- Định nghĩa HÀM:
-- Là một đối tượng trong CSDL gồm nhiều câu lệnh SQL
-- Được nhóm lại với nhau thành 1 nhóm.

-- Có nhiều hàm được định nghĩa sẵn
-- + Hàm chuỗi (String Functions).
-- + Hàm ngày tháng (Date and Time Functions)
-- + Hàm toán học (Mathematical Function)

-- Có 2 loại hàm: 
-- Loại 1 trả về "dữ liệu kiểu bảng"
-- Loại 2 là hàm trả về 1 giá trị

-- Cú pháp HÀM:
-- CREATE FUNCTION ten_ham ([danhSachCacThamSo])
-- RETURNS kieuDuLieuTraVeCuaHam
-- AS
-- BEGIN
-- 		cacCauLenhCuaHam
-- END
-- danhSachCacThamSo

-- VD: Tạo hàm trả về giá trị là năm hiện hành (Theo giờ hệ thống trên máy DB Server)
-- CREATE FUNCTION dbo.fuGetCurrYear()
-- RETURNS int
-- AS 
-- BEGIN
-- 		RETURN YEAR(getdate())
-- END
-- => SELECT dbo.fuGetCurrYear() AS 'CurrentYear'

-- Hàm trả về số ngày của tháng, năm do bạn truyền vào:
-- CREATE FUNCTION dbo.fuDayInMonth(@Thang int, @Nam int)
-- RETURNS int
-- AS
-- BEGIN
-- 	DECLARE @Ngay int
--     IF @Thang = 2
-- 		BEGIN
-- 			IF ((@Nam % 4 = 0 AND @Nam % 100 !=0) OR (@Nam % 400 = 0))
-- 				SET @Ngay = 29
-- 			ELSE
--                 SET @Ngay = 28
-- 		END
-- 	ELSE
-- 		SELECT @Ngay = CASE WHEN @Thang IN (1,3,5,7,8,10,12) THEN 31 ELSE 30 END
-- 	RETURN @Ngay
-- END

-- Hàm xác định thứ trong tuần của một giá trị kiểu ngày:
-- CREATE FUNCTION fuThu(@ngay DATETIME)
-- RETURNS NVARCHAR(10)
-- AS
-- 	BEGIN
-- 		DECLARE @KetQua NVARCHAR(10)
--         SELECT @KetQua = CASE DATEPART(DW, @ngay)
-- 			WHEN 1 THEN N'Chủ nhật'
--             WHEN 2 THEN N'Thứ hai'
--             WHEN 3 THEN N'Thứ ba'
--             WHEN 4 THEN N'Thứ tư'
--             WHEN 5 THEN N'Thứ năm'
--             WHEN 6 THEN N'Thứ sáu'
--             ELSE N'Thứ bảy'
-- 		END
-- 	RETURN (@KetQua) /* Giá trị trả về của hàm */
-- END

-- VD: Đếm số hóa đơn theo mã nhân viên
-- CREATE FUNCTION FetchEmployeeProcessedOrdersYearWise
-- (@p_EmployeeID INT, @p_Year INT)
-- RETURNS INT
-- BEGIN
-- 		RETURN (SELECT COUNT(OrderID) FROM Orders
--         WHERE EmployeeID=@p_EmployeeID AND YEAR(OrderDate)=@p_Year)
-- END
-- Test the function:
-- SELECT dbo.FetchEmployeeProcessedOrdersYearWise(1,1996) AS 'Year 1996'
-- SELECT dbo.FetchEmployeeProcessedOrdersYearWise(1,1997) AS 'Year 1997'
-- SELECT dbo.FetchEmployeeProcessedOrdersYearWise(1,1998) AS 'Year 1998'

-- DEFAULT trong Function:
-- CREATE FUNCTION CalculateNumber(@Num1 int=0, @Num2 int=0)
-- RETURNS int
-- AS
-- BEGIN
-- 		DECLARE @Result INT
--         SET @Result = @num1 + @num2
--         RETURN @Result
-- END

-- => SELECT dbo.CalculateNumber(DEFAULT, DEFAULT)
-- ==> Result = 0

-- ***Inline Function***:
-- CREATE FUNCTION tenHam ([danhSachThamSo])
-- RETURNS TABLE
-- AS
-- RETURN (cauLenhSELECT)

-- VD: 
-- CREATE FUNCTION func_XemSV(@khoa SMALLINT)
-- RETURNS TABLE
-- AS
-- RETURN(
-- 		SELECT masv, hodem, ten, ngaysinh
--         FROM sinhvien INNER JOIN lop
--         ON sinhvien.malop = lop.malop
--         WHERE khoa = @khoa
-- )

-- ***Multi-statement Function***: 
-- Là phần thân chỉ cho phép sự xuất hiện duy nhất của câu lệnh RETURN
-- CREATE FUNCTION tenHam([danhSachThamSo])
-- RETURNS @biến_Bảng TABLE dinhNghiaBang
-- AS
-- BEGIN
-- 		<các_câu_lệnh_trog_thân_hàm>
-- RETURN
-- END

-- VD:
-- CREATE FUNCTION CustomerPurchasedProductDetailsMultiStatement
-- (@p_CustomerID NVARCHAR(10))
-- RETURNS @CustomerPurchasedProducts TABLE (
-- 											ProductName NVARCHAR(50),
--                                             UnitPrice DECIMAL(8,2),
--                                             AvailableStock INT
-- 										)
-- AS
-- BEGIN
-- 		INSERT @CustomerPurchasedProducts
--         SELECT p.ProductName, p.UnitPrice, p.UnitsInStock
--         FROM Customers c 
--         JOIN Orders o on c.CustomerID = o.CustomerID JOIN [Order Details] od
--         ON o.OrderID = od.OrderID JOIN Products p
--         ON od.ProductID = p.ProductID
--         WHERE c.CustomerID = @p_CustomerID
--         RETURN
-- END

-- *** So sánh giữa In-line và Multi-statement Function: ***
-- + Inline khai báo đơn giản, có thể thay đổi cấu trúc của tập kết quả tùy ý
-- + Multi-statement cần khai báo trước cấu trúc
-- => Khác biệt quan trọng nhất ở hiệu năng.
-- Khi JOIN 1 hàm inline, bộ Optimizer có thể truy cập vào thông tin index và statistic của các bảng.
-- Nó biết bảng nào được sử dụng và vì chỉ có 1 lệnh đc dùng trong hàm.
-- Khi JOIN 1 hàm multi-statement, bộ Optimizer "mù tịt" với những gì xảy ra bên trong hàm.
-- Nó vẫn tối ưu hóa từng lệnh nhưng không thể "xé nhỏ" nó ra để tối ưu chung cho cả câu lệnh.
-- -- VD: Hàm Inline
-- CREATE FUNCTION dbo.fn_ProductInfo(@p INT) RETURNS TABLE
-- AS
-- RETURN
-- 		SELECT p.ProductID, p.Name, p.ProductNumber
--         FROM Production.Product p
--         WHERE p.ProductModelID = @p
--         
-- -- VD: Hàm Multi-statement
-- CREATE FUNCTION dbo.fn_ProductInfo_MSTV(@p INT)
-- RETURNS @t TABLE(ProductID INT, Name NVARCHAR(50), ProductNumber NVARCHAR(25))
-- AS
-- BEGIN
-- 		INSERT INTO @t
--         SELECT p.ProductID, p.Name, p.ProductNumber
--         FROM Production.Product p
--         WHERE p.ProductModelID = @p
--         RETURN
-- END

-- SCHEMABINDING
-- Giúp cho các bảng cùng schema trong function giữ cấu trúc không thay đổi
-- VD:
-- CREATE FUNCTION Sales.CalculateSalesOrderTotal (@SalesOrderID INT)
-- RETURNS MONEY
-- WITH SCHEMABINDING AS
-- BEGIN
-- 	DECLARE @SalesOrderTotal AS MONEY;
--     SELECT 	@SalesOrderTotal = 
-- 			SUM(sod.LineTotal) + soh.TaxAmt + soh.Freight
-- 	FROM 	Sales.SalesOrderHeader AS soh
-- 			JOIN Sales.SalesOrderDetail AS sod
--             ON soh.SalesOrderID = sod.SalesOrderID
-- 	WHERE	soh.SalesOrderID = @SalesOrderId
--     GROUP BY soh.TaxAmt, soh.Freight;
--     RETURN @SalesOrderTotal;
-- END;

-- CHECK: Thêm ràng buộc để kiểm tra

-- COUNT_BIG = COUNT
-- có thể trả về kiểu bigint data

-- CHECKSUM: Kiểm tra xem bảng có thay đổi gì không.

-- GROUPING Function: Xác định cột nào sẽ được Group
-- Cú pháp: Grouping(column_name)
-- Có 2 trạng thái là CUBE và ROLLUP null values.

-- STDEV: (standard deviation) Tính độ lệch chuẩn
-- VAR: (variance) phương sai

-- Các hàm trong SQL Server

-- @@LANGID: xuất ra ID của ngôn ngữ đang được dùng.
-- @@LANGUAGE: Xuất ra ngôn ngữ đang được dùng
-- VD: 
-- SET LANGUAGE 'Italian'
-- SELECT @@LANGID AS 'Language ID' 
-- ==> 6

-- VD:
-- SET LANGUAGE 'us_english'
-- SELECT @@LANGUAGE AS 'Language Name'
-- => us_english

-- @@MAX_CONNECTIONS: Xuất ra số connections tối đa mà SQLServer có thể cho phép
-- SELECT @@MAX_CONNECTIONS AS 'Max Connections';

-- @@MAX_PRECISION: biến toàn cục giúp biết thành phần thập phân lớn nhất mà dạng dữ liệu
-- đang được thiết lập trong Server
-- SELECT @@MAX_PRECISION AS 'Max Precision'

-- @@NESTLEVEL: Cho biết đang đứng ở level thứ mấy trong vòng lặp của Server

-- @@SERVERNAME: Trả ra tên Server đang chạy trong SQL Server
-- @@SERVICENAME: Trả ra tên Server đang chạy trong SQL Server

-- @@SPID: Trả về session ID của user đang xử lý hiện tại

-- @@TEXTSIZE: Kích thước của chuỗi

-- @@VERSION: Phiên bản hiện tại của SQL Server
-- select @@version
-- ==> Version: 8.4.6

-- @@CONNECTIONS: Xuất ra số lượng connections, cả successful và unsuccessful
-- trong SQL Server tại thời điểm bắt đầu cuối cùng

-- @@CPU_BUSY: Returns the time that SQL Server has spent working since it was last started.
-- Result is in CPU time increments, or "ticks" and is cumulative for all CPUs,
-- so it may exceed the actual elapsed time. 
-- Multiply by @@TIMETICKS to convert to microseconds

-- @@IDLE: Returns the time that SQL Server has been idle since it was last started.
-- The result is in CPU time increments, or "ticks" and is cumulative for all CPUs,
-- so it may exceed the actual elapsed time.
-- Multiply by @@TIMETICKS to convert to microseconds.

-- @@PACKET_ERRORS
-- @@PACKET_RECEIVED
-- @@PACKET_SENT

-- @@TOTAL_READ
-- @@TOTAL_WRITE
-- @@TOTAL_ERRORS

-- ***Một số hàm hữu ích:***
-- 1.Hàm chuyển chuỗi thành bảng: 
-- CREATE FUNCTION dbo.fnCSVStr2Table(@CSVStr VARCHAR(8000), @Delimiter VARCHAR(1))
-- RETURNS @Tbl TABLE (ValueColumn VARCHAR(1000))
-- AS
-- BEGIN
-- 		DECLARE @SubStr VARCHAR(100), @i INT
--         SET @i = CHARINDEX(@Delimiter, @CSVStr, 0)
--         WHILE @i > 0
--         BEGIN
-- 			SET @SubStr = LEFT(@CSVStr,@i-1)
--             INSERT INTO @Tbl SELECT @SubStr
--             SET @CSVStr = SUBSTRING(@CSVStr, @i+1, 8000)
--             SET @i = CHARINDEX(@Delimiter, @CSVStr, 0)
-- 		END
--         
--         INSERT INTO @Tbl
--         SELECT LTRIM(RTRIM(@CSVStr))
-- RETURN
-- END
-- ==> SELECT * FROM dbo.fnCSVStr2Table('A,B,C,D,E,F', ',');
-- ==> SELECT * FROM dbo.fnCSVStr2Table('A;B;C;D;E;F', ';');