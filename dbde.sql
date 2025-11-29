DROP TABLE IF EXISTS [dbo].[OrderedProduct], [dbo].[Order], [dbo].[User], [dbo].[Product], [dbo].[Manufacturer], [dbo].[Supplier];


GO
/****** Object:  Table [dbo].[Manufacturer] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[DeliveryDate] [date] NOT NULL,
	[PickupPointId] [int] NOT NULL,
	[Code] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderedProduct] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderedProduct](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_OrderedProduct] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Article] [nvarchar](20) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Unit] [nvarchar](10) NOT NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[SupplierId] [int] NOT NULL,
	[ManufacturerId] [int] NOT NULL,
	[Category] [nvarchar](100) NOT NULL,
	[Discount] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Description] [nvarchar](300) NOT NULL,
	[Photo] [nvarchar](200) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](300) NOT NULL,
	[Login] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 
GO
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (1, N'Alessio Nesca')
GO
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (2, N'CROSBY')
GO
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (3, N'Kari')
GO
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (4, N'Marco Tozzi')
GO
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (5, N'Rieker')
GO
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (6, N'Рос')
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([Id], [UserId], [OrderDate], [DeliveryDate], [PickupPointId], [Code], [Status]) VALUES (1, 4, CAST(N'2025-02-27' AS Date), CAST(N'2025-04-20' AS Date), 1, 901, N'Завершен')
GO
INSERT [dbo].[Order] ([Id], [UserId], [OrderDate], [DeliveryDate], [PickupPointId], [Code], [Status]) VALUES (2, 1, CAST(N'2022-09-28' AS Date), CAST(N'2025-04-21' AS Date), 11, 902, N'Завершен')
GO
INSERT [dbo].[Order] ([Id], [UserId], [OrderDate], [DeliveryDate], [PickupPointId], [Code], [Status]) VALUES (3, 2, CAST(N'2025-03-21' AS Date), CAST(N'2025-04-22' AS Date), 2, 903, N'Завершен')
GO
INSERT [dbo].[Order] ([Id], [UserId], [OrderDate], [DeliveryDate], [PickupPointId], [Code], [Status]) VALUES (4, 3, CAST(N'2025-02-20' AS Date), CAST(N'2025-04-23' AS Date), 11, 904, N'Завершен')
GO
INSERT [dbo].[Order] ([Id], [UserId], [OrderDate], [DeliveryDate], [PickupPointId], [Code], [Status]) VALUES (5, 4, CAST(N'2025-03-17' AS Date), CAST(N'2025-04-24' AS Date), 2, 905, N'Завершен')
GO
INSERT [dbo].[Order] ([Id], [UserId], [OrderDate], [DeliveryDate], [PickupPointId], [Code], [Status]) VALUES (6, 1, CAST(N'2025-03-01' AS Date), CAST(N'2025-04-25' AS Date), 15, 906, N'Завершен')
GO
INSERT [dbo].[Order] ([Id], [UserId], [OrderDate], [DeliveryDate], [PickupPointId], [Code], [Status]) VALUES (7, 2, CAST(N'2025-03-30' AS Date), CAST(N'2025-04-26' AS Date), 3, 907, N'Завершен')
GO
INSERT [dbo].[Order] ([Id], [UserId], [OrderDate], [DeliveryDate], [PickupPointId], [Code], [Status]) VALUES (8, 3, CAST(N'2025-03-31' AS Date), CAST(N'2025-04-27' AS Date), 19, 908, N'Новый ')
GO
INSERT [dbo].[Order] ([Id], [UserId], [OrderDate], [DeliveryDate], [PickupPointId], [Code], [Status]) VALUES (9, 4, CAST(N'2025-04-02' AS Date), CAST(N'2025-04-28' AS Date), 5, 909, N'Новый ')
GO
INSERT [dbo].[Order] ([Id], [UserId], [OrderDate], [DeliveryDate], [PickupPointId], [Code], [Status]) VALUES (10, 4, CAST(N'2025-04-03' AS Date), CAST(N'2025-04-29' AS Date), 19, 910, N'Новый ')
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (1, 1, 2)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (1, 2, 2)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (2, 3, 1)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (2, 4, 1)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (3, 5, 10)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (3, 6, 10)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (4, 7, 5)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (4, 8, 4)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (5, 1, 2)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (5, 2, 2)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (6, 3, 1)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (6, 4, 1)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (7, 5, 10)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (7, 6, 10)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (8, 7, 5)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (8, 8, 4)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (9, 9, 5)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (9, 10, 1)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (10, 11, 5)
GO
INSERT [dbo].[OrderedProduct] ([OrderId], [ProductId], [Amount]) VALUES (10, 12, 5)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (1, N'А112Т4', N'Ботинки', N'шт.', CAST(4990.00 AS Decimal(8, 2)), 2, 1, N'Женская обувь', 3, 6, N'Женские Ботинки демисезонные kari', N'1.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (2, N'F635R4', N'Ботинки', N'шт.', CAST(3244.00 AS Decimal(8, 2)), 2, 4, N'Женская обувь', 2, 13, N'Ботинки Marco Tozzi женские демисезонные, размер 39, цвет бежевый', N'2.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (3, N'H782T5', N'Туфли', N'шт.', CAST(4499.00 AS Decimal(8, 2)), 1, 3, N'Мужская обувь', 4, 5, N'Туфли kari мужские классика MYZ21AW-450A, размер 43, цвет: черный', N'3.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (4, N'G783F5', N'Ботинки', N'шт.', CAST(5900.00 AS Decimal(8, 2)), 1, 6, N'Мужская обувь', 2, 8, N'Мужские ботинки Рос-Обувь кожаные с натуральным мехом', N'4.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (5, N'J384T6', N'Ботинки', N'шт.', CAST(3800.00 AS Decimal(8, 2)), 2, 5, N'Мужская обувь', 2, 16, N'B3430/14 Полуботинки мужские Rieker', N'5.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (6, N'D572U8', N'Кроссовки', N'шт.', CAST(4100.00 AS Decimal(8, 2)), 2, 6, N'Мужская обувь', 3, 6, N'129615-4 Кроссовки мужские', N'6.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (7, N'F572H7', N'Туфли', N'шт.', CAST(2700.00 AS Decimal(8, 2)), 1, 4, N'Женская обувь', 2, 14, N'Туфли Marco Tozzi женские летние, размер 39, цвет черный', N'7.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (8, N'D329H3', N'Полуботинки', N'шт.', CAST(1890.00 AS Decimal(8, 2)), 2, 1, N'Женская обувь', 4, 4, N'Полуботинки Alessio Nesca женские 3-30797-47, размер 37, цвет: бордовый', N'8.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (9, N'B320R5', N'Туфли', N'шт.', CAST(4300.00 AS Decimal(8, 2)), 1, 5, N'Женская обувь', 2, 6, N'Туфли Rieker женские демисезонные, размер 41, цвет коричневый', N'9.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (10, N'G432E4', N'Туфли', N'шт.', CAST(2800.00 AS Decimal(8, 2)), 1, 3, N'Женская обувь', 3, 15, N'Туфли kari женские TR-YR-413017, размер 37, цвет: черный', N'10.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (11, N'S213E3', N'Полуботинки', N'шт.', CAST(2156.00 AS Decimal(8, 2)), 2, 2, N'Мужская обувь', 3, 6, N'407700/01-01 Полуботинки мужские CROSBY', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (12, N'E482R4', N'Полуботинки', N'шт.', CAST(1800.00 AS Decimal(8, 2)), 1, 3, N'Женская обувь', 2, 14, N'Полуботинки kari женские MYZ20S-149, размер 41, цвет: черный', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (13, N'S634B5', N'Кеды', N'шт.', CAST(5500.00 AS Decimal(8, 2)), 2, 2, N'Мужская обувь', 3, 0, N'Кеды Caprice мужские демисезонные, размер 42, цвет черный', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (14, N'K345R4', N'Полуботинки', N'шт.', CAST(2100.00 AS Decimal(8, 2)), 2, 2, N'Мужская обувь', 2, 3, N'407700/01-02 Полуботинки мужские CROSBY', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (15, N'O754F4', N'Туфли', N'шт.', CAST(5400.00 AS Decimal(8, 2)), 2, 5, N'Женская обувь', 4, 18, N'Туфли женские демисезонные Rieker артикул 55073-68/37', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (16, N'G531F4', N'Ботинки', N'шт.', CAST(6600.00 AS Decimal(8, 2)), 1, 3, N'Женская обувь', 12, 9, N'Ботинки женские зимние ROMER арт. 893167-01 Черный', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (17, N'J542F5', N'Тапочки', N'шт.', CAST(500.00 AS Decimal(8, 2)), 1, 3, N'Мужская обувь', 13, 0, N'Тапочки мужские Арт.70701-55-67син р.41', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (18, N'B431R5', N'Ботинки', N'шт.', CAST(2700.00 AS Decimal(8, 2)), 2, 5, N'Мужская обувь', 2, 5, N'Мужские кожаные ботинки/мужские ботинки', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (19, N'P764G4', N'Туфли', N'шт.', CAST(6800.00 AS Decimal(8, 2)), 1, 2, N'Женская обувь', 15, 15, N'Туфли женские, ARGO, размер 38', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (20, N'C436G5', N'Ботинки', N'шт.', CAST(10200.00 AS Decimal(8, 2)), 1, 1, N'Женская обувь', 15, 9, N'Ботинки женские, ARGO, размер 40', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (21, N'F427R5', N'Ботинки', N'шт.', CAST(11800.00 AS Decimal(8, 2)), 2, 5, N'Женская обувь', 15, 11, N'Ботинки на молнии с декоративной пряжкой FRAU', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (22, N'N457T5', N'Полуботинки', N'шт.', CAST(4600.00 AS Decimal(8, 2)), 1, 2, N'Женская обувь', 3, 13, N'Полуботинки Ботинки черные зимние, мех', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (23, N'D364R4', N'Туфли', N'шт.', CAST(12400.00 AS Decimal(8, 2)), 1, 3, N'Женская обувь', 16, 5, N'Туфли Luiza Belly женские Kate-lazo черные из натуральной замши', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (24, N'S326R5', N'Тапочки', N'шт.', CAST(9900.00 AS Decimal(8, 2)), 2, 2, N'Мужская обувь', 17, 15, N'Мужские кожаные тапочки "Профиль С.Дали" ', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (25, N'L754R4', N'Полуботинки', N'шт.', CAST(1700.00 AS Decimal(8, 2)), 1, 3, N'Женская обувь', 2, 7, N'Полуботинки kari женские WB2020SS-26, размер 38, цвет: черный', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (26, N'M542T5', N'Кроссовки', N'шт.', CAST(2800.00 AS Decimal(8, 2)), 2, 5, N'Мужская обувь', 18, 3, N'Кроссовки мужские TOFA', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (27, N'D268G5', N'Туфли', N'шт.', CAST(4399.00 AS Decimal(8, 2)), 2, 5, N'Женская обувь', 3, 12, N'Туфли Rieker женские демисезонные, размер 36, цвет коричневый', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (28, N'T324F5', N'Сапоги', N'шт.', CAST(4699.00 AS Decimal(8, 2)), 1, 2, N'Женская обувь', 2, 5, N'Сапоги замша Цвет: синий', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (29, N'K358H6', N'Тапочки', N'шт.', CAST(599.00 AS Decimal(8, 2)), 1, 5, N'Мужская обувь', 20, 2, N'Тапочки мужские син р.41', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [SupplierId], [ManufacturerId], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (30, N'H535R5', N'Ботинки', N'шт.', CAST(2300.00 AS Decimal(8, 2)), 2, 5, N'Женская обувь', 2, 7, N'Женские Ботинки демисезонные', NULL)
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 
GO
INSERT [dbo].[Supplier] ([Id], [Name]) VALUES (1, N'Kari')
GO
INSERT [dbo].[Supplier] ([Id], [Name]) VALUES (2, N'Обувь для вас')
GO
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (1, N'Администратор', N'Никифорова Весения Николаевна', N'94d5ous@gmail.com', N'uzWC67')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (2, N'Администратор', N'Сазонов Руслан Германович', N'uth4iz@mail.com', N'2L6KZG')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (3, N'Администратор', N'Одинцов Серафим Артёмович', N'yzls62@outlook.com', N'JlFRCZ')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (4, N'Менеджер', N'Степанов Михаил Артёмович', N'1diph5e@tutanota.com', N'8ntwUp')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (5, N'Менеджер', N'Ворсин Петр Евгеньевич', N'tjde7c@yahoo.com', N'YOyhfR')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (6, N'Менеджер', N'Старикова Елена Павловна', N'wpmrc3do@tutanota.com', N'RSbvHv')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (7, N'Авторизированный клиент', N'Михайлюк Анна Вячеславовна', N'5d4zbu@tutanota.com', N'rwVDh9')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (8, N'Авторизированный клиент', N'Ситдикова Елена Анатольевна', N'ptec8ym@yahoo.com', N'LdNyos')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (9, N'Авторизированный клиент', N'Ворсин Петр Евгеньевич', N'1qz4kw@mail.com', N'gynQMT')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (10, N'Авторизированный клиент', N'Старикова Елена Павловна', N'4np6se@mail.com', N'AtnDjr')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderedProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderedProduct_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderedProduct] CHECK CONSTRAINT [FK_OrderedProduct_Order]
GO
ALTER TABLE [dbo].[OrderedProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderedProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderedProduct] CHECK CONSTRAINT [FK_OrderedProduct_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO

