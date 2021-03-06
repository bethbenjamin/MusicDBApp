USE [master]
GO
/****** Object:  Database [MusicDB]    Script Date: 3/15/2018 11:58:10 AM ******/
CREATE DATABASE [MusicDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MusicDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MusicDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MusicDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MusicDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MusicDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MusicDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MusicDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MusicDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MusicDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MusicDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MusicDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MusicDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MusicDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MusicDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MusicDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MusicDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MusicDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MusicDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MusicDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MusicDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MusicDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MusicDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MusicDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MusicDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MusicDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MusicDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MusicDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MusicDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MusicDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MusicDB] SET  MULTI_USER 
GO
ALTER DATABASE [MusicDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MusicDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MusicDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MusicDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MusicDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MusicDB]
GO
/****** Object:  Table [dbo].[Albums]    Script Date: 3/15/2018 11:58:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albums](
	[AlbumsID] [int] IDENTITY(1,1) NOT NULL,
	[AlbumName] [nvarchar](100) NOT NULL,
	[Grammy] [bit] NOT NULL,
	[AlbumCoverArt] [nvarchar](200) NOT NULL,
	[ArtistID] [int] NOT NULL,
 CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED 
(
	[AlbumsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Artist]    Script Date: 3/15/2018 11:58:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[ArtistID] [int] IDENTITY(1,1) NOT NULL,
	[ArtistName] [nvarchar](100) NOT NULL,
	[BandName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[ArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Albums] ON 

INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (1, N'Not a Pretty Girl', 0, N'\Content\images\prettygirl.jpg', 1)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (2, N'To the Teeth', 0, N'\Content\images\teeth.jpg', 1)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (3, N'Little Plastic Castle', 0, N'\Content\images\castle.jpg', 1)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (4, N'Living in Clip', 0, N'\Content\images\clip.jpg', 1)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (5, N'August and Everything After', 0, N'\Content\images\ccaug.jpg', 2)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (6, N'Colorblind', 0, N'\Content\images\cccolorblind.png', 2)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (7, N'Recovering the Satellites', 0, N'\Content\images\ccsatel.jpg', 2)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (8, N'Rain Dogs', 0, N'\Content\images\twrain.jpg', 5)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (9, N'Closing Time', 0, N'\Content\images\twclosing.jpg', 5)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (10, N'Blue Valentine', 0, N'\Content\images\twval.jpg', 5)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (11, N'Songs by Sam Cooke', 0, N'\Content\images\scsongs.jpg', 3)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (12, N'Ain''t That Good News', 0, N'\Content\images\scgoodnews.jpg', 3)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (13, N'I Put A Spell On You', 0, N'\Content\images\nsspell.jpg', 4)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (14, N'Here Comes the Sun', 0, N'\Content\images\nssun.jpg', 4)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (15, N'Little Girl Blue', 0, N'\Content\images\nsblue.jpg', 4)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (16, N'Takk', 0, N'\Content\images\srtakk.jpg', 8)
INSERT [dbo].[Albums] ([AlbumsID], [AlbumName], [Grammy], [AlbumCoverArt], [ArtistID]) VALUES (17, N'Kviekur', 0, N'\Content\images\srkveikur.jpg', 8)
SET IDENTITY_INSERT [dbo].[Albums] OFF
SET IDENTITY_INSERT [dbo].[Artist] ON 

INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [BandName]) VALUES (1, N'Ani Difranco', NULL)
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [BandName]) VALUES (2, N'Adam Duritz', N'Counting Crows')
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [BandName]) VALUES (3, N'Sam Cooke', NULL)
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [BandName]) VALUES (4, N'Nina Simone', NULL)
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [BandName]) VALUES (5, N'Tom Waits', NULL)
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [BandName]) VALUES (6, N'Ben Harper', N'Ben Harper and the Innocent Criminals')
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [BandName]) VALUES (7, N'Imogen Heap', N'Frou Frou')
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [BandName]) VALUES (8, N'Jónsi', N'Sigur Ros')
SET IDENTITY_INSERT [dbo].[Artist] OFF
ALTER TABLE [dbo].[Albums]  WITH CHECK ADD  CONSTRAINT [FK_Albums_Artist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artist] ([ArtistID])
GO
ALTER TABLE [dbo].[Albums] CHECK CONSTRAINT [FK_Albums_Artist]
GO
USE [master]
GO
ALTER DATABASE [MusicDB] SET  READ_WRITE 
GO
