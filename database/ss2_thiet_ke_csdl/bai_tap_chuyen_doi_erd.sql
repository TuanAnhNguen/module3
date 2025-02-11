create database chuyen_doi_erd;
use chuyen_doi_erd;

create table phieu_xuat (
	soPX int primary key auto_increment,
    ngayXuat date not null
);

create table vat_tu (
	maVTu int primary key,
	tenVTu varchar(100) not null
);

create table phieu_nhap (
	soPN int primary key auto_increment,
    ngayNhap date not null
);

create table nha_cung_cap (
	maNCC int primary key,
    tenNCC varchar(100) not null,
    diaChi varchar(100),
    sdt varchar(10)
);

create table don_dat_hang (
	soDH int primary key auto_increment,
    ngayDH date not null
);

create table chi_tiet_phieu_xuat (
	soPX int not null,
    dgXuat int not null,
    slXuat int not null,
    primary key (soPX, dgXuat),
    foreign key (soPX) references phieu_xuat(soPX),
    foreign key (dgXuat) references vat_tu(maVTu)
);

create table chi_tiet_phieu_thu (
	soPN int not null,
    dgNhap int not null,
    slNhap int not null,
    primary key (soPN, dgNhap),
    foreign key (soPN) references phieu_nhap(soPN),
    foreign key (dgNhap) references vat_tu(maVTu)
);

create table chi_tiet_dat_hang (
	soDH int not null,
    dgDatHang int not null,
    slDatHang int not null,
    primary key (soDH, dgDatHang),
    foreign key (soDH) references don_dat_hang(soDH),
    foreign key (dgDatHang) references vat_tu(maVTu)
);