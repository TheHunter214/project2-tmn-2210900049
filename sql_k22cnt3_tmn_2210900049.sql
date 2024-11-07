CREATE DATABASE K22CNT3_TMN_Project2;
GO

USE K22CNT3_TMN_Project2;
GO

-- Bảng KhachHang
CREATE TABLE KhachHang (
    MaKhachHang INT PRIMARY KEY IDENTITY,
    TenKhachHang NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    MatKhau NVARCHAR(100) NOT NULL,
    DiaChi NVARCHAR(255),
    SoDienThoai NVARCHAR(15),
    NgayDangKy DATETIME DEFAULT GETDATE()
);
GO
-- Thêm dữ liệu vào bảng KhachHang
INSERT INTO KhachHang (TenKhachHang, Email, MatKhau, DiaChi, SoDienThoai, NgayDangKy)
VALUES ('Ngo Minh', 'minhngo@gmail.com', '123', 'Dong Anh', '0987654321', '2024-10-01');
INSERT INTO KhachHang (TenKhachHang, Email, MatKhau, DiaChi, SoDienThoai, NgayDangKy)
VALUES ('Le Long', 'lelong@gmail.com', '321', 'Dong Anh', '0987675841', '2024-09-12');
GO
-- Bảng QuanTriVien
CREATE TABLE QuanTriVien (
    MaQuanTriVien INT PRIMARY KEY IDENTITY,
    TenQuanTriVien NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    MatKhau NVARCHAR(100) NOT NULL,
    VaiTro NVARCHAR(50) DEFAULT 'Admin'
);
GO
-- Thêm dữ liệu vào bảng QuanTriVien
INSERT INTO QuanTriVien (TenQuanTriVien, Email, MatKhau, VaiTro)
VALUES ('NamKun', 'namkovui@gmail.com', 'nam123', 'quan ly');
INSERT INTO QuanTriVien (TenQuanTriVien, Email, MatKhau, VaiTro)
VALUES ('PhucDu', 'phucdu@gmail.com', 'phuc204', 'quan ly');
GO
-- Bảng SanPham
CREATE TABLE SanPham (
    MaSanPham INT PRIMARY KEY IDENTITY,
    TenSanPham NVARCHAR(100) NOT NULL,
    LoaiSanPham NVARCHAR(50),
    Gia DECIMAL(18, 2) NOT NULL,
    MoTa NVARCHAR(MAX),
    SoLuongTon INT DEFAULT 0
);
GO
-- Thêm dữ liệu vào bảng SanPham
INSERT INTO SanPham (TenSanPham, LoaiSanPham, Gia, MoTa, SoLuongTon)
VALUES ('Dong ho Rolex', 'Cao cap', 50000000, 'Dong ho Rolex chinh hang, day da, chong nuoc .', 100);
INSERT INTO SanPham (TenSanPham, LoaiSanPham, Gia, MoTa, SoLuongTon)
VALUES ('Dong ho Casio', 'Pho thong', 2000000, 'Dong ho Rolex phong cach cho nam gioi.', 50);
GO
-- Bảng DonHang
CREATE TABLE DonHang (
    MaDonHang INT PRIMARY KEY IDENTITY,
    MaKhachHang INT NOT NULL,
    NgayDatHang DATETIME DEFAULT GETDATE(),
    TongTien DECIMAL(18, 2) NOT NULL,
    TrangThai NVARCHAR(50) DEFAULT 'Đang xử lý',
    FOREIGN KEY (MaKhachHang) REFERENCES KhachHang(MaKhachHang)
);
GO
-- Thêm dữ liệu vào bảng DonHang
INSERT INTO DonHang (MaKhachHang, NgayDatHang, TongTien, TrangThai)
VALUES (1, '2024-11-01', 50000000, 'Da giao');
INSERT INTO DonHang (MaKhachHang, NgayDatHang, TongTien, TrangThai)
VALUES (2, '2024-11-02', 2000000, 'Cho xu ly');
GO
-- Bảng ChiTietDonHang
CREATE TABLE ChiTietDonHang (
    MaChiTiet INT PRIMARY KEY IDENTITY,
    MaDonHang INT NOT NULL,
    MaSanPham INT NOT NULL,
    SoLuong INT NOT NULL,
    Gia DECIMAL(18, 2) NOT NULL,
    FOREIGN KEY (MaDonHang) REFERENCES DonHang(MaDonHang),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham)
);
GO
-- Thêm dữ liệu vào bảng ChiTietDonHang
INSERT INTO ChiTietDonHang (MaDonHang, MaSanPham, SoLuong, Gia)
VALUES (1, 1, 1, 50000000);
INSERT INTO ChiTietDonHang (MaDonHang, MaSanPham, SoLuong, Gia)
VALUES (2, 2, 1, 2000000);
GO
SELECT * FROM SanPham;
SELECT * FROM KhachHang;
SELECT * FROM DonHang;
SELECT * FROM ChiTietDonHang;
SELECT * FROM QuanTriVien;
