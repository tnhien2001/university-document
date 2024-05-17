use CsdlDonDatHang;

-- Câu 1:
select	MH.MaMH, NCC.TenNCC, NCC.MaNCC
from	NHACUNGCAP as NCC, MATHANG as MH
where	(MH.MaNCC = NCC.MaNCC) and 
		(MH.DonGia > 20.00 and MH.TinhTrang = 1);

-- Câu 2: 
select	*
from	DONDATHANG
where	NgayDatHang between '2012-07-01' and '2012-07-31';

-- Câu 3: 
select	MaKH, HoTen, SoDT
from	KHACHHANG
where	HoTen like '% L%';

-- Câu 4:
select	NCC.TenNCC, MH.MaMH, MH.TenMH, MH.MaNCC, MH.DonGia, MH.TinhTrang
from	NHACUNGCAP as NCC, MATHANG as MH
where	MH.MaNCC = NCC.MaNCC and NCC.QuocGia = 'Germany';

-- Câu 5:
select	CTDDH.MaCT, CTDDH.MaDDH, CTDDH.MaMH, CTDDH.DonGia, CTDDH.SoLuong
from	CHITIETDDH as CTDDH, DONDATHANG as DDH, KHACHHANG as KH
where	(CTDDH.MaDDH = DDH.MaDDH and DDH.MaKH = KH.MaKH) and
		(KH.HoTen = 'Mario Pontes');

-- Câu 6:
select	DDH.MaDDH, DDH.NgayDatHang, KH.HoTen
from	MATHANG as MH, CHITIETDDH as CTDDH, DONDATHANG as DDH, KHACHHANG as KH
where	(CTDDH.MaMH = MH.MaMH and CTDDH.MaDDH = DDH.MaDDH) and
		(DDH.MaKH = KH.MaKH) and MH.TenMH = 'Manjimup Dried Apples';
