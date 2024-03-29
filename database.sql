
CREATE DATABASE [MyShop]
go
Use [MyShop]
go
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NULL,
	[ProductId] [int] NULL,
	[OrderId] [int] NULL,
	[ImportPrice] [decimal](6, 2) NULL,
	[SalePrice] [decimal](18, 2) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderPlaced] [datetime2](7) NOT NULL,
	[OrderFulfilled] [datetime2](7) NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[SalePrice] [decimal](6, 2) NULL,
	[ImportPrice] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Laptop')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Monitor')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Mouse')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Keyboard')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'RamX')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Speaker')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (1, N'John', N'Doe', N'123 Main St, Cityville', N'+1 555-1234', N'john.doe@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (2, N'Jane', N'Smith', N'456 Oak Ave, Townsville', N'+1 555-5678', N'jane.smith@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (3, N'Bob', N'Johnson', N'789 Pine Rd, Villagetown', N'+1 555-9012', N'bob.johnson@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (4, N'Alice', N'Williams', N'101 Elm Blvd, Hamletville', N'+1 555-3456', N'alice.williams@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (5, N'Charlie', N'Brown', N'202 Maple Ln, Riverside', N'+1 555-7890', N'charlie.brown@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (6, N'Eva', N'Davis', N'303 Birch Dr, Lakeside', N'+1 555-2345', N'eva.davis@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (7, N'Michael', N'Miller', N'404 Cedar St, Hilltop', N'+1 555-5678', N'michael.miller@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (8, N'Emily', N'Taylor', N'505 Pine Ave, Lakeshore', N'+1 555-9012', N'emily.taylor@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (9, N'Daniel', N'Anderson', N'606 Oak Blvd, Mountainside', N'+1 555-1234', N'daniel.anderson@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (10, N'Olivia', N'Moore', N'707 Maple Rd, Valleytown', N'+1 555-3456', N'olivia.moore@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (11, N'David', N'White', N'808 Birch Pkwy, Riverside', N'+1 555-7890', N'david.white@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (12, N'Sophia', N'Martin', N'909 Elm Dr, Hillside', N'+1 555-2345', N'sophia.martin@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (13, N'William', N'Wilson', N'111 Oak St, Cityville', N'+1 555-1111', N'william.wilson@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (14, N'Emma', N'Jones', N'222 Pine Ave, Townsville', N'+1 555-2222', N'emma.jones@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (15, N'Christopher', N'Brown', N'333 Cedar Rd, Villagetown', N'+1 555-3333', N'christopher.brown@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (16, N'Ava', N'Davis', N'444 Maple Blvd, Hamletville', N'+1 555-4444', N'ava.davis@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (17, N'James', N'Taylor', N'555 Birch Ln, Riverside', N'+1 555-5555', N'james.taylor@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (18, N'Grace', N'Smith', N'666 Elm Dr, Lakeside', N'+1 555-6666', N'grace.smith@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (19, N'Joseph', N'Johnson', N'777 Pine Pkwy, Hilltop', N'+1 555-7777', N'joseph.johnson@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (20, N'Mia', N'Miller', N'888 Oak St, Lakeshore', N'+1 555-8888', N'mia.miller@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (21, N'Benjamin', N'Moore', N'999 Cedar Ave, Mountainside', N'+1 555-9999', N'benjamin.moore@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (22, N'Lily', N'Anderson', N'101 Maple Rd, Valleytown', N'+1 555-1010', N'lily.anderson@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (23, N'Elijah', N'White', N'202 Birch Blvd, Riverside', N'+1 555-2020', N'elijah.white@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (24, N'Charlotte', N'Martin', N'303 Elm Pkwy, Hillside', N'+1 555-3030', N'charlotte.martin@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (25, N'Daniel', N'Wilson', N'404 Oak St, Cityville', N'+1 555-4040', N'daniel.wilson@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (26, N'Avery', N'Jones', N'505 Pine Ave, Townsville', N'+1 555-5050', N'avery.jones@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (27, N'Isaac', N'Brown', N'606 Cedar Rd, Villagetown', N'+1 555-6060', N'isaac.brown@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (28, N'Hannah', N'Davis', N'707 Maple Blvd, Hamletville', N'+1 555-7070', N'hannah.davis@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (29, N'Samuel', N'Taylor', N'808 Birch Rd, Riverside', N'+1 555-8080', N'samuel.taylor@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (30, N'Evelyn', N'Smith', N'909 Elm Dr, Hillside', N'+1 555-9090', N'evelyn.smith@email.com')
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (31, N'Tai', N'Chu', N'HoangMaiHn', N'0375577900', N'cvtai102@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (113, 3, 36, 331, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (119, 3, 42, 337, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (129, 6, 36, 347, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (145, 3, 36, 363, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (151, 3, 42, 369, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (155, 8, 46, 373, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (156, 2, 47, 374, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (157, 6, 48, 375, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (166, 2, 41, 384, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (167, 7, 42, 385, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (173, 5, 48, 391, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (176, 3, 35, 394, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (177, 7, 36, 395, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (189, 7, 36, 407, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (195, 3, 42, 413, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (198, 5, 45, 416, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (201, 3, 48, 419, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (205, 6, 36, 423, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (211, 6, 42, 429, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (213, 5, 48, 431, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (217, 6, 36, 435, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (223, 4, 42, 441, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (229, 4, 48, 447, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (233, 5, 36, 451, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (239, 5, 42, 457, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (249, 7, 39, 467, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (252, 5, 42, 470, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (258, 5, 48, 476, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (262, 8, 36, 480, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (267, 2, 41, 485, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (268, 7, 42, 486, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (271, 6, 45, 489, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (274, 5, 48, 492, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (301, 3, 36, 519, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (307, 3, 42, 525, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (313, 2, 48, 531, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (323, 5, 36, 541, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (332, 5, 45, 550, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (335, 3, 48, 553, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (339, 4, 36, 557, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (345, 6, 42, 563, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (351, 3, 48, 569, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (355, 4, 36, 573, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (370, 8, 39, 588, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (371, 1, 35, 588, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (376, 1, 35, 591, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (377, 1, 37, 591, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (382, 3, 43, 595, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (383, 3, 36, 595, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (386, 5, 45, 597, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (387, 3, 37, 597, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (388, 2, 36, 597, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (394, 4, 46, 600, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (395, 11, 39, 600, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (396, 4, 43, 600, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (397, 2, 36, 600, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (400, 1, 47, 603, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (401, 3, 40, 603, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (402, 6, 37, 603, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (409, 1, 75, 606, CAST(280.00 AS Decimal(6, 2)), CAST(380.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (410, 1, 77, 606, CAST(1050.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (415, 4, 36, 609, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (416, 1, 48, 610, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (417, 3, 37, 610, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (418, 11, 38, 610, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (419, 3, 43, 611, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (420, 4, 39, 611, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (421, 1, 36, 611, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (422, 1, 35, 612, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (425, 1, 35, 614, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (426, 1, 41, 614, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (427, 1, 35, 615, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (428, 3, 46, 615, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (429, 1, 41, 616, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (430, 1, 36, 616, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (433, 2, 37, 618, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (434, 1, 35, 618, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (435, 2, 37, 619, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (436, 1, 41, 619, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (437, 1, 71, 620, CAST(980.00 AS Decimal(6, 2)), CAST(1350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (438, 1, 66, 620, CAST(270.00 AS Decimal(6, 2)), CAST(370.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (439, 4, 49, 621, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (440, 1, 36, 621, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (441, 5, 43, 622, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (447, 2, 35, 626, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (450, 1, 47, 628, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (451, 5, 49, 629, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (452, 8, 37, 629, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (455, 1, 35, 631, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (456, 2, 35, 632, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (461, 1, 35, 635, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (462, 2, 36, 635, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (465, 2, 38, 637, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (466, 1, 35, 637, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (468, 4, 36, 639, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (469, 3, 36, 640, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (472, 2, 35, 642, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (475, 1, 35, 644, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (476, 1, 41, 644, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (477, 1, 47, 645, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (478, 1, 53, 646, CAST(850.00 AS Decimal(6, 2)), CAST(1100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (483, 1, 35, 650, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (484, 1, 41, 651, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (485, 1, 36, 651, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (487, 3, 75, 653, CAST(280.00 AS Decimal(6, 2)), CAST(380.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (488, 2, 35, 654, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (494, 3, 36, 658, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (495, 1, 47, 659, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (496, 1, 71, 660, CAST(980.00 AS Decimal(6, 2)), CAST(1350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (497, 1, 35, 661, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (502, 1, 35, 664, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (504, 1, 59, 666, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (505, 1, 57, 666, CAST(180.00 AS Decimal(6, 2)), CAST(250.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (507, 1, 47, 668, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (508, 1, 47, 669, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (509, 1, 35, 670, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (510, 1, 36, 670, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (511, 1, 35, 671, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (512, 5, 38, 671, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (513, 2, 47, 672, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (514, 1, 47, 673, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (515, 1, 36, 673, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (517, 1, 35, 675, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (518, 3, 38, 676, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (519, 1, 40, 676, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (520, 2, 36, 676, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (521, 2, 49, 677, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (522, 2, 40, 677, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (523, 3, 44, 677, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (524, 2, 36, 677, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (525, 4, 46, 678, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (526, 2, 42, 678, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (527, 7, 50, 679, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (528, 1, 69, 679, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (529, 8, 39, 679, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (530, 5, 45, 680, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (531, 3, 36, 680, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (532, 3, 43, 681, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (533, 2, 35, 681, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (536, 5, 40, 683, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (537, 1, 41, 683, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (538, 8, 39, 684, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (539, 1, 35, 684, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (540, 3, 38, 685, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (541, 1, 35, 685, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (542, 6, 37, 686, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (543, 2, 42, 686, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (544, 1, 41, 687, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (545, 1, 35, 687, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (546, 9, 44, 688, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (547, 1, 36, 688, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (548, 1, 35, 689, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (549, 1, 42, 689, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (550, 2, 49, 690, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (551, 8, 37, 690, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (552, 2, 36, 690, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (553, 4, 46, 691, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (554, 1, 36, 691, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (557, 3, 37, 693, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (558, 3, 36, 693, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (559, 5, 40, 694, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (560, 1, 53, 694, CAST(850.00 AS Decimal(6, 2)), CAST(1100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (561, 7, 39, 695, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (562, 1, 36, 695, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (563, 3, 37, 696, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (564, 6, 45, 696, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (565, 2, 38, 697, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (566, 1, 41, 697, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (567, 8, 38, 698, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (568, 2, 36, 698, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (569, 2, 39, 699, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (570, 4, 36, 699, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (571, 6, 40, 700, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (572, 1, 36, 700, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (573, 7, 49, 701, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (574, 3, 36, 701, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (575, 5, 50, 702, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (576, 1, 35, 702, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (577, 8, 43, 703, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (578, 2, 36, 703, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (581, 1, 36, 705, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (582, 1, 35, 705, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (583, 1, 53, 706, CAST(850.00 AS Decimal(6, 2)), CAST(1100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (584, 1, 42, 706, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (585, 4, 45, 707, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (586, 1, 42, 707, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (587, 5, 44, 708, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (588, 3, 36, 708, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (589, 6, 46, 709, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (590, 1, 42, 709, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (591, 4, 40, 710, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (592, 1, 35, 710, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (593, 2, 37, 711, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (594, 1, 35, 711, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (595, 5, 49, 712, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (596, 3, 48, 712, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (597, 4, 50, 713, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (598, 2, 36, 713, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (599, 5, 39, 714, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (600, 6, 40, 714, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (601, 5, 43, 715, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (602, 6, 38, 715, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (603, 1, 41, 715, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (604, 1, 65, 716, CAST(920.00 AS Decimal(6, 2)), CAST(1250.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (605, 6, 61, 716, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (606, 6, 45, 717, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (607, 2, 36, 717, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (608, 4, 44, 718, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (609, 1, 35, 718, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (610, 4, 39, 719, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (611, 2, 36, 719, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (612, 12, 40, 720, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (613, 1, 35, 721, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (614, 6, 38, 722, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (615, 3, 36, 722, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (616, 5, 50, 723, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (617, 3, 36, 723, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (618, 5, 39, 724, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (619, 2, 36, 724, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (620, 9, 38, 725, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (621, 1, 36, 725, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (622, 4, 40, 726, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (623, 2, 36, 726, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (624, 1, 35, 727, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (625, 1, 36, 727, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (626, 1, 37, 727, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (627, 1, 39, 727, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (628, 1, 35, 728, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (629, 2, 36, 728, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (630, 8, 37, 729, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (631, 3, 36, 729, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (633, 3, 44, 731, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (634, 3, 36, 731, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (635, 4, 37, 732, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (636, 1, 35, 732, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (639, 4, 38, 734, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (640, 1, 35, 734, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (641, 3, 40, 735, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (642, 2, 36, 735, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (644, 7, 50, 737, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (645, 2, 36, 737, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (646, 7, 38, 738, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (647, 2, 36, 738, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (648, 3, 46, 739, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (649, 1, 35, 739, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (650, 3, 46, 740, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (651, 1, 35, 740, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (652, 4, 44, 741, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (653, 1, 35, 741, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (654, 6, 50, 742, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (655, 1, 35, 742, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (656, 6, 50, 743, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (657, 2, 36, 743, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (658, 5, 37, 744, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (659, 3, 36, 744, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (660, 6, 39, 745, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (661, 1, 42, 745, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (662, 4, 49, 746, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (663, 1, 36, 746, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (664, 1, 41, 746, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (665, 2, 46, 747, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (666, 1, 35, 747, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (667, 13, 45, 748, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (668, 6, 44, 749, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (669, 2, 36, 749, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (670, 4, 43, 750, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (671, 1, 35, 750, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (672, 3, 40, 751, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (673, 2, 36, 751, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (674, 4, 38, 752, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (675, 1, 35, 752, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (676, 6, 37, 753, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (677, 2, 40, 753, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (678, 1, 35, 753, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (679, 3, 45, 754, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (680, 2, 36, 754, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (681, 6, 44, 755, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (682, 2, 36, 755, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (683, 4, 43, 756, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (684, 5, 38, 756, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (685, 2, 42, 756, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (686, 2, 40, 757, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (687, 1, 35, 757, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (688, 2, 36, 758, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (689, 4, 45, 758, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (690, 3, 50, 759, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (691, 1, 35, 759, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (692, 3, 39, 760, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (693, 1, 35, 760, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (694, 4, 37, 761, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (695, 1, 35, 761, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (696, 6, 38, 762, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (697, 2, 36, 762, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (698, 3, 50, 763, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (699, 1, 47, 763, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (700, 6, 49, 764, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (701, 1, 41, 764, CAST(950.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (702, 7, 46, 765, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (703, 13, 37, 765, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (704, 2, 45, 766, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (705, 1, 59, 766, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (706, 6, 43, 767, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (707, 1, 35, 767, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (708, 7, 38, 768, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (709, 2, 36, 768, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (710, 9, 40, 769, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (711, 1, 36, 769, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (712, 3, 39, 770, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (713, 1, 36, 770, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (714, 3, 44, 770, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (715, 8, 50, 771, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (716, 1, 35, 771, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (717, 3, 49, 772, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (718, 3, 39, 772, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (719, 1, 35, 772, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (720, 3, 43, 773, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (721, 3, 36, 773, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (722, 5, 40, 774, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (723, 1, 35, 774, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (724, 7, 39, 775, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (725, 1, 42, 775, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (726, 2, 38, 776, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (727, 1, 35, 776, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (728, 3, 37, 777, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (729, 1, 35, 777, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (730, 4, 44, 778, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (731, 1, 35, 778, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (732, 6, 45, 779, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (733, 3, 37, 779, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (734, 1, 36, 779, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (735, 3, 46, 780, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (736, 1, 35, 780, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (737, 5, 43, 781, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (738, 1, 35, 781, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (739, 2, 63, 782, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (740, 1, 36, 782, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (741, 7, 50, 783, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (742, 1, 35, 783, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (743, 4, 49, 784, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (744, 1, 35, 784, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (745, 1, 36, 784, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (746, 5, 37, 785, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (747, 1, 47, 785, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (748, 4, 38, 786, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (749, 1, 53, 786, CAST(850.00 AS Decimal(6, 2)), CAST(1100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (750, 6, 39, 787, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (751, 1, 35, 787, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (752, 3, 40, 788, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (753, 1, 35, 788, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (754, 3, 45, 789, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (755, 1, 35, 789, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (756, 5, 44, 790, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (757, 2, 42, 790, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (758, 8, 43, 791, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (759, 2, 36, 791, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (760, 1, 35, 792, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (761, 2, 36, 792, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (762, 4, 40, 793, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (763, 1, 35, 793, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (764, 1, 36, 793, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (765, 5, 39, 794, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (766, 3, 36, 794, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (767, 7, 38, 795, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (768, 1, 35, 795, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (769, 2, 37, 796, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (770, 2, 36, 796, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (771, 2, 45, 796, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (772, 4, 50, 797, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (773, 1, 35, 797, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (774, 8, 49, 798, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (775, 1, 35, 798, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (776, 4, 46, 799, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (777, 1, 35, 799, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (778, 7, 44, 800, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (779, 2, 36, 800, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (780, 2, 57, 801, CAST(180.00 AS Decimal(6, 2)), CAST(250.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (781, 3, 45, 801, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (782, 5, 50, 802, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (783, 1, 35, 802, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (784, 2, 43, 803, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (785, 1, 47, 803, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (786, 3, 37, 804, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (787, 1, 47, 804, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (788, 4, 40, 805, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (789, 1, 47, 805, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (790, 5, 39, 806, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (791, 2, 36, 806, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (792, 9, 38, 807, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (793, 1, 42, 807, CAST(260.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (796, 6, 50, 809, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (797, 1, 36, 809, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (798, 3, 46, 809, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (799, 2, 49, 810, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (800, 4, 40, 810, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (801, 1, 35, 810, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (802, 5, 46, 811, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (803, 2, 36, 811, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (804, 2, 37, 812, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (805, 1, 47, 812, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (806, 5, 39, 813, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (807, 1, 36, 813, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (808, 4, 40, 814, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (809, 1, 35, 814, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (810, 9, 38, 815, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (811, 2, 36, 815, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (812, 1, 35, 816, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (813, 1, 37, 816, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (814, 1, 36, 816, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (815, 2, 39, 816, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (816, 1, 45, 816, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (817, 5, 49, 817, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (818, 1, 35, 817, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (819, 4, 49, 818, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (820, 1, 35, 818, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (821, 6, 50, 819, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (822, 1, 35, 819, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (823, 4, 45, 820, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (824, 1, 35, 820, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (825, 6, 44, 821, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (826, 1, 35, 821, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (827, 2, 43, 822, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (828, 2, 36, 822, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (829, 1, 35, 822, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (830, 2, 35, 823, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (831, 7, 46, 824, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (832, 1, 35, 824, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (833, 5, 40, 825, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (834, 2, 36, 825, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (835, 8, 38, 826, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (836, 1, 35, 826, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (837, 2, 39, 827, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (838, 1, 35, 827, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (839, 5, 50, 828, CAST(38.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (840, 1, 47, 828, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (841, 7, 49, 829, CAST(12.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (842, 3, 39, 829, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (843, 1, 35, 829, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (844, 3, 37, 830, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (845, 2, 36, 830, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (846, 1, 35, 830, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (847, 2, 35, 832, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (848, 2, 48, 833, CAST(240.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (849, 1, 36, 833, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (850, 6, 46, 834, CAST(65.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (851, 2, 36, 834, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (852, 4, 45, 835, CAST(90.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (853, 2, 36, 835, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (854, 5, 44, 836, CAST(42.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (855, 2, 36, 836, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (856, 9, 43, 837, CAST(18.00 AS Decimal(6, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (857, 1, 47, 837, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (858, 4, 40, 838, CAST(50.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (859, 1, 47, 838, CAST(1000.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (860, 6, 39, 839, CAST(60.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (861, 1, 35, 839, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (863, 1, 35, 841, CAST(900.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (864, 3, 37, 841, CAST(15.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (869, 4, 36, 843, CAST(220.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId], [ImportPrice], [SalePrice]) VALUES (870, 2, 38, 843, CAST(35.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (331, CAST(N'2023-05-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-07T00:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (337, CAST(N'2023-05-08T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-13T00:00:00.0000000' AS DateTime2), 8)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (347, CAST(N'2023-05-18T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-23T00:00:00.0000000' AS DateTime2), 18)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (363, CAST(N'2023-07-03T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-08T00:00:00.0000000' AS DateTime2), 3)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (369, CAST(N'2023-07-09T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-14T00:00:00.0000000' AS DateTime2), 9)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (373, CAST(N'2023-07-13T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-18T00:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (374, CAST(N'2023-07-14T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-19T00:00:00.0000000' AS DateTime2), 14)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (375, CAST(N'2023-07-15T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-20T00:00:00.0000000' AS DateTime2), 15)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (384, CAST(N'2023-07-24T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-29T00:00:00.0000000' AS DateTime2), 24)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (385, CAST(N'2023-07-25T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-30T00:00:00.0000000' AS DateTime2), 25)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (391, CAST(N'2023-07-31T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-05T00:00:00.0000000' AS DateTime2), 31)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (394, CAST(N'2023-06-03T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-08T00:00:00.0000000' AS DateTime2), 3)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (395, CAST(N'2023-06-04T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-09T00:00:00.0000000' AS DateTime2), 4)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (407, CAST(N'2023-06-16T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-21T00:00:00.0000000' AS DateTime2), 16)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (413, CAST(N'2023-06-22T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-27T00:00:00.0000000' AS DateTime2), 22)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (416, CAST(N'2023-06-25T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-30T00:00:00.0000000' AS DateTime2), 25)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (419, CAST(N'2023-06-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-03T00:00:00.0000000' AS DateTime2), 28)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (423, CAST(N'2023-08-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-07T00:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (429, CAST(N'2023-08-08T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-13T00:00:00.0000000' AS DateTime2), 8)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (431, CAST(N'2023-08-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-15T00:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (435, CAST(N'2023-08-14T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-19T00:00:00.0000000' AS DateTime2), 14)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (441, CAST(N'2023-08-20T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-25T00:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (447, CAST(N'2023-08-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-31T00:00:00.0000000' AS DateTime2), 26)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (451, CAST(N'2023-08-30T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-04T00:00:00.0000000' AS DateTime2), 30)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (457, CAST(N'2023-09-05T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-10T00:00:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (467, CAST(N'2023-09-15T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-20T00:00:00.0000000' AS DateTime2), 15)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (470, CAST(N'2023-09-18T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-23T00:00:00.0000000' AS DateTime2), 18)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (476, CAST(N'2023-09-24T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-29T00:00:00.0000000' AS DateTime2), 24)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (480, CAST(N'2023-09-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-03T00:00:00.0000000' AS DateTime2), 28)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (485, CAST(N'2023-10-03T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-08T00:00:00.0000000' AS DateTime2), 3)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (486, CAST(N'2023-10-04T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-09T00:00:00.0000000' AS DateTime2), 4)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (489, CAST(N'2023-10-07T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-12T00:00:00.0000000' AS DateTime2), 7)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (492, CAST(N'2023-10-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-15T00:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (519, CAST(N'2023-11-06T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-11T00:00:00.0000000' AS DateTime2), 6)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (525, CAST(N'2023-11-12T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-17T00:00:00.0000000' AS DateTime2), 12)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (531, CAST(N'2023-11-18T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-23T00:00:00.0000000' AS DateTime2), 18)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (541, CAST(N'2023-11-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-03T00:00:00.0000000' AS DateTime2), 28)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (550, CAST(N'2023-12-07T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-12T00:00:00.0000000' AS DateTime2), 7)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (553, CAST(N'2023-12-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-15T00:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (557, CAST(N'2023-12-14T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-19T00:00:00.0000000' AS DateTime2), 14)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (563, CAST(N'2023-12-20T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-25T00:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (569, CAST(N'2023-12-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 26)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (573, CAST(N'2023-12-30T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-04T00:00:00.0000000' AS DateTime2), 30)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (588, CAST(N'2024-01-02T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-07T00:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (591, CAST(N'2024-01-03T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-08T00:00:00.0000000' AS DateTime2), 3)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (595, CAST(N'2024-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-06T00:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (597, CAST(N'2024-01-03T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-08T00:00:00.0000000' AS DateTime2), 8)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (600, CAST(N'2024-01-04T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-09T00:00:00.0000000' AS DateTime2), 7)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (603, CAST(N'2023-12-29T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-03T00:00:00.0000000' AS DateTime2), 29)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (606, CAST(N'2023-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-30T00:00:00.0000000' AS DateTime2), 25)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (609, CAST(N'2023-12-09T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-14T00:00:00.0000000' AS DateTime2), 9)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (610, CAST(N'2023-12-03T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-08T00:00:00.0000000' AS DateTime2), 3)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (611, CAST(N'2023-12-05T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-10T00:00:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (612, CAST(N'2023-11-27T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-02T00:00:00.0000000' AS DateTime2), 27)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (614, CAST(N'2023-11-11T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-16T00:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (615, CAST(N'2023-11-05T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-10T00:00:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (616, CAST(N'2023-10-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-31T00:00:00.0000000' AS DateTime2), 26)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (618, CAST(N'2023-10-15T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-20T00:00:00.0000000' AS DateTime2), 15)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (619, CAST(N'2023-10-22T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-27T00:00:00.0000000' AS DateTime2), 22)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (620, CAST(N'2023-10-09T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-14T00:00:00.0000000' AS DateTime2), 9)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (621, CAST(N'2023-10-11T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-16T00:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (622, CAST(N'2023-10-05T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-10T00:00:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (626, CAST(N'2023-09-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-22T00:00:00.0000000' AS DateTime2), 17)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (628, CAST(N'2023-09-11T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-16T00:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (629, CAST(N'2023-09-09T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-14T00:00:00.0000000' AS DateTime2), 9)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (631, CAST(N'2023-09-04T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-09T00:00:00.0000000' AS DateTime2), 4)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (632, CAST(N'2023-05-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-22T00:00:00.0000000' AS DateTime2), 17)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (635, CAST(N'2023-05-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-06T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (637, CAST(N'2023-05-04T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-09T00:00:00.0000000' AS DateTime2), 4)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (639, CAST(N'2023-05-13T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-18T00:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (640, CAST(N'2023-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-12T00:00:00.0000000' AS DateTime2), 7)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (642, CAST(N'2023-06-09T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-14T00:00:00.0000000' AS DateTime2), 9)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (644, CAST(N'2023-06-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-26T00:00:00.0000000' AS DateTime2), 21)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (645, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-20T00:00:00.0000000' AS DateTime2), 15)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (646, CAST(N'2023-06-27T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-02T00:00:00.0000000' AS DateTime2), 27)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (650, CAST(N'2023-07-18T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), 18)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (651, CAST(N'2023-07-19T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-24T00:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (653, CAST(N'2023-08-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-06T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (654, CAST(N'2023-08-07T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-12T00:00:00.0000000' AS DateTime2), 7)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (658, CAST(N'2023-08-19T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-24T00:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (659, CAST(N'2023-08-13T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-18T00:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (660, CAST(N'2023-08-25T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-30T00:00:00.0000000' AS DateTime2), 25)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (661, CAST(N'2023-12-19T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-24T00:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (664, CAST(N'2023-11-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-22T00:00:00.0000000' AS DateTime2), 17)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (666, CAST(N'2023-10-27T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-01T00:00:00.0000000' AS DateTime2), 27)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (668, CAST(N'2023-10-13T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-18T00:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (669, CAST(N'2023-09-27T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-02T00:00:00.0000000' AS DateTime2), 27)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (670, CAST(N'2023-09-23T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-28T00:00:00.0000000' AS DateTime2), 23)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (671, CAST(N'2023-06-11T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-16T00:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (672, CAST(N'2023-05-29T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-03T00:00:00.0000000' AS DateTime2), 29)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (673, CAST(N'2023-05-23T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-28T00:00:00.0000000' AS DateTime2), 23)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (675, CAST(N'2023-12-31T14:51:10.4648360' AS DateTime2), CAST(N'2024-01-04T14:51:10.4648360' AS DateTime2), 25)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (676, CAST(N'2024-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-06T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (677, CAST(N'2023-12-27T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-01T00:00:00.0000000' AS DateTime2), 27)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (678, CAST(N'2023-12-24T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-29T00:00:00.0000000' AS DateTime2), 24)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (679, CAST(N'2023-12-28T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-02T00:00:00.0000000' AS DateTime2), 28)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (680, CAST(N'2023-12-23T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-28T00:00:00.0000000' AS DateTime2), 23)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (681, CAST(N'2023-12-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-26T00:00:00.0000000' AS DateTime2), 21)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (683, CAST(N'2023-12-18T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-23T00:00:00.0000000' AS DateTime2), 18)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (684, CAST(N'2023-12-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-22T00:00:00.0000000' AS DateTime2), 17)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (685, CAST(N'2023-12-16T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-21T00:00:00.0000000' AS DateTime2), 16)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (686, CAST(N'2023-12-15T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-20T00:00:00.0000000' AS DateTime2), 15)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (687, CAST(N'2023-12-13T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-18T00:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (688, CAST(N'2023-12-06T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-11T00:00:00.0000000' AS DateTime2), 6)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (689, CAST(N'2023-12-04T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-09T00:00:00.0000000' AS DateTime2), 4)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (690, CAST(N'2023-12-11T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-16T00:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (691, CAST(N'2023-12-08T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-13T00:00:00.0000000' AS DateTime2), 8)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (693, CAST(N'2023-11-29T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-04T00:00:00.0000000' AS DateTime2), 29)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (694, CAST(N'2023-11-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-01T00:00:00.0000000' AS DateTime2), 26)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (695, CAST(N'2023-11-25T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-30T00:00:00.0000000' AS DateTime2), 25)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (696, CAST(N'2023-11-23T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-28T00:00:00.0000000' AS DateTime2), 23)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (697, CAST(N'2023-11-24T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-29T00:00:00.0000000' AS DateTime2), 24)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (698, CAST(N'2023-11-30T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-05T00:00:00.0000000' AS DateTime2), 30)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (699, CAST(N'2023-12-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-06T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (700, CAST(N'2023-12-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-07T00:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (701, CAST(N'2023-11-19T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-24T00:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (702, CAST(N'2023-11-20T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-25T00:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (703, CAST(N'2023-11-13T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-18T00:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (705, CAST(N'2023-11-22T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-27T00:00:00.0000000' AS DateTime2), 22)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (706, CAST(N'2023-11-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-26T00:00:00.0000000' AS DateTime2), 21)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (707, CAST(N'2023-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-20T00:00:00.0000000' AS DateTime2), 15)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (708, CAST(N'2023-11-14T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-19T00:00:00.0000000' AS DateTime2), 14)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (709, CAST(N'2023-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-21T00:00:00.0000000' AS DateTime2), 16)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (710, CAST(N'2023-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-15T00:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (711, CAST(N'2023-11-07T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-12T00:00:00.0000000' AS DateTime2), 7)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (712, CAST(N'2023-11-03T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-08T00:00:00.0000000' AS DateTime2), 3)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (713, CAST(N'2023-11-04T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-09T00:00:00.0000000' AS DateTime2), 4)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (714, CAST(N'2023-11-09T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-14T00:00:00.0000000' AS DateTime2), 9)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (715, CAST(N'2023-10-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-02T00:00:00.0000000' AS DateTime2), 28)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (716, CAST(N'2023-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-06T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (717, CAST(N'2023-10-30T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-04T00:00:00.0000000' AS DateTime2), 30)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (718, CAST(N'2023-10-29T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-03T00:00:00.0000000' AS DateTime2), 29)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (719, CAST(N'2023-10-24T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-29T00:00:00.0000000' AS DateTime2), 24)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (720, CAST(N'2023-10-25T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-30T00:00:00.0000000' AS DateTime2), 25)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (721, CAST(N'2023-11-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-07T00:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (722, CAST(N'2023-10-23T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-28T00:00:00.0000000' AS DateTime2), 23)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (723, CAST(N'2023-10-19T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-24T00:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (724, CAST(N'2023-10-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-22T00:00:00.0000000' AS DateTime2), 17)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (725, CAST(N'2023-10-16T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-21T00:00:00.0000000' AS DateTime2), 16)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (726, CAST(N'2023-10-18T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-23T00:00:00.0000000' AS DateTime2), 18)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (727, CAST(N'2023-10-20T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-25T00:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (728, CAST(N'2023-10-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-26T00:00:00.0000000' AS DateTime2), 21)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (729, CAST(N'2023-05-03T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-08T00:00:00.0000000' AS DateTime2), 3)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (731, CAST(N'2023-08-22T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-27T00:00:00.0000000' AS DateTime2), 22)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (732, CAST(N'2023-08-15T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-20T00:00:00.0000000' AS DateTime2), 15)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (734, CAST(N'2023-09-30T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-05T00:00:00.0000000' AS DateTime2), 30)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (735, CAST(N'2023-10-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-07T00:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (737, CAST(N'2023-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-17T00:00:00.0000000' AS DateTime2), 12)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (738, CAST(N'2023-11-08T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-13T00:00:00.0000000' AS DateTime2), 8)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (739, CAST(N'2023-10-31T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-05T00:00:00.0000000' AS DateTime2), 31)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (740, CAST(N'2023-10-08T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-13T00:00:00.0000000' AS DateTime2), 8)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (741, CAST(N'2023-10-06T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-11T00:00:00.0000000' AS DateTime2), 6)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (742, CAST(N'2023-10-12T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-17T00:00:00.0000000' AS DateTime2), 12)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (743, CAST(N'2023-09-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-01T00:00:00.0000000' AS DateTime2), 26)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (744, CAST(N'2023-09-29T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-04T00:00:00.0000000' AS DateTime2), 29)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (745, CAST(N'2023-10-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-06T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (746, CAST(N'2023-09-25T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-30T00:00:00.0000000' AS DateTime2), 25)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (747, CAST(N'2023-09-22T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-27T00:00:00.0000000' AS DateTime2), 22)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (748, CAST(N'2023-09-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-26T00:00:00.0000000' AS DateTime2), 21)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (749, CAST(N'2023-09-20T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-25T00:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (750, CAST(N'2023-09-19T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-24T00:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (751, CAST(N'2023-09-16T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-21T00:00:00.0000000' AS DateTime2), 16)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (752, CAST(N'2023-09-14T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-19T00:00:00.0000000' AS DateTime2), 14)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (753, CAST(N'2023-09-13T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-18T00:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (754, CAST(N'2023-09-08T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-13T00:00:00.0000000' AS DateTime2), 8)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (755, CAST(N'2023-09-07T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-12T00:00:00.0000000' AS DateTime2), 7)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (756, CAST(N'2023-09-06T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-11T00:00:00.0000000' AS DateTime2), 6)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (757, CAST(N'2023-09-03T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-08T00:00:00.0000000' AS DateTime2), 3)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (758, CAST(N'2023-09-12T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-17T00:00:00.0000000' AS DateTime2), 12)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (759, CAST(N'2023-09-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-15T00:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (760, CAST(N'2023-09-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-07T00:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (761, CAST(N'2023-08-31T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-05T00:00:00.0000000' AS DateTime2), 31)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (762, CAST(N'2023-09-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-06T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (763, CAST(N'2023-08-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-02T00:00:00.0000000' AS DateTime2), 28)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (764, CAST(N'2023-08-27T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-01T00:00:00.0000000' AS DateTime2), 27)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (765, CAST(N'2023-08-24T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-29T00:00:00.0000000' AS DateTime2), 24)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (766, CAST(N'2023-08-23T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-28T00:00:00.0000000' AS DateTime2), 23)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (767, CAST(N'2023-08-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-26T00:00:00.0000000' AS DateTime2), 21)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (768, CAST(N'2023-08-16T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-21T00:00:00.0000000' AS DateTime2), 16)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (769, CAST(N'2023-08-18T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-23T00:00:00.0000000' AS DateTime2), 18)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (770, CAST(N'2023-08-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-22T00:00:00.0000000' AS DateTime2), 17)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (771, CAST(N'2023-08-12T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-17T00:00:00.0000000' AS DateTime2), 12)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (772, CAST(N'2023-08-11T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-16T00:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (773, CAST(N'2023-08-09T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-14T00:00:00.0000000' AS DateTime2), 9)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (774, CAST(N'2023-08-06T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-11T00:00:00.0000000' AS DateTime2), 6)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (775, CAST(N'2023-08-05T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-10T00:00:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (776, CAST(N'2023-08-04T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-09T00:00:00.0000000' AS DateTime2), 4)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (777, CAST(N'2023-08-03T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-08T00:00:00.0000000' AS DateTime2), 3)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (778, CAST(N'2023-07-27T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-01T00:00:00.0000000' AS DateTime2), 27)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (779, CAST(N'2023-07-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-02T00:00:00.0000000' AS DateTime2), 28)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (780, CAST(N'2023-07-29T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-03T00:00:00.0000000' AS DateTime2), 29)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (781, CAST(N'2023-07-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-31T00:00:00.0000000' AS DateTime2), 26)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (782, CAST(N'2023-07-30T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-04T00:00:00.0000000' AS DateTime2), 30)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (783, CAST(N'2023-07-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-22T00:00:00.0000000' AS DateTime2), 17)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (784, CAST(N'2023-07-16T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-21T00:00:00.0000000' AS DateTime2), 16)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (785, CAST(N'2023-07-20T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-25T00:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (786, CAST(N'2023-07-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-26T00:00:00.0000000' AS DateTime2), 21)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (787, CAST(N'2023-07-22T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-27T00:00:00.0000000' AS DateTime2), 22)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (788, CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-28T00:00:00.0000000' AS DateTime2), 23)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (789, CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-17T00:00:00.0000000' AS DateTime2), 12)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (790, CAST(N'2023-07-11T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-16T00:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (791, CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-15T00:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (792, CAST(N'2023-07-08T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-13T00:00:00.0000000' AS DateTime2), 8)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (793, CAST(N'2023-07-07T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 7)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (794, CAST(N'2023-07-06T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-11T00:00:00.0000000' AS DateTime2), 6)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (795, CAST(N'2023-07-05T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (796, CAST(N'2023-07-04T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09T00:00:00.0000000' AS DateTime2), 4)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (797, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-06T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (798, CAST(N'2023-06-29T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-04T00:00:00.0000000' AS DateTime2), 29)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (799, CAST(N'2023-06-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), 26)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (800, CAST(N'2023-06-24T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-29T00:00:00.0000000' AS DateTime2), 24)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (801, CAST(N'2023-07-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-07T00:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (802, CAST(N'2023-06-30T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-05T00:00:00.0000000' AS DateTime2), 30)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (803, CAST(N'2023-06-23T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-28T00:00:00.0000000' AS DateTime2), 23)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (804, CAST(N'2023-06-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-22T00:00:00.0000000' AS DateTime2), 17)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (805, CAST(N'2023-06-20T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-25T00:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (806, CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-24T00:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (807, CAST(N'2023-06-18T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-23T00:00:00.0000000' AS DateTime2), 18)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (809, CAST(N'2023-06-14T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2), 14)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (810, CAST(N'2023-06-13T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-18T00:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (811, CAST(N'2023-06-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (812, CAST(N'2023-06-05T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-10T00:00:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (813, CAST(N'2023-06-07T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2), 7)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (814, CAST(N'2023-06-08T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-13T00:00:00.0000000' AS DateTime2), 8)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (815, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-11T00:00:00.0000000' AS DateTime2), 6)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (816, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-17T00:00:00.0000000' AS DateTime2), 12)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (817, CAST(N'2023-05-31T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-05T00:00:00.0000000' AS DateTime2), 30)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (818, CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (819, CAST(N'2023-06-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-07T00:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (820, CAST(N'2023-05-27T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), 27)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (821, CAST(N'2023-05-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-31T00:00:00.0000000' AS DateTime2), 26)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (822, CAST(N'2023-05-25T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-30T00:00:00.0000000' AS DateTime2), 25)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (823, CAST(N'2023-05-30T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-04T00:00:00.0000000' AS DateTime2), 30)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (824, CAST(N'2023-05-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-02T00:00:00.0000000' AS DateTime2), 28)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (825, CAST(N'2023-05-22T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-27T00:00:00.0000000' AS DateTime2), 22)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (826, CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-25T00:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (827, CAST(N'2023-05-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-26T00:00:00.0000000' AS DateTime2), 21)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (828, CAST(N'2023-05-16T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-21T00:00:00.0000000' AS DateTime2), 16)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (829, CAST(N'2023-05-15T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2), 15)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (830, CAST(N'2023-05-19T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-24T00:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (832, CAST(N'2023-05-24T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-29T00:00:00.0000000' AS DateTime2), 24)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (833, CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-19T00:00:00.0000000' AS DateTime2), 14)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (834, CAST(N'2023-05-12T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-17T00:00:00.0000000' AS DateTime2), 12)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (835, CAST(N'2023-05-11T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-16T00:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (836, CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-15T00:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (837, CAST(N'2023-05-09T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2), 9)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (838, CAST(N'2023-05-06T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-11T00:00:00.0000000' AS DateTime2), 6)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (839, CAST(N'2023-05-05T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (841, CAST(N'2024-01-05T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-10T00:00:00.0000000' AS DateTime2), 6)
GO
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (843, CAST(N'2023-12-22T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-27T00:00:00.0000000' AS DateTime2), 26)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (35, N'Dell Inspiron', CAST(1200.00 AS Decimal(6, 2)), CAST(900.00 AS Decimal(18, 2)), 10, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (36, N'Samsung Monitor', CAST(300.00 AS Decimal(6, 2)), CAST(220.00 AS Decimal(18, 2)), 15, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (37, N'Logitech Wireless Mouse', CAST(20.00 AS Decimal(6, 2)), CAST(15.00 AS Decimal(18, 2)), 50, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (38, N'Corsair Mechanical Keyboard', CAST(50.00 AS Decimal(6, 2)), CAST(35.00 AS Decimal(18, 2)), 25, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (39, N'Crucial 8GB RAM', CAST(80.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)), 30, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (40, N'Bose Speakers', CAST(70.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)), 20, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (41, N'HP Pavilion', CAST(1300.00 AS Decimal(6, 2)), CAST(950.00 AS Decimal(18, 2)), 5, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (42, N'LG UltraWide Monitor', CAST(350.00 AS Decimal(6, 2)), CAST(260.00 AS Decimal(18, 2)), 8, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (43, N'Microsoft Wireless Mouse', CAST(25.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)), 40, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (44, N'Razer BlackWidow Keyboard', CAST(60.00 AS Decimal(6, 2)), CAST(42.00 AS Decimal(18, 2)), 20, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (45, N'Kingston 16GB RAM', CAST(120.00 AS Decimal(6, 2)), CAST(90.00 AS Decimal(18, 2)), 15, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (46, N'JBL Bluetooth Speakers', CAST(90.00 AS Decimal(6, 2)), CAST(65.00 AS Decimal(18, 2)), 15, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (47, N'Lenovo ThinkPad', CAST(1400.00 AS Decimal(6, 2)), CAST(1000.00 AS Decimal(18, 2)), 7, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (48, N'ASUS Gaming Monitor', CAST(320.00 AS Decimal(6, 2)), CAST(240.00 AS Decimal(18, 2)), 10, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (49, N'SteelSeries Gaming Mouse', CAST(18.00 AS Decimal(6, 2)), CAST(12.00 AS Decimal(18, 2)), 60, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (50, N'Corsair RGB Keyboard', CAST(55.00 AS Decimal(6, 2)), CAST(38.00 AS Decimal(18, 2)), 22, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (51, N'G.SKILL 32GB RAM', CAST(180.00 AS Decimal(6, 2)), CAST(130.00 AS Decimal(18, 2)), 12, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (52, N'Sony Bookshelf Speakers', CAST(80.00 AS Decimal(6, 2)), CAST(58.00 AS Decimal(18, 2)), 12, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (53, N'Acer Aspire', CAST(1100.00 AS Decimal(6, 2)), CAST(850.00 AS Decimal(18, 2)), 8, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (54, N'ViewSonic Gaming Monitor', CAST(380.00 AS Decimal(6, 2)), CAST(280.00 AS Decimal(18, 2)), 5, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (55, N'Logitech Gaming Mouse', CAST(22.00 AS Decimal(6, 2)), CAST(16.00 AS Decimal(18, 2)), 45, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (56, N'HyperX Mechanical Keyboard', CAST(65.00 AS Decimal(6, 2)), CAST(45.00 AS Decimal(18, 2)), 18, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (57, N'Corsair 64GB RAM', CAST(250.00 AS Decimal(6, 2)), CAST(180.00 AS Decimal(18, 2)), 8, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (58, N'Harman Kardon Speakers', CAST(95.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)), 10, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (59, N'MSI Gaming Laptop', CAST(1200.00 AS Decimal(6, 2)), CAST(900.00 AS Decimal(18, 2)), 6, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (60, N'Dell Ultrasharp Monitor', CAST(300.00 AS Decimal(6, 2)), CAST(220.00 AS Decimal(18, 2)), 12, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (61, N'Razer Naga Mouse', CAST(20.00 AS Decimal(6, 2)), CAST(15.00 AS Decimal(18, 2)), 50, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (62, N'Apple Magic Keyboard', CAST(55.00 AS Decimal(6, 2)), CAST(40.00 AS Decimal(18, 2)), 20, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (63, N'Corsair 128GB RAM', CAST(350.00 AS Decimal(6, 2)), CAST(260.00 AS Decimal(18, 2)), 5, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (64, N'Bose SoundTouch Speakers', CAST(110.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)), 8, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (65, N'Lenovo Legion', CAST(1250.00 AS Decimal(6, 2)), CAST(920.00 AS Decimal(18, 2)), 9, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (66, N'AOC Curved Monitor', CAST(370.00 AS Decimal(6, 2)), CAST(270.00 AS Decimal(18, 2)), 6, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (67, N'SteelSeries Rival Mouse', CAST(24.00 AS Decimal(6, 2)), CAST(17.00 AS Decimal(18, 2)), 38, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (68, N'Ducky Mechanical Keyboard', CAST(70.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)), 15, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (69, N'Crucial 256GB RAM', CAST(320.00 AS Decimal(6, 2)), CAST(240.00 AS Decimal(18, 2)), 10, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (70, N'Sony SRS-X9 Speakers', CAST(120.00 AS Decimal(6, 2)), CAST(85.00 AS Decimal(18, 2)), 12, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (71, N'HP EliteBook', CAST(1350.00 AS Decimal(6, 2)), CAST(980.00 AS Decimal(18, 2)), 7, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (72, N'Dell Alienware Monitor', CAST(400.00 AS Decimal(6, 2)), CAST(290.00 AS Decimal(18, 2)), 5, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (73, N'Logitech MX Master Mouse', CAST(28.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(18, 2)), 42, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (74, N'Corsair K95 RGB Keyboard', CAST(75.00 AS Decimal(6, 2)), CAST(55.00 AS Decimal(18, 2)), 18, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (75, N'Samsung 512GB RAM', CAST(380.00 AS Decimal(6, 2)), CAST(280.00 AS Decimal(18, 2)), 8, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (76, N'Bose SoundLink Speakers', CAST(100.00 AS Decimal(6, 2)), CAST(75.00 AS Decimal(18, 2)), 10, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (77, N'ASUS ROG Strix', CAST(1400.00 AS Decimal(6, 2)), CAST(1050.00 AS Decimal(18, 2)), 8, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (78, N'LG 4K HDR Monitor', CAST(450.00 AS Decimal(6, 2)), CAST(320.00 AS Decimal(18, 2)), 5, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (79, N'Corsair Harpoon Mouse', CAST(26.00 AS Decimal(6, 2)), CAST(18.00 AS Decimal(18, 2)), 35, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (80, N'Razer Huntsman Keyboard', CAST(80.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)), 20, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (81, N'G.SKILL 512GB RAM', CAST(420.00 AS Decimal(6, 2)), CAST(310.00 AS Decimal(18, 2)), 7, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (82, N'JBL Pulse Speakers', CAST(110.00 AS Decimal(6, 2)), CAST(85.00 AS Decimal(18, 2)), 12, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (83, N'MSI GS66 Stealth', CAST(1500.00 AS Decimal(6, 2)), CAST(1100.00 AS Decimal(18, 2)), 6, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (84, N'BenQ Gaming Monitor', CAST(420.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)), 6, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (85, N'Logitech G Pro Mouse', CAST(30.00 AS Decimal(6, 2)), CAST(22.00 AS Decimal(18, 2)), 40, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (86, N'Ducky One 2 Mini Keyboard', CAST(85.00 AS Decimal(6, 2)), CAST(65.00 AS Decimal(18, 2)), 15, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (87, N'HyperX 1TB RAM', CAST(500.00 AS Decimal(6, 2)), CAST(380.00 AS Decimal(18, 2)), 5, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (88, N'Sonos Play:5 Speakers', CAST(250.00 AS Decimal(6, 2)), CAST(190.00 AS Decimal(18, 2)), 8, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (89, N'Dell XPS', CAST(1600.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)), 10, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (90, N'Samsung Odyssey Monitor', CAST(500.00 AS Decimal(6, 2)), CAST(380.00 AS Decimal(18, 2)), 8, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (91, N'Razer DeathAdder Mouse', CAST(32.00 AS Decimal(6, 2)), CAST(24.00 AS Decimal(18, 2)), 30, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (92, N'Apple Magic Keyboard Pro', CAST(90.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)), 18, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (93, N'Corsair 1TB NVMe SSD', CAST(550.00 AS Decimal(6, 2)), CAST(400.00 AS Decimal(18, 2)), 5, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (94, N'Bose Soundbar 700', CAST(450.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)), 10, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (95, N'Lenovo ThinkPad X1 Carbon', CAST(1800.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)), 6, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (96, N'Acer Predator Gaming Monitor', CAST(600.00 AS Decimal(6, 2)), CAST(450.00 AS Decimal(18, 2)), 7, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (97, N'Logitech MX Anywhere Mouse', CAST(35.00 AS Decimal(6, 2)), CAST(28.00 AS Decimal(18, 2)), 25, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (98, N'Mechanical Eagle Keyboard', CAST(70.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)), 20, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (99, N'Kingston 2TB SSD', CAST(700.00 AS Decimal(6, 2)), CAST(520.00 AS Decimal(18, 2)), 5, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (100, N'Sonos Beam Soundbar', CAST(380.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)), 8, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (101, N'Dell XPS', CAST(1600.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)), 10, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (102, N'Samsung Odyssey Monitor', CAST(500.00 AS Decimal(6, 2)), CAST(380.00 AS Decimal(18, 2)), 8, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (103, N'Razer DeathAdder Mouse', CAST(32.00 AS Decimal(6, 2)), CAST(24.00 AS Decimal(18, 2)), 30, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (104, N'Apple Magic Keyboard Pro', CAST(90.00 AS Decimal(6, 2)), CAST(70.00 AS Decimal(18, 2)), 18, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (105, N'Corsair 1TB NVMe SSD', CAST(550.00 AS Decimal(6, 2)), CAST(400.00 AS Decimal(18, 2)), 5, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (106, N'Bose Soundbar 700', CAST(450.00 AS Decimal(6, 2)), CAST(350.00 AS Decimal(18, 2)), 10, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (107, N'Lenovo ThinkPad X1 Carbon', CAST(1800.00 AS Decimal(6, 2)), CAST(1400.00 AS Decimal(18, 2)), 6, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (108, N'Acer Predator Gaming Monitor', CAST(600.00 AS Decimal(6, 2)), CAST(450.00 AS Decimal(18, 2)), 7, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (109, N'Logitech MX Anywhere Mouse', CAST(35.00 AS Decimal(6, 2)), CAST(28.00 AS Decimal(18, 2)), 25, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (110, N'Mechanical Eagle Keyboard', CAST(70.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(18, 2)), 20, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (111, N'Kingston 2TB SSD', CAST(700.00 AS Decimal(6, 2)), CAST(520.00 AS Decimal(18, 2)), 5, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (112, N'Sonos Beam Soundbar', CAST(380.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)), 8, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (113, N'Alienware m17 R4', CAST(2000.00 AS Decimal(6, 2)), CAST(1500.00 AS Decimal(18, 2)), 5, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (114, N'LG UltraFine 5K Monitor', CAST(800.00 AS Decimal(6, 2)), CAST(600.00 AS Decimal(18, 2)), 4, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (115, N'Logitech G Pro X Superlight', CAST(40.00 AS Decimal(6, 2)), CAST(30.00 AS Decimal(18, 2)), 20, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (116, N'SteelSeries Apex Pro', CAST(100.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(18, 2)), 12, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (117, N'Corsair 4TB NVMe SSD', CAST(1200.00 AS Decimal(6, 2)), CAST(900.00 AS Decimal(18, 2)), 3, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (118, N'Sony WH-1000XM4 Headphones', CAST(300.00 AS Decimal(6, 2)), CAST(220.00 AS Decimal(18, 2)), 8, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (119, N'MSI GE76 Raider', CAST(1800.00 AS Decimal(6, 2)), CAST(1300.00 AS Decimal(18, 2)), 6, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (120, N'Dell Alienware AW3420DW', CAST(1200.00 AS Decimal(6, 2)), CAST(900.00 AS Decimal(18, 2)), 5, 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (121, N'Razer Basilisk Ultimate', CAST(50.00 AS Decimal(6, 2)), CAST(40.00 AS Decimal(18, 2)), 15, 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (122, N'HyperX Alloy FPS Pro', CAST(80.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(18, 2)), 18, 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (123, N'Samsung 8TB SSD', CAST(1600.00 AS Decimal(6, 2)), CAST(1200.00 AS Decimal(18, 2)), 4, 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (124, N'Bose Home Speaker 500', CAST(400.00 AS Decimal(6, 2)), CAST(300.00 AS Decimal(18, 2)), 6, 6)
GO
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [ImportPrice], [Quantity], [CategoryId]) VALUES (125, N'Acer Aspire Black', CAST(1200.00 AS Decimal(6, 2)), CAST(850.00 AS Decimal(18, 2)), 10, 1)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 05/01/2024 11:07:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 05/01/2024 11:07:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_CustomerId]    Script Date: 05/01/2024 11:07:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CustomerId] ON [dbo].[Orders]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 05/01/2024 11:07:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0)) FOR [ImportPrice]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0)) FOR [SalePrice]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0.0)) FOR [ImportPrice]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers_CustomerId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
/****** Object:  StoredProcedure [dbo].[GetProductSoldCountByDay]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductSoldCountByDay]
    @pProductId INT
AS
BEGIN
    SELECT 
        CONVERT(DATE, o.OrderPlaced) AS Date,
        SUM(od.Quantity) AS TotalQuantitySold
    FROM 
        Orders o
    JOIN 
        OrderDetails od ON o.Id = od.OrderId
    WHERE 
        od.ProductId = @pProductId
    GROUP BY 
        CONVERT(DATE, o.OrderPlaced);
END;
GO
/****** Object:  StoredProcedure [dbo].[GetProductSoldCountByMonth]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductSoldCountByMonth]
    @pProductId INT
AS
BEGIN
    SELECT 
        MONTH(o.OrderPlaced) AS Month,
        YEAR(o.OrderPlaced) AS Year,
        SUM(od.Quantity) AS TotalQuantitySold
    FROM 
        Orders o
    JOIN 
        OrderDetails od ON o.Id = od.OrderId
    WHERE 
        od.ProductId = @pProductId
    GROUP BY 
        MONTH(o.OrderPlaced), YEAR(o.OrderPlaced);
END;
GO
/****** Object:  StoredProcedure [dbo].[GetProductSoldCountByWeek]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductSoldCountByWeek]
    @pProductId INT
AS
BEGIN
    SELECT 
        DATEADD(WEEK, DATEDIFF(WEEK, 0, o.OrderPlaced), 0) AS StartOfWeek,
        SUM(od.Quantity) AS TotalQuantitySold
    FROM 
        Orders o
    JOIN 
        OrderDetails od ON o.Id = od.OrderId
    WHERE 
        od.ProductId = @pProductId
    GROUP BY 
        DATEADD(WEEK, DATEDIFF(WEEK, 0, o.OrderPlaced), 0);
END;
GO
/****** Object:  StoredProcedure [dbo].[GetProductSoldCountByYear]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductSoldCountByYear]
    @pProductId INT
AS
BEGIN
    SELECT 
        YEAR(o.OrderPlaced) AS Year,
        SUM(od.Quantity) AS TotalQuantitySold
    FROM 
        Orders o
    JOIN 
        OrderDetails od ON o.Id = od.OrderId
    WHERE 
        od.ProductId = @pProductId
    GROUP BY 
        YEAR(o.OrderPlaced);
END;
GO
/****** Object:  StoredProcedure [dbo].[GetRevenueAndProfitByDay]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRevenueAndProfitByDay]
AS
BEGIN
    SELECT
        CONVERT(date, o.OrderPlaced) AS OrderPlaced,
        SUM(od.SalePrice * od.Quantity) AS Revenue,
        SUM((od.SalePrice - od.ImportPrice) * od.Quantity) AS Profit
    FROM
        OrderDetails od
        INNER JOIN Orders o ON od.OrderId = o.Id
    GROUP BY
        CONVERT(date, o.OrderPlaced)
END
GO
/****** Object:  StoredProcedure [dbo].[GetRevenueAndProfitByMonth]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRevenueAndProfitByMonth]
AS
BEGIN
    SELECT
        MONTH(o.OrderPlaced) AS Month,
        Year(o.OrderPlaced) AS Year,
        SUM(od.SalePrice * od.Quantity) AS Revenue,
        SUM((od.SalePrice - od.ImportPrice) * od.Quantity) AS Profit
    FROM
        OrderDetails od
        INNER JOIN Orders o ON od.OrderId = o.Id
    GROUP BY
        MONTH(o.OrderPlaced), Year(o.OrderPlaced)
END
GO
/****** Object:  StoredProcedure [dbo].[GetRevenueAndProfitByWeek]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRevenueAndProfitByWeek]
AS
BEGIN
    SELECT
        DATEADD(WEEK, DATEDIFF(WEEK, 0, o.OrderPlaced), 0) AS StartOfWeek,
        SUM(od.SalePrice * od.Quantity) AS Revenue,
        SUM((od.SalePrice - od.ImportPrice) * od.Quantity) AS Profit
    FROM
        OrderDetails od
        INNER JOIN Orders o ON od.OrderId = o.Id
    GROUP BY
        DATEADD(WEEK, DATEDIFF(WEEK, 0, o.OrderPlaced), 0);
END
GO
/****** Object:  StoredProcedure [dbo].[GetRevenueAndProfitByYear]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRevenueAndProfitByYear]
AS
BEGIN
    SELECT
        YEAR(o.OrderPlaced) AS Year,
        SUM(od.SalePrice * od.Quantity) AS Revenue,
        SUM((od.SalePrice - od.ImportPrice) * od.Quantity) AS Profit
    FROM
        OrderDetails od
        INNER JOIN Orders o ON od.OrderId = o.Id
    GROUP BY
        YEAR(o.OrderPlaced)
END
GO
/****** Object:  StoredProcedure [dbo].[GetTopSellingProductsCurrentMonth]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTopSellingProductsCurrentMonth]
AS
BEGIN
    DECLARE @StartOfMonth DATETIME2;
    SET @StartOfMonth = DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0);

    SELECT TOP 3
        OD.ProductId,
        P.Name,
        SUM(OD.Quantity) AS TotalQuantitySold
    FROM
        dbo.OrderDetails OD
    INNER JOIN
        dbo.Orders O ON OD.OrderId = O.Id
    INNER JOIN
        dbo.Products P ON OD.ProductId = P.Id
    WHERE
        O.OrderPlaced >= @StartOfMonth
    GROUP BY
        OD.ProductId, P.Name
    ORDER BY
        TotalQuantitySold DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetTopSellingProductsCurrentWeek]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTopSellingProductsCurrentWeek]
AS
BEGIN
    DECLARE @StartOfWeek DATETIME2;
    SET @StartOfWeek = DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()), 0);

    SELECT TOP 3
        OD.ProductId,
        P.Name,
        SUM(OD.Quantity) AS TotalQuantitySold
    FROM
        dbo.OrderDetails OD
    INNER JOIN
        dbo.Orders O ON OD.OrderId = O.Id
    INNER JOIN
        dbo.Products P ON OD.ProductId = P.Id
    WHERE
        O.OrderPlaced >= @StartOfWeek
    GROUP BY
        OD.ProductId, P.Name
    ORDER BY
        TotalQuantitySold DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetTopSellingProductsCurrentYear]    Script Date: 05/01/2024 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTopSellingProductsCurrentYear]
AS
BEGIN
    DECLARE @StartOfYear DATETIME2;
    SET @StartOfYear = DATEADD(YEAR, DATEDIFF(YEAR, 0, GETDATE()), 0);

    SELECT TOP 3
        OD.ProductId,
        P.Name,
        SUM(OD.Quantity) AS TotalQuantitySold
    FROM
        dbo.OrderDetails OD
    INNER JOIN
        dbo.Orders O ON OD.OrderId = O.Id
    INNER JOIN
        dbo.Products P ON OD.ProductId = P.Id
    WHERE
        O.OrderPlaced >= @StartOfYear
    GROUP BY
        OD.ProductId, P.Name
    ORDER BY
        TotalQuantitySold DESC;
END;
GO
USE [master]
GO
ALTER DATABASE [MyShop] SET  READ_WRITE 
GO
