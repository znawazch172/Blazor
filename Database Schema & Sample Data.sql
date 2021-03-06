/****** Object:  User [genesip]    Script Date: 8/30/2018 3:10:19 PM ******/
CREATE USER [genesip] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [genesip]
GO
/****** Object:  Table [dbo].[tbl_Bill_Invoice]    Script Date: 8/30/2018 3:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bill_Invoice](
	[InvoiceNo] [nvarchar](50) NOT NULL,
	[Date] [date] NULL,
	[Seller] [nvarchar](50) NULL,
	[TotalPrice] [decimal](18, 2) NULL,
	[Discount] [int] NULL,
	[Payment] [decimal](18, 2) NULL,
	[Balance] [decimal](18, 2) NULL,
	[NoOfQty] [int] NULL,
	[PayableTot] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbl_Bill_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Bill_Items]    Script Date: 8/30/2018 3:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bill_Items](
	[InvoiceNo] [nvarchar](50) NOT NULL,
	[ItemNo] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Qty] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbl_Bill_Items] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC,
	[ItemNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Company]    Script Date: 8/30/2018 3:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Company](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tbl_Company_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Invoice]    Script Date: 8/30/2018 3:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Invoice](
	[InvoiceNo] [nvarchar](50) NOT NULL,
	[Date] [date] NULL,
	[Seller] [nvarchar](50) NULL,
	[TotalPrice] [decimal](18, 2) NULL,
	[Discount] [int] NULL,
	[Payment] [decimal](18, 2) NULL,
	[Balance] [decimal](18, 2) NULL,
	[NoOfQty] [int] NULL,
	[PayableTot] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbl_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_InvoiceItems]    Script Date: 8/30/2018 3:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_InvoiceItems](
	[InvoiceNo] [nvarchar](50) NOT NULL,
	[ItemNo] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Qty] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbl_InvoiceItems] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC,
	[ItemNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Stock]    Script Date: 8/30/2018 3:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Stock](
	[ItemNo] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Qty] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbl_Stock] PRIMARY KEY CLUSTERED 
(
	[ItemNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TempSellItems]    Script Date: 8/30/2018 3:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TempSellItems](
	[ItemNo] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[TotalQty] [int] NULL,
 CONSTRAINT [PK_tbl_TempSellItems] PRIMARY KEY CLUSTERED 
(
	[ItemNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 8/30/2018 3:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[SecQuestion] [nvarchar](150) NULL,
	[SecAnswer] [nvarchar](100) NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_tbl_Users] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Company] ([ID], [Name]) VALUES (1, N'Hannan Traders Co.')
GO
INSERT [dbo].[tbl_Stock] ([ItemNo], [Description], [Qty], [UnitPrice]) VALUES (N'00001', N'Water Nestle Pet, 1.5 ltr', 802, CAST(190.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[tbl_Users] ([UserName], [Password], [SecQuestion], [SecAnswer], [RoleId]) VALUES (N'Admin', N'Admin', N'What is the favourte color of your favourite person?', N'0535593298', 0)
GO
INSERT [dbo].[tbl_Users] ([UserName], [Password], [SecQuestion], [SecAnswer], [RoleId]) VALUES (N'Tassadiq', N'1234', N'What is the colour of your first pet ?', N'Laika', 0)
GO
