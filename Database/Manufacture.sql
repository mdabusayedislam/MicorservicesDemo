USE [master]
GO

/****** Object:  Database [Manufacture]    Script Date: 10/5/2022 12:57:45 PM ******/
CREATE DATABASE [Manufacture]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Manufacture', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Manufacture.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Manufacture_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Manufacture_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Manufacture].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Manufacture] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Manufacture] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Manufacture] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Manufacture] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Manufacture] SET ARITHABORT OFF 
GO

ALTER DATABASE [Manufacture] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Manufacture] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Manufacture] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Manufacture] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Manufacture] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Manufacture] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Manufacture] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Manufacture] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Manufacture] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Manufacture] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Manufacture] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Manufacture] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Manufacture] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Manufacture] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Manufacture] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Manufacture] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Manufacture] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Manufacture] SET RECOVERY FULL 
GO

ALTER DATABASE [Manufacture] SET  MULTI_USER 
GO

ALTER DATABASE [Manufacture] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Manufacture] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Manufacture] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Manufacture] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Manufacture] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Manufacture] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Manufacture] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Manufacture] SET  READ_WRITE 
GO


