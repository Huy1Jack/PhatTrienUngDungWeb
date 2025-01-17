USE [wood]
GO
/****** Object:  Table [dbo].[tb_News]    Script Date: 26-Oct-24 9:28:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_News](
	[NewID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[CategoryId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](255) NULL,
	[SeoTitle] [nvarchar](255) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoKeywords] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_tb_News] PRIMARY KEY CLUSTERED 
(
	[NewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Product]    Script Date: 26-Oct-24 9:28:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Alias] [nvarchar](255) NULL,
	[CategoryProductId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](255) NULL,
	[Price] [decimal](18, 2) NULL,
	[PriceSale] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[IsNew] [bit] NULL,
	[IsBestSeller] [bit] NULL,
	[UnitInStock] [int] NULL,
	[IsActive] [bit] NULL,
	[Star] [decimal](3, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductCategory]    Script Date: 26-Oct-24 9:28:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductCategory](
	[CategoryProductId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Alias] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Icon] [nvarchar](255) NULL,
	[Position] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductReview]    Script Date: 26-Oct-24 9:28:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductReview](
	[ProductReviewId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[Detail] [nvarchar](max) NULL,
	[Star] [decimal](3, 2) NULL,
	[ProductId] [int] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_News] ON 

INSERT [dbo].[tb_News] ([NewID], [Title], [CategoryId], [Description], [Detail], [Image], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Tin tức công nghệ mới nhất', 1, N'Tổng hợp những công nghệ mới ra mắt', N'Tổng hợp những công nghệ mới ra mắt', N'tt-1.png', N'Công nghệ mới 2024', N'Công nghệ mới 2024', N'Tổng hợp công nghệ AI', CAST(N'2024-10-20T00:00:00.000' AS DateTime), N'Admin', CAST(N'2024-10-20T00:00:00.000' AS DateTime), N'Admin', 1)
INSERT [dbo].[tb_News] ([NewID], [Title], [CategoryId], [Description], [Detail], [Image], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'Khuyến mãi tháng 10', 2, N'Nhiều ưu đãi giảm giá trong tháng 10', N'Giảm giá 50% các sản phẩm công nghệ...', N'tt-2.png', N'Khuyến mãi công nghệ', N'Ưu đãi đặc biệt tháng 10...', N'khuyến mãi, công nghệ', CAST(N'2024-10-20T00:00:00.000' AS DateTime), N'Admin', CAST(N'2024-10-20T00:00:00.000' AS DateTime), N'Admin', 1)
INSERT [dbo].[tb_News] ([NewID], [Title], [CategoryId], [Description], [Detail], [Image], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'Hướng dẫn sử dụng sản phẩm', 3, N'Cách sử dụng sản phẩm mới nhất', N'Hướng dẫn chi tiết cách sử dụng máy tính, điện thoại...', N'tt-3.png', N'Hướng dẫn sử dụng sản phẩm', N'Hướng dẫn sử dụng thiết bị công nghệ...', N'hướng dẫn, công nghệ, sản phẩm', CAST(N'2024-10-20T00:00:00.000' AS DateTime), N'Admin', CAST(N'2024-10-20T00:00:00.000' AS DateTime), N'Admin', 1)
INSERT [dbo].[tb_News] ([NewID], [Title], [CategoryId], [Description], [Detail], [Image], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, N'Xu hướng thị trường công nghệ', 4, N'Dự báo về xu hướng phát triển công nghệ.', N'Thị trường công nghệ toàn cầu đang thay đổi với AI...', N'tt-1.png', N'Xu hướng công nghệ 2024'', ''Xu hướng phát triển công nghệ mới nhất...', N'xu hướng, thị trường, công nghệ', N'xu hướng, thị trường, công nghệ', CAST(N'2024-10-20T00:00:00.000' AS DateTime), N'Admin', CAST(N'2024-10-20T00:00:00.000' AS DateTime), N'Admin', 1)
INSERT [dbo].[tb_News] ([NewID], [Title], [CategoryId], [Description], [Detail], [Image], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (5, N'Top sản phẩm bán chạy', 5, N'Danh sách các sản phẩm công nghệ bán chạy.', N'Top 5 sản phẩm được người tiêu dùng yêu thích...', N'tt-2.png', N'Top sản phẩm bán chạy', N'Danh sách sản phẩm hot nhất...', N'top sản phẩm, bán chạy, công nghệ', CAST(N'2024-10-20T00:00:00.000' AS DateTime), N'Admin', CAST(N'2024-10-20T00:00:00.000' AS DateTime), N'Admin', 1)
SET IDENTITY_INSERT [dbo].[tb_News] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Product] ON 

INSERT [dbo].[tb_Product] ([ProductId], [Title], [Alias], [CategoryProductId], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsNew], [IsBestSeller], [UnitInStock], [IsActive], [Star]) VALUES (1, N'Giường gỗ Châu Âu', N'giuong-go-chau-au', 1, N'Giu?ng g? phong cách Châu Âu', N'Giu?ng du?c làm t? g? s?i t? nhiên.', N'sp-1.png', CAST(8999000.00 AS Decimal(18, 2)), CAST(7999000.00 AS Decimal(18, 2)), 10, CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', 1, 1, 10, 1, CAST(4.50 AS Decimal(3, 2)))
INSERT [dbo].[tb_Product] ([ProductId], [Title], [Alias], [CategoryProductId], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsNew], [IsBestSeller], [UnitInStock], [IsActive], [Star]) VALUES (2, N'Tủ quần áo hiện đại', N'tu-quan-ao-hien-dai', 7, N'T? qu?n áo 4 cánh phong cách hi?n d?i', N'T? có ngan kéo và ngan treo d? r?ng rãi.', N'sp-2.png', CAST(5999000.00 AS Decimal(18, 2)), CAST(4999000.00 AS Decimal(18, 2)), 5, CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', 1, 0, 8, 1, CAST(4.80 AS Decimal(3, 2)))
INSERT [dbo].[tb_Product] ([ProductId], [Title], [Alias], [CategoryProductId], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsNew], [IsBestSeller], [UnitInStock], [IsActive], [Star]) VALUES (3, N'Bàn học Sinh', N'ban-hoc-sinh', 9, N'Bàn h?c sinh nh? g?n', N'Bàn h?c dành cho h?c sinh v?i thi?t k? hi?n d?i.', N'sp-3.png', CAST(1999000.00 AS Decimal(18, 2)), CAST(1499000.00 AS Decimal(18, 2)), 20, CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', 1, 1, 15, 1, CAST(4.70 AS Decimal(3, 2)))
INSERT [dbo].[tb_Product] ([ProductId], [Title], [Alias], [CategoryProductId], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsNew], [IsBestSeller], [UnitInStock], [IsActive], [Star]) VALUES (4, N'Sofa Góc Hiện Đại', N'sofa-goc-hien-dai', 5, N'Sofa góc cho phòng khách', N'Sofa êm ái v?i ch?t li?u v?i cao c?p.', N'sp-4.png', CAST(10999000.00 AS Decimal(18, 2)), CAST(8999000.00 AS Decimal(18, 2)), 8, CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', 1, 1, 12, 1, CAST(4.60 AS Decimal(3, 2)))
INSERT [dbo].[tb_Product] ([ProductId], [Title], [Alias], [CategoryProductId], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsNew], [IsBestSeller], [UnitInStock], [IsActive], [Star]) VALUES (5, N'Ghế xoay văn phòng', N'ghe-xoay-van-phong', 4, N'Gh? xoay ti?n l?i', N'Gh? xoay b?c da dành cho van phòng.', N'sp-1.png', CAST(1499000.00 AS Decimal(18, 2)), CAST(999000.00 AS Decimal(18, 2)), 50, CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', 1, 1, 30, 1, CAST(4.90 AS Decimal(3, 2)))
INSERT [dbo].[tb_Product] ([ProductId], [Title], [Alias], [CategoryProductId], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsNew], [IsBestSeller], [UnitInStock], [IsActive], [Star]) VALUES (6, N'Kệ sách gỗ', N'ke-sach-go', 10, N'K? sách g? s?i', N'K? sách da nang du?c làm t? g? s?i t? nhiên.', N'sp-2.png', CAST(2599000.00 AS Decimal(18, 2)), CAST(2099000.00 AS Decimal(18, 2)), 15, CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', 1, 0, 20, 1, CAST(4.20 AS Decimal(3, 2)))
INSERT [dbo].[tb_Product] ([ProductId], [Title], [Alias], [CategoryProductId], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsNew], [IsBestSeller], [UnitInStock], [IsActive], [Star]) VALUES (7, N'Giường tầng cho bé', N'giuong-tang-cho-be', 8, N'Giu?ng t?ng ti?n l?i cho bé', N'Giu?ng t?ng k?t h?p k? sách và t? d?.', N'sp-3.png', CAST(5999000.00 AS Decimal(18, 2)), CAST(5499000.00 AS Decimal(18, 2)), 7, CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', 1, 0, 5, 1, CAST(4.40 AS Decimal(3, 2)))
INSERT [dbo].[tb_Product] ([ProductId], [Title], [Alias], [CategoryProductId], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsNew], [IsBestSeller], [UnitInStock], [IsActive], [Star]) VALUES (8, N'Bàn ăn hiện đại ', N'ban-an-hien-dai', 3, N'Bàn an gia dình', N'Bàn an 6 gh? phong cách hi?n d?i.', N'sp-4.png', CAST(6999000.00 AS Decimal(18, 2)), CAST(6499000.00 AS Decimal(18, 2)), 12, CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', 1, 0, 8, 1, CAST(4.50 AS Decimal(3, 2)))
INSERT [dbo].[tb_Product] ([ProductId], [Title], [Alias], [CategoryProductId], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsNew], [IsBestSeller], [UnitInStock], [IsActive], [Star]) VALUES (9, N'Kệ giày đa năng', N'ke-giay-da-nang', 6, N'K? giày g?', N'K? giày g? s?i da nang.', N'sp-1.png', CAST(1999000.00 AS Decimal(18, 2)), CAST(1799000.00 AS Decimal(18, 2)), 30, CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', 1, 0, 25, 0, CAST(4.30 AS Decimal(3, 2)))
INSERT [dbo].[tb_Product] ([ProductId], [Title], [Alias], [CategoryProductId], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsNew], [IsBestSeller], [UnitInStock], [IsActive], [Star]) VALUES (10, N'Ghế gỗ phòng khách', N'ghe-go-phong-khach', 4, N'Gh? g? b?c n?m', N'Gh? g? phong cách hi?n d?i b?c n?m.', N'sp-2.png', CAST(2999000.00 AS Decimal(18, 2)), CAST(2499000.00 AS Decimal(18, 2)), 18, CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', CAST(N'2024-10-18T09:43:43.393' AS DateTime), N'admin', 1, 1, 10, 0, CAST(4.70 AS Decimal(3, 2)))
SET IDENTITY_INSERT [dbo].[tb_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] ON 

INSERT [dbo].[tb_ProductCategory] ([CategoryProductId], [Title], [Alias], [Description], [Icon], [Position], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Phòng Khách', N'Phòng Khách', N'Danh m?c các lo?i giu?ng', N'phong-khach.png', 1, CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', 1)
INSERT [dbo].[tb_ProductCategory] ([CategoryProductId], [Title], [Alias], [Description], [Icon], [Position], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'Phòng Ngủ', N'Phòng Ngủ', N'Danh m?c các lo?i t?', N'phong-ngu.png', 2, CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', 1)
INSERT [dbo].[tb_ProductCategory] ([CategoryProductId], [Title], [Alias], [Description], [Icon], [Position], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'Phòng Bếp', N'Phòng Bếp', N'Danh m?c các lo?i bàn', N'phong-bep.png', 3, CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', 1)
INSERT [dbo].[tb_ProductCategory] ([CategoryProductId], [Title], [Alias], [Description], [Icon], [Position], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, N'Phòng Tắm', N'Phòng Tắm', N'Danh m?c các lo?i gh?', N'phong-tam.png', 4, CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', 1)
INSERT [dbo].[tb_ProductCategory] ([CategoryProductId], [Title], [Alias], [Description], [Icon], [Position], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (5, N'Trẻ Em', N'Trẻ Em', N'Danh m?c các lo?i sofa', N'tre-em.png', 5, CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', 1)
INSERT [dbo].[tb_ProductCategory] ([CategoryProductId], [Title], [Alias], [Description], [Icon], [Position], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (6, N'Văn Phòng', N'Văn Phòng', N'Danh m?c các lo?i k?', N'van-phong.png', 6, CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', 1)
INSERT [dbo].[tb_ProductCategory] ([CategoryProductId], [Title], [Alias], [Description], [Icon], [Position], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (7, N'Cầu Thang', N'Cầu Thang', N'Danh m?c các lo?i t? qu?n áo', N'cau-thang.png', 7, CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', 1)
INSERT [dbo].[tb_ProductCategory] ([CategoryProductId], [Title], [Alias], [Description], [Icon], [Position], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (8, N'Đèn Trang Trí', N'Đèn Trang Trí', N'Danh m?c các lo?i giu?ng ng?', N'den-trang-tri.png', 8, CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', 1)
INSERT [dbo].[tb_ProductCategory] ([CategoryProductId], [Title], [Alias], [Description], [Icon], [Position], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (9, N'Bàn học', N'Bàn học', N'Danh m?c các lo?i bàn h?c', N'icon-study-table.png', 9, CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', 1)
INSERT [dbo].[tb_ProductCategory] ([CategoryProductId], [Title], [Alias], [Description], [Icon], [Position], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (10, N'Kệ Sách', N'Kệ Sách', N'Danh m?c các lo?i k? sách', N'icon-bookshelf.png', 10, CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', CAST(N'2024-10-18T09:42:22.963' AS DateTime), N'admin', 1)
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductReview] ON 

INSERT [dbo].[tb_ProductReview] ([ProductReviewId], [Name], [Phone], [Email], [CreatedDate], [Detail], [Star], [ProductId], [IsActive]) VALUES (1, N'Nguy?n Van A', N'0123456789', N'nguyenvana@gmail.com', CAST(N'2024-10-18T09:43:48.570' AS DateTime), N'S?n ph?m r?t t?t, tôi r?t hài lòng.', CAST(4.50 AS Decimal(3, 2)), 1, 1)
INSERT [dbo].[tb_ProductReview] ([ProductReviewId], [Name], [Phone], [Email], [CreatedDate], [Detail], [Star], [ProductId], [IsActive]) VALUES (2, N'Tr?n Th? B', N'0987654321', N'tranthib@gmail.com', CAST(N'2024-10-18T09:43:48.570' AS DateTime), N'Gh? r?t tho?i mái, ch?t li?u t?t.', CAST(4.80 AS Decimal(3, 2)), 5, 1)
INSERT [dbo].[tb_ProductReview] ([ProductReviewId], [Name], [Phone], [Email], [CreatedDate], [Detail], [Star], [ProductId], [IsActive]) VALUES (3, N'Lê Minh C', N'0912345678', N'leminhc@gmail.com', CAST(N'2024-10-18T09:43:48.570' AS DateTime), N'Giu?ng r?t ch?c ch?n và d?p.', CAST(4.60 AS Decimal(3, 2)), 1, 1)
INSERT [dbo].[tb_ProductReview] ([ProductReviewId], [Name], [Phone], [Email], [CreatedDate], [Detail], [Star], [ProductId], [IsActive]) VALUES (4, N'Hoàng Th? D', N'0945678901', N'hoangthid@gmail.com', CAST(N'2024-10-18T09:43:48.570' AS DateTime), N'S?n ph?m t?t, dúng mô t?.', CAST(4.70 AS Decimal(3, 2)), 3, 1)
INSERT [dbo].[tb_ProductReview] ([ProductReviewId], [Name], [Phone], [Email], [CreatedDate], [Detail], [Star], [ProductId], [IsActive]) VALUES (5, N'Ph?m Van E', N'0901234567', N'phamvane@gmail.com', CAST(N'2024-10-18T09:43:48.570' AS DateTime), N'Giá c? h?p lý, ch?t lu?ng t?t.', CAST(4.90 AS Decimal(3, 2)), 7, 1)
INSERT [dbo].[tb_ProductReview] ([ProductReviewId], [Name], [Phone], [Email], [CreatedDate], [Detail], [Star], [ProductId], [IsActive]) VALUES (6, N'Ð? Th? F', N'0934567890', N'dothif@gmail.com', CAST(N'2024-10-18T09:43:48.570' AS DateTime), N'Sofa êm và d?p, r?t hài lòng.', CAST(4.80 AS Decimal(3, 2)), 4, 1)
INSERT [dbo].[tb_ProductReview] ([ProductReviewId], [Name], [Phone], [Email], [CreatedDate], [Detail], [Star], [ProductId], [IsActive]) VALUES (7, N'Vu Van G', N'0912345678', N'vuvang@gmail.com', CAST(N'2024-10-18T09:43:48.570' AS DateTime), N'K? sách d?p, ch?c ch?n.', CAST(4.30 AS Decimal(3, 2)), 6, 1)
INSERT [dbo].[tb_ProductReview] ([ProductReviewId], [Name], [Phone], [Email], [CreatedDate], [Detail], [Star], [ProductId], [IsActive]) VALUES (8, N'Nguy?n Th? H', N'0976543210', N'nguyenthih@gmail.com', CAST(N'2024-10-18T09:43:48.570' AS DateTime), N'Bàn h?c phù h?p v?i không gian nh?.', CAST(4.50 AS Decimal(3, 2)), 3, 1)
INSERT [dbo].[tb_ProductReview] ([ProductReviewId], [Name], [Phone], [Email], [CreatedDate], [Detail], [Star], [ProductId], [IsActive]) VALUES (9, N'Lê Van I', N'0965432109', N'levani@gmail.com', CAST(N'2024-10-18T09:43:48.570' AS DateTime), N'Gh? ng?i êm, r?t dáng ti?n.', CAST(4.90 AS Decimal(3, 2)), 5, 1)
INSERT [dbo].[tb_ProductReview] ([ProductReviewId], [Name], [Phone], [Email], [CreatedDate], [Detail], [Star], [ProductId], [IsActive]) VALUES (10, N'Tr?n Th? J', N'0923456789', N'tranthij@gmail.com', CAST(N'2024-10-18T09:43:48.570' AS DateTime), N'T? r?t r?ng rãi, ch?t li?u t?t.', CAST(4.80 AS Decimal(3, 2)), 2, 1)
SET IDENTITY_INSERT [dbo].[tb_ProductReview] OFF
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD FOREIGN KEY([CategoryProductId])
REFERENCES [dbo].[tb_ProductCategory] ([CategoryProductId])
GO
ALTER TABLE [dbo].[tb_ProductReview]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[tb_Product] ([ProductId])
GO
