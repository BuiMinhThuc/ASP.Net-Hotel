USE [master]
GO
/****** Object:  Database [qlkhachsan]    Script Date: 12/18/2018 10:26:23 AM ******/
CREATE DATABASE [qlkhachsan]

 
GO
ALTER DATABASE [qlkhachsan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlkhachsan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlkhachsan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlkhachsan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlkhachsan] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlkhachsan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlkhachsan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlkhachsan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlkhachsan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlkhachsan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlkhachsan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlkhachsan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlkhachsan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlkhachsan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlkhachsan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlkhachsan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlkhachsan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlkhachsan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlkhachsan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlkhachsan] SET  MULTI_USER 
GO
ALTER DATABASE [qlkhachsan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlkhachsan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlkhachsan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlkhachsan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [qlkhachsan]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[avatar] [nvarchar](1000) NULL,
 CONSTRAINT [PK_admins] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bills]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bills](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[schedule_id] [int] NULL,
	[num_day] [int] NULL,
	[price_room] [float] NULL,
	[price_service] [float] NULL,
	[total_price] [float] NULL,
	[bill_status] [bit] NULL,
 CONSTRAINT [PK_bills] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[categories]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[cat_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[contacts]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NULL,
	[phone] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[message] [nvarchar](100) NULL,
 CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[departments]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[department_id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_departments] PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employees]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[department_id] [int] NULL,
	[avatar] [nvarchar](1000) NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[news]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[news_id] [int] IDENTITY(1,1) NOT NULL,
	[news_title] [nvarchar](4000) NULL,
	[news_description] [nvarchar](4000) NULL,
	[news_content] [nvarchar](4000) NULL,
	[news_avatar] [nvarchar](1000) NULL,
	[news_cat_id] [int] NOT NULL,
	[news_status] [bit] NULL,
 CONSTRAINT [PK_news] PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[news_categories]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news_categories](
	[news_cat_id] [int] IDENTITY(1,1) NOT NULL,
	[news_cat_name] [nvarchar](100) NULL,
	[news_cat_description] [nvarchar](100) NULL,
 CONSTRAINT [PK_news_categories] PRIMARY KEY CLUSTERED 
(
	[news_cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[schedule_id] [int] NULL,
	[service_id] [int] NULL,
	[quantity] [int] NULL,
	[order_price] [float] NULL,
	[bill_id] [int] NULL,
	[order_status] [bit] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[room_types]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room_types](
	[room_type_id] [int] IDENTITY(1,1) NOT NULL,
	[room_type_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_room_types] PRIMARY KEY CLUSTERED 
(
	[room_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rooms]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rooms](
	[room_id] [int] IDENTITY(1,1) NOT NULL,
	[room_name] [nvarchar](50) NULL,
	[avatar] [nvarchar](1000) NULL,
	[room_status] [bit] NULL,
	[room_type_id] [int] NULL,
 CONSTRAINT [PK_rooms] PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[schedules]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedules](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[date_in] [date] NULL,
	[date_out] [date] NULL,
	[room_id] [int] NULL,
	[schedule_status] [bit] NULL,
 CONSTRAINT [PK_schedules] PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[services]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services](
	[service_id] [int] IDENTITY(1,1) NOT NULL,
	[service_name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[cat_id] [int] NULL,
	[service_description] [nvarchar](100) NULL,
 CONSTRAINT [PK_services] PRIMARY KEY CLUSTERED 
(
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 12/18/2018 10:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[address] [nvarchar](100) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[admins] ON 

INSERT [dbo].[admins] ([admin_id], [phone], [password], [email], [address], [avatar]) VALUES (1, N'123456', N'123456', N'tranngoc@gmail.com', N'Hưng Yên', N'logoChuanFinal.png')
SET IDENTITY_INSERT [dbo].[admins] OFF
SET IDENTITY_INSERT [dbo].[bills] ON 

INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (19, 32, 4, 400, 120000, 110400, 1)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (20, 33, 4, 400, 185000, 60400, 1)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (21, 34, 3, 300, 0, 300, 1)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (22, 35, 2, 200, 105000, 105200, 0)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (23, 36, 4, 400, 300000, 300400, 1)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (24, 37, 11, 1100, 195000, 148100, 1)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (25, 38, 10, 1000, 1145000, 1146000, 1)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (26, 39, 17, 1700, 48000, 49700, 1)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (27, 40, 4, 400, 165000, 145400, 0)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (28, 41, 5, 500, 110000, 110500, 0)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (29, 42, 4, 400, 0, 400, 1)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (30, 43, 3, 300, 0, 300, 0)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (32, 45, 10, 1000, 75000, 46000, 1)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (33, 46, 4, 400, 70000, 70400, 0)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (34, 47, 3, 300, 95000, 95300, 0)
INSERT [dbo].[bills] ([bill_id], [schedule_id], [num_day], [price_room], [price_service], [total_price], [bill_status]) VALUES (35, 48, 4, 400, 79000, 79400, 0)
SET IDENTITY_INSERT [dbo].[bills] OFF
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([cat_id], [cat_name]) VALUES (1, N'Đồ ăn')
INSERT [dbo].[categories] ([cat_id], [cat_name]) VALUES (2, N'Đồ uống')
INSERT [dbo].[categories] ([cat_id], [cat_name]) VALUES (3, N'Vệ sinh')
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[contacts] ON 

INSERT [dbo].[contacts] ([contact_id], [fullname], [phone], [email], [message]) VALUES (1, N'Hoang Van tuan', N'01689526455', N'hvtuan@as.jp', N'Cho toi thong tin khach san nao')
INSERT [dbo].[contacts] ([contact_id], [fullname], [phone], [email], [message]) VALUES (2, N'Le Thanh Van', N'09758563255', N'lethanhvan@asd.com', N'Le Thanh Van Contact Us')
SET IDENTITY_INSERT [dbo].[contacts] OFF
SET IDENTITY_INSERT [dbo].[departments] ON 

INSERT [dbo].[departments] ([department_id], [department_name]) VALUES (1, N'Tiếp tân')
INSERT [dbo].[departments] ([department_id], [department_name]) VALUES (2, N'Kế toán')
INSERT [dbo].[departments] ([department_id], [department_name]) VALUES (3, N'Vệ sinh')
INSERT [dbo].[departments] ([department_id], [department_name]) VALUES (4, N'An ninh')
SET IDENTITY_INSERT [dbo].[departments] OFF
SET IDENTITY_INSERT [dbo].[employees] ON 

INSERT [dbo].[employees] ([employee_id], [phone], [password], [email], [address], [department_id], [avatar]) VALUES (1, N'0975853528', N'123456', N'ngoctt@gmail.com', N'Hưng Yên', 1, N'logoChuanFinal.png')
SET IDENTITY_INSERT [dbo].[employees] OFF
SET IDENTITY_INSERT [dbo].[news] ON 

INSERT [dbo].[news] ([news_id], [news_title], [news_description], [news_content], [news_avatar], [news_cat_id], [news_status]) VALUES (1, N'MÓN ĐẶC BIỆT THÁNG 12 TẠI GOLDEN DRAGON', N'MÓN ĐẶC BIỆT THÁNG 12 TẠI GOLDEN DRAGON', N'MÓN ĐẶC BIỆT THÁNG 12 TẠI GOLDEN DRAGON', N'logoChuanFinal.png', 1, 1)
SET IDENTITY_INSERT [dbo].[news] OFF
SET IDENTITY_INSERT [dbo].[news_categories] ON 

INSERT [dbo].[news_categories] ([news_cat_id], [news_cat_name], [news_cat_description]) VALUES (1, N'Tin khuyến mãi', N'Tin khuyến mãi')
INSERT [dbo].[news_categories] ([news_cat_id], [news_cat_name], [news_cat_description]) VALUES (2, N'Tin tức', N'Tin tức')
SET IDENTITY_INSERT [dbo].[news_categories] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (2, 32, 10, 1, 20000, 19, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (5, 36, 5, 20, 300000, 23, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (6, 33, 7, 5, 125000, 20, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (8, 37, 6, 3, 75000, 24, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (12, 38, 5, 3, 45000, 25, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (13, 32, 1, 1, 10000, 19, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (14, 38, 2, 10, 100000, 25, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (19, 40, 1, 2, 20000, 27, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (20, 40, 3, 1, 10000, 27, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (21, 40, 5, 3, 45000, 27, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (22, 41, 6, 2, 50000, 28, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (23, 41, 12, 4, 40000, 28, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (24, 41, 10, 1, 20000, 28, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (25, 40, 3, 2, 20000, 27, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (26, 40, 5, 2, 30000, 27, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (27, 40, 3, 2, 20000, 27, NULL)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (28, 40, 3, 2, 20000, 27, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (29, 35, 1, 4, 40000, 22, 1)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (30, 45, 5, 3, 45000, 32, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (31, 45, 14, 2, 30000, 32, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (32, 46, 3, 2, 20000, 33, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (33, 46, 6, 2, 50000, 33, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (34, 47, 3, 2, 20000, 34, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (35, 47, 7, 3, 75000, 34, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (36, 48, 5, 2, 30000, 35, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (37, 48, 7, 1, 25000, 35, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (38, 48, 12, 2, 24000, 35, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (39, 35, 1, 2, 20000, 22, 0)
INSERT [dbo].[orders] ([order_id], [schedule_id], [service_id], [quantity], [order_price], [bill_id], [order_status]) VALUES (40, 35, 14, 3, 45000, 22, 1)
SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[room_types] ON 

INSERT [dbo].[room_types] ([room_type_id], [room_type_name]) VALUES (1, N'Phòng đơn')
INSERT [dbo].[room_types] ([room_type_id], [room_type_name]) VALUES (2, N'Phòng đôi')
INSERT [dbo].[room_types] ([room_type_id], [room_type_name]) VALUES (3, N'Phòng VIP')
SET IDENTITY_INSERT [dbo].[room_types] OFF
SET IDENTITY_INSERT [dbo].[rooms] ON 

INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (15, N'Phòng đơn 105', N'hihi', 1, 1)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (16, N'Phòng đơn 306', NULL, 0, 1)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (17, N'Phòng đơn 506', NULL, 0, 1)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (18, N'Phòng đôi 101', NULL, 1, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (19, N'Phòng đôi 106', NULL, 1, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (20, N'Phòng đôi 103', N'hihi', 1, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (21, N'Phòng VIP 05', N'hihi', 1, 3)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (22, N'Phòng VIP 39', NULL, 0, 3)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (23, N'Phòng đôi 276', NULL, 0, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (24, N'Phòng 209', N'Chayroi', 1, 1)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (25, N'Phòng đôi 101', NULL, 1, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (26, N'Phòng VIP 119', NULL, 0, 3)
SET IDENTITY_INSERT [dbo].[rooms] OFF
SET IDENTITY_INSERT [dbo].[schedules] ON 

INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (32, N'Ngô Công', N'01689954152', N'ngocong@us.jp', CAST(0x1E3F0B00 AS Date), CAST(0x213F0B00 AS Date), 19, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (33, N'Ngô Van Công', N'01689954152', N'ngocong@us.jp', CAST(0x1E3F0B00 AS Date), CAST(0x213F0B00 AS Date), 22, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (34, N'Ngô Thi Công', N'01689954152', N'ngocong@us.jp', CAST(0x1E3F0B00 AS Date), CAST(0x203F0B00 AS Date), 21, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (35, N'Vu Van Thanh', N'016585625', N'vuvanthanh@vn.u23', CAST(0x0F3F0B00 AS Date), CAST(0x103F0B00 AS Date), 15, 0)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (36, N'Ngo Thi CongCong', N'0168598858', N'ngocongcong@us.jp', CAST(0x1D3F0B00 AS Date), CAST(0x203F0B00 AS Date), 20, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (37, N'Lò MINH Đức', N'01689541', N'lomd@us.jp', CAST(0x163F0B00 AS Date), CAST(0x203F0B00 AS Date), 21, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (38, N'Lò Minh Đức', N'01689525', N'lomd@us.jp', CAST(0x0F3F0B00 AS Date), CAST(0x183F0B00 AS Date), 21, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (39, N'CucLo', N'03215649845', N'CucLo@us.jp', CAST(0x0F3F0B00 AS Date), CAST(0x1F3F0B00 AS Date), 22, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (40, N'Lo Minh Duc', N'8527852963', N'lominhduc@gmail.com', CAST(0x1C3F0B00 AS Date), CAST(0x1F3F0B00 AS Date), 20, 0)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (41, N'Minh Van Duc', N'0198563525', N'minhduc@gmail.com', CAST(0x1C3F0B00 AS Date), CAST(0x203F0B00 AS Date), 24, 0)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (42, N'Van Toan', N'1065444', N'van@gmail.com', CAST(0x073F0B00 AS Date), CAST(0x0A3F0B00 AS Date), 21, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (43, N'David Pham', N'015456489562', N'davidpham@is.pji', CAST(0x0E3F0B00 AS Date), CAST(0x103F0B00 AS Date), 21, 0)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (45, N'Ngo Nguyen Chi Cong', N'0168995632', N'ngocccccoong@us.lp', CAST(0x0E3F0B00 AS Date), CAST(0x173F0B00 AS Date), 22, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (46, N'Ngo Van Cong', N'01658956322', N'ngocvancong@gmail.jp', CAST(0x0F3F0B00 AS Date), CAST(0x123F0B00 AS Date), 25, 0)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (47, N'Tran Van Ngoc', N'0975856255', N'ngocngoc@xn--uda.jp', CAST(0x113F0B00 AS Date), CAST(0x133F0B00 AS Date), 19, 0)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (48, N'Trần Tuấn Ngọc', N'0975853528', N'tranngoc@gmail.com', CAST(0x1E3F0B00 AS Date), CAST(0x213F0B00 AS Date), 18, 0)
SET IDENTITY_INSERT [dbo].[schedules] OFF
SET IDENTITY_INSERT [dbo].[services] ON 

INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (1, N'CocaCola', 10000, 2, N'Coca Cola')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (2, N'Pepsi', 10000, 2, N'Pepsi')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (3, N'Bí đao', 10000, 2, N'Bí đao')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (5, N'Mì tôm trứng', 15000, 1, N'Mì tôm trứng')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (6, N'Phở bò', 25000, 1, N'Phở bò')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (7, N'Cơm rang ', 25000, 1, N'Cơm rang ')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (10, N'Dọn phòng', 20000, 3, N'Dọn phòng')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (12, N'Chanh dây', 12000, 2, N'Nước chanh dây')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (13, N'SandWich', 10000, 1, N'SandWich')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (14, N'Bánh mì thập cẩm', 15000, 1, N'Bánh mì thập cẩm')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (15, N'Thay ga giường', 20000, 3, N'Thay ga giường')
INSERT [dbo].[services] ([service_id], [service_name], [price], [cat_id], [service_description]) VALUES (16, N'Phan ta cam', 9000, 2, N'Phan ta cam')
SET IDENTITY_INSERT [dbo].[services] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [phone], [email], [password], [address]) VALUES (1, N'0975853528', N'ngoctt@us.jp', N'123456', N'Hung Yen')
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[bills] ADD  CONSTRAINT [DF_bills_bill_status]  DEFAULT ((0)) FOR [bill_status]
GO
ALTER TABLE [dbo].[news] ADD  CONSTRAINT [DF_news_news_status]  DEFAULT ((1)) FOR [news_status]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF_orders_order_status]  DEFAULT ((0)) FOR [order_status]
GO
ALTER TABLE [dbo].[rooms] ADD  CONSTRAINT [DF_rooms_room_status]  DEFAULT ((0)) FOR [room_status]
GO
ALTER TABLE [dbo].[schedules] ADD  CONSTRAINT [DF_schedules_schedule_status]  DEFAULT ((0)) FOR [schedule_status]
GO
ALTER TABLE [dbo].[bills]  WITH CHECK ADD  CONSTRAINT [FK_bills_schedules] FOREIGN KEY([schedule_id])
REFERENCES [dbo].[schedules] ([schedule_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bills] CHECK CONSTRAINT [FK_bills_schedules]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_employees_departments] FOREIGN KEY([department_id])
REFERENCES [dbo].[departments] ([department_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_employees_departments]
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD  CONSTRAINT [FK_news_news_categories] FOREIGN KEY([news_cat_id])
REFERENCES [dbo].[news_categories] ([news_cat_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[news] CHECK CONSTRAINT [FK_news_news_categories]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_bills] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bills] ([bill_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_bills]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_schedules] FOREIGN KEY([schedule_id])
REFERENCES [dbo].[schedules] ([schedule_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_schedules]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_services] FOREIGN KEY([service_id])
REFERENCES [dbo].[services] ([service_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_services]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_rooms_room_types] FOREIGN KEY([room_type_id])
REFERENCES [dbo].[room_types] ([room_type_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_rooms_room_types]
GO
ALTER TABLE [dbo].[schedules]  WITH CHECK ADD  CONSTRAINT [FK_schedules_schedules] FOREIGN KEY([room_id])
REFERENCES [dbo].[rooms] ([room_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[schedules] CHECK CONSTRAINT [FK_schedules_schedules]
GO
ALTER TABLE [dbo].[services]  WITH CHECK ADD  CONSTRAINT [FK_services_categories] FOREIGN KEY([cat_id])
REFERENCES [dbo].[categories] ([cat_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[services] CHECK CONSTRAINT [FK_services_categories]
GO
USE [master]
GO
ALTER DATABASE [qlkhachsan] SET  READ_WRITE 
GO
