-- MySQL nhỏ, gọn, dành cho doanh nghiệp nhỏ và không phải là Datawarehouse
-- SQL Server lớn, dành cho doanh nghiệp lớn
-- SQL Server là Datawarehouse vì có khả năng quản trị, bảo mật và phân quyền.
-- => Cả 2 đều sử dụng ngôn ngữ T-SQL

-- ***Khái niệm VIEW***: khung nhìn (luận lý), tạo ra 1 bảng tạm để quan sát data.
-- VD: Tạo 1 VIEW có tên là ViewBaseTable
-- CREATE VIEW ViewBaseTable AS
-- 		SELECT CustomerID, CustomerName, CustomerDOB
--     	FROM BaseTable
-- => ViewBaseTable đã đc tạo ra, dữ liệu trong View này 
-- chính là kết quả trả về của câu truy vấn.
-- => Sau khi truy vấn xog bảng tự động mất.
-- SELECT CustomerID, CustomerName, CustomerDOB
-- FROM BaseTable
-- => Đây chính là bảng ViewBaseTable.

-- + Về login: coi View như 1 bảng bình thường, tức là có thể truy vấn,
-- thay đổi data, tạo index trên các cột của View,...
-- + Về vật lý: View KHÔNG chứa data. 
-- Nó chỉ là 1 khung nhìn.
-- Cấu trúc View chỉ là 1 câu lệnh SELECT tham chiếu đến các bảng khác.

-- ***Khi nào sử dụng VIEW***:
-- + Muốn User chỉ truy cập giới hạn SL cột (trong câu lệnh SELECT), 
-- hoặc SL dòng (thêm WHERE để lọc ĐK) nhất định.
-- + Khi 1 câu truy vấn phức tạp trong tương lai có thể phải sử dụng lại nhiều lần.
-- Tạo VIEW để lưu câu truy vấn.
-- Trường hợp hay xảy ra nhất là các câu truy vấn tính toán, tổng hợp data.
-- + Không muốn User biết đc tên bảng, cấu trúc thật sự của bảng hoặc thêm xóa sửa bảng.
-- => Giúp bảo mật rất tốt.

-- ***Một số lợi ích của VIEW:***
-- 1. Độc lập về thiết kế.
-- 2. Bảo mật data.
-- 3. Tính linh động.
-- 4. Đơn giản hóa truy vấn.
-- 5. Khả năng cập nhật.

-- ***Updatable VIEW***: 
-- Thêm xóa sửa qua VIEW: có thể thực hiện thao tác DML (Insert, Update, Delete) trên VIEW.
-- Khi thay đổi data trong VIEW thì những bảng liên quan đến VIEW data cũng sẽ thay đổi theo.
-- VD: DELETE FROM ViewBaseTable
-- => Sau khi thực hiện câu lệnh, xóa toàn bộ các rows trong BaseTable
-- Vì thế khi làm việc với VIEW, nên để ý VIEW của mình có phải Updatable View hay không.
-- => Nếu có thì nên GRANT quyền cho User chỉ được phép SELECT trên VIEW
-- để tránh trường hợp đáng tiệc.

-- ***Các yêu cầu để tạo VIEW có thể cập nhật:***
-- Danh sách lựa chọn không thể bao gồm mệnh đề DISTINCT hoặc TOP
-- Danh sách lựa chọn không thể bao gồm 1 hàm tổng hợp.
-- Danh sách lựa chọn không thể bao gồm 1 giá trị đc tính toán.
-- Câu lệnh SELECT không thể bao gồm mệnh đề GROUP BY và HAVING.
-- VIEW không thể bao gồm toán tử UNION

-- ***Partition View***: VIEW có dạng sau đgl Partition View 
-- (Trong đó T1, T2,..., Tn là các bảng có thể ở nhiều Server khác nhau)
-- VD:
-- SELECT <select_list1>
-- FROM T1
-- UNION ALL
-- SELECT <select_list2>
-- FROM T2
-- UNION ALL
-- ...
-- SELECT <select_listn>
-- FROM Tn

-- ***Cách xem VIEW***:
-- VD:
-- 1/ EXEC sp_helptext ViewBaseTable
-- 2/ PRINT object_definition(object_id('uvw_TestTable'))

-- ***WITH CHECK OPTION***: là 1 lựa chọn trong 1 bảng tạo VIEW.
-- Giúp đảm bảo tất cả các UPDATE và INSERT thỏa 1 số điều kiến trong định nghĩa VIEW.
-- Nếu không thỏa, UPDATE và INSERT sẽ trả về lỗi.
-- VD:
-- CREATE VIEW Customer_View AS
-- SELECT name, age
-- FROM Customers
-- WHERE age IS NOT NULL
-- WITH CHECK OPTION;
-- => Chỉ cho phép UPDATE và INSERT vào bảng nếu age khác NULL.
-- => Không nên UPDATE qua VIEW