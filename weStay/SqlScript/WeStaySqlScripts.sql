USE [master]
GO
/****** Object:  Database [weStay]    Script Date: 2/24/2021 12:41:15 PM ******/
CREATE DATABASE [weStay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'weStay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\weStay.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'weStay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\weStay_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [weStay] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [weStay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [weStay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [weStay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [weStay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [weStay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [weStay] SET ARITHABORT OFF 
GO
ALTER DATABASE [weStay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [weStay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [weStay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [weStay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [weStay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [weStay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [weStay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [weStay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [weStay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [weStay] SET  ENABLE_BROKER 
GO
ALTER DATABASE [weStay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [weStay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [weStay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [weStay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [weStay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [weStay] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [weStay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [weStay] SET RECOVERY FULL 
GO
ALTER DATABASE [weStay] SET  MULTI_USER 
GO
ALTER DATABASE [weStay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [weStay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [weStay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [weStay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [weStay] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'weStay', N'ON'
GO
ALTER DATABASE [weStay] SET QUERY_STORE = OFF
GO
USE [weStay]
GO
/****** Object:  User [yeets]    Script Date: 2/24/2021 12:41:16 PM ******/
CREATE USER [yeets] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/24/2021 12:41:16 PM ******/
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
/****** Object:  Table [dbo].[BookingInfo]    Script Date: 2/24/2021 12:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingInfo](
	[Id] [uniqueidentifier] NOT NULL,
	[EmailAddress] [nvarchar](max) NOT NULL,
	[PeopleStaying] [int] NOT NULL,
 CONSTRAINT [PK_BookingInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 2/24/2021 12:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NOT NULL,
	[FileName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 2/24/2021 12:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[RoomCapacity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomBookDate]    Script Date: 2/24/2021 12:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomBookDate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NOT NULL,
	[BookingInfoId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[DateFrom] [datetime2](7) NOT NULL,
	[DateTo] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_RoomBookDate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210223062426_initial-migration', N'3.1.10')
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'9befa3cb-ef3c-468b-b05a-0394caf88bd3', N'christopher@gmail.com', 2)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'fa792892-f7d3-4cd0-9160-04579d93e47f', N'ewfdsdafsdf', 2)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'9dd89b20-93ed-485b-8f74-0a18cfd09b9d', N'asdasdsad', 3)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'6b3974e9-758a-40c7-a4cd-23a8f93bffa4', N'123213', 6)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'1d353c33-12c9-451a-941c-564e47b07ce7', N'chris@gmail.com', 5)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'ab27edbe-905b-4edf-ab54-60d51f98e268', N'yeets@gmail.com', 2)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'eb0c0355-ea15-476f-82f1-6d4dadec51a8', N'ghfghgfhhgfh', 3)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'1f97847c-7e2a-40c9-804a-a81539fb71ef', N'sadas', 2)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'743d1dcd-c59c-459f-b762-a8397acff5d7', N'hahahahaha@gmail.com', 5)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'5a1c2902-0e73-42fc-a534-aad1738b3d72', N'christopherPalisoc@gmail.com', 4)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'd5136709-4b60-4158-8d57-b000bdc6cb0c', N'dsfsdfsd', 3)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'ddce42af-08fb-49a1-bd65-b87f6df62ebe', N'yeetz@gmail.com', 2)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'9d9b4fb0-1136-445e-b433-e5f384a037b0', N'hehe@gmail.com', 2)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'03eb9030-6d50-4151-8f5f-ead9b3070cd7', N'dsfdsf@gmail.com', 2)
INSERT [dbo].[BookingInfo] ([Id], [EmailAddress], [PeopleStaying]) VALUES (N'd8325b7b-eba4-4af5-aadb-f957484194ba', N'yes@gmail.com', 4)
SET IDENTITY_INSERT [dbo].[Photo] ON 

INSERT [dbo].[Photo] ([Id], [RoomId], [FileName]) VALUES (2, 1, N'PinkRoom.jpg')
INSERT [dbo].[Photo] ([Id], [RoomId], [FileName]) VALUES (3, 1, N'PinkRoom1.jpeg')
INSERT [dbo].[Photo] ([Id], [RoomId], [FileName]) VALUES (4, 1, N'PinkRoom2.jpg')
INSERT [dbo].[Photo] ([Id], [RoomId], [FileName]) VALUES (5, 1, N'PinkRoom3.jpg')
INSERT [dbo].[Photo] ([Id], [RoomId], [FileName]) VALUES (6, 2, N'BlackRoom.jpg')
INSERT [dbo].[Photo] ([Id], [RoomId], [FileName]) VALUES (7, 2, N'BlackRoom1.jpg')
INSERT [dbo].[Photo] ([Id], [RoomId], [FileName]) VALUES (8, 2, N'BlackRoom2.jpg')
INSERT [dbo].[Photo] ([Id], [RoomId], [FileName]) VALUES (9, 2, N'BlackRoom3.jpg')
INSERT [dbo].[Photo] ([Id], [RoomId], [FileName]) VALUES (10, 3, N'BlueRoom.jpg')
INSERT [dbo].[Photo] ([Id], [RoomId], [FileName]) VALUES (11, 3, N'BlueRoom1.jpg')
INSERT [dbo].[Photo] ([Id], [RoomId], [FileName]) VALUES (12, 3, N'BlueRoom2.jpg')
INSERT [dbo].[Photo] ([Id], [RoomId], [FileName]) VALUES (13, 3, N'BlueRoom3.jpg')
SET IDENTITY_INSERT [dbo].[Photo] OFF
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([Id], [Title], [Description], [Address], [RoomCapacity], [Price]) VALUES (1, N'The Pink Room', N'Enjoy your stay with our brand new Pink Room', N'757 c cristobal Street Sampaloc Manila', 7, CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Room] ([Id], [Title], [Description], [Address], [RoomCapacity], [Price]) VALUES (2, N'The Black Room', N'Who loves black ? If you are, then our Black Room is just for you!!', N'757 d cristobal Street Sampaloc Manila', 10, CAST(10500.00 AS Decimal(18, 2)))
INSERT [dbo].[Room] ([Id], [Title], [Description], [Address], [RoomCapacity], [Price]) VALUES (3, N'The Blue Room', N'Do you feel Blue? if the answer is yes , then let us help you feel better with our Blue Room.', N'757 e cristobal Street Sampaloc Manila', 8, CAST(9500.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Room] OFF
SET IDENTITY_INSERT [dbo].[RoomBookDate] ON 

INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (2, 1, N'9d9b4fb0-1136-445e-b433-e5f384a037b0', CAST(N'2021-02-23T14:29:01.6041553' AS DateTime2), CAST(N'2021-02-23T14:11:12.0000000' AS DateTime2), CAST(N'2021-02-23T14:11:12.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (3, 1, N'743d1dcd-c59c-459f-b762-a8397acff5d7', CAST(N'2021-02-23T20:06:53.4762837' AS DateTime2), CAST(N'2021-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (4, 1, N'1d353c33-12c9-451a-941c-564e47b07ce7', CAST(N'2021-02-23T22:08:42.3240458' AS DateTime2), CAST(N'2021-02-27T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-28T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (5, 1, N'03eb9030-6d50-4151-8f5f-ead9b3070cd7', CAST(N'2021-02-23T22:12:50.7323757' AS DateTime2), CAST(N'2021-02-26T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-27T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (6, 1, N'eb0c0355-ea15-476f-82f1-6d4dadec51a8', CAST(N'2021-02-23T22:15:16.3232220' AS DateTime2), CAST(N'2021-02-28T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (7, 1, N'fa792892-f7d3-4cd0-9160-04579d93e47f', CAST(N'2021-02-23T22:24:01.3936692' AS DateTime2), CAST(N'2021-03-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (8, 1, N'd5136709-4b60-4158-8d57-b000bdc6cb0c', CAST(N'2021-02-23T22:25:29.2505110' AS DateTime2), CAST(N'2021-03-02T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (9, 1, N'9dd89b20-93ed-485b-8f74-0a18cfd09b9d', CAST(N'2021-02-23T22:26:14.8480763' AS DateTime2), CAST(N'2021-03-03T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (10, 1, N'6b3974e9-758a-40c7-a4cd-23a8f93bffa4', CAST(N'2021-02-23T22:33:10.4361687' AS DateTime2), CAST(N'2021-03-04T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (11, 3, N'9befa3cb-ef3c-468b-b05a-0394caf88bd3', CAST(N'2021-02-23T23:11:25.7391994' AS DateTime2), CAST(N'2021-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (12, 3, N'1f97847c-7e2a-40c9-804a-a81539fb71ef', CAST(N'2021-02-23T23:39:46.7406473' AS DateTime2), CAST(N'2021-01-31T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (13, 1, N'5a1c2902-0e73-42fc-a534-aad1738b3d72', CAST(N'2021-02-24T01:48:57.9930856' AS DateTime2), CAST(N'2021-03-06T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (14, 3, N'ab27edbe-905b-4edf-ab54-60d51f98e268', CAST(N'2021-02-24T01:53:58.7599325' AS DateTime2), CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (15, 3, N'ddce42af-08fb-49a1-bd65-b87f6df62ebe', CAST(N'2021-02-24T01:54:36.4864151' AS DateTime2), CAST(N'2021-02-26T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-27T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RoomBookDate] ([Id], [RoomId], [BookingInfoId], [CreatedDate], [DateFrom], [DateTo]) VALUES (16, 2, N'd8325b7b-eba4-4af5-aadb-f957484194ba', CAST(N'2021-02-24T11:13:45.4080043' AS DateTime2), CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-26T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[RoomBookDate] OFF
/****** Object:  Index [IX_Photo_RoomId]    Script Date: 2/24/2021 12:41:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_Photo_RoomId] ON [dbo].[Photo]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RoomBookDate_BookingInfoId]    Script Date: 2/24/2021 12:41:16 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_RoomBookDate_BookingInfoId] ON [dbo].[RoomBookDate]
(
	[BookingInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RoomBookDate_RoomId]    Script Date: 2/24/2021 12:41:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoomBookDate_RoomId] ON [dbo].[RoomBookDate]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_Room_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_Room_RoomId]
GO
ALTER TABLE [dbo].[RoomBookDate]  WITH CHECK ADD  CONSTRAINT [FK_RoomBookDate_BookingInfo_BookingInfoId] FOREIGN KEY([BookingInfoId])
REFERENCES [dbo].[BookingInfo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoomBookDate] CHECK CONSTRAINT [FK_RoomBookDate_BookingInfo_BookingInfoId]
GO
ALTER TABLE [dbo].[RoomBookDate]  WITH CHECK ADD  CONSTRAINT [FK_RoomBookDate_Room_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoomBookDate] CHECK CONSTRAINT [FK_RoomBookDate_Room_RoomId]
GO
USE [master]
GO
ALTER DATABASE [weStay] SET  READ_WRITE 
GO
