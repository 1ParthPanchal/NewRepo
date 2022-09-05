--USE [PharmEasy1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24-08-2022 11:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cArticles]    Script Date: 24-08-2022 11:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cArticles](
	[A_Id] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](max) NOT NULL,
	[A_Date] [datetime2](7) NOT NULL,
	[A_Discription] [nvarchar](max) NULL,
 CONSTRAINT [PK_cArticles] PRIMARY KEY CLUSTERED 
(
	[A_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carts]    Script Date: 24-08-2022 11:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carts](
	[C_Id] [int] IDENTITY(1,1) NOT NULL,
	[Off_Id1] [int] NULL,
	[o_quantityo_Id] [int] NULL,
 CONSTRAINT [PK_carts] PRIMARY KEY CLUSTERED 
(
	[C_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catagories]    Script Date: 24-08-2022 11:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catagories](
	[Cat_Id] [int] IDENTITY(1,1) NOT NULL,
	[Cat_Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_catagories] PRIMARY KEY CLUSTERED 
(
	[Cat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 24-08-2022 11:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[Cat_Id] [int] IDENTITY(1,1) NOT NULL,
	[Cat_Name] [nvarchar](max) NOT NULL,
	[Cat_Images] [nvarchar](max) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[Cat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[displayDetails]    Script Date: 24-08-2022 11:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[displayDetails](
	[Full_Name] [nvarchar](450) NOT NULL,
	[Display_Name] [nvarchar](max) NULL,
	[Pincode] [int] NOT NULL,
 CONSTRAINT [PK_displayDetails] PRIMARY KEY CLUSTERED 
(
	[Full_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hArticles]    Script Date: 24-08-2022 11:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hArticles](
	[H_Id] [int] IDENTITY(1,1) NOT NULL,
	[H_Discription] [nvarchar](max) NOT NULL,
	[H_Heading] [varchar](20) NULL,
 CONSTRAINT [PK_hArticles] PRIMARY KEY CLUSTERED 
(
	[H_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logins]    Script Date: 24-08-2022 11:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logins](
	[Mobile_Number] [int] IDENTITY(1,1) NOT NULL,
	[Create_Password] [nvarchar](max) NULL,
	[Conform_Password] [nvarchar](max) NULL,
	[GST_Number] [nvarchar](max) NULL,
 CONSTRAINT [PK_logins] PRIMARY KEY CLUSTERED 
(
	[Mobile_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[offers]    Script Date: 24-08-2022 11:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offers](
	[Off_Id] [int] IDENTITY(1,1) NOT NULL,
	[Off_Discription] [nvarchar](max) NOT NULL,
	[Off_Code] [nvarchar](max) NULL,
 CONSTRAINT [PK_offers] PRIMARY KEY CLUSTERED 
(
	[Off_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 24-08-2022 11:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[o_Id] [int] IDENTITY(1,1) NOT NULL,
	[o_Details] [nvarchar](max) NULL,
	[o_quantity] [int] NOT NULL,
	[Off_Id] [int] NOT NULL,
	[Pr_Id] [int] NOT NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[o_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 24-08-2022 11:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[Pr_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pr_Name] [nvarchar](max) NOT NULL,
	[Pr_Discription] [nvarchar](max) NULL,
	[Pr_Price] [int] NOT NULL,
	[Cat_Id] [int] NULL,
	[CategoriesCat_Id] [int] NULL,
	[Pr_Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[Pr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sproducts]    Script Date: 24-08-2022 11:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sproducts](
	[Pr_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pr_Name] [nvarchar](max) NOT NULL,
	[Pr_Discription] [nvarchar](max) NULL,
	[Pr_Price] [int] NOT NULL,
	[Cat_Id1] [int] NULL,
	[Brand_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_sproducts] PRIMARY KEY CLUSTERED 
(
	[Pr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT ((0)) FOR [Off_Id]
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT ((0)) FOR [Pr_Id]
GO
ALTER TABLE [dbo].[carts]  WITH CHECK ADD  CONSTRAINT [FK_carts_offers_Off_Id1] FOREIGN KEY([Off_Id1])
REFERENCES [dbo].[offers] ([Off_Id])
GO
ALTER TABLE [dbo].[carts] CHECK CONSTRAINT [FK_carts_offers_Off_Id1]
GO
ALTER TABLE [dbo].[carts]  WITH CHECK ADD  CONSTRAINT [FK_carts_orders_o_quantityo_Id] FOREIGN KEY([o_quantityo_Id])
REFERENCES [dbo].[orders] ([o_Id])
GO
ALTER TABLE [dbo].[carts] CHECK CONSTRAINT [FK_carts_orders_o_quantityo_Id]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_Categories_CategoriesCat_Id] FOREIGN KEY([CategoriesCat_Id])
REFERENCES [dbo].[categories] ([Cat_Id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_Categories_CategoriesCat_Id]
GO


CREATE PROCEDURE OrderTemp 
AS
BEGIN
CREATE TABLE #OrderDetails(o_Id int,
o_Details varchar(255),
Pr_Id int,
o_quantity int,
Off_Id int
)

END
EXECUTE OrderTemp 