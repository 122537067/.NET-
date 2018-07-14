USE [master]
GO

/****** Object:  Database [BookReview]    Script Date: 01/04/2018 14:12:06 ******/
CREATE DATABASE [BookReview] ON  PRIMARY 
( NAME = N'BookReview', FILENAME = N'H:\SQL\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BookReview.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BookReview_log', FILENAME = N'H:\SQL\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BookReview_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [BookReview] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookReview].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BookReview] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BookReview] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BookReview] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BookReview] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BookReview] SET ARITHABORT OFF 
GO

ALTER DATABASE [BookReview] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BookReview] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [BookReview] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BookReview] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BookReview] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BookReview] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BookReview] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BookReview] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BookReview] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BookReview] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BookReview] SET  DISABLE_BROKER 
GO

ALTER DATABASE [BookReview] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BookReview] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BookReview] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BookReview] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BookReview] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BookReview] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BookReview] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BookReview] SET  READ_WRITE 
GO

ALTER DATABASE [BookReview] SET RECOVERY FULL 
GO

ALTER DATABASE [BookReview] SET  MULTI_USER 
GO

ALTER DATABASE [BookReview] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BookReview] SET DB_CHAINING OFF 
GO


