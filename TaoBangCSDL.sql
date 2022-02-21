CREATE DATABASE QUANLYDIEMTHI;

use quanlydiemthi;

CREATE TABLE HocSinh(
MaHS varchar (20) primary key,
TenHS varchar (50),
NgaySinh datetime,
Lop varchar (50),
GT varchar (50)
);

CREATE TABLE MonHoc(
MaMH varchar(20) primary key,
TenMH varchar (50),
MaGV varchar (50)
);

Create table BangDiem (
MaHS VARCHAR(20),
    MaMH VARCHAR(20),
    DiemThi INT,
    NgayKT DATETIME,
    PRIMARY KEY (MaHS, MaMH),
    FOREIGN KEY (MaHS) REFERENCES HocSinh(MaHS),
    FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
);
create table GiaoVien(
MaGV varchar (20) primary key,
TenGV varchar (50),
SDT varchar (11)
);
-- chỉnh sửa lại bảng MonHoc bổ sung thêm trường MaGV là khoá ngoại của môn học.
Alter table MonHoc Add MaGV varchar ( 20);
ALTER TABLE MonHoc ADD CONSTRAINT FK_MaGV FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV);