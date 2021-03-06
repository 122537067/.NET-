USE [master]
GO
/****** Object:  Database [BookReview]    Script Date: 01/11/2018 20:50:07 ******/
CREATE DATABASE [BookReview] ON  PRIMARY 
( NAME = N'BookReview', FILENAME = N'C:\Users\Administrator\Desktop\Web小组实训\BookReview.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BookReview_log', FILENAME = N'C:\Users\Administrator\Desktop\Web小组实训\BookReview_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
EXEC sys.sp_db_vardecimal_storage_format N'BookReview', N'ON'
GO
USE [BookReview]
GO
/****** Object:  Table [dbo].[User]    Script Date: 01/11/2018 20:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [char](5) NOT NULL,
	[PassWord] [char](15) NOT NULL,
	[Email] [char](20) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[User] ([UserID], [PassWord], [Email]) VALUES (N'00001', N'123            ', N'12121212@qq.com     ')
INSERT [dbo].[User] ([UserID], [PassWord], [Email]) VALUES (N'00002', N'11000          ', N'dasdsadas           ')
INSERT [dbo].[User] ([UserID], [PassWord], [Email]) VALUES (N'3    ', N'3              ', N'fff                 ')
INSERT [dbo].[User] ([UserID], [PassWord], [Email]) VALUES (N'好   ', N'd              ', N'f                   ')
/****** Object:  Table [dbo].[LeaveWord]    Script Date: 01/11/2018 20:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LeaveWord](
	[ISBN] [char](40) NOT NULL,
	[UserID] [char](5) NOT NULL,
	[TextContent] [char](100) NOT NULL,
	[PostTime] [date] NOT NULL,
	[Score] [float] NOT NULL,
	[number] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_LeaveWord] PRIMARY KEY CLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LeaveWord] ON
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787210097143                           ', N'3    ', N'g                                                                                                   ', CAST(0x00000000 AS Date), 3, 1)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787508665610                           ', N'00001', N'666666                                                                                              ', CAST(0xBE3D0B00 AS Date), 3, 2)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787516812976                           ', N'00002', N'gg                                                                                                  ', CAST(0x00000000 AS Date), 3, 3)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787530217856                           ', N'3    ', N'l                                                                                                   ', CAST(0x00000000 AS Date), 3, 4)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787535682031                           ', N'3    ', N'3                                                                                                   ', CAST(0x00000000 AS Date), 3, 5)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787544763066                           ', N'00002', N'ggg                                                                                                 ', CAST(0x00000000 AS Date), 3, 6)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787516812976                           ', N'00001', N'dlsk                                                                                                ', CAST(0x00000000 AS Date), 3, 7)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787540483180                           ', N'00001', N'dsadsa                                                                                              ', CAST(0x00000000 AS Date), 3, 8)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787510862885                           ', N'00001', N'6546                                                                                                ', CAST(0x00000000 AS Date), 3, 9)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787210097143                           ', N'00001', N'sadsa                                                                                               ', CAST(0x00000000 AS Date), 3, 10)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787530217856                           ', N'00001', N'dsadsa                                                                                              ', CAST(0x00000000 AS Date), 3, 11)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787508661506                           ', N'00001', N'ewqewq                                                                                              ', CAST(0x00000000 AS Date), 3, 12)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787535682031                           ', N'00001', N'dsadsa                                                                                              ', CAST(0x00000000 AS Date), 3, 13)
INSERT [dbo].[LeaveWord] ([ISBN], [UserID], [TextContent], [PostTime], [Score], [number]) VALUES (N'9787549529322                           ', N'00001', N'123123123                                                                                           ', CAST(0x00000000 AS Date), 3, 14)
SET IDENTITY_INSERT [dbo].[LeaveWord] OFF
/****** Object:  Table [dbo].[Collect]    Script Date: 01/11/2018 20:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Collect](
	[UserID] [char](5) NULL,
	[ISBN] [char](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Book]    Script Date: 01/11/2018 20:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book](
	[BookName] [varchar](50) NOT NULL,
	[Writer] [varchar](50) NOT NULL,
	[PublishingHouse] [varchar](50) NOT NULL,
	[Time] [date] NOT NULL,
	[Page] [int] NOT NULL,
	[price] [float] NOT NULL,
	[ISBN] [char](15) NOT NULL,
	[Photo] [varchar](500) NOT NULL,
	[Score] [float] NOT NULL,
	[Introduction] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'不吃鸡蛋的人', N'钱佳楠 ', N'中信出版集团', CAST(0xB63D0B00 AS Date), 280, 48, N'9787508665610  ', N'\img\不吃鸡蛋的人.jpg', 0, N'\intro\不吃鸡蛋的人.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'步履不停', N'[日] 是枝裕和 ', N'北京联合出版公司', CAST(0xC13C0B00 AS Date), 236, 36.8, N'9787550297685  ', N'\img\步履不停.jpg', 0, N'~\intro\步履不停.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'长长的路 我们慢慢走', N'余光中', N'光明日报出版社', CAST(0x973D0B00 AS Date), 312, 49.9, N'9787519436780  ', N'\img\长长的路 我们慢慢走.jpg', 0, N'~\intro\长长的路 我们慢慢走.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'从大都到上都', N'罗新 ', N'新星出版社', CAST(0x793D0B00 AS Date), 356, 45, N'9787513328999  ', N'\img\从大都到上都.jpg', 0, N'~\intro\从大都到上都.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'房思琪的初恋乐园', N'林奕含', N'北京联合出版公司', CAST(0xB63D0B00 AS Date), 272, 45, N'9787559614636  ', N'\img\房思琪的初恋乐园.jpg', 0, N'~\intro\房思琪的初恋乐园.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'孤独梦想家', N'戴维·巴尼特', N'湖南文艺出版社', CAST(0x973D0B00 AS Date), 368, 45, N'9787540483180  ', N'\img\孤独梦想家.jpg', 3, N'~\intro\孤独梦想家.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'活下去的理由', N'马特·海格', N'江西人民出版社', CAST(0xB63D0B00 AS Date), 240, 38, N'9787210097143  ', N'\img\活下去的理由.jpg', 3, N'~\intro\活下去的理由.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'贾想2', N'贾樟柯', N'台海出版社', CAST(0xB63D0B00 AS Date), 280, 49, N'9787516812976  ', N'\img\贾想2.jpg', 3, N'~\intro\贾想2.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'看见', N'柴静 ', N'广西师范大学出版社', CAST(0x94360B00 AS Date), 424, 39.8, N'9787549529322  ', N'\img\看见.jpg', 3, N'~\intro\看见.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'美术馆里聊怪咖', N'[日] 山田五郎 / 古山淳子 ', N'后浪丨湖南美术出版社', CAST(0x973D0B00 AS Date), 320, 68, N'9787535681010  ', N'\img\美术馆里聊怪咖.jpg', 0, N'~\intro\美术馆里聊怪咖.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'明', N'[新西兰] 埃莉诺·卡顿 ', N'译林出版社/凤凰壹力', CAST(0xB63D0B00 AS Date), 848, 76, N'9787544763066  ', N'\img\明.jpg', 3, N'~\intro\明.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'偶遇', N'陈鲁豫 ', N'新经典文化/北京十月文艺出版社', CAST(0xB63D0B00 AS Date), 320, 39, N'9787530217856  ', N'\img\偶遇.jpg', 3, N'~\intro\偶遇.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'人生拼图版', N'乔治·佩雷克 ', N'湖岸出版／中信出版集团', CAST(0x973D0B00 AS Date), 544, 68, N'9787508681061  ', N'\img\人生拼图版.jpg', 0, N'~\intro\人生拼图版.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'人之彼岸', N'郝景芳', N'中信出版社', CAST(0x793D0B00 AS Date), 342, 39, N'9787508661506  ', N'\img\人之彼岸.jpg', 3, N'~\intro\人之彼岸.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'使女的故事', N'玛格丽特·阿特伍德 ', N'上海译文出版社', CAST(0x973D0B00 AS Date), 392, 49, N'9787532776337  ', N'\img\使女的故事.jpg', 0, N'~\intro\使女的故事.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'文森特与凡·高:星空中的月亮', N' [塞尔维亚] 格拉迪米尔·斯穆贾 编绘 ', N'后浪丨湖南美术出版社', CAST(0x973D0B00 AS Date), 48, 68, N'9787535682031  ', N'\img\文森特与凡·高：星空中的月亮.jpg', 3, N'~\intro\文森特与凡·高：星空中的月亮.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'我身在历史何处', N'埃米尔·库斯图里卡 ', N'浦睿文化·湖南人民出版社', CAST(0x793D0B00 AS Date), 69, 69, N'9787556117383  ', N'\img\我身在历史何处.jpg', 0, N'~\intro\我身在历史何处.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'现实不似你所见', N'[意] 卡洛·罗韦利 ', N'湖南科学技术出版社', CAST(0x793D0B00 AS Date), 248, 49, N'9787535795489  ', N'\img\现实不似你所见.jpg', 2, N'~\intro\现实不似你所见.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'小仓百人一首', N'藤原定家', N'新星出版社', CAST(0x793D0B00 AS Date), 212, 68, N'9787513328821  ', N'\img\小仓百人一首.jpg', 0, N'~\intro\小仓百人一首.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'寻茶问道', N'白子一 ', N'九州出版社', CAST(0x973D0B00 AS Date), 200, 46, N'9787510862885  ', N'\img\寻茶问道.jpg', 3, N'~\intro\寻茶问道.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'一年里要做的12件事', N'熊琼 ', N'重庆大学出版社', CAST(0x793D0B00 AS Date), 212, 88, N'9787568908801  ', N'\img\一年里要做的12件事.jpg', 0, N'~\intro\一年里要做的12件事.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'在这世界的角落', N'[日] 河野史代 / [日] 莳田阳平 ', N'新星出版社', CAST(0x793D0B00 AS Date), 236, 36.8, N'9787513328593  ', N'\img\在这世界的角落.jpg', 2, N'~\intro\在这世界的角落.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'中国的街市', N'安野光雅 ', N'北京十月文艺出版社', CAST(0x5A3D0B00 AS Date), 92, 118, N'9787530216996  ', N'\img\中国的街市.jpg', 0, N'~\intro\中国的街市.txt')
INSERT [dbo].[Book] ([BookName], [Writer], [PublishingHouse], [Time], [Page], [price], [ISBN], [Photo], [Score], [Introduction]) VALUES (N'追寻历史', N'[美] 白修德 ', N'中信出版社', CAST(0x793D0B00 AS Date), 640, 88, N'9787508678221  ', N'\img\追寻历史.jpg', 0, N'~\intro\追寻历史.txt')
