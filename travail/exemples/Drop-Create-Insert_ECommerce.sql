USE [ECommerce_data]
GO
ALTER TABLE [dbo].[products] DROP CONSTRAINT [FK_products_product_categories]
GO
ALTER TABLE [dbo].[orders_have_order_states] DROP CONSTRAINT [FK_orders_have_order_states_orders]
GO
ALTER TABLE [dbo].[orders_have_order_states] DROP CONSTRAINT [FK_orders_have_order_states_order_states]
GO
ALTER TABLE [dbo].[orders_contain_products] DROP CONSTRAINT [FK_orders_contain_products_products]
GO
ALTER TABLE [dbo].[orders_contain_products] DROP CONSTRAINT [FK_orders_contain_products_orders]
GO
ALTER TABLE [dbo].[orders] DROP CONSTRAINT [FK_orders_customers]
GO
ALTER TABLE [dbo].[customers_receive_promotions] DROP CONSTRAINT [FK_customers_receive_promotions_promotions]
GO
ALTER TABLE [dbo].[customers_receive_promotions] DROP CONSTRAINT [FK_customers_receive_promotions_customers]
GO
ALTER TABLE [dbo].[customers] DROP CONSTRAINT [FK_customers_customer_categories]
GO
ALTER TABLE [dbo].[customer_categories] DROP CONSTRAINT [FK_customer_categories_customer_categories]
GO
/****** Object:  Table [dbo].[promotions]    Script Date: 12.01.2022 09:31:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[promotions]') AND type in (N'U'))
DROP TABLE [dbo].[promotions]
GO
/****** Object:  Table [dbo].[products]    Script Date: 12.01.2022 09:31:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[products]') AND type in (N'U'))
DROP TABLE [dbo].[products]
GO
/****** Object:  Table [dbo].[product_categories]    Script Date: 12.01.2022 09:31:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_categories]') AND type in (N'U'))
DROP TABLE [dbo].[product_categories]
GO
/****** Object:  Table [dbo].[orders_have_order_states]    Script Date: 12.01.2022 09:31:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[orders_have_order_states]') AND type in (N'U'))
DROP TABLE [dbo].[orders_have_order_states]
GO
/****** Object:  Table [dbo].[orders_contain_products]    Script Date: 12.01.2022 09:31:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[orders_contain_products]') AND type in (N'U'))
DROP TABLE [dbo].[orders_contain_products]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 12.01.2022 09:31:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[orders]') AND type in (N'U'))
DROP TABLE [dbo].[orders]
GO
/****** Object:  Table [dbo].[order_states]    Script Date: 12.01.2022 09:31:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_states]') AND type in (N'U'))
DROP TABLE [dbo].[order_states]
GO
/****** Object:  Table [dbo].[customers_receive_promotions]    Script Date: 12.01.2022 09:31:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customers_receive_promotions]') AND type in (N'U'))
DROP TABLE [dbo].[customers_receive_promotions]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 12.01.2022 09:31:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customers]') AND type in (N'U'))
DROP TABLE [dbo].[customers]
GO
/****** Object:  Table [dbo].[customer_categories]    Script Date: 12.01.2022 09:31:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_categories]') AND type in (N'U'))
DROP TABLE [dbo].[customer_categories]
GO
USE [master]
GO
/****** Object:  Database [ECommerce_data]    Script Date: 12.01.2022 09:31:19 ******/
DROP DATABASE [ECommerce_data]
GO
/****** Object:  Database [ECommerce_data]    Script Date: 12.01.2022 09:31:19 ******/
CREATE DATABASE [ECommerce_data]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ECommerce_data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ECommerce_data.mdf' , SIZE = 20480KB , MAXSIZE = 51200KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ECommerce_data_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ECommerce_data_log.ldf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ECommerce_data] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ECommerce_data].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ECommerce_data] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ECommerce_data] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ECommerce_data] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ECommerce_data] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ECommerce_data] SET ARITHABORT OFF 
GO
ALTER DATABASE [ECommerce_data] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ECommerce_data] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ECommerce_data] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ECommerce_data] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ECommerce_data] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ECommerce_data] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ECommerce_data] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ECommerce_data] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ECommerce_data] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ECommerce_data] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ECommerce_data] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ECommerce_data] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ECommerce_data] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ECommerce_data] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ECommerce_data] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ECommerce_data] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ECommerce_data] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ECommerce_data] SET RECOVERY FULL 
GO
ALTER DATABASE [ECommerce_data] SET  MULTI_USER 
GO
ALTER DATABASE [ECommerce_data] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ECommerce_data] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ECommerce_data] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ECommerce_data] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ECommerce_data] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ECommerce_data] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ECommerce_data', N'ON'
GO
ALTER DATABASE [ECommerce_data] SET QUERY_STORE = OFF
GO
USE [ECommerce_data]
GO
/****** Object:  Table [dbo].[customer_categories]    Script Date: 12.01.2022 09:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](45) NULL,
 CONSTRAINT [PK_customer_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 12.01.2022 09:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [nchar](50) NULL,
	[lastname] [nchar](50) NULL,
	[inscriptionDate] [date] NULL,
	[customer_category_id] [int] NULL,
 CONSTRAINT [PK_customers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers_receive_promotions]    Script Date: 12.01.2022 09:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers_receive_promotions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[promotion_id] [int] NULL,
 CONSTRAINT [PK_customers_receive_promotions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_states]    Script Date: 12.01.2022 09:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_states](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](30) NULL,
 CONSTRAINT [PK_order_states] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 12.01.2022 09:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderRefNo] [varchar](20) NULL,
	[date] [datetime] NULL,
	[customer_id] [int] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders_contain_products]    Script Date: 12.01.2022 09:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders_contain_products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_orders_contain_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders_have_order_states]    Script Date: 12.01.2022 09:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders_have_order_states](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[order_state_id] [int] NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_orders_have_order_states] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_categories]    Script Date: 12.01.2022 09:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](40) NULL,
 CONSTRAINT [PK_product_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 12.01.2022 09:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[brand] [nvarchar](30) NULL,
	[model] [nvarchar](30) NULL,
	[description] [nvarchar](4000) NULL,
	[price] [decimal](20, 2) NULL,
	[inventoryReceived] [int] NULL,
	[product_category_id] [int] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotions]    Script Date: 12.01.2022 09:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promotions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](45) NULL,
	[percentSale] [float] NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
 CONSTRAINT [PK_promotions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[customer_categories] ON 

INSERT [dbo].[customer_categories] ([id], [name]) VALUES (1, N'Standard')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (2, N'Gold')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (3, N'Platine')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (4, N'Standard')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (5, N'Gold')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (6, N'Platine')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (7, N'Standard')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (8, N'Gold')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (9, N'Platine')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (10, N'Standard')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (11, N'Gold')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (12, N'Platine')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (13, N'Standard')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (14, N'Gold')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (15, N'Platine')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (16, N'Standard')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (17, N'Gold')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (18, N'Platine')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (19, N'Standard')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (20, N'Gold')
INSERT [dbo].[customer_categories] ([id], [name]) VALUES (21, N'Platine')
SET IDENTITY_INSERT [dbo].[customer_categories] OFF
GO
SET IDENTITY_INSERT [dbo].[customers] ON 

INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (1, N'Henry                                             ', N'Arsene                                            ', CAST(N'2021-09-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (2, N'Anne-Pascale                                      ', N'Burdant                                           ', CAST(N'2021-10-10' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (3, N'Pascal                                            ', N'Hurny                                             ', CAST(N'2021-11-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (4, N'Alice                                             ', N'Alpha                                             ', CAST(N'2021-05-06' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (5, N'Bob                                               ', N'Beta                                              ', CAST(N'2021-06-28' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (6, N'Narberal                                          ', N'Gamma                                             ', CAST(N'2021-07-21' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (7, N'Auréole                                           ', N'Omega                                             ', CAST(N'2021-09-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (8, N'Regina                                            ', N'Bilon                                             ', CAST(N'2021-05-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (9, N'Fran                                              ', N'Cesca                                             ', CAST(N'2021-03-01' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (10, N'Mochi                                             ', N'Zuki                                              ', CAST(N'2021-04-01' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (11, N'Henry                                             ', N'Arsene                                            ', CAST(N'2021-09-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (12, N'Anne-Pascale                                      ', N'Burdant                                           ', CAST(N'2021-10-10' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (13, N'Pascal                                            ', N'Hurny                                             ', CAST(N'2021-11-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (14, N'Alice                                             ', N'Alpha                                             ', CAST(N'2021-05-06' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (15, N'Bob                                               ', N'Beta                                              ', CAST(N'2021-06-28' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (16, N'Narberal                                          ', N'Gamma                                             ', CAST(N'2021-07-21' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (17, N'Auréole                                           ', N'Omega                                             ', CAST(N'2021-09-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (18, N'Regina                                            ', N'Bilon                                             ', CAST(N'2021-05-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (19, N'Fran                                              ', N'Cesca                                             ', CAST(N'2021-03-01' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (20, N'Mochi                                             ', N'Zuki                                              ', CAST(N'2021-04-01' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (21, N'Henry                                             ', N'Arsene                                            ', CAST(N'2021-09-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (22, N'Anne-Pascale                                      ', N'Burdant                                           ', CAST(N'2021-10-10' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (23, N'Pascal                                            ', N'Hurny                                             ', CAST(N'2021-11-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (24, N'Alice                                             ', N'Alpha                                             ', CAST(N'2021-05-06' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (25, N'Bob                                               ', N'Beta                                              ', CAST(N'2021-06-28' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (26, N'Narberal                                          ', N'Gamma                                             ', CAST(N'2021-07-21' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (27, N'Auréole                                           ', N'Omega                                             ', CAST(N'2021-09-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (28, N'Regina                                            ', N'Bilon                                             ', CAST(N'2021-05-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (29, N'Fran                                              ', N'Cesca                                             ', CAST(N'2021-03-01' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (30, N'Mochi                                             ', N'Zuki                                              ', CAST(N'2021-04-01' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (31, N'Henry                                             ', N'Arsene                                            ', CAST(N'2021-09-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (32, N'Anne-Pascale                                      ', N'Burdant                                           ', CAST(N'2021-10-10' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (33, N'Pascal                                            ', N'Hurny                                             ', CAST(N'2021-11-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (34, N'Alice                                             ', N'Alpha                                             ', CAST(N'2021-05-06' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (35, N'Bob                                               ', N'Beta                                              ', CAST(N'2021-06-28' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (36, N'Narberal                                          ', N'Gamma                                             ', CAST(N'2021-07-21' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (37, N'Auréole                                           ', N'Omega                                             ', CAST(N'2021-09-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (38, N'Regina                                            ', N'Bilon                                             ', CAST(N'2021-05-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (39, N'Fran                                              ', N'Cesca                                             ', CAST(N'2021-03-01' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (40, N'Mochi                                             ', N'Zuki                                              ', CAST(N'2021-04-01' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (41, N'Henry                                             ', N'Arsene                                            ', CAST(N'2021-09-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (42, N'Anne-Pascale                                      ', N'Burdant                                           ', CAST(N'2021-10-10' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (43, N'Pascal                                            ', N'Hurny                                             ', CAST(N'2021-11-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (44, N'Alice                                             ', N'Alpha                                             ', CAST(N'2021-05-06' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (45, N'Bob                                               ', N'Beta                                              ', CAST(N'2021-06-28' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (46, N'Narberal                                          ', N'Gamma                                             ', CAST(N'2021-07-21' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (47, N'Auréole                                           ', N'Omega                                             ', CAST(N'2021-09-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (48, N'Regina                                            ', N'Bilon                                             ', CAST(N'2021-05-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (49, N'Fran                                              ', N'Cesca                                             ', CAST(N'2021-03-01' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (50, N'Mochi                                             ', N'Zuki                                              ', CAST(N'2021-04-01' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (51, N'Henry                                             ', N'Arsene                                            ', CAST(N'2021-09-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (52, N'Anne-Pascale                                      ', N'Burdant                                           ', CAST(N'2021-10-10' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (53, N'Pascal                                            ', N'Hurny                                             ', CAST(N'2021-11-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (54, N'Alice                                             ', N'Alpha                                             ', CAST(N'2021-05-06' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (55, N'Bob                                               ', N'Beta                                              ', CAST(N'2021-06-28' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (56, N'Narberal                                          ', N'Gamma                                             ', CAST(N'2021-07-21' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (57, N'Auréole                                           ', N'Omega                                             ', CAST(N'2021-09-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (58, N'Regina                                            ', N'Bilon                                             ', CAST(N'2021-05-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (59, N'Fran                                              ', N'Cesca                                             ', CAST(N'2021-03-01' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (60, N'Mochi                                             ', N'Zuki                                              ', CAST(N'2021-04-01' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (61, N'Henry                                             ', N'Arsene                                            ', CAST(N'2021-09-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (62, N'Anne-Pascale                                      ', N'Burdant                                           ', CAST(N'2021-10-10' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (63, N'Pascal                                            ', N'Hurny                                             ', CAST(N'2021-11-13' AS Date), 2)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (64, N'Alice                                             ', N'Alpha                                             ', CAST(N'2021-05-06' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (65, N'Bob                                               ', N'Beta                                              ', CAST(N'2021-06-28' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (66, N'Narberal                                          ', N'Gamma                                             ', CAST(N'2021-07-21' AS Date), 3)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (67, N'Auréole                                           ', N'Omega                                             ', CAST(N'2021-09-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (68, N'Regina                                            ', N'Bilon                                             ', CAST(N'2021-05-20' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (69, N'Fran                                              ', N'Cesca                                             ', CAST(N'2021-03-01' AS Date), 1)
INSERT [dbo].[customers] ([id], [firstname], [lastname], [inscriptionDate], [customer_category_id]) VALUES (70, N'Mochi                                             ', N'Zuki                                              ', CAST(N'2021-04-01' AS Date), 3)
SET IDENTITY_INSERT [dbo].[customers] OFF
GO
SET IDENTITY_INSERT [dbo].[customers_receive_promotions] ON 

INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (3, 10, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (4, 10, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (5, 10, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (6, 10, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (7, 9, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (8, 3, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (9, 1, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (10, 1, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (11, 4, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (12, 10, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (13, 10, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (14, 10, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (15, 10, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (16, 9, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (17, 3, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (18, 1, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (19, 1, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (20, 4, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (21, 10, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (22, 10, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (23, 10, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (24, 10, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (25, 9, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (26, 3, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (27, 1, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (28, 1, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (29, 4, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (30, 10, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (31, 10, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (32, 10, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (33, 10, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (34, 9, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (35, 3, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (36, 1, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (37, 1, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (38, 4, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (39, 10, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (40, 10, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (41, 10, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (42, 10, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (43, 9, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (44, 3, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (45, 1, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (46, 1, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (47, 4, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (48, 10, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (49, 10, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (50, 10, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (51, 10, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (52, 9, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (53, 3, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (54, 1, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (55, 1, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (56, 4, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (57, 10, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (58, 10, 2)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (59, 10, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (60, 10, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (61, 9, 4)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (62, 3, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (63, 1, 1)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (64, 1, 3)
INSERT [dbo].[customers_receive_promotions] ([id], [customer_id], [promotion_id]) VALUES (65, 4, 2)
SET IDENTITY_INSERT [dbo].[customers_receive_promotions] OFF
GO
SET IDENTITY_INSERT [dbo].[order_states] ON 

INSERT [dbo].[order_states] ([id], [name]) VALUES (1, N'Nouvelle                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (2, N'En préparation                ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (3, N'Expédiée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (4, N'Terminée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (5, N'Nouvelle                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (6, N'En préparation                ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (7, N'Expédiée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (8, N'Terminée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (9, N'Nouvelle                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (10, N'En préparation                ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (11, N'Expédiée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (12, N'Terminée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (13, N'Nouvelle                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (14, N'En préparation                ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (15, N'Expédiée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (16, N'Terminée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (17, N'Nouvelle                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (18, N'En préparation                ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (19, N'Expédiée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (20, N'Terminée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (21, N'Nouvelle                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (22, N'En préparation                ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (23, N'Expédiée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (24, N'Terminée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (25, N'Nouvelle                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (26, N'En préparation                ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (27, N'Expédiée                      ')
INSERT [dbo].[order_states] ([id], [name]) VALUES (28, N'Terminée                      ')
SET IDENTITY_INSERT [dbo].[order_states] OFF
GO
SET IDENTITY_INSERT [dbo].[product_categories] ON 

INSERT [dbo].[product_categories] ([id], [name]) VALUES (1, N'Apple')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (2, N'Electroménager')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (3, N'Ordinateurs')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (4, N'Mode, vêtements, accessoires')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (5, N'Antique')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (6, N'Electroménager')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (7, N'Ordinateurs')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (8, N'Mode, vêtements, accessoires')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (9, N'Antique')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (10, N'Electroménager')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (11, N'Ordinateurs')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (12, N'Mode, vêtements, accessoires')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (13, N'Antique')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (14, N'Electroménager')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (15, N'Ordinateurs')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (16, N'Mode, vêtements, accessoires')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (17, N'Antique')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (18, N'Electroménager')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (19, N'Ordinateurs')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (20, N'Mode, vêtements, accessoires')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (21, N'Antique')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (22, N'Electroménager')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (23, N'Ordinateurs')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (24, N'Mode, vêtements, accessoires')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (25, N'Antique')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (26, N'Electroménager')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (27, N'Ordinateurs')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (28, N'Mode, vêtements, accessoires')
INSERT [dbo].[product_categories] ([id], [name]) VALUES (29, N'Antique')
SET IDENTITY_INSERT [dbo].[product_categories] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (1, N'Apple', N'Macbook Pro 32', N'Macbook Pro standard modèle supérieur de 32 Go de RAM', CAST(3600.00 AS Decimal(20, 2)), 3, NULL)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (2, N'Microsoft', N'Windows 10 Pro', N'Single licence of Microsoft Windows 10 Pro', CAST(50.00 AS Decimal(20, 2)), 10, NULL)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (3, N'Louis Vuitton', N'T-Bag', N'super sac solide', CAST(450.00 AS Decimal(20, 2)), 1, NULL)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (25, N'Chanel', N'CC', N'Magnifique boucles d oreilles', CAST(950.00 AS Decimal(20, 2)), 5, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (26, N'Supreme', N'T-shirts', N'T-shirt à manches courtes', CAST(50.00 AS Decimal(20, 2)), 30, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (27, N'Chico', N'poussette bébé', N'Pour votre nourisson', CAST(159.00 AS Decimal(20, 2)), 4, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (28, N'Supreme', N'T-shirts', N'T-shirt à manches courtes', CAST(50.00 AS Decimal(20, 2)), 30, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (29, N'Leader ClearLax', N'Jam - Apricot', N'Grus rubicundus', CAST(1605.00 AS Decimal(20, 2)), 49, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (30, N'Pleo San Brucel', N'Wine - Alsace Riesling Reserve', N'Colobus guerza', CAST(2246.00 AS Decimal(20, 2)), 26, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (31, N'CVS Extra Strength Cold', N'Beer - Alexander', N'Phascogale calura', CAST(1777.00 AS Decimal(20, 2)), 30, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (32, N'Colgate', N'Cookie Dough - Peanut Butter', N'Pavo cristatus', CAST(659.00 AS Decimal(20, 2)), 10, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (33, N'Hydrocortisone', N'Dc Hikiage Hira Huba', N'Bucephala clangula', CAST(2016.00 AS Decimal(20, 2)), 24, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (34, N'Bio Honeysuckle', N'Red Pepper Paste', N'Meles meles', CAST(792.00 AS Decimal(20, 2)), 11, 4)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (35, N'Fiorinal', N'Salmon - Atlantic, Skin On', N'Manouria emys', CAST(453.00 AS Decimal(20, 2)), 28, 2)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (36, N'QUESTRAN', N'Club Soda - Schweppes, 355 Ml', N'Acanthaster planci', CAST(197.00 AS Decimal(20, 2)), 30, 2)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (37, N'Drainage', N'Pork - Belly Fresh', N'Tockus flavirostris', CAST(405.00 AS Decimal(20, 2)), 23, 2)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (38, N'Escitalopram', N'Vinegar - Sherry', N'Phalaropus lobatus', CAST(517.00 AS Decimal(20, 2)), 49, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (39, N'MORPHINE SULFATE', N'Sauce - Au Jus Mix', N'Loris tardigratus', CAST(2374.00 AS Decimal(20, 2)), 31, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (40, N'Hydrochloride', N'Arctic Char', N'Carduelis uropygialis', CAST(2084.00 AS Decimal(20, 2)), 36, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (41, N'Cold relief', N'Ham - Proscuitto', N'Stercorarius longicausus', CAST(2325.00 AS Decimal(20, 2)), 23, 4)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (42, N'ED CHLORPED JR', N'Butcher Twine 4r', N'Panthera leo', CAST(1724.00 AS Decimal(20, 2)), 21, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (43, N'Body', N'Irish Whiskey', N'Dusicyon thous', CAST(1090.00 AS Decimal(20, 2)), 39, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (44, N'Iopidine', N'Veal Provini', N'Centrocercus urophasianus', CAST(1504.00 AS Decimal(20, 2)), 48, 4)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (45, N'Gabapentin', N'Salami - Genova', N'Tamandua tetradactyla', CAST(247.00 AS Decimal(20, 2)), 13, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (46, N'Insti-Foam', N'Cookies - Englishbay', N'unavailable', CAST(420.00 AS Decimal(20, 2)), 36, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (47, N'Ultra Glow Fade', N'Seedlings', N'Mycteria leucocephala', CAST(1245.00 AS Decimal(20, 2)), 32, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (48, N'FAMILY CARE', N'Salt - Kosher', N'Actophilornis africanus', CAST(1579.00 AS Decimal(20, 2)), 14, NULL)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (49, N'Chanel', N'CC', N'Magnifique boucles d oreilles', CAST(950.00 AS Decimal(20, 2)), 5, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (50, N'Supreme', N'T-shirts', N'T-shirt à manches courtes', CAST(50.00 AS Decimal(20, 2)), 30, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (51, N'Chico', N'poussette bébé', N'Pour votre nourisson', CAST(159.00 AS Decimal(20, 2)), 4, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (52, N'Supreme', N'T-shirts', N'T-shirt à manches courtes', CAST(50.00 AS Decimal(20, 2)), 30, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (53, N'Leader ClearLax', N'Jam - Apricot', N'Grus rubicundus', CAST(1605.00 AS Decimal(20, 2)), 49, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (54, N'Pleo San Brucel', N'Wine - Alsace Riesling Reserve', N'Colobus guerza', CAST(2246.00 AS Decimal(20, 2)), 26, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (55, N'CVS Extra Strength Cold', N'Beer - Alexander', N'Phascogale calura', CAST(1777.00 AS Decimal(20, 2)), 30, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (56, N'Colgate', N'Cookie Dough - Peanut Butter', N'Pavo cristatus', CAST(659.00 AS Decimal(20, 2)), 10, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (57, N'Hydrocortisone', N'Dc Hikiage Hira Huba', N'Bucephala clangula', CAST(2016.00 AS Decimal(20, 2)), 24, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (58, N'Bio Honeysuckle', N'Red Pepper Paste', N'Meles meles', CAST(792.00 AS Decimal(20, 2)), 11, 4)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (59, N'Fiorinal', N'Salmon - Atlantic, Skin On', N'Manouria emys', CAST(453.00 AS Decimal(20, 2)), 28, 2)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (60, N'QUESTRAN', N'Club Soda - Schweppes, 355 Ml', N'Acanthaster planci', CAST(197.00 AS Decimal(20, 2)), 30, 2)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (61, N'Drainage', N'Pork - Belly Fresh', N'Tockus flavirostris', CAST(405.00 AS Decimal(20, 2)), 23, 2)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (62, N'Escitalopram', N'Vinegar - Sherry', N'Phalaropus lobatus', CAST(517.00 AS Decimal(20, 2)), 49, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (63, N'MORPHINE SULFATE', N'Sauce - Au Jus Mix', N'Loris tardigratus', CAST(2374.00 AS Decimal(20, 2)), 31, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (64, N'Hydrochloride', N'Arctic Char', N'Carduelis uropygialis', CAST(2084.00 AS Decimal(20, 2)), 36, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (65, N'Cold relief', N'Ham - Proscuitto', N'Stercorarius longicausus', CAST(2325.00 AS Decimal(20, 2)), 23, 4)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (66, N'ED CHLORPED JR', N'Butcher Twine 4r', N'Panthera leo', CAST(1724.00 AS Decimal(20, 2)), 21, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (67, N'Body', N'Irish Whiskey', N'Dusicyon thous', CAST(1090.00 AS Decimal(20, 2)), 39, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (68, N'Iopidine', N'Veal Provini', N'Centrocercus urophasianus', CAST(1504.00 AS Decimal(20, 2)), 48, 4)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (69, N'Gabapentin', N'Salami - Genova', N'Tamandua tetradactyla', CAST(247.00 AS Decimal(20, 2)), 13, 1)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (70, N'Insti-Foam', N'Cookies - Englishbay', N'unavailable', CAST(420.00 AS Decimal(20, 2)), 36, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (71, N'Ultra Glow Fade', N'Seedlings', N'Mycteria leucocephala', CAST(1245.00 AS Decimal(20, 2)), 32, 3)
INSERT [dbo].[products] ([id], [brand], [model], [description], [price], [inventoryReceived], [product_category_id]) VALUES (72, N'FAMILY CARE', N'Salt - Kosher', N'Actophilornis africanus', CAST(1579.00 AS Decimal(20, 2)), 14, NULL)
SET IDENTITY_INSERT [dbo].[products] OFF
GO
SET IDENTITY_INSERT [dbo].[promotions] ON 

INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (1, N'Soldes Noel', 25, CAST(N'2021-12-10T00:00:00.000' AS DateTime), CAST(N'2021-12-24T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (2, N'Soldes été', 20, CAST(N'2021-07-01T00:00:00.000' AS DateTime), CAST(N'2021-07-14T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (3, N'Nouvel an chinois', 15, CAST(N'2021-04-01T00:00:00.000' AS DateTime), CAST(N'2021-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (4, N'Black Friday', 30, CAST(N'2021-12-24T00:00:00.000' AS DateTime), CAST(N'2021-11-26T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (5, N'Soldes Noel', 25, CAST(N'2021-12-10T00:00:00.000' AS DateTime), CAST(N'2021-12-24T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (6, N'Soldes été', 20, CAST(N'2021-07-01T00:00:00.000' AS DateTime), CAST(N'2021-07-14T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (7, N'Nouvel an chinois', 15, CAST(N'2021-04-01T00:00:00.000' AS DateTime), CAST(N'2021-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (8, N'Black Friday', 30, CAST(N'2021-12-24T00:00:00.000' AS DateTime), CAST(N'2021-11-26T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (9, N'Soldes Noel', 25, CAST(N'2021-12-10T00:00:00.000' AS DateTime), CAST(N'2021-12-24T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (10, N'Soldes été', 20, CAST(N'2021-07-01T00:00:00.000' AS DateTime), CAST(N'2021-07-14T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (11, N'Nouvel an chinois', 15, CAST(N'2021-04-01T00:00:00.000' AS DateTime), CAST(N'2021-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (12, N'Black Friday', 30, CAST(N'2021-12-24T00:00:00.000' AS DateTime), CAST(N'2021-11-26T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (13, N'Soldes Noel', 25, CAST(N'2021-12-10T00:00:00.000' AS DateTime), CAST(N'2021-12-24T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (14, N'Soldes été', 20, CAST(N'2021-07-01T00:00:00.000' AS DateTime), CAST(N'2021-07-14T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (15, N'Nouvel an chinois', 15, CAST(N'2021-04-01T00:00:00.000' AS DateTime), CAST(N'2021-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (16, N'Black Friday', 30, CAST(N'2021-12-24T00:00:00.000' AS DateTime), CAST(N'2021-11-26T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (17, N'Soldes Noel', 25, CAST(N'2021-12-10T00:00:00.000' AS DateTime), CAST(N'2021-12-24T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (18, N'Soldes été', 20, CAST(N'2021-07-01T00:00:00.000' AS DateTime), CAST(N'2021-07-14T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (19, N'Nouvel an chinois', 15, CAST(N'2021-04-01T00:00:00.000' AS DateTime), CAST(N'2021-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (20, N'Black Friday', 30, CAST(N'2021-12-24T00:00:00.000' AS DateTime), CAST(N'2021-11-26T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (21, N'Soldes Noel', 25, CAST(N'2021-12-10T00:00:00.000' AS DateTime), CAST(N'2021-12-24T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (22, N'Soldes été', 20, CAST(N'2021-07-01T00:00:00.000' AS DateTime), CAST(N'2021-07-14T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (23, N'Nouvel an chinois', 15, CAST(N'2021-04-01T00:00:00.000' AS DateTime), CAST(N'2021-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (24, N'Black Friday', 30, CAST(N'2021-12-24T00:00:00.000' AS DateTime), CAST(N'2021-11-26T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (25, N'Soldes Noel', 25, CAST(N'2021-12-10T00:00:00.000' AS DateTime), CAST(N'2021-12-24T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (26, N'Soldes été', 20, CAST(N'2021-07-01T00:00:00.000' AS DateTime), CAST(N'2021-07-14T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (27, N'Nouvel an chinois', 15, CAST(N'2021-04-01T00:00:00.000' AS DateTime), CAST(N'2021-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[promotions] ([id], [name], [percentSale], [startDate], [endDate]) VALUES (28, N'Black Friday', 30, CAST(N'2021-12-24T00:00:00.000' AS DateTime), CAST(N'2021-11-26T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[promotions] OFF
GO
ALTER TABLE [dbo].[customer_categories]  WITH CHECK ADD  CONSTRAINT [FK_customer_categories_customer_categories] FOREIGN KEY([id])
REFERENCES [dbo].[customer_categories] ([id])
GO
ALTER TABLE [dbo].[customer_categories] CHECK CONSTRAINT [FK_customer_categories_customer_categories]
GO
ALTER TABLE [dbo].[customers]  WITH CHECK ADD  CONSTRAINT [FK_customers_customer_categories] FOREIGN KEY([customer_category_id])
REFERENCES [dbo].[customer_categories] ([id])
GO
ALTER TABLE [dbo].[customers] CHECK CONSTRAINT [FK_customers_customer_categories]
GO
ALTER TABLE [dbo].[customers_receive_promotions]  WITH CHECK ADD  CONSTRAINT [FK_customers_receive_promotions_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([id])
GO
ALTER TABLE [dbo].[customers_receive_promotions] CHECK CONSTRAINT [FK_customers_receive_promotions_customers]
GO
ALTER TABLE [dbo].[customers_receive_promotions]  WITH CHECK ADD  CONSTRAINT [FK_customers_receive_promotions_promotions] FOREIGN KEY([promotion_id])
REFERENCES [dbo].[promotions] ([id])
GO
ALTER TABLE [dbo].[customers_receive_promotions] CHECK CONSTRAINT [FK_customers_receive_promotions_promotions]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_customers]
GO
ALTER TABLE [dbo].[orders_contain_products]  WITH CHECK ADD  CONSTRAINT [FK_orders_contain_products_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orders_contain_products] CHECK CONSTRAINT [FK_orders_contain_products_orders]
GO
ALTER TABLE [dbo].[orders_contain_products]  WITH CHECK ADD  CONSTRAINT [FK_orders_contain_products_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orders_contain_products] CHECK CONSTRAINT [FK_orders_contain_products_products]
GO
ALTER TABLE [dbo].[orders_have_order_states]  WITH CHECK ADD  CONSTRAINT [FK_orders_have_order_states_order_states] FOREIGN KEY([order_state_id])
REFERENCES [dbo].[order_states] ([id])
GO
ALTER TABLE [dbo].[orders_have_order_states] CHECK CONSTRAINT [FK_orders_have_order_states_order_states]
GO
ALTER TABLE [dbo].[orders_have_order_states]  WITH CHECK ADD  CONSTRAINT [FK_orders_have_order_states_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orders_have_order_states] CHECK CONSTRAINT [FK_orders_have_order_states_orders]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_product_categories] FOREIGN KEY([product_category_id])
REFERENCES [dbo].[product_categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_product_categories]
GO
USE [master]
GO
ALTER DATABASE [ECommerce_data] SET  READ_WRITE 
GO
