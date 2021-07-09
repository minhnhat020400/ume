CREATE DATABASE Sales  
ON   
( NAME = Sales_dat,  
    FILENAME = 'D:\DoAn\DoAnWeb\saledat.mdf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 )  
LOG ON  
( NAME = Sales_log,  
    FILENAME = 'D:\DoAn\DoAnWeb\salelog.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB ) ;  
GO  

Create table [tai_khoan]
(
	[ma_tk] Varchar(200) NOT NULL,
	[ten_tk] Nvarchar(1) NOT NULL,
	[ngay_gio_lap] Datetime NOT NULL,
	[email] Varchar(200) NOT NULL,
	[mat_khau] Varchar(1) NOT NULL,
	[admin] Bit Default 0 NOT NULL,
Constraint [pk_tai_khoan] Primary Key ([ma_tk])
) 
go

Create table [nguoi_dung]
(
	[ngay_sinh] Datetime NULL,
	[gioi_tinh] Bit Default 1 NOT NULL,
	[trang_thai] Nvarchar(50) Default N'offline' NOT NULL,
	[so_dien_thoai] Varchar(11) NULL, UNIQUE ([so_dien_thoai]),
	[dia_chi] Nvarchar(200) NULL,
	[avatar] Varchar(3000) Default 'https://firebasestorage.googleapis.com/v0/b/mychat-72662.appspot.com/o/PostImage%2F0866038546?alt=media&token=317885a9-3308-40a7-a7ec-9199b64f4b0a' NOT NULL,
	[nick_name] Nvarchar(100) NOT NULL,
	[ma_tk] Varchar(200) NOT NULL,
Constraint [pk_nguoi_dung] Primary Key ([ma_tk])
) 
go

Create table [ban_be]
(
	[id_ban] Varchar(200) NOT NULL,
	[ma_tk] Varchar(200) NOT NULL,
	[trang_thai] Nvarchar(1) Default N'send add friend request' NOT NULL,
Constraint [pk_ban_be] Primary Key ([id_ban],[ma_tk])
) 
go

Create table [box_chat]
(
	[ma_tk] Varchar(200) NOT NULL,
	[id_tk_chat] Varchar(200)  NOT NULL,
	[this] Bit Default 0 NOT NULL,
	[avarta_boxchat] Varchar(1000) NOT NULL,
Constraint [pk_box_chat] Primary Key ([ma_tk],[id_tk_chat])
) 
go

Create table [mess]
(
	[id_mess] Bigint Identity(1,1) NOT NULL,
	[ma_tk] Varchar(200) NOT NULL,
	[id_tk_chat] Varchar(200) NOT NULL,
	[noi_dung] Nvarchar(3000) NOT NULL,
	[trang_thai] Nvarchar(50) Default N'sending' NOT NULL,
Constraint [pk_mess] Primary Key ([id_mess])
) 
go

Create table [binh_luan]
(
	[id_binh_luan] Bigint Identity(1,1) NOT NULL,
	[noi_dung_binh_luan] Char(1) NULL,
	[trang_thai_binh_luan] Char(1) NULL,
	[video] Char(1) NULL,
	[hinh_anh] Char(1) NULL,
	[id_bai_viet] Integer NOT NULL,
	[ma_tk] Varchar(200) NOT NULL,
Constraint [pk_binh_luan] Primary Key ([id_binh_luan])
) 
go

Create table [bai_viet]
(
	[id_bai_viet] Integer Identity(1,1) NOT NULL,
	[noi_dung] Nvarchar(3000) NULL,
	[hinh_anh] Varchar(500) NULL,
	[video] Varchar(500) NULL,
	[tong_like] Integer Default 0 NOT NULL,
	[tong_binh_luan] Integer Default 0 NOT NULL,
	[ngay_gioi_dang] Datetime NOT NULL,
	[trang_thai] Nvarchar(1) Default N'posting' NOT NULL,
	[ma_tk] Varchar(200) NOT NULL,
Constraint [pk_bai_viet] Primary Key ([id_bai_viet])
) 
go

Create table [like]
(
	[id_like] Integer NOT NULL,
	[id_loai] Integer Default 1 NOT NULL,
	[id_bai_viet] Integer NOT NULL,
Constraint [pk_like] Primary Key ([id_like])
) 
go

Create table [loai_like]
(
	[id_loai] Integer Identity(1,1) NOT NULL,
	[ten_loai] Char(20) NOT NULL,
Constraint [pk_loai_like] Primary Key ([id_loai])
) 
go
use mechat
 select * from dbo.bai_viet


