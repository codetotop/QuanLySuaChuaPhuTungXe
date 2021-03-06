use master
go 
create database SuaChuaPhuTungXeMay
go
use SuaChuaPhuTungXeMay

create table NguyenNhan
(
MaNguyenNhan nvarchar(30)not null primary key,
TenNguyenNhan nvarchar(30)not null,
)
insert into NguyenNhan values('nn1',N'Thủng xăm')
insert into NguyenNhan values('nn2',N'Đứt phanh tay trước')
insert into NguyenNhan values('nn3',N'Xe đảo vành')
insert into NguyenNhan values('nn4',N'Xe đi nhanh hao xăng')
insert into NguyenNhan values('nn5',N'Vỡ yếm xe')
insert into NguyenNhan values('nn6',N'Trùng xích')
insert into NguyenNhan values('nn7',N'Phanh sau không ăn')
insert into NguyenNhan values('nn8',N'Vỡ gương')
delete from NguyenNhan
select *from NguyenNhan

create table GiaiPhap
(
MaGiaiPhap nvarchar(30)not null primary key,
TenGiaiPhap nvarchar(30),
)
insert into GiaiPhap values('gp1',N'Cân lại vành bánh')
insert into GiaiPhap values('gp2',N'Cắt ngắn xích')
insert into GiaiPhap values('gp3',N'Thay xích mới')
insert into GiaiPhap values('gp4',N'Thay gương mới')
insert into GiaiPhap values('gp5',N'Vá xăm')
insert into GiaiPhap values('gp6',N'Thay xăm mới')
insert into GiaiPhap values('gp7',N'Thay phanh trước')
insert into GiaiPhap values('gp8',N'Chỉnh lại phanh sau')
insert into GiaiPhap values('gp9',N'Thay yếm')
insert into GiaiPhap values('gp10',N'Chỉnh lại chế xăng')
select *from GiaiPhap

create table KhachHang
(
MaKhach nvarchar(30)not null primary key,
TenKhach nvarchar(30)not null,
DiaChi nvarchar(50),
SoDienThoai nvarchar(20),
)
insert into KhachHang values('kh1',N'Nguyễn văn huy',N'Hải dương','0968456345')
insert into KhachHang values('kh2',N'Lê văn lương',N'Hà nội','01658772468')
insert into KhachHang values('kh3',N'Hoàng chí tài',N'Hà nội','0945672832')
insert into KhachHang values('kh4',N'Lê văn luyện',N'Đà nẵng','01658224537')
insert into KhachHang values('kh5',N'Trần sang',N'An Giang','0956456753')
insert into KhachHang values('kh6',N'Nguyễn văn quang',N'Đồng tháp','0968534627')
insert into KhachHang values('kh7',N'Đinh thế chính',N'Hà nội','0984059829')
insert into KhachHang values('kh8',N'Đỗ hữu mạnh',N'Hà nội','0968536416')
insert into KhachHang values('kh9',N'Đỗ hữu khải',N'Hà Nội','0965456542')
insert into KhachHang values('kh10',N'Nguyễn văn bảo',N'Hải phòng','0965466235')
delete from KhachHang
select *from KhachHang

create table TrinhDo
(
MaTrinhDo nvarchar(30) not null primary key,
TenTrinhDo nvarchar(30),
)
insert into TrinhDo values('td1','A')
insert into TrinhDo values('td2','B')
insert into TrinhDo values('td3','C')
insert into TrinhDo values('td4','D')
insert into TrinhDo values('td5','E')
delete from TrinhDo
select *from TrinhDo

create table NhanVien
(
MaNhanVien nvarchar(30) not null primary key,
TenNhanVien nvarchar(30)not null,
NgaySinh datetime,
MaTrinhDo nvarchar(30),
Constraint NhanVien_TrinhDo foreign key (MaTrinhDo) references TrinhDo(MaTrinhDo),
)
drop table NhanVien
alter table NhanVien add DiaChi nvarchar(50)
alter table NhanVien add SoDienThoai nvarchar(20)
Alter table NhanVien Add Pass nvarchar(20) not null
SET DATEFORMAT DMY
--SELECT CONVERT (nvarchar(50), getdate(), 103)
insert into NhanVien values('nv1',N'Nguyễn văn giang','1993/10/5','td3',N'Hà nội','0984234574','admin1')
insert into NhanVien values('nv2',N'Nguyễn văn quân','12/3/1990','td3',N'Thanh hóa','0946142364','admin2')
insert into NhanVien values('nv3',N'Lê văn đạt','12/4/1989','td3',N'Hà nội','01657642456','admin3')
insert into NhanVien values('nv4',N'Dương chí hoàng','5/4/1975','td1',N'Hà nội','0946536743','admin4')
insert into NhanVien values('nv5',N'Hoàng văn thao','15/2/1980','td2',N'Hải dương','01658552375','admin5') 
insert into NhanVien values('nv6',N'Nguyễn văn luyện','20/5/1996','td5',N'Hà nội','0986242563','admin6')
insert into NhanVien values('nv7',N'Đinh văn đạt','23/4/1994','td4',N'Hà nội','01645437624','admin7')
delete from NhanVien
select *from NhanVien

create table LoaiXe
(
MaLoai nvarchar(30) not null primary key,
TenLoai nvarchar(30),
)
insert into LoaiXe values('l1',N'Xe gắn máy')
insert into LoaiXe values('l2',N'Xe ga')
insert into LoaiXe values('l3',N'Xe máy điện')
insert into LoaiXe values('l4',N'Xe máy')
select *from LoaiXe
delete from LoaiXe

create table MauSac
(
 MaMau nvarchar(30)not null primary key,
 TenMau nvarchar(30),
)
insert into MauSac values('ms1',N'Vàng')
insert into MauSac values('ms2',N'Đỏ')
insert into MauSac values('ms3',N'Nâu')
insert into MauSac values('ms4',N'Đen')
insert into MauSac values('ms5',N'Trắng')
insert into MauSac values('ms6',N'Xanh')
select *from MauSac
delete from MauSac

create table XeMay
(
 MaXe nvarchar(30)not null primary key,
 TenXe nvarchar(50),
 MaLoai nvarchar(30) not null,
 SoKhung nvarchar(30),
 SoMay nvarchar(30),
 BienSo nvarchar(30),
 MaMau nvarchar(30)not null,
 Constraint XeMay_LoaiXe foreign key (MaLoai) references LoaiXe(MaLoai),
 Constraint XeMay_MauSac foreign key (MaMau) references MauSac(MaMau),
)
insert into XeMay values('mx1',N'Sirius','l4',N'Số khung 1',N'Số máy 1','2843','ms2')
insert into XeMay values('mx2',N'Wave S','l4',N'Số khung 2',N'Số máy 2','9763','ms5')
insert into XeMay values('mx3',N'Sirius','l4',N'Số khung 3',N'Số máy 3','88642','ms5')
insert into XeMay values('mx4',N'liberty','l2',N'Số khung 4',N'Số máy 4','6742','ms3')
insert into XeMay values('mx5',N'SH','l2',N'Số khung 5',N'Số máy 5','9981','ms4')
insert into XeMay values('mx6',N'Honda Dream','l4',N'Số khung 6',N'Số máy 6','22467','ms3')
insert into XeMay values('mx7',N'Wave alpha','l4',N'Số khung 7',N'Số máy 7','28436','ms6')
insert into XeMay values('mx8',N'Honda club 82','l1',N'Số khung 8',N'Số máy 8','3562','ms6')
insert into XeMay values('mx9',N'Vespa roma','l3',N'Số khung 9',N'Số máy 9','34532','ms1')
select *from XeMay
delete from XeMay

create table LoaiPhuTung
(
MaLoai nvarchar(30) not null primary key,
TenLoai nvarchar(30) ,
)
insert into LoaiPhuTung values('lpt1',N'Trung quốc')
insert into LoaiPhuTung values('lpt2',N'Nhật')
insert into LoaiPhuTung values('lpt3',N'Việt nam')
insert into LoaiPhuTung values('lpt4',N'Thái lan')
select *from LoaiPhuTung
delete from LoaiPhuTung

create table PhuTung
(
MaPhuTung nvarchar(30) not null primary key,
TenPhuTung nvarchar(30) not null,
SoLuong int,
DonGiaNhap money,
DonGiaban money,
MaLoai nvarchar(30),
Constraint PhuTung_LoaiPhuTung foreign key (MaLoai) references LoaiPhuTung(MaLoai),
)
select *from PhuTung
alter table PhuTung alter column DonGiaNhap float
alter table PhuTung alter column DonGiaBan float
insert into PhuTung values('pt1',N'Bô xe','15',1200000,1400000,'lpt2')
insert into PhuTung values('pt2',N'Gương chiếu hậu',20,50000,100000,'lpt1')
insert into PhuTung values('pt3',N'Lốp',10,400000,600000,'lpt4')
insert into PhuTung values('pt4',N'Còi',20,100000,150000,'lpt3')
insert into PhuTung values('pt5',N'Dây phanh',20,60000,100000,'lpt3')
insert into PhuTung values('pt6',N'IC',15,700000,1000000,'lpt1')
insert into PhuTung values('pt7',N'Lọc gió',20,60000,100000,'lpt3')
insert into PhuTung values('pt8',N'Má phanh trước',20,50000,80000,'lpt1')
insert into PhuTung values('pt9',N'Má phanh sau',20,50000,80000,'lpt1')
insert into PhuTung values('pt10',N'Đĩa phanh',15,450000,550000,'lpt3')
insert into PhuTung values('pt11',N'Dây công tơ mét',10,120000,150000,'lpt4')
insert into PhuTung values('pt12',N'Dây ga',20,100000,150000,'lpt2')
insert into PhuTung values('pt13',N'Ắc quy',10,250000,320000,'lpt4')
insert into PhuTung values('pt14',N'Xích cam',10,160000,200000,'lpt2')
insert into PhuTung values('pt15',N'Bộ khóa xe',20,300000,400000,'lpt4')
insert into PhuTung values('pt16',N'Cánh yếm phải',10,150000,200000,'lpt2')
insert into PhuTung values('pt17',N'Cánh yếm trái',20,150000,200000,'lpt2')
select *from PhuTung
delete from PhuTung

create table YeuCauSuaChua
(
 MaSuaChua nvarchar(30) not null primary key,
 MaXe nvarchar(30) not null,
 MaKhach nvarchar(30) not null,
 NgaySua datetime,
 MaNguyenNhan nvarchar(30) not null,
 MaGiaiPhap nvarchar(30) not null,
 MaNhanVien nvarchar(30) not null,
 TongTien money,
 Constraint YeuCauSuaChua_XeMay foreign key (MaXe) references XeMay(MaXe),
 Constraint YeuCauSuaChua_KhachHang foreign key (MaKhach) references KhachHang(MaKhach),
 Constraint YeuCauSuaChua_NguyenNhan foreign key (MaNguyenNhan) references NguyenNhan(MaNguyenNhan),
 Constraint YeuCauSuaChua_GiaiPhap foreign key (MaGiaiPhap) references GiaiPhap(MaGiaiPhap),
 Constraint YeuCauSuaChua_NhanVien foreign key (MaNhanVien) references NhanVien(MaNhanVien),
 
 --ON DELETE CASCADE
 --ON UPDATE CASCADE
)
alter table YeuCauSuaChua alter column NgaySua date
alter table YeuCauSuaChua alter column TongTien float
-- 1,5,6 2,7 3,1 4,10 5,9 6:2,3 7,8 8,4
set dateformat dmy
insert into YeuCauSuaChua values('msc1','mx2','kh5','3/2/2016','nn6','gp3','nv2',300000)
insert into YeuCauSuaChua values('msc2','mx3','kh3','3/2/2016','nn6','gp2','nv1',50000)
insert into YeuCauSuaChua values('msc3','mx4','kh2','3/2/2016','nn8','gp4','nv3',120000)
insert into YeuCauSuaChua values('msc4','mx5','kh1','4/5/2016','nn1','gp5','nv4',30000)
insert into YeuCauSuaChua values('msc5','mx1','kh4','4/2/2016','nn2','gp7','nv2',150000)
insert into YeuCauSuaChua values('msc6','mx6','kh6','5/2/2016','nn7','gp8','nv6',50000)
insert into YeuCauSuaChua values('msc7','mx7','kh7','12/4/2016','nn3','gp1','nv3',100000)
insert into YeuCauSuaChua values('msc8','mx8','kh8','15/4/2016','nn7','gp8','nv4',50000)
insert into YeuCauSuaChua values('msc9','mx4','kh9','6/5/2016','nn5','gp9','nv3',250000)
select *from YeuCauSuaChua
delete from YeuCauSuaChua

create table HoaDonNhapPhuTung
(
 MaHDN nvarchar(30) not null primary key,
 NgayNhap datetime,
 MaNhanVien nvarchar(30) not null,
 TongTien money,
 Constraint HoaDonNhapPhuTung_NhanVien foreign key (MaNhanVien) references NhanVien(MaNhanVien),
)
alter table HoaDonNhapPhuTung alter column NgayNhap date
alter table HoaDonNhapPhuTung alter column TongTien float
insert into HoaDonNhapPhuTung values('hdn1','26/2/2016','nv1','12000000')
insert into HoaDonNhapPhuTung values('hdn2','12/6/2016','nv2','8000000')
insert into HoaDonNhapPhuTung values('hdn3','10/9/2016','nv3','10000000')
insert into HoaDonNhapPhuTung values('hdn4','2/11/2016','nv4','5000000')
insert into HoaDonNhapPhuTung values('hdn5','23/12/2016','nv5','4000000')
select *from HoaDonNhapPhuTung
delete from HoaDonNhapPhuTung

create table ChiTietHDN
(
MaHDN nvarchar(30) not null,
MaPhuTung nvarchar(30) not null,
SoLuong int,
DonGiaNhap money,
ThanhTien money,
PRIMARY KEY (MaHDN,MaPhuTung),
Constraint ChiTietHoaDon_HoaDonNhapPhuTung foreign key (MaHDN) references HoaDonNhapPhuTung(MaHDN),
Constraint ChiTietHDN_PhuTung foreign key (MaPhuTung) references PhuTung(MaPhuTung),
)
alter table ChiTietHDN alter column DonGiaNhap float
alter table ChiTietHDN alter column ThanhTien float
insert into ChiTietHDN values('hdn1','pt1',3,1200000,3600000)
insert into ChiTietHDN values('hdn1','pt2',10,50000,500000)
insert into ChiTietHDN values('hdn2','pt1',5,1200000,6000000)
insert into ChiTietHDN values('hdn2','pt2',10,50000,500000)
insert into ChiTietHDN values('hdn2','pt7',10,60000,600000)
insert into ChiTietHDN values('hdn3','pt1',4,1200000,4800000)
select *from ChiTietHDN
delete from ChiTietHDN

create table SuaChuaPhuTung
(
MaSuaChua nvarchar(30) not null,
MaPhuTung nvarchar (30) not null,
SoLuong int,
ThanhTien money,
PRIMARY KEY (MaSuaChua,MaPhuTung),
Constraint SuaChuaPhuTung_YeuCauSuaChua foreign key (MaSuaChua) references YeuCauSuaChua(MaSuaChua),
Constraint SuaChuaPhuTung_PhuTung foreign key (MaPhuTung) references PhuTung(MaPhuTung),
)
alter table SuaChuaPhuTung alter column ThanhTien float
insert into SuaChuaPhuTung values('msc1','pt1',3,4800000)
insert into SuaChuaPhuTung values('msc2','pt2',4,400000)
insert into SuaChuaPhuTung values('msc3','pt3',5,3000000)
insert into SuaChuaPhuTung values('msc4','pt4',10,1000000)
select *from SuaChuaPhuTung
delete from SuaChuaPhuTung