USE [demo]
GO
/****** Object:  Table [dbo].[Chi_tiet_HD_Nhap]    Script Date: 11/7/2023 4:42:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chi_tiet_HD_Nhap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_HD_nhap] [int] NULL,
	[Ma_May_Tinh] [int] NULL,
	[So_luong] [int] NULL,
	[Don_gia] [decimal](10, 2) NULL,
	[Thanh_Tien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[May_Tinh]    Script Date: 11/7/2023 4:42:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[May_Tinh](
	[Id] [int] NOT NULL,
	[Ten_May_Tinh] [nvarchar](255) NULL,
	[Don_Vi_Tinh] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhan_Vien]    Script Date: 11/7/2023 4:42:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhan_Vien](
	[Ma_Nhan_Vien] [int] NOT NULL,
	[Ten_Nhan_Vien] [nvarchar](255) NULL,
	[Gioi_Tinh] [nvarchar](255) NULL,
	[Dia_Chi] [nvarchar](255) NULL,
	[So_Dien_Thoai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_Nhan_Vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khach_Hang]    Script Date: 11/7/2023 4:42:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khach_Hang](
	[Ma_Khach_Hang] [int] NOT NULL,
	[Ten_Khach_Hang] [nvarchar](255) NULL,
	[Gioi_Tinh] [nvarchar](255) NULL,
	[Dia_Chi] [nvarchar](255) NULL,
	[So_Dien_Thoai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_Khach_Hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HD_nhap]    Script Date: 11/7/2023 4:42:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HD_nhap](
	[Id] [int] NOT NULL,
	[Ngay] [date] NULL,
	[So_Hoa_Don] [nvarchar](255) NULL,
	[Ngay_Hoa_Don] [date] NULL,
	[Nguoi_Giao] [nvarchar](255) NULL,
	[Ma_Nhan_Vien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chi_tiet_HD_Nhap]  WITH CHECK ADD FOREIGN KEY([Id_HD_nhap])
REFERENCES [dbo].[HD_nhap] ([Id])
GO
ALTER TABLE [dbo].[Chi_tiet_HD_Nhap]  WITH CHECK ADD FOREIGN KEY([Ma_May_Tinh])
REFERENCES [dbo].[May_Tinh] ([Id])
GO
ALTER TABLE [dbo].[Phieu_nhap]  WITH CHECK ADD FOREIGN KEY([Ma_Nhan_Vien])
REFERENCES [dbo].[Kho] ([Ma_Nhan_Vien])
GO
