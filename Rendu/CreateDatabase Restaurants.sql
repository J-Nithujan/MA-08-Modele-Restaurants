USE [db_restaurants]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [FK_users_locations]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [FK_reviews_users]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [FK_reviews_restaurants]
GO
ALTER TABLE [dbo].[restaurants] DROP CONSTRAINT [FK_restaurants_locations]
GO
ALTER TABLE [dbo].[restaurant_hast_type_of_restaurant] DROP CONSTRAINT [FK_restaurant_hast_type_of_restaurant_restaurants]
GO
ALTER TABLE [dbo].[restaurant_hast_type_of_restaurant] DROP CONSTRAINT [FK_restaurant_hast_type_of_restaurant_restaurant_types]
GO
ALTER TABLE [dbo].[restaurant_has_user] DROP CONSTRAINT [FK_restaurant_has_user_users]
GO
ALTER TABLE [dbo].[restaurant_has_user] DROP CONSTRAINT [FK_restaurant_has_user_restaurants]
GO
ALTER TABLE [dbo].[restaurant_has_sale] DROP CONSTRAINT [FK_restaurant_has_sale_sales]
GO
ALTER TABLE [dbo].[restaurant_has_sale] DROP CONSTRAINT [FK_restaurant_has_sale_restaurants]
GO
ALTER TABLE [dbo].[restaurant_has_dish] DROP CONSTRAINT [FK_restaurant_has_dish_restaurants]
GO
ALTER TABLE [dbo].[restaurant_has_dish] DROP CONSTRAINT [FK_restaurant_has_dish_dishes]
GO
ALTER TABLE [dbo].[orders] DROP CONSTRAINT [FK_orders_users]
GO
ALTER TABLE [dbo].[order_has_order_detail] DROP CONSTRAINT [FK_order_has_order_detail_orders]
GO
ALTER TABLE [dbo].[order_has_order_detail] DROP CONSTRAINT [FK_order_has_order_detail_order_details]
GO
ALTER TABLE [dbo].[order_details] DROP CONSTRAINT [FK_order_details_orders]
GO
ALTER TABLE [dbo].[order_details] DROP CONSTRAINT [FK_order_details_dishes]
GO
ALTER TABLE [dbo].[order_detail_has_ingredient] DROP CONSTRAINT [FK_order_detail_has_ingredient_order_details]
GO
ALTER TABLE [dbo].[order_detail_has_ingredient] DROP CONSTRAINT [FK_order_detail_has_ingredient_ingredients]
GO
ALTER TABLE [dbo].[ingredients] DROP CONSTRAINT [FK_ingredients_measurement_units]
GO
ALTER TABLE [dbo].[dishes] DROP CONSTRAINT [FK_dishes_dishes_types]
GO
ALTER TABLE [dbo].[dish_has_ingredient] DROP CONSTRAINT [FK_dish_has_ingredient_ingredients]
GO
ALTER TABLE [dbo].[dish_has_ingredient] DROP CONSTRAINT [FK_dish_has_ingredient_dishes]
GO
ALTER TABLE [dbo].[dish_has_allergen] DROP CONSTRAINT [FK_dish_has_allergen_dishes]
GO
ALTER TABLE [dbo].[dish_has_allergen] DROP CONSTRAINT [FK_dish_has_allergen_allergens]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sales]') AND type in (N'U'))
DROP TABLE [dbo].[sales]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reviews]') AND type in (N'U'))
DROP TABLE [dbo].[reviews]
GO
/****** Object:  Table [dbo].[restaurants]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[restaurants]') AND type in (N'U'))
DROP TABLE [dbo].[restaurants]
GO
/****** Object:  Table [dbo].[restaurant_types]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[restaurant_types]') AND type in (N'U'))
DROP TABLE [dbo].[restaurant_types]
GO
/****** Object:  Table [dbo].[restaurant_hast_type_of_restaurant]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[restaurant_hast_type_of_restaurant]') AND type in (N'U'))
DROP TABLE [dbo].[restaurant_hast_type_of_restaurant]
GO
/****** Object:  Table [dbo].[restaurant_has_user]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[restaurant_has_user]') AND type in (N'U'))
DROP TABLE [dbo].[restaurant_has_user]
GO
/****** Object:  Table [dbo].[restaurant_has_sale]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[restaurant_has_sale]') AND type in (N'U'))
DROP TABLE [dbo].[restaurant_has_sale]
GO
/****** Object:  Table [dbo].[restaurant_has_dish]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[restaurant_has_dish]') AND type in (N'U'))
DROP TABLE [dbo].[restaurant_has_dish]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[orders]') AND type in (N'U'))
DROP TABLE [dbo].[orders]
GO
/****** Object:  Table [dbo].[order_has_order_detail]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_has_order_detail]') AND type in (N'U'))
DROP TABLE [dbo].[order_has_order_detail]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_details]') AND type in (N'U'))
DROP TABLE [dbo].[order_details]
GO
/****** Object:  Table [dbo].[order_detail_has_ingredient]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_detail_has_ingredient]') AND type in (N'U'))
DROP TABLE [dbo].[order_detail_has_ingredient]
GO
/****** Object:  Table [dbo].[measurement_units]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[measurement_units]') AND type in (N'U'))
DROP TABLE [dbo].[measurement_units]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[locations]') AND type in (N'U'))
DROP TABLE [dbo].[locations]
GO
/****** Object:  Table [dbo].[ingredients]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ingredients]') AND type in (N'U'))
DROP TABLE [dbo].[ingredients]
GO
/****** Object:  Table [dbo].[dishes_types]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dishes_types]') AND type in (N'U'))
DROP TABLE [dbo].[dishes_types]
GO
/****** Object:  Table [dbo].[dishes]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dishes]') AND type in (N'U'))
DROP TABLE [dbo].[dishes]
GO
/****** Object:  Table [dbo].[dish_has_ingredient]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dish_has_ingredient]') AND type in (N'U'))
DROP TABLE [dbo].[dish_has_ingredient]
GO
/****** Object:  Table [dbo].[dish_has_allergen]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dish_has_allergen]') AND type in (N'U'))
DROP TABLE [dbo].[dish_has_allergen]
GO
/****** Object:  Table [dbo].[allergens]    Script Date: 12.01.2022 09:37:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[allergens]') AND type in (N'U'))
DROP TABLE [dbo].[allergens]
GO
USE [master]
GO

/****** Object:  Database [db_restaurants]    Script Date: 12.01.2022 09:37:42 ******/
DROP DATABASE [db_restaurants]
GO
/****** Object:  Database [db_restaurants]    Script Date: 12.01.2022 09:37:42 ******/
CREATE DATABASE [db_restaurants]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_restaurants', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_restaurants.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_restaurants_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_restaurants_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

ALTER DATABASE [db_restaurants] SET COMPATIBILITY_LEVEL = 150
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_restaurants].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [db_restaurants] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_restaurants] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_restaurants] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_restaurants] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_restaurants] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_restaurants] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_restaurants] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_restaurants] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_restaurants] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_restaurants] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_restaurants] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_restaurants] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_restaurants] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_restaurants] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_restaurants] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_restaurants] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_restaurants] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_restaurants] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_restaurants] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_restaurants] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_restaurants] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_restaurants] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_restaurants] SET RECOVERY FULL 
GO
ALTER DATABASE [db_restaurants] SET  MULTI_USER 
GO
ALTER DATABASE [db_restaurants] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_restaurants] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_restaurants] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_restaurants] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_restaurants] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_restaurants] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_restaurants', N'ON'
GO
ALTER DATABASE [db_restaurants] SET QUERY_STORE = OFF
GO
USE [db_restaurants]
GO
/****** Object:  Table [dbo].[allergens]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[allergens](
	[id] [int] NOT NULL,
	[name] [varchar](60) NOT NULL,
	[description] [varchar](255) NULL,
 CONSTRAINT [PK_allergens] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dish_has_allergen]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dish_has_allergen](
	[id] [int] NOT NULL,
	[dish_id] [int] NULL,
	[allergen_id] [int] NULL,
 CONSTRAINT [PK_dish_has_allergen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dish_has_ingredient]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dish_has_ingredient](
	[id] [int] NOT NULL,
	[dish_id] [int] NULL,
	[ingredient_id] [int] NULL,
 CONSTRAINT [PK_dish_has_ingredient] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dishes]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dishes](
	[id] [int] NOT NULL,
	[name] [varchar](80) NOT NULL,
	[description] [varchar](255) NULL,
	[base_price] [decimal](6, 2) NULL,
	[sale_price] [decimal](6, 2) NULL,
	[dish_type_id] [int] NOT NULL,
 CONSTRAINT [PK_dishes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dishes_types]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dishes_types](
	[id] [int] NOT NULL,
	[name] [varchar](40) NOT NULL,
 CONSTRAINT [PK_dishes_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ingredients]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ingredients](
	[id] [int] NOT NULL,
	[name] [varchar](60) NOT NULL,
	[quantity] [int] NULL,
	[price] [decimal](6, 2) NOT NULL,
	[measurement_unit_id] [int] NULL,
 CONSTRAINT [PK_ingredients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locations](
	[id] [int] NOT NULL,
	[city] [varchar](60) NOT NULL,
	[ZIP] [int] NOT NULL,
 CONSTRAINT [PK_locations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[measurement_units]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[measurement_units](
	[id] [int] NOT NULL,
	[name] [varchar](45) NOT NULL,
 CONSTRAINT [PK_measurement_units] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail_has_ingredient]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail_has_ingredient](
	[id] [int] NOT NULL,
	[order_detail_id] [int] NULL,
	[ingredient_id] [int] NULL,
 CONSTRAINT [PK_order_detail_has_ingredient] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[id] [int] NOT NULL,
	[reference] [varchar](60) NOT NULL,
	[dish_id] [int] NULL,
	[order_id] [int] NULL,
 CONSTRAINT [PK_order_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_has_order_detail]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_has_order_detail](
	[id] [int] NOT NULL,
	[order_id] [int] NULL,
	[oder_detail_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] NOT NULL,
	[order_number] [int] NOT NULL,
	[date] [datetime] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[restaurant_has_dish]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaurant_has_dish](
	[id] [int] NOT NULL,
	[restaurant_id] [int] NULL,
	[dish_id] [int] NULL,
 CONSTRAINT [PK_restaurant_has_dish] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[restaurant_has_sale]    Script Date: 19.01.2022 08:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaurant_has_sale](
	[id] [int] NOT NULL,
	[restaurant_id] [int] NULL,
	[sale_id] [int] NULL,
	[percentage] [int] NULL,
	[start] [datetime] NULL,
	[end] [datetime] NULL,
 CONSTRAINT [PK_restaurant_has_sale] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[restaurant_has_user]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaurant_has_user](
	[id] [int] NOT NULL,
	[user_id] [int] NULL,
	[restaurant_id] [int] NULL,
 CONSTRAINT [PK_restaurant_has_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[restaurant_hast_type_of_restaurant]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaurant_hast_type_of_restaurant](
	[id] [int] NOT NULL,
	[restaurant_id] [int] NOT NULL,
	[restaurant_type_id] [int] NOT NULL,
 CONSTRAINT [PK_restaurant_hast_type_of_restaurant] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[restaurant_types]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaurant_types](
	[id] [int] NOT NULL,
	[name] [varchar](60) NOT NULL,
	[description] [varchar](255) NOT NULL,
 CONSTRAINT [PK_restaurant_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[restaurants]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaurants](
	[id] [int] NOT NULL,
	[name] [varchar](45) NOT NULL,
	[road] [varchar](45) NOT NULL,
	[regular_schedule] [text] NULL,
	[location_id] [int] NOT NULL,
 CONSTRAINT [PK_restaurants] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[id] [int] NOT NULL,
	[title] [varchar](60) NOT NULL,
	[publication_date] [datetime] NOT NULL,
	[description] [text] NULL,
	[rating] [int] NOT NULL,
	[restaurant_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_reviews] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[id] [int] NOT NULL,
	[name] [varchar](60) NOT NULL,
 CONSTRAINT [PK_sales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 27.12.2021 16:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] NOT NULL,
	[email] [varchar](254) NOT NULL,
	[firstname] [varchar](60) NULL,
	[lastname] [varchar](60) NULL,
	[password] [varchar](100) NULL,
	[birthdate] [date] NULL,
	[road] [varchar](45) NULL,
	[location_id] [int] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dish_has_allergen]  WITH CHECK ADD  CONSTRAINT [FK_dish_has_allergen_allergens] FOREIGN KEY([allergen_id])
REFERENCES [dbo].[allergens] ([id])
GO
ALTER TABLE [dbo].[dish_has_allergen] CHECK CONSTRAINT [FK_dish_has_allergen_allergens]
GO
ALTER TABLE [dbo].[dish_has_allergen]  WITH CHECK ADD  CONSTRAINT [FK_dish_has_allergen_dishes] FOREIGN KEY([dish_id])
REFERENCES [dbo].[dishes] ([id])
GO
ALTER TABLE [dbo].[dish_has_allergen] CHECK CONSTRAINT [FK_dish_has_allergen_dishes]
GO
ALTER TABLE [dbo].[dish_has_ingredient]  WITH CHECK ADD  CONSTRAINT [FK_dish_has_ingredient_dishes] FOREIGN KEY([dish_id])
REFERENCES [dbo].[dishes] ([id])
GO
ALTER TABLE [dbo].[dish_has_ingredient] CHECK CONSTRAINT [FK_dish_has_ingredient_dishes]
GO
ALTER TABLE [dbo].[dish_has_ingredient]  WITH CHECK ADD  CONSTRAINT [FK_dish_has_ingredient_ingredients] FOREIGN KEY([ingredient_id])
REFERENCES [dbo].[ingredients] ([id])
GO
ALTER TABLE [dbo].[dish_has_ingredient] CHECK CONSTRAINT [FK_dish_has_ingredient_ingredients]
GO
ALTER TABLE [dbo].[dishes]  WITH CHECK ADD  CONSTRAINT [FK_dishes_dishes_types] FOREIGN KEY([dish_type_id])
REFERENCES [dbo].[dishes_types] ([id])
GO
ALTER TABLE [dbo].[dishes] CHECK CONSTRAINT [FK_dishes_dishes_types]
GO
ALTER TABLE [dbo].[ingredients]  WITH CHECK ADD  CONSTRAINT [FK_ingredients_measurement_units] FOREIGN KEY([measurement_unit_id])
REFERENCES [dbo].[measurement_units] ([id])
GO
ALTER TABLE [dbo].[ingredients] CHECK CONSTRAINT [FK_ingredients_measurement_units]
GO
ALTER TABLE [dbo].[order_detail_has_ingredient]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_has_ingredient_ingredients] FOREIGN KEY([ingredient_id])
REFERENCES [dbo].[ingredients] ([id])
GO
ALTER TABLE [dbo].[order_detail_has_ingredient] CHECK CONSTRAINT [FK_order_detail_has_ingredient_ingredients]
GO
ALTER TABLE [dbo].[order_detail_has_ingredient]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_has_ingredient_order_details] FOREIGN KEY([order_detail_id])
REFERENCES [dbo].[order_details] ([id])
GO
ALTER TABLE [dbo].[order_detail_has_ingredient] CHECK CONSTRAINT [FK_order_detail_has_ingredient_order_details]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK_order_details_dishes] FOREIGN KEY([dish_id])
REFERENCES [dbo].[dishes] ([id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK_order_details_dishes]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK_order_details_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK_order_details_orders]
GO
ALTER TABLE [dbo].[order_has_order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_has_order_detail_order_details] FOREIGN KEY([oder_detail_id])
REFERENCES [dbo].[order_details] ([id])
GO
ALTER TABLE [dbo].[order_has_order_detail] CHECK CONSTRAINT [FK_order_has_order_detail_order_details]
GO
ALTER TABLE [dbo].[order_has_order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_has_order_detail_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[order_has_order_detail] CHECK CONSTRAINT [FK_order_has_order_detail_orders]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users]
GO
ALTER TABLE [dbo].[restaurant_has_dish]  WITH CHECK ADD  CONSTRAINT [FK_restaurant_has_dish_dishes] FOREIGN KEY([dish_id])
REFERENCES [dbo].[dishes] ([id])
GO
ALTER TABLE [dbo].[restaurant_has_dish] CHECK CONSTRAINT [FK_restaurant_has_dish_dishes]
GO
ALTER TABLE [dbo].[restaurant_has_dish]  WITH CHECK ADD  CONSTRAINT [FK_restaurant_has_dish_restaurants] FOREIGN KEY([restaurant_id])
REFERENCES [dbo].[restaurants] ([id])
GO
ALTER TABLE [dbo].[restaurant_has_dish] CHECK CONSTRAINT [FK_restaurant_has_dish_restaurants]
GO
ALTER TABLE [dbo].[restaurant_has_sale]  WITH CHECK ADD  CONSTRAINT [FK_restaurant_has_sale_restaurants] FOREIGN KEY([restaurant_id])
REFERENCES [dbo].[restaurants] ([id])
GO
ALTER TABLE [dbo].[restaurant_has_sale] CHECK CONSTRAINT [FK_restaurant_has_sale_restaurants]
GO
ALTER TABLE [dbo].[restaurant_has_sale]  WITH CHECK ADD  CONSTRAINT [FK_restaurant_has_sale_sales] FOREIGN KEY([sale_id])
REFERENCES [dbo].[sales] ([id])
GO
ALTER TABLE [dbo].[restaurant_has_sale] CHECK CONSTRAINT [FK_restaurant_has_sale_sales]
GO
ALTER TABLE [dbo].[restaurant_has_user]  WITH CHECK ADD  CONSTRAINT [FK_restaurant_has_user_restaurants] FOREIGN KEY([restaurant_id])
REFERENCES [dbo].[restaurants] ([id])
GO
ALTER TABLE [dbo].[restaurant_has_user] CHECK CONSTRAINT [FK_restaurant_has_user_restaurants]
GO
ALTER TABLE [dbo].[restaurant_has_user]  WITH CHECK ADD  CONSTRAINT [FK_restaurant_has_user_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[restaurant_has_user] CHECK CONSTRAINT [FK_restaurant_has_user_users]
GO
ALTER TABLE [dbo].[restaurant_hast_type_of_restaurant]  WITH CHECK ADD  CONSTRAINT [FK_restaurant_hast_type_of_restaurant_restaurant_types] FOREIGN KEY([restaurant_type_id])
REFERENCES [dbo].[restaurant_types] ([id])
GO
ALTER TABLE [dbo].[restaurant_hast_type_of_restaurant] CHECK CONSTRAINT [FK_restaurant_hast_type_of_restaurant_restaurant_types]
GO
ALTER TABLE [dbo].[restaurant_hast_type_of_restaurant]  WITH CHECK ADD  CONSTRAINT [FK_restaurant_hast_type_of_restaurant_restaurants] FOREIGN KEY([restaurant_id])
REFERENCES [dbo].[restaurants] ([id])
GO
ALTER TABLE [dbo].[restaurant_hast_type_of_restaurant] CHECK CONSTRAINT [FK_restaurant_hast_type_of_restaurant_restaurants]
GO
ALTER TABLE [dbo].[restaurants]  WITH CHECK ADD  CONSTRAINT [FK_restaurants_locations] FOREIGN KEY([location_id])
REFERENCES [dbo].[locations] ([id])
GO
ALTER TABLE [dbo].[restaurants] CHECK CONSTRAINT [FK_restaurants_locations]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FK_reviews_restaurants] FOREIGN KEY([restaurant_id])
REFERENCES [dbo].[restaurants] ([id])
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FK_reviews_restaurants]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FK_reviews_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FK_reviews_users]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_locations] FOREIGN KEY([location_id])
REFERENCES [dbo].[locations] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_locations]
GO
USE [master]
GO
ALTER DATABASE [db_restaurants] SET  READ_WRITE 
GO
