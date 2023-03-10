USE [master]
GO
/****** Object:  Database [SecurityTest]    Script Date: 19.12.2022 21:14:27 ******/
CREATE DATABASE [SecurityTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SecurityTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SecurityTest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SecurityTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SecurityTest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SecurityTest] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SecurityTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SecurityTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SecurityTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SecurityTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SecurityTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SecurityTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [SecurityTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SecurityTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SecurityTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SecurityTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SecurityTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SecurityTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SecurityTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SecurityTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SecurityTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SecurityTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SecurityTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SecurityTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SecurityTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SecurityTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SecurityTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SecurityTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SecurityTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SecurityTest] SET RECOVERY FULL 
GO
ALTER DATABASE [SecurityTest] SET  MULTI_USER 
GO
ALTER DATABASE [SecurityTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SecurityTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SecurityTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SecurityTest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SecurityTest] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SecurityTest] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SecurityTest', N'ON'
GO
ALTER DATABASE [SecurityTest] SET QUERY_STORE = OFF
GO
USE [SecurityTest]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 19.12.2022 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[Id_Answer] [int] IDENTITY(1,1) NOT NULL,
	[Answer] [nchar](30) NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[Id_Answer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 19.12.2022 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Id_Questions] [int] IDENTITY(1,1) NOT NULL,
	[Questions] [nchar](100) NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Id_Questions] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 19.12.2022 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[Id_Test] [int] IDENTITY(1,1) NOT NULL,
	[Id_Questions(FK)] [int] NULL,
	[Id_Answer(FK)] [int] NULL,
	[Right] [bit] NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[Id_Test] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19.12.2022 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id_User] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTest]    Script Date: 19.12.2022 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTest](
	[Id_UserTest] [int] IDENTITY(1,1) NOT NULL,
	[Id_Test(FK)] [int] NULL,
	[Id_User(FK)] [int] NULL,
 CONSTRAINT [PK_UserTest] PRIMARY KEY CLUSTERED 
(
	[Id_UserTest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([Id_Answer], [Answer]) VALUES (1, N'Эвакуироваться                ')
INSERT [dbo].[Answer] ([Id_Answer], [Answer]) VALUES (2, N'Нет                           ')
INSERT [dbo].[Answer] ([Id_Answer], [Answer]) VALUES (3, N'Не трогать                    ')
SET IDENTITY_INSERT [dbo].[Answer] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([Id_Questions], [Questions]) VALUES (1, N'Что нужно делать при пожарной эвакуации?                                                            ')
INSERT [dbo].[Questions] ([Id_Questions], [Questions]) VALUES (2, N'Можно ли в интернете скачивать подозрительные файлы?                                                ')
INSERT [dbo].[Questions] ([Id_Questions], [Questions]) VALUES (3, N'Что делать при поражении током                                                                      ')
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[Test] ON 

INSERT [dbo].[Test] ([Id_Test], [Id_Questions(FK)], [Id_Answer(FK)], [Right]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Test] ([Id_Test], [Id_Questions(FK)], [Id_Answer(FK)], [Right]) VALUES (2, 2, 2, 1)
INSERT [dbo].[Test] ([Id_Test], [Id_Questions(FK)], [Id_Answer(FK)], [Right]) VALUES (3, 3, 3, 1)
SET IDENTITY_INSERT [dbo].[Test] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id_User], [Name]) VALUES (1, N'Михаил                        ')
INSERT [dbo].[User] ([Id_User], [Name]) VALUES (2, N'Альберт                       ')
INSERT [dbo].[User] ([Id_User], [Name]) VALUES (3, N'Сергей                        ')
INSERT [dbo].[User] ([Id_User], [Name]) VALUES (4, N'Владимир                      ')
INSERT [dbo].[User] ([Id_User], [Name]) VALUES (5, N'Жора                          ')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserTest] ON 

INSERT [dbo].[UserTest] ([Id_UserTest], [Id_Test(FK)], [Id_User(FK)]) VALUES (1, 1, 1)
INSERT [dbo].[UserTest] ([Id_UserTest], [Id_Test(FK)], [Id_User(FK)]) VALUES (2, 2, 2)
INSERT [dbo].[UserTest] ([Id_UserTest], [Id_Test(FK)], [Id_User(FK)]) VALUES (3, 3, 3)
INSERT [dbo].[UserTest] ([Id_UserTest], [Id_Test(FK)], [Id_User(FK)]) VALUES (5, 3, 4)
INSERT [dbo].[UserTest] ([Id_UserTest], [Id_Test(FK)], [Id_User(FK)]) VALUES (6, 1, 5)
SET IDENTITY_INSERT [dbo].[UserTest] OFF
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_Answer] FOREIGN KEY([Id_Answer(FK)])
REFERENCES [dbo].[Answer] ([Id_Answer])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_Answer]
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_Questions] FOREIGN KEY([Id_Questions(FK)])
REFERENCES [dbo].[Questions] ([Id_Questions])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_Questions]
GO
ALTER TABLE [dbo].[UserTest]  WITH CHECK ADD  CONSTRAINT [FK_UserTest_Test] FOREIGN KEY([Id_Test(FK)])
REFERENCES [dbo].[Test] ([Id_Test])
GO
ALTER TABLE [dbo].[UserTest] CHECK CONSTRAINT [FK_UserTest_Test]
GO
ALTER TABLE [dbo].[UserTest]  WITH CHECK ADD  CONSTRAINT [FK_UserTest_User] FOREIGN KEY([Id_User(FK)])
REFERENCES [dbo].[User] ([Id_User])
GO
ALTER TABLE [dbo].[UserTest] CHECK CONSTRAINT [FK_UserTest_User]
GO
USE [master]
GO
ALTER DATABASE [SecurityTest] SET  READ_WRITE 
GO
