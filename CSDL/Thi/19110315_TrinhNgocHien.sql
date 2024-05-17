use Csdl_Sach;

-- Câu 1:
select	SA.TenSA, SA.ISBN, SA.XepHang, NXB.TenNXB
from	SACH as SA, NHAXUATBAN as NXB
where	SA.MaNXB = NXB.MaNXB and 
		SA.XepHang between 4 and 5;


-- Câu 2:
select	SA.TenSA, SA.ISBN, NXB.TenNXB, SA.NgayXuatBan
from	SACH as SA, NHAXUATBAN as NXB 
where	SA.MaNXB = NXB.MaNXB and 
		SA.NgayXuatBan between '1990-01-01'and '2000-01-01';

-- Câu 3:
select	NXB.TenNXB, sum(SA.MaSA) as 'Tong so dau sach'
from	SACH as SA, NHAXUATBAN as NXB
where	SA.MaNXB = NXB.MaNXB and SA.NgayXuatBan between '2010-01-01'and '2010-12-31'
group by NXB.TenNXB;


-- Câu 4:
select	NXB.TenNXB, sum(SA.MaSA) as 'Tong so dau sach'
from	(SACH as SA join NHAXUATBAN as NXB on SA.MaNXB = NXB.MaNXB)
group by TenNXB
having	count(*) >= 5;


-- Câu 5:
select	DISTINCT(NXB.TenNXB)
from	NHAXUATBAN as NXB, SACH as SA
where	SA.MaNXB = NXB.MaNXB and NXB.MaNXB not in (select MaNXB
												   from	SACH
												   where NgayXuatBan between '2015-01-01'and '2015-12-31');
					  

