use CsdlDonDatHang;

-- Câu 1:
select	MH.MaMH, MH.TenMH, MH.DonGia, avg(MH.DonGia) as 'Đơn giá đặt hàng trung bình', sum(CTDDH.SoLuong) as 'Tổng số lượng'
from	MATHANG as MH, CHITIETDDH as CTDDH, DONDATHANG as DDH
where	(CTDDH.MaMH = MH.MaMH and CTDDH.MaDDH = DDH.MaDDH) and
		(DDH.NgayDatHang between '2012-07-01' and '2012-07-31')
group by MH.MaMH, MH.TenMH, MH.DonGia;


-- Câu 2:
select	KH.MaKH, KH.HoTen, KH.DiaChi, KH.ThanhPho, KH.QuocGia, KH.SoDT
from	KHACHHANG as KH, DONDATHANG as DDH
where	DDH.MaKH = KH.MaKH
group by KH.MaKH, KH.HoTen, KH.DiaChi, KH.ThanhPho, KH.QuocGia, KH.SoDT 
having sum(DDH.TriGia) > 3000;


-- Câu 3:
select	KH.MaKH, KH.HoTen, sum(DDH.MaDDH) as 'Tổng số đơn đặt hàng'
from	KHACHHANG as KH, DONDATHANG as DDH
where	DDH.MaKH = KH.MaKH
group by KH.MaKH, KH.HoTen;


-- Câu 4: 
select	MH.MaMH, MH.TenMH
from	MATHANG as MH
where	MH.TinhTrang = 1 and not exists (select *
										 from CHITIETDDH as CTDDH
										 where CTDDH.MaMH = MH.MaMH and MH.TinhTrang = 1);


-- Câu 5: 
select NCC.MaNCC, NCC.TenNCC
from NHACUNGCAP as NCC, MATHANG as MH , CHITIETDDH as CTDDH
where (NCC.MaNCC = MH.MaNCC) and (MH.MaMH =  CTDDH.MaMH) and CTDDH.SoLuong in (select SoLuong from CHITIETDDH group by SoLuong having sum(Soluong) >=all (select sum(Soluong)
				                          from CHITIETDDH
										  group by Soluong));


-- Câu 6:
select	KH.MaKH, KH.HoTen, KH.DiaChi, KH.ThanhPho, KH.QuocGia, KH.SoDT, max(DDH.TriGia) 'Khách hàng có đơn đặt giá trị lớn nhất'
from	KHACHHANG as KH, DONDATHANG as DDH
where	DDH.MaKH = KH.MaKH and KH.QuocGia = 'Brazil'
group by KH.MaKH, KH.HoTen, KH.DiaChi, KH.ThanhPho, KH.QuocGia, KH.SoDT;

