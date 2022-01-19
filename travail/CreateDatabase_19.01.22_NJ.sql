USE [master]
GO

/****** Object:  Database [db_restaurants]    Script Date: 19.01.2022 22:16:12 ******/
DROP DATABASE [db_restaurants]
GO

/****** Object:  Database [db_restaurants]    Script Date: 19.01.2022 22:16:12 ******/
CREATE DATABASE [db_restaurants]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_restaurants', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_restaurants.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_restaurants_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_restaurants_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
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

ALTER DATABASE [db_restaurants] SET QUERY_STORE = OFF
GO

ALTER DATABASE [db_restaurants] SET  READ_WRITE 
GO

