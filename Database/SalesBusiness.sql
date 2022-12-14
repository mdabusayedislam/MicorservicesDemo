USE [master]
GO

/****** Object:  Database [SalesBusiness]    Script Date: 10/5/2022 12:58:53 PM ******/
CREATE DATABASE [SalesBusiness]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SalesBusiness', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SalesBusiness.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SalesBusiness_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SalesBusiness_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SalesBusiness].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SalesBusiness] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SalesBusiness] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [SalesBusiness] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [SalesBusiness] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [SalesBusiness] SET ARITHABORT OFF 
GO

ALTER DATABASE [SalesBusiness] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SalesBusiness] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SalesBusiness] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SalesBusiness] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SalesBusiness] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SalesBusiness] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [SalesBusiness] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SalesBusiness] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [SalesBusiness] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [SalesBusiness] SET  DISABLE_BROKER 
GO

ALTER DATABASE [SalesBusiness] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SalesBusiness] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SalesBusiness] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [SalesBusiness] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [SalesBusiness] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SalesBusiness] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [SalesBusiness] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [SalesBusiness] SET RECOVERY FULL 
GO

ALTER DATABASE [SalesBusiness] SET  MULTI_USER 
GO

ALTER DATABASE [SalesBusiness] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SalesBusiness] SET DB_CHAINING OFF 
GO

ALTER DATABASE [SalesBusiness] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [SalesBusiness] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [SalesBusiness] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [SalesBusiness] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [SalesBusiness] SET QUERY_STORE = OFF
GO

ALTER DATABASE [SalesBusiness] SET  READ_WRITE 
GO


