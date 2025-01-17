USE [LTShop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/29/2024 3:02:57 PM ******/
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
/****** Object:  Table [dbo].[About]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Password] [nvarchar](32) NULL,
	[Email] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[ResetPasswordCode] [nvarchar](250) NULL,
	[GroupId] [varchar](20) NULL,
	[Status] [bit] NOT NULL,
	[Address] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[ParentId] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NOT NULL,
	[Tags] [nvarchar](500) NULL,
	[CategoryId] [bigint] NULL,
	[Detail] [nvarchar](max) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentId] [bigint] NOT NULL,
	[TagId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credential](
	[UserGroupId] [varchar](20) NOT NULL,
	[RoleId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[UserGroupId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[Id] [varchar](50) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Image1] [nvarchar](250) NULL,
	[Image2] [nvarchar](250) NULL,
	[Image3] [nvarchar](250) NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[TypeId] [int] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[PaymentMethod] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NULL,
	[DeliveryAddress] [nvarchar](200) NULL,
	[CustomerId] [bigint] NOT NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[TotalQuantity] [int] NOT NULL,
	[TotalPrice] [decimal](18, 2) NULL,
	[Status] [int] NOT NULL,
	[SizeId] [bigint] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC,
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[Price] [decimal](18, 0) NULL,
	[Promotion] [int] NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[CategoryId] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NOT NULL,
	[GalleryId] [bigint] NULL,
	[Details] [nvarchar](max) NULL,
	[OriginalPrice] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](50) NULL,
	[ParentId] [bigint] NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSize]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSize](
	[ProductId] [bigint] NOT NULL,
	[SizeId] [bigint] NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_ProductSize] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[Content] [nvarchar](500) NULL,
	[Star] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Rate_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NOT NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](32) NULL,
	[Name] [nvarchar](150) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[ResetPasswordCode] [nvarchar](250) NULL,
	[GroupId] [varchar](20) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[Id] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 5/29/2024 3:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Province] [nvarchar](150) NULL,
	[District] [nvarchar](150) NULL,
	[Ward] [nvarchar](150) NULL,
	[Name] [nvarchar](150) NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Name], [Password], [Email], [CreatedDate], [ModifiedDate], [ResetPasswordCode], [GroupId], [Status], [Address], [Phone]) VALUES (1, N'Vương Lê Trung', N'e10adc3949ba59abbe56e057f20f883e', N'trung.ftios@gmail.com', CAST(N'2023-12-17T12:47:20.243' AS DateTime), CAST(N'2024-05-08T14:55:19.427' AS DateTime), NULL, N'MEMBER', 1, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Password], [Email], [CreatedDate], [ModifiedDate], [ResetPasswordCode], [GroupId], [Status], [Address], [Phone]) VALUES (5, N'Quản trị viên', N'e10adc3949ba59abbe56e057f20f883e', N'admin@gmail.com', NULL, NULL, NULL, N'ADMIN', 1, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Password], [Email], [CreatedDate], [ModifiedDate], [ResetPasswordCode], [GroupId], [Status], [Address], [Phone]) VALUES (9, N'Le Chun', N'e10adc3949ba59abbe56e057f20f883e', N'lechun@gmail.com', CAST(N'2023-12-18T09:14:45.860' AS DateTime), CAST(N'2024-05-08T14:55:46.940' AS DateTime), NULL, N'MEMBER', 1, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Password], [Email], [CreatedDate], [ModifiedDate], [ResetPasswordCode], [GroupId], [Status], [Address], [Phone]) VALUES (18, N'Le Trung', N'e10adc3949ba59abbe56e057f20f883e', N'vuongletrunggg1@gmail.com', CAST(N'2024-05-18T12:26:43.777' AS DateTime), CAST(N'2024-05-18T12:28:51.687' AS DateTime), N'', N'MEMBER', 1, N'12th assert', N'0334822321')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (1, N'Tin tổng hợp', N'tin-tong-hop', NULL, 1, CAST(N'2023-10-24T17:36:03.617' AS DateTime), CAST(N'2023-11-23T16:40:53.810' AS DateTime), 1)
INSERT [dbo].[Category] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (5, N'Tin Công Nghệ', N'tin-cong-nghe', NULL, 2, CAST(N'2024-05-18T12:32:31.530' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [Status], [Address], [Email], [Phone]) VALUES (1, 1, N'Thành phố Hồ Chí Minh', N'trungftios@gmail.com', N'0334822321')
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([Id], [Name], [MetaTitle], [Description], [Image], [CreatedDate], [ModifiedDate], [Status], [Tags], [CategoryId], [Detail]) VALUES (4, N'1001+ Meme từ chối hiểu hài hước và bựa nhất', N'1001-meme-tu-choi-hieu-hai-huoc-va-bua-nhat', N'Nếu bạn chưa biết phải từ chối sao cho khéo léo thì các meme từ chối dưới đây sẽ giúp cho lời từ chối của bạn vừa hài hước mà vừa giúp cho người đọc hiểu ý của mình. Hãy cùng TunaClothes tìm hiểu qua bài viết sau đây nhé.', N'/DataManagement/Images/Content/TinTucTongHop/1001meme.png', CAST(N'2023-12-30T22:35:46.790' AS DateTime), NULL, 1, N'meme, hài hước, xu hướng', 1, N'<h2><span style="font-size:18px"><strong>1. Meme từ chối l&agrave; g&igrave;?</strong></span></h2>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-1.jpg?v=1703217662175" /></em></p>

<p><span style="font-size:16px"><em>Meme từ chối nghĩa l&agrave; g&igrave;</em></span></p>

<p><span style="font-size:16px">Meme l&agrave; những h&igrave;nh ảnh, video được cắt gh&eacute;p theo chiều hướng t&iacute;ch cực một c&aacute;ch h&agrave;i hước, vui vẻ v&agrave; khiến cho c&aacute;c cuộc n&oacute;i chuyện, b&igrave;nh luận tr&ecirc;n c&aacute;c trang mạng x&atilde; hội như Facebook, Instagram, Zalo, Telegram,... trở n&ecirc;n hay ho hơn rất nhiều so với b&igrave;nh thường.</span></p>

<p><span style="font-size:16px">Tương tự như c&aacute;c meme kh&aacute;c, meme từ chối cũng l&agrave; những h&igrave;nh ảnh &quot;chế&quot; rất h&agrave;i hước v&agrave; g&acirc;y cười với chủ đề từ chối. C&oacute; rất nhiều nh&acirc;n vật được sử dụng trong meme n&agrave;y như gấu tr&uacute;c, m&egrave;o, người que,... gi&uacute;p cho cuộc hội thoại của bạn trở n&ecirc;n th&uacute; vị hơn gấp vạn lần.</span></p>

<p>&nbsp;</p>

<h2><span style="font-size:18px">2. 1001+ Meme từ chối h&agrave;i hước nhất, đỉnh cao nhất</span></h2>

<p><span style="font-size:16px">C&oacute; rất nhiều những meme từ chối đang thịnh h&agrave;nh hiện nay như meme từ chối hiểu, meme từ chối nhận, meme gấu tr&uacute;c từ chối hiểu, meme m&egrave;o từ chối hiểu, meme sehun tao từ chối hiểu, meme từ chối l&igrave; x&igrave;,... m&agrave; bạn sẽ rất cần cho album của m&igrave;nh đ&oacute; nh&eacute;.</span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-2.jpg?v=1703217663333" /></em></p>

<p><span style="font-size:16px"><em>Meme từ chối hiểu</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-3.jpg?v=1703217664293" /></em></p>

<p><span style="font-size:16px"><em>Meme từ chối hiểu</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-4.jpg?v=1703217665412" /></em></p>

<p><span style="font-size:16px"><em>Từ chối hiểu meme</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-5.jpg?v=1703217666515" /></em></p>

<p><span style="font-size:16px"><em>Từ chối hiểu meme</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-6.jpg?v=1703217667585" /></em></p>

<p><span style="font-size:16px"><em>Từ chối hiểu meme</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-7.jpg?v=1703217668259" /></em></p>

<p><span style="font-size:16px"><em>Từ chối meme</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-8.jpg?v=1703217669331" /></em></p>

<p><span style="font-size:16px"><em>Từ chối meme</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-9.jpg?v=1703217670299" /></em></p>

<p><span style="font-size:16px"><em>Từ chối meme</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-10.jpg?v=1703217670951" /></em></p>

<p><span style="font-size:16px"><em>Ảnh meme từ chối</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-11.jpg?v=1703217671680" /></em></p>

<p><span style="font-size:16px"><em>Meme từ chối nhận</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-12.jpg?v=1703217672571" /></em></p>

<p><span style="font-size:16px"><em>Meme từ chối nhận</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-13.jpg?v=1703217673447" /></em></p>

<p><span style="font-size:16px"><em>Meme từ chối nhận</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-14.jpg?v=1703217674535" /></em></p>

<p><span style="font-size:16px"><em>Ảnh meme từ chối hiểu</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-15.jpg?v=1703217675383" /></em></p>

<p><span style="font-size:16px"><em>Ảnh meme từ chối hiểu</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-16.jpg?v=1703217676606" /></em></p>

<p><span style="font-size:16px"><em>Ảnh meme từ chối hiểu</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-17.jpg?v=1703217677601" /></em></p>

<p><span style="font-size:16px"><em>Meme sehun tao từ chối hiểu</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-18.jpg?v=1703217678665" /></em></p>

<p><span style="font-size:16px"><em>Meme gấu tr&uacute;c từ chối hiểu</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-19.jpg?v=1703217679360" /></em></p>

<p><span style="font-size:16px"><em>Meme gấu tr&uacute;c từ chối hiểu</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-20.jpg?v=1703217680215" /></em></p>

<p><span style="font-size:16px"><em>Từ chối hiểu meme gấu tr&uacute;c</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-21.jpg?v=1703217681102" /></em></p>

<p><span style="font-size:16px"><em>Từ chối hiểu meme gấu tr&uacute;c</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-22.jpg?v=1703217681967" /></em></p>

<p><span style="font-size:16px"><em>Meme từ chối</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-23.jpg?v=1703217683043" /></em></p>

<p><span style="font-size:16px"><em>Từ chối meme</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-24.jpg?v=1703217683691" /></em></p>

<p><span style="font-size:16px"><em>Meme từ chối</em></span></p>

<p><em><img alt="meme từ chối " src="https://bizweb.dktcdn.net/100/438/408/files/meme-tu-choi-yody-vn-25.jpg?v=1703217684784" /></em></p>

<p><span style="font-size:16px"><em>Ảnh meme từ chối</em></span></p>

<p><span style="font-size:16px">Chắc chắn meme từ chối l&agrave; một trong những tệp meme đ&aacute;ng được lưu v&agrave;o album ảnh nhất hiện nay. Hy vọng qua b&agrave;i viết n&agrave;y, c&aacute;c độc giả của TunaClothes&nbsp;đ&atilde; c&oacute; một album meme phong ph&uacute; cho cuộc hội thoại trực tuyến online th&uacute; vị của m&igrave;nh.</span></p>
')
INSERT [dbo].[Content] ([Id], [Name], [MetaTitle], [Description], [Image], [CreatedDate], [ModifiedDate], [Status], [Tags], [CategoryId], [Detail]) VALUES (6, N'Gợi ý 101 Tên ở nhà cho bé gái DỄ THƯƠNG và ĐỘC ĐÁO 2024', N'goi-y-101-ten-o-nha-cho-be-gai-de-thuong-va-doc-dao-2024', N'Ở nhà bạn có thường được bố mẹ, ông bà đặt cho những cái tên dễ thương hay không? Các em bé bây giờ cũng vậy, bạn đã biết đặt tên ở nhà cho bé gái như thế nào cho thật đáng yêu và dễ gọi chưa? Cùng TunaClothes khám phá ngay nhé!', N'/DataManagement/Images/Content/TinTucTongHop/ten-o-nha-cho-be.png', CAST(N'2023-12-31T09:35:26.620' AS DateTime), NULL, 1, N'đặt tên, em bé, ý nghĩa', 1, N'<h3 dir="ltr"><span style="font-size:18px">1.1 T&ecirc;n ở nhà cho bé gái đặt theo t&ecirc;n trái c&acirc;y</span></h3>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mít</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Na</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Cam</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">D&acirc;u</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Dừa</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Dứa</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Nho</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">M&acirc;̣n</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Xoài</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mơ</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Táo</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Bơ</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Đ&acirc;̣u</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Ch&ocirc;m ch&ocirc;m</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Dưa</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">L&ecirc;</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Lựu</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Chanh</span></p>
	</li>
</ul>

<p dir="ltr"><img alt="Tên ở nhà cho bé gái đặt theo tên trái cây" src="https://bizweb.dktcdn.net/100/438/408/files/ten-o-nha-cho-be-gai-yody-vn-2.jpg?v=1703230174231" /></p>

<p dir="ltr"><span style="font-size:14px"><em>T&ecirc;n ở nhà cho bé gái đặt theo t&ecirc;n trái c&acirc;y</em></span></p>

<h3 dir="ltr"><span style="font-size:18px">1.2 T&ecirc;n gọi ở nhà cho bé gái đặt theo t&ecirc;n đ&ocirc;̣ng v&acirc;̣t</span></h3>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Thỏ</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Nhím</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Meow</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sóc</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Chíp</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Heo</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Ỉn</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Rùa</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">S&acirc;u</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Vịt</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Cò</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">B&ocirc;́ng</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Ng&ocirc;̃ng</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Chu&ocirc;̣t</span></p>
	</li>
</ul>

<p>&nbsp;</p>

<h3 dir="ltr"><span style="font-size:18px">1.3 Đặt t&ecirc;n ở nhà cho bé gái theo t&ecirc;n đ&ocirc;̀ ăn</span></h3>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mỡ</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Gạo</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Ti&ecirc;u</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">N&acirc;́m</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">B&acirc;̀u</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Bắp</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Khoai</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Cải</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Đ&acirc;̣u</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Măng</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Bí</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mì</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Kem</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Nem</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Cám</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Kẹo</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Bún</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">C&ocirc;́m</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sushi</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mứt</span></p>
	</li>
</ul>

<p dir="ltr"><span style="font-size:16px"><img alt="Đặt tên ở nhà cho bé gái theo tên đồ ăn" src="https://bizweb.dktcdn.net/100/438/408/files/ten-o-nha-cho-be-gai-yody-vn-5.jpg?v=1703230219235" /></span></p>

<p dir="ltr"><span style="font-size:16px"><em>Đặt t&ecirc;n ở nhà cho bé gái theo t&ecirc;n đ&ocirc;̀ ăn</em></span></p>

<p dir="ltr">&nbsp;</p>

<h3 dir="ltr"><span style="font-size:18px">1.4 Nickname ở nhà cho bé gái đặt theo kích thước của bé</span></h3>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tí còi</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Phích</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Béo</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Lùn</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Xoăn</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tẹt</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tròn</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Ph&ecirc;̣</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sún</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">M&acirc;̣p</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Đen</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Hạt ti&ecirc;u</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mít</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Phính</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">D&ocirc;</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Híp</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Hớn</span></p>
	</li>
</ul>

<h3 dir="ltr">&nbsp;</h3>

<h3 dir="ltr"><span style="font-size:18px">1.5 T&ecirc;n gọi ở nhà cho bé gái đặt theo nh&acirc;n v&acirc;̣t hoạt hình</span></h3>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Xeko</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Xuka</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Kitty</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Doremi</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Boo</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Dory</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Chie</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Nemo</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Puca</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Jerry</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tom</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mimi</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Coco</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Anna</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Cici</span></p>
	</li>
</ul>

<h3 dir="ltr">&nbsp;</h3>

<h3 dir="ltr"><span style="font-size:18px">1.6 T&ecirc;n hay cho bé gái ở nhà theo t&ecirc;n ng&ocirc;̣ nghĩnh</span></h3>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Min</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mỡ</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sam</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mon</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Miu</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tí còi</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Bim</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Bơm</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Su</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Bi</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">L&ocirc;</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Bẹt</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Zịt</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Be</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Bin</span></p>
	</li>
</ul>

<p dir="ltr"><span style="font-size:16px"><img alt="Tên hay cho bé gái ở nhà theo tên ngộ nghĩnh" src="https://bizweb.dktcdn.net/100/438/408/files/ten-o-nha-cho-be-gai-yody-vn-1.jpg?v=1703230243831" /></span></p>

<p dir="ltr"><span style="font-size:16px"><em>T&ecirc;n hay cho bé gái ở nhà theo t&ecirc;n ng&ocirc;̣ nghĩnh</em></span></p>

<p dir="ltr">&nbsp;</p>

<h3 dir="ltr"><span style="font-size:18px">1.7 T&ecirc;n ở nhà cho bé gái đặt theo thuỷ hải sản</span></h3>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">H&ecirc;́n</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sò</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">&Ocirc;́c</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mực</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tép</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sừa</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Cua</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">B&ocirc;́ng</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Cá ngựa</span></p>
	</li>
</ul>

<h3 dir="ltr">&nbsp;</h3>

<h3 dir="ltr"><span style="font-size:18px">1.8 Đặt nickname ở nhà cho bé gái theo t&ecirc;n đ&ocirc;̀ u&ocirc;́ng</span></h3>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Coca</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Soda</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Latte</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sữa</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Milk</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sữa chua</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Trà sữa</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Fanta</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Pepsi</span></p>
	</li>
</ul>

<p dir="ltr"><span style="font-size:16px"><img alt="Đặt nickname ở nhà cho bé gái theo tên đồ uống" src="https://bizweb.dktcdn.net/100/438/408/files/ten-o-nha-cho-be-gai-yody-vn-3.jpg?v=1703230274508" /></span></p>

<p dir="ltr"><span style="font-size:16px"><em>Đặt nickname ở nhà cho bé gái theo t&ecirc;n đ&ocirc;̀ u&ocirc;́ng</em></span></p>

<p dir="ltr">&nbsp;</p>

<h3 dir="ltr"><span style="font-size:18px">1.9 T&ecirc;n gọi ở nhà cho bé gái theo ti&ecirc;́ng Anh</span></h3>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sunshine: Ánh năng rực rỡ</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Zelda: Hạnh phúc</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Irene: Hoà bình</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Baby: con gái bé bỏng</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Warrior Girl: Nữ chi&ecirc;́n binh của b&ocirc;́</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Queenie: Nữ hoàng nhỏ của chúng ta</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Boss baby: S&ecirc;́p nhỏ của mẹ</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Cookie: Chi&ecirc;́c bánh kem của nhà mình</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Pudding: Núng nính và căng mọng</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Honey: Ngọt ngào</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Kit kat</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Pixie: Con bé năng đ&ocirc;̣ng, mạnh mẽ</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tiny: Nhỏ xíu, d&ecirc;̃ thương</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Bean: Hạt đ&acirc;̣u nhỏ của b&ocirc;́ mẹ</span></p>
	</li>
</ul>

<p dir="ltr">&nbsp;</p>

<h3 dir="ltr"><span style="font-size:18px">1.10 Đặt t&ecirc;n gọi ở nhà cho bé gái gắn li&ecirc;̀n với thi&ecirc;n nhi&ecirc;n</span></h3>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">M&acirc;y</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Bay</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Gió</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Nắng</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sao</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Ng&acirc;n hà</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sóng</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tuy&ecirc;́t</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Trăng</span></p>
	</li>
</ul>

<p dir="ltr">&nbsp;</p>

<h2 dir="ltr"><span style="font-size:18px">2. M&ocirc;̣t s&ocirc;́ lưu ý khi đặt t&ecirc;n ở nhà cho bé gái</span></h2>

<p dir="ltr"><span style="font-size:16px">T&ecirc;n ở nhà cho bé gái là cái t&ecirc;n gắn li&ecirc;̀n với tu&ocirc;̉i thơ của bé. Nó gắn li&ecirc;̀n với tính cách, dáng vẻ, sở thích của các bé trong những ngày tháng đ&acirc;̀u ti&ecirc;n. Và cũng là đ&ecirc;̉ th&ecirc;̉ hi&ecirc;̣n sự y&ecirc;u thương và quan t&acirc;m của &ocirc;ng bà, b&ocirc;́ mẹ đ&ocirc;́i với bé gái. Nhưng khi đặt nickname cho các bé gái bạn cũng c&acirc;̀n lưu ý m&ocirc;̣t s&ocirc;́ đi&ecirc;̉m sau đ&acirc;y:</span></p>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">N&ecirc;n lựa chọn những cái nickname d&ecirc;̃ thương, đáng y&ecirc;u</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Vì là t&ecirc;n ở nhà n&ecirc;n hãy lựa chọn những cái t&ecirc;n ngắn gọn, d&ecirc;̃ gọi t&ecirc;n và kh&ocirc;ng bị nứu lưỡi</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Nickname ở nhà của các bé n&ecirc;n phù hợp với m&ocirc;̣t trong s&ocirc;́ những đặc đi&ecirc;̉m của bé như kích thước, sở thích hay tính cách của bé. Đ&ecirc;̉ sau này m&ocirc;̃i khi được gọi t&ecirc;n thì cái t&ecirc;n chính là ký ức đ&ecirc;̉ gợi lại kỷ ni&ecirc;̣m</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tuy chỉ là t&ecirc;n gọi ở nhà nhưng cũng kh&ocirc;ng n&ecirc;n đặt những cái t&ecirc;n quá x&acirc;́u khi&ecirc;́n bé sau này có nh&acirc;̣n thức bị x&acirc;́u h&ocirc;̉ vì t&ecirc;n của mình</span></p>
	</li>
</ul>

<p dir="ltr"><span style="font-size:16px"><img src="https://bizweb.dktcdn.net/100/438/408/files/ten-o-nha-cho-be-gai-yody-vn-4.jpg?v=1703230324986" /></span></p>

<p dir="ltr"><span style="font-size:16px"><em>M&ocirc;̣t s&ocirc;́ lưu ý khi đặt t&ecirc;n ở nhà cho bé gái</em></span></p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr"><span style="font-size:16px">Tr&ecirc;n&nbsp;đ&acirc;y TunaCLothes&nbsp;đã gửi tới các bạn những ki&ecirc;̉u t&ecirc;n&nbsp;ở nhà cho bé gái&nbsp;đáng y&ecirc;u và d&ecirc;̃ thương nh&acirc;́t. Hi vọng với bài vi&ecirc;́t này bạn sẽ lựa chọn ra cái t&ecirc;n hay và phù hợp nh&acirc;́t với bé.</span></p>
')
INSERT [dbo].[Content] ([Id], [Name], [MetaTitle], [Description], [Image], [CreatedDate], [ModifiedDate], [Status], [Tags], [CategoryId], [Detail]) VALUES (7, N'Hướng dẫn cách bày mâm ngũ quả ngày Tết đẹp, đem lại may mắn', N'huong-dan-cach-bay-mam-ngu-qua-ngay-tet-dep-dem-lai-may-man', N'Trong những ngày Tết, mâm ngũ quả là thứ không thể thiếu giúp thu hút nhiều may mắn, vượng khí. Dưới đây, TunaClothes sẽ hướng dẫn cách bày mâm ngũ quả ngày Tết đẹp nhất.', N'/DataManagement/Images/Content/TinTucTongHop/mam-ngu-qua.png', CAST(N'2023-12-31T09:51:07.043' AS DateTime), CAST(N'2023-12-31T09:51:17.630' AS DateTime), 1, N'tết, ngũ quả, đón xuân', 1, N'<h2 dir="ltr"><span style="font-size:18px">1. M&acirc;m ngũ quả l&agrave; g&igrave;?</span></h2>

<p dir="ltr"><span style="font-size:16px">M&acirc;m ngũ quả l&agrave; biểu tượng tượng trưng cho sự phồn thịnh v&agrave; may mắn trong văn h&oacute;a Việt Nam, thường xuất hiện nh&acirc;n dịp Tết Nguy&ecirc;n Đ&aacute;n. Đ&acirc;y l&agrave; một bức tranh tuyệt vời của sự h&agrave;i h&ograve;a v&agrave; đa dạng, với năm loại tr&aacute;i c&acirc;y kh&aacute;c nhau được sắp xếp một c&aacute;ch tinh tế.</span></p>

<p dir="ltr"><span style="font-size:16px"><em><img alt="cách bày mâm ngũ quả" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn.jpg?v=1702892544969" />M&acirc;m ngũ quả</em></span></p>

<p dir="ltr"><span style="font-size:16px">Kh&ocirc;ng chỉ l&agrave; một n&eacute;t đẹp truyền thống, m&acirc;m ngũ quả ng&agrave;y nay c&ograve;n trở th&agrave;nh một biểu tượng trang tr&iacute; tinh tế, thể hiện sự quan t&acirc;m đặc biệt đối với ng&agrave;y lễ quan trọng. Việc b&agrave;y biện m&acirc;m ngũ quả kh&ocirc;ng chỉ l&agrave; việc sắp xếp tr&aacute;i c&acirc;y một c&aacute;ch h&agrave;i h&ograve;a, m&agrave; c&ograve;n l&agrave; sự kết hợp tinh tế của m&agrave;u sắc v&agrave; &yacute; nghĩa.</span></p>

<p dir="ltr"><span style="font-size:16px">M&acirc;m ngũ quả kh&ocirc;ng chỉ l&agrave; n&eacute;t đẹp trang tr&iacute;, m&agrave; c&ograve;n mang đến nhiều &yacute; nghĩa văn h&oacute;a v&agrave; t&acirc;m linh. N&oacute; thể hiện l&ograve;ng th&agrave;nh k&iacute;nh v&agrave; tri &acirc;n đối với tổ ti&ecirc;n, l&agrave; sự giao lưu v&agrave; chia sẻ niềm vui trong dịp Tết. Sự lựa chọn cẩn thận về loại tr&aacute;i c&acirc;y v&agrave; c&aacute;ch sắp xếp ch&uacute;ng cũng thể hiện sự t&ocirc;n trọng v&agrave; ước nguyện của gia chủ.</span></p>

<p dir="ltr"><span style="font-size:16px">Với thời gian, m&acirc;m ngũ quả kh&ocirc;ng chỉ giữ lại gi&aacute; trị t&acirc;m linh m&agrave; c&ograve;n trở th&agrave;nh một biểu tượng đẹp mắt, g&oacute;p phần l&agrave;m cho kh&ocirc;ng gian Tết trở n&ecirc;n trang tr&iacute; v&agrave; phong c&aacute;ch.</span></p>

<p dir="ltr">&nbsp;</p>

<h2 dir="ltr"><span style="font-size:18px">2. &Yacute; nghĩa của m&acirc;m ngũ quả theo từng miền</span></h2>

<p dir="ltr"><span style="font-size:16px">M&acirc;m ngũ quả thường được sắp xếp với 5 loại tr&aacute;i c&acirc;y đa dạng, mỗi loại đều mang theo m&igrave;nh những &yacute; nghĩa s&acirc;u sắc, được thể hiện r&otilde; trong kinh Vu Lan Bồn th&ocirc;ng qua h&igrave;nh ảnh tượng trưng của tr&aacute;i c&acirc;y 5 m&agrave;u.</span></p>

<p dir="ltr"><span style="font-size:16px"><em><img alt="cách bày mâm ngũ quả" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn1.jpg?v=1702892545818" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>&Yacute; nghĩa của m&acirc;m ngũ quả</em></span></p>

<p dir="ltr"><span style="font-size:16px">Ở nền văn h&oacute;a Việt Nam, con số 5 thường được hiểu l&agrave; biểu tượng của ngũ ph&uacute;c l&acirc;m m&ocirc;n, bao gồm:</span></p>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Ph&uacute; (Gi&agrave;u c&oacute;): Biểu tượng cho sự gi&agrave;u c&oacute; v&agrave; thịnh vượng.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Qu&yacute; (Sang trọng): Đại diện cho phẩm chất cao qu&yacute; v&agrave; lịch l&atilde;m.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Thọ (L&acirc;u bền): Tượng trưng cho cuộc sống trường thọ v&agrave; l&acirc;u d&agrave;i.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Khang (Sức khỏe): Đại diện cho sức khỏe mạnh mẽ v&agrave; bền vững.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Ninh (B&igrave;nh an): Biểu tượng cho cuộc sống y&ecirc;n b&igrave;nh v&agrave; an l&agrave;nh.</span></p>
	</li>
</ul>

<p dir="ltr"><span style="font-size:16px">Trong t&acirc;m l&yacute; Phật tử, 5 m&agrave;u sắc của m&acirc;m ngũ quả thường đại diện cho &quot;ngũ thiện căn&quot; bao gồm:</span></p>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">T&iacute;n căn (L&ograve;ng tin): Niềm tin vững chắc trong l&ograve;ng Phật tử.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tấn căn (Ki&ecirc;n tr&igrave;): &Yacute; ch&iacute; mạnh mẽ v&agrave; ki&ecirc;n nhẫn.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Niệm căn (Ghi nhớ): Sự ch&uacute; &yacute; v&agrave; tập trung v&agrave;o h&agrave;nh tr&igrave;nh tu t&acirc;m.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Định căn (T&acirc;m kh&ocirc;ng loạn): T&acirc;m hồn ổn định, kh&ocirc;ng bị dao lộn.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Huệ căn (S&aacute;ng suốt): Khả năng hiểu biết v&agrave; nhận thức s&acirc;u sắc.</span></p>
	</li>
</ul>

<p dir="ltr"><span style="font-size:16px">C&aacute;c loại hoa quả tr&ecirc;n m&acirc;m ngũ quả dịp Tết cũng mang đến những &yacute; nghĩa đặc biệt:</span></p>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Quả bưởi, dưa hấu: Tươi m&aacute;t, hứa hẹn năm mới đầy đủ v&agrave; may mắn.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tr&aacute;i hồng, qu&yacute;t: Tượng trưng cho sự may mắn v&agrave; th&agrave;nh đạt.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tr&aacute;i l&ecirc;: Ngọt ng&agrave;o, biểu tượng cho sự su&ocirc;n sẻ v&agrave; thuận lợi.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tr&aacute;i lựu: Nhiều hạt, mong muốn con ch&aacute;u nhiều v&agrave; hạnh ph&uacute;c.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tr&aacute;i đ&agrave;o: Thể hiện sự thăng tiến.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mai: &Yacute; nghĩa về hạnh ph&uacute;c v&agrave; t&igrave;nh y&ecirc;u gia đ&igrave;nh.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tr&aacute;i t&aacute;o (t&aacute;o đỏ): Mang &yacute; nghĩa ph&uacute; qu&yacute;.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Thanh long: Tượng trưng cho sự hội tụ của rồng m&acirc;y.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Quả trứng g&agrave; h&igrave;nh tr&aacute;i đ&agrave;o ti&ecirc;n: L&agrave; biểu tượng của lộc trời ban xuống.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Dừa: C&oacute; &acirc;m tương tự như &quot;vừa&quot; trong tiếng miền Nam, mang &yacute; nghĩa kh&ocirc;ng thiếu.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sung: Mong muốn sự sung t&uacute;c trong mọi lĩnh vực.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Đu đủ: Đem lại sự đầy đủ v&agrave; phồn thịnh.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Xo&agrave;i: C&oacute; &acirc;m na n&aacute; như &quot;x&agrave;i&quot; nếu đọc theo kiểu miền T&acirc;y, cầu mong cả năm ti&ecirc;u x&agrave;i kh&ocirc;ng thiếu thốn.</span></p>
	</li>
</ul>

<p dir="ltr">&nbsp;</p>

<h3 dir="ltr"><span style="font-size:18px">2.1 M&acirc;m ngũ quả miền Bắc</span></h3>

<p dir="ltr"><span style="font-size:16px">Đối với cư d&acirc;n miền Bắc, một m&acirc;m ngũ quả ho&agrave;n hảo cần phải kết hợp đầy đủ c&aacute;c loại tr&aacute;i c&acirc;y như chuối xanh, bưởi, phật thủ, sung, hồng, quất cảnh, ớt, dứa,... với sự h&agrave;i h&ograve;a v&agrave; m&agrave;u sắc rực rỡ, tu&acirc;n theo Ngũ h&agrave;nh:</span></p>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Kim - M&agrave;u trắng</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mộc - M&agrave;u xanh l&aacute;</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Thủy - M&agrave;u đen</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Hỏa - M&agrave;u đỏ</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Thổ - M&agrave;u v&agrave;ng</span></p>
	</li>
</ul>

<p dir="ltr"><span style="font-size:16px"><em><img alt="cách bày mâm ngũ quả" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn2.jpg?v=1702892653474" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>M&acirc;m ngũ quả miền Bắc</em></span></p>

<p dir="ltr"><span style="font-size:16px">Chuối xanh trong m&acirc;m ngũ quả thường được sắp xếp theo nải, biểu tượng cho sự quần tụ, sum vầy v&agrave; ấm &aacute;p. Bưởi, với m&agrave;u v&agrave;ng của n&oacute;, đại diện cho sự gi&agrave;u sang v&agrave; may mắn.</span></p>

<p dir="ltr"><span style="font-size:16px">Một số gia đ&igrave;nh c&oacute; thể thay bưởi bằng quả phật thủ, với mong muốn lưu giữ t&acirc;m linh v&agrave; sự ph&ugrave; hộ của Phật v&agrave; tổ ti&ecirc;n trong nh&agrave; l&acirc;u d&agrave;i hơn.</span></p>

<p dir="ltr"><span style="font-size:16px">Quả quất cảnh, quả hồng v&agrave; ớt đỏ thường được sắp xếp xung quanh m&acirc;m, t&ocirc; điểm với m&agrave;u đỏ v&agrave; v&agrave;ng s&aacute;ng, biểu tượng của sự may mắn v&agrave; th&agrave;nh c&ocirc;ng. Quả dứa, với m&ugrave;i thơm đặc trưng, thể hiện mong muốc về một năm mới an l&agrave;nh v&agrave; tr&agrave;n đầy ph&uacute;c lộc.</span></p>

<p dir="ltr"><span style="font-size:16px">Trong truyền thống miền Bắc, c&aacute;ch b&agrave;i tr&iacute; m&acirc;m ngũ quả thường l&agrave; đặt nải chuối xanh ở ph&iacute;a dưới c&ugrave;ng để giữ chắc c&aacute;c loại quả kh&aacute;c. Ở giữa thường đặt bưởi, phật thủ hoặc m&atilde;ng cầu, c&ograve;n c&aacute;c loại quả kh&aacute;c như đ&agrave;o, hồng, qu&yacute;t, t&aacute;o được sắp xếp xung quanh. C&aacute;c khoảng trống c&oacute; thể được điền v&agrave;o bằng ớt v&agrave; quất.</span></p>

<p dir="ltr">&nbsp;</p>

<h3 dir="ltr"><span style="font-size:18px">2.2 M&acirc;m ngũ quả miền Trung</span></h3>

<p dir="ltr"><span style="font-size:16px">V&ugrave;ng đất miền Trung thường xuy&ecirc;n phải đối mặt với những th&aacute;ch thức từ thi&ecirc;n tai, b&atilde;o lụt, đến hạn h&aacute;n, điều n&agrave;y ảnh hưởng đến chất lượng của đất đai v&agrave; l&agrave;m cho việc trồng c&acirc;y tr&aacute;i trở n&ecirc;n kh&oacute; khăn. Do đ&oacute;, m&acirc;m ngũ quả của người miền Trung thường mang đặc điểm đơn giản, kh&ocirc;ng qu&aacute; phức tạp về h&igrave;nh thức, m&agrave; quan trọng l&agrave; l&ograve;ng th&agrave;nh t&acirc;m khi c&uacute;ng.</span></p>

<p dir="ltr"><span style="font-size:16px"><em><img alt="cách bày mâm ngũ quả" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn6.jpg?v=1702892617662" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>M&acirc;m ngũ quả miền Trung</em></span></p>

<p dir="ltr"><span style="font-size:16px">C&aacute;c loại tr&aacute;i c&acirc;y phổ biến m&agrave; người miền Trung thường xuất hiện trong m&acirc;m ngũ quả bao gồm:</span></p>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Thanh long: Biểu tượng của sự may mắn v&agrave; phồn thịnh.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Chuối: Đại diện cho sự bền vững v&agrave; quần tụ gia đ&igrave;nh.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Dưa hấu: Mang lại sự tươi mới v&agrave; hạnh ph&uacute;c.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">M&atilde;ng cầu: Thường được coi l&agrave; biểu tượng của sự sung t&uacute;c v&agrave; gi&agrave;u c&oacute;.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Dứa: Tượng trưng cho sự ngọt ng&agrave;o v&agrave; hạnh ph&uacute;c.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sung: Đại diện cho sự thịnh vượng v&agrave; ph&uacute; qu&yacute;.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Cam, qu&yacute;t: C&oacute; m&agrave;u sắc tươi tắn, biểu tượng của sự tươi mới v&agrave; may mắn.</span></p>
	</li>
</ul>

<p dir="ltr"><span style="font-size:16px">Nh&igrave;n chung, trong nền văn h&oacute;a miền Trung, người ta coi trọng sự giản dị v&agrave; th&agrave;nh t&acirc;m trong việc c&uacute;ng m&acirc;m ngũ quả, thay v&igrave; qu&aacute; phức tạp về h&igrave;nh thức. Điều n&agrave;y phản &aacute;nh tinh thần lạc quan v&agrave; ki&ecirc;n nhẫn của người d&acirc;n trong đối mặt với kh&oacute; khăn của thời tiết v&agrave; m&ocirc;i trường.</span></p>

<p dir="ltr">&nbsp;</p>

<h3 dir="ltr"><span style="font-size:18px">2.3 M&acirc;m ngũ quả miền Nam</span></h3>

<p dir="ltr"><span style="font-size:16px">D&acirc;n miền Nam thường tr&igrave;nh b&agrave;y m&acirc;m ngũ quả với mong ước &quot;Cầu sung vừa đủ x&agrave;i,&quot; thể hiện nguyện vọng cho một năm mới đầy đủ, phồn thịnh. M&acirc;m thường gồm 5 loại tr&aacute;i c&acirc;y:</span></p>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">M&atilde;ng cầu: Biểu tượng cho sự phồn thịnh v&agrave; gi&agrave;u c&oacute;.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Sung: Đại diện cho sự thịnh vượng v&agrave; ph&uacute; qu&yacute;.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Dừa: Mang &yacute; nghĩa của sự bền vững v&agrave; đầy đủ.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Đu đủ: Tượng trưng cho sự phồn thịnh v&agrave; thịnh vượng.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Xo&agrave;i: Đại diện cho sự sung t&uacute;c v&agrave; th&agrave;nh c&ocirc;ng.</span></p>
	</li>
</ul>

<p dir="ltr"><span style="font-size:16px"><em><img alt="cách bày mâm ngũ quả" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn5-8ce06bea-6fee-42dc-8770-8b19763b066a.jpg?v=1702892637080" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>M&acirc;m ngũ quả miền Nam</em></span></p>

<p dir="ltr"><span style="font-size:16px">Ngo&agrave;i ra, người miền Nam thường kh&ocirc;ng c&uacute;ng một số loại tr&aacute;i c&acirc;y c&oacute; t&ecirc;n ph&aacute;t &acirc;m giống những từ mang &yacute; nghĩa kh&ocirc;ng tốt như chuối (Ch&uacute;i nhủi, l&agrave;m ăn kh&ocirc;ng phất l&ecirc;n được), l&ecirc; (l&ecirc; lết, đổ bể, dễ thất bại), cam, qu&yacute;t (Qu&yacute;t l&agrave;m cam chịu),...</span></p>

<p dir="ltr"><span style="font-size:16px">Trang tr&iacute; m&acirc;m ngũ quả miền Nam thường được thực hiện bằng c&aacute;ch đặt đu đủ, dừa v&agrave; xo&agrave;i l&ecirc;n m&acirc;m trước, v&igrave; ch&uacute;ng c&oacute; h&igrave;nh d&aacute;ng to v&agrave; nặng, gi&uacute;p giữ cho c&aacute;c loại tr&aacute;i c&ograve;n lại kh&ocirc;ng bị lật. Sau đ&oacute;, những loại quả kh&aacute;c được sắp xếp một c&aacute;ch c&acirc;n đối để tạo n&ecirc;n một bức tranh m&acirc;m ngũ quả đẹp mắt v&agrave; phong c&aacute;ch.</span></p>

<p dir="ltr">&nbsp;</p>

<h2 dir="ltr"><span style="font-size:18px">3. C&aacute;ch b&agrave;y m&acirc;m ngũ quả ng&agrave;y Tết đẹp cho từng miền</span></h2>

<h3 dir="ltr"><span style="font-size:18px">3.1 C&aacute;ch b&agrave;y m&acirc;m ngũ quả ng&agrave;y Tết đẹp cho miền Bắc</span></h3>

<p dir="ltr"><span style="font-size:16px">Trong m&acirc;m ngũ quả dịp Tết của người miền Bắc, việc b&agrave;y nải chuối xanh lu&ocirc;n được ch&uacute; &yacute; v&agrave; đặt ở vị tr&iacute; thấp nhất, như một b&agrave;n tay đặt dưới đ&aacute;p ứng vai tr&ograve; che chở, bảo vệ cho gia chủ. Quả bưởi v&agrave;ng c&ugrave;ng với phật thủ thường được đặt ch&iacute;nh giữa nải chuối, tạo n&ecirc;n trung t&acirc;m vững chắc. C&aacute;c loại quả kh&aacute;c sẽ được sắp xếp xung quanh m&acirc;m ngũ quả, tạo n&ecirc;n bức tranh phong thủy h&agrave;i h&ograve;a v&agrave; c&acirc;n đối, kh&ocirc;ng chỉ về m&agrave;u sắc m&agrave; c&ograve;n về sự kết hợp tinh tế.</span></p>

<p dir="ltr">&nbsp;</p>

<h3 dir="ltr"><span style="font-size:18px"><strong>3.2 C&aacute;ch b&agrave;y m&acirc;m ngũ quả ng&agrave;y Tết đẹp cho miền Trung</strong></span></h3>

<p dir="ltr"><span style="font-size:16px">Kh&ocirc;ng c&oacute; quy định cụ thể, c&aacute;ch b&agrave;y m&acirc;m ngũ quả trong ng&agrave;y Tết miền Trung thường mang đến sự đơn giản v&agrave; kh&ocirc;ng phức tạp. Người ta thường ưu ti&ecirc;n sắp xếp những quả c&oacute; k&iacute;ch thước lớn, trọng lượng nặng để đặt ở ph&iacute;a dưới, trong khi những loại quả nhỏ hơn được b&agrave;y ở tr&ecirc;n, tạo n&ecirc;n một m&acirc;m ngũ quả c&oacute; vẻ c&acirc;n đối v&agrave; hấp dẫn mắt nh&igrave;n m&agrave; kh&ocirc;ng cần đến sự cầu kỳ.</span></p>

<p dir="ltr">&nbsp;</p>

<h3 dir="ltr"><strong><span style="font-size:18px">3.3 C&aacute;ch b&agrave;y m&acirc;m ngũ quả ng&agrave;y Tết đẹp cho miền Nam</span></strong></h3>

<p dir="ltr"><span style="font-size:16px">Tr&igrave;nh b&agrave;y m&acirc;m ngũ quả trong ng&agrave;y Tết miền Nam, mặc d&ugrave; giữ nguy&ecirc;n sự giản dị nhưng đ&ograve;i hỏi sự h&ograve;a quyện về m&agrave;u sắc v&agrave; c&acirc;n đối. C&aacute;c người miền Nam thường sắp xếp những quả c&oacute; k&iacute;ch thước lớn, trọng lượng nặng, v&agrave; c&oacute; m&agrave;u xanh ở ph&iacute;a dưới, trong khi những quả nhỏ v&agrave; ch&iacute;n được đặt ở ph&iacute;a tr&ecirc;n. Đặc biệt, việc b&agrave;i tr&iacute; m&acirc;m ngũ quả cần tạo ra h&igrave;nh ảnh như một cấu tr&uacute;c th&aacute;p, với cặp dưa hấu được b&agrave;y đặc biệt ở hai b&ecirc;n của m&acirc;m ngũ quả.</span></p>

<p dir="ltr">&nbsp;</p>

<h2 dir="ltr"><strong><span style="font-size:18px">4. Những điều n&ecirc;n tr&aacute;nh khi b&agrave;y m&acirc;m ngũ quả ng&agrave;y Tết</span></strong></h2>

<h3 dir="ltr"><strong><span style="font-size:18px">4.1 Hiểu sai về &yacute; nghĩa m&acirc;m ngũ quả, &yacute; nghĩa từng quả</span></strong></h3>

<p dir="ltr"><span style="font-size:16px">M&acirc;m ngũ quả l&agrave; biểu tượng mang đầy &yacute; nghĩa theo thuyết Ngũ h&agrave;nh của phương đ&ocirc;ng. Do đ&oacute;, khi trang tr&iacute; m&acirc;m ngũ quả, quan trọng nhất l&agrave; phải tu&acirc;n theo nguy&ecirc;n tắc của Ngũ h&agrave;nh để tr&aacute;nh việc chọn lựa những loại tr&aacute;i c&acirc;y kh&ocirc;ng h&agrave;i h&ograve;a hoặc kh&ocirc;ng đủ 5 m&agrave;u sắc quan trọng của ngũ h&agrave;nh.</span></p>

<p dir="ltr"><span style="font-size:16px"><em><img alt="cách bày mâm ngũ quả ngày tết" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn9.jpg?v=1702892675321" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>Những điều n&ecirc;n tr&aacute;nh khi b&agrave;y m&acirc;m ngũ quả ng&agrave;y Tết</em></span></p>

<p dir="ltr"><span style="font-size:16px">Dưới đ&acirc;y l&agrave; một số loại tr&aacute;i c&acirc;y tương ứng với nguy&ecirc;n tắc Ngũ h&agrave;nh:</span></p>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Kim &ndash; M&agrave;u trắng: Dưa l&ecirc; trắng, l&ecirc; trắng, ...</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Mộc &ndash; M&agrave;u xanh l&aacute;: Dưa hấu, chuối xanh, xo&agrave;i xanh, đu đủ xanh, m&atilde;ng cầu, tr&aacute;i na, tr&aacute;i sung, tr&aacute;i dừa, ...</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Thủy &ndash; M&agrave;u đen: Nho đen, v&uacute; sữa hay những tr&aacute;i c&acirc;y c&oacute; m&agrave;u sậm tối.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Hỏa &ndash; M&agrave;u đỏ: T&aacute;o đỏ, tr&aacute;i hồng, tr&aacute;i dừa lửa, thanh long, ...</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Thổ &ndash; M&agrave;u v&agrave;ng: Cam v&agrave;ng, qu&yacute;t v&agrave;ng, dưa hấu v&agrave;ng, dưa l&ecirc; v&agrave;ng, xo&agrave;i ch&iacute;n, phật thủ, ...</span></p>
	</li>
</ul>

<p dir="ltr"><span style="font-size:16px">Việc lựa chọn v&agrave; sắp xếp m&acirc;m ngũ quả theo nguy&ecirc;n tắc n&agrave;y sẽ mang lại sự c&acirc;n đối v&agrave; h&agrave;i h&ograve;a, tạo n&ecirc;n kh&ocirc;ng kh&iacute; t&acirc;m linh v&agrave; phong thủy t&iacute;ch cực cho ng&agrave;y Tết.</span></p>

<p dir="ltr">&nbsp;</p>

<h3 dir="ltr"><strong><span style="font-size:18px">4.2 Rửa hoa quả sạch</span></strong></h3>

<p dir="ltr"><span style="font-size:16px">Thường ng&agrave;y, nhiều người thường nghĩ rằng khi trang tr&iacute; m&acirc;m ngũ quả, c&aacute;c loại tr&aacute;i c&acirc;y cần phải s&aacute;ng b&oacute;ng, hấp dẫn. Tuy nhi&ecirc;n, điều n&agrave;y c&oacute; thể dẫn đến t&igrave;nh trạng tr&aacute;i c&acirc;y h&eacute;o, kh&ocirc;ng giữ được tươi mới l&acirc;u.</span></p>

<p dir="ltr"><span style="font-size:16px"><em><img alt="cách bày mâm ngũ quả ngày tết" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn10.jpg?v=1702892676574" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>Rửa hoa quả sạch</em></span></p>

<p dir="ltr"><span style="font-size:16px">Do đ&oacute;, một c&aacute;ch tiếp cận kh&aacute;c m&agrave; bạn c&oacute; thể thực hiện l&agrave; sử dụng giấy ướt để l&agrave;m sạch vỏ ngo&agrave;i của tr&aacute;i c&acirc;y. Sau đ&oacute;, &aacute;p dụng một lớp dầu ăn mỏng nhẹ để tạo ra lớp vỏ b&oacute;ng lo&aacute;ng, tạo điểm nhấn đẹp mắt m&agrave; kh&ocirc;ng l&agrave;m ảnh hưởng đến t&igrave;nh trạng của tr&aacute;i c&acirc;y, gi&uacute;p ch&uacute;ng giữ được sự tươi mới trong thời gian d&agrave;i.</span></p>

<p dir="ltr">&nbsp;</p>

<h3 dir="ltr"><strong><span style="font-size:18px">4.3 B&agrave;y qu&aacute; 5 quả</span></strong></h3>

<p dir="ltr"><span style="font-size:16px">D&ugrave; loại hoa quả v&agrave; tr&aacute;i c&acirc;y ng&agrave;y c&agrave;ng đa dạng, điều n&agrave;y kh&ocirc;ng đồng nghĩa với việc b&agrave;y đủ mọi loại l&ecirc;n m&acirc;m ngũ quả. Nhiều người mong muốn th&ecirc;m nhiều loại quả hơn, tuy nhi&ecirc;n, cần lưu &yacute; rằng m&acirc;m ngũ quả n&ecirc;n tập trung chỉ v&agrave;o việc b&agrave;y trưng c&aacute;c loại quả, kh&ocirc;ng n&ecirc;n th&ecirc;m bất kỳ loại hoa hoặc thực phẩm kh&aacute;c để giữ cho sự tinh tế v&agrave; đẹp mắt của m&acirc;m ngũ quả.</span></p>

<p dir="ltr"><span style="font-size:16px"><em><img alt="cách bày mâm ngũ quả ngày tết" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn13.jpg?v=1702892703065" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>B&agrave;y qu&aacute; 5 quả</em></span></p>

<p dir="ltr">&nbsp;</p>

<h3 dir="ltr"><strong><span style="font-size:18px">4.4 Chọn sai số lượng quả</span></strong></h3>

<p dir="ltr"><span style="font-size:16px">Khi sắp xếp nải chuối cho việc chưng, cần đảm bảo ch&uacute;ng đều nhau, c&aacute;c quả phải được ph&acirc;n bổ một c&aacute;ch đồng đều v&agrave; hướng l&ecirc;n tr&ecirc;n, tạo ra h&igrave;nh ảnh giống như b&agrave;n tay mở ra, tượng trưng cho sự n&acirc;ng đỡ v&agrave; hứng lộc cho to&agrave;n bộ gia đ&igrave;nh. Số lượng quả tr&ecirc;n nải chuối n&ecirc;n l&agrave; lẻ, nhấn mạnh v&agrave;o &yacute; nghĩa của sự may mắn v&agrave; ph&uacute;c lộc.</span></p>

<p dir="ltr"><span style="font-size:16px"><em><img alt="cách bày mâm ngũ quả ngày tết" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn14.jpg?v=1702892703917" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>Chọn sai số lượng quả</em></span></p>

<p dir="ltr"><span style="font-size:16px">Khi lựa chọn quả, quan trọng l&agrave; ch&uacute; &yacute; đến những chi tiết nhất định. Quả cần phải c&oacute; k&iacute;ch thước to, tay d&agrave;i v&agrave; mập mạp. Bề mặt của quả phải đều nhau v&agrave; trơn tru, m&agrave;u sắc c&oacute; thể l&agrave; v&agrave;ng chanh hoặc xanh nhạt, v&agrave; quan trọng nhất l&agrave; phải tỏa ra m&ugrave;i thơm nhẹ nh&agrave;ng của chanh tươi.</span></p>

<p dir="ltr">&nbsp;</p>

<h2 dir="ltr"><strong><span style="font-size:18px">5. C&aacute;ch chọn hoa quả để b&agrave;y v&agrave;o m&acirc;m ngũ quả ng&agrave;y Tết ph&ugrave; hợp</span></strong></h2>

<p dir="ltr"><span style="font-size:16px">Để c&oacute; một m&acirc;m ngũ quả tr&igrave;nh l&agrave;ng với vẻ đẹp tươi mới, m&agrave;u sắc rực rỡ v&agrave; giữ được sức sống l&acirc;u d&agrave;i, người ti&ecirc;u d&ugrave;ng cần thực hiện quy tr&igrave;nh chọn lựa một c&aacute;ch cẩn thận. Trong mỗi kỳ Tết, khi h&agrave;ng h&oacute;a đa dạng, qu&aacute; tr&igrave;nh mua sắm, đặc biệt l&agrave; khi chọn tr&aacute;i c&acirc;y cho m&acirc;m ngũ quả, đ&ograve;i hỏi sự s&aacute;ng tạo v&agrave; tỉ mỉ, bao gồm:</span></p>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Chọn quả mới ch&iacute;n tới: Điều n&agrave;y gi&uacute;p bảo đảm m&acirc;m ngũ quả kh&ocirc;ng chỉ sở hữu m&agrave;u sắc tươi mới m&agrave; c&ograve;n giữ được độ tươi mới trong thời gian d&agrave;i.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Chọn quả chắc tay, kh&ocirc;ng bị dập, trầy xước: Quả cần phải ở trong t&igrave;nh trạng tốt nhất, kh&ocirc;ng c&oacute; dấu hiệu của sự tổn thương hay bất kỳ vết trầy n&agrave;o, đồng thời giữ cuống v&agrave; l&aacute; để tạo n&ecirc;n vẻ trang tr&iacute; đẹp mắt.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="font-size:16px">Tr&aacute;nh rửa quả trước khi b&agrave;y m&acirc;m: H&agrave;nh động n&agrave;y gi&uacute;p tr&aacute;nh t&igrave;nh trạng quả bị h&eacute;o hoặc hỏng do chất nước dư thừa, đặc biệt l&agrave; nếu nước đọng lại ở những kẽ nứt của quả.</span></p>
	</li>
</ul>

<p dir="ltr"><span style="font-size:16px"><em><img alt="cách bày mâm ngũ quả ngày tết" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn11.jpg?v=1702892731005" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>C&aacute;ch chọn hoa quả để b&agrave;y v&agrave;o m&acirc;m ngũ quả ng&agrave;y Tết ph&ugrave; hợp</em></span></p>

<p dir="ltr">&nbsp;</p>

<h2 dir="ltr"><strong><span style="font-size:18px">6. Những h&igrave;nh ảnh c&aacute;ch b&agrave;y m&acirc;m ngũ quả ng&agrave;y Tết đẹp nhất</span></strong></h2>

<p dir="ltr"><em><img alt="mâm ngũ quả ngày tết đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn20.jpg?v=1702892749890" /></em></p>

<p dir="ltr"><span style="font-size:16px"><em>M&acirc;m ngũ quả ng&agrave;y Tết đẹp</em></span></p>

<p dir="ltr"><span style="font-size:16px"><em><img alt="mâm ngũ quả ngày tết đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn21.jpg?v=1702892750859" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>M&acirc;m ngũ quả ng&agrave;y Tết đẹp</em></span></p>

<p dir="ltr"><span style="font-size:16px"><em><img alt="mâm ngũ quả ngày tết đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn22.jpg?v=1702892752151" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>M&acirc;m ngũ quả ng&agrave;y Tết đơn giản</em></span></p>

<p dir="ltr"><span style="font-size:16px"><em><img alt="mâm ngũ quả ngày tết đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn23.jpg?v=1702892753380" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>M&acirc;m ngũ quả ng&agrave;y Tết trung thu&nbsp;đẹp</em></span></p>

<p dir="ltr"><span style="font-size:16px"><em><img alt="mâm ngũ quả ngày tết đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/cach-bay-mam-ngu-qua-yodyvn24.jpg?v=1702892754276" /></em></span></p>

<p dir="ltr"><span style="font-size:16px"><em>M&acirc;m ngũ quả ng&agrave;y Tết đẹp</em></span></p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr"><span style="font-size:16px">Ph&iacute;a tr&ecirc;n TunaClothes đ&atilde; t&igrave;m hiểu v&agrave; chia sẻ c&aacute;ch b&agrave;y m&acirc;m ngũ quả ng&agrave;y Tết đẹp thu h&uacute;t nhiều may mắn. Qua b&agrave;i viết n&agrave;y, hy vọng c&aacute;c bạn sẽ th&agrave;nh c&ocirc;ng trong việc trang tr&iacute; m&acirc;m ngũ quả tuyệt đẹp cho gia đ&igrave;nh m&igrave;nh.</span></p>
')
INSERT [dbo].[Content] ([Id], [Name], [MetaTitle], [Description], [Image], [CreatedDate], [ModifiedDate], [Status], [Tags], [CategoryId], [Detail]) VALUES (16, N'Top 10 phần mềm thiết kế đồ họa chuyên nghiệp', N'top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep', N'Top 10 phần mềm thiết kế đồ họa chuyên nghiệp', N'/DataManagement/Images/Content/TinTucTongHop/banner(1)-800x450-1.jpg', CAST(N'2024-05-18T12:38:39.173' AS DateTime), NULL, 1, N'thiet-ke-do-hoa', 5, N'<p><strong><em>Ng&agrave;y nay, nhu cầu về thiết kế đồ họa trở n&ecirc;n quan trọng trong nhiều lĩnh vực, từ s&aacute;ng tạo nghệ thuật đến c&ocirc;ng nghiệp v&agrave; kỹ thuật. Để đ&aacute;p ứng xu hướng n&agrave;y, việc sử dụng c&aacute;c phần mềm thiết kế đồ họa chuy&ecirc;n nghiệp l&agrave; kh&ocirc;ng thể phủ nhận. Dưới đ&acirc;y l&agrave; danh s&aacute;ch &quot;Top 10 phần mềm thiết kế đồ họa chuy&ecirc;n nghiệp,&quot; nơi m&agrave; sự s&aacute;ng tạo v&agrave; chất lượng h&igrave;nh ảnh đạt đến đỉnh cao. C&ugrave;ng m&igrave;nh&nbsp;t&igrave;m hiểu những phần mềm chuy&ecirc;n nghiệp d&acirc;n thiết kế, s&aacute;ng tạo kh&ocirc;ng thể bỏ qua n&agrave;y nh&eacute;!</em></strong></p>

<h2><strong>Adobe Photoshop&nbsp;</strong></h2>

<p>Adobe Photoshop&nbsp;l&agrave; một phần mềm h&agrave;ng đầu trong lĩnh vực chỉnh sửa ảnh v&agrave; đồ họa, đặc biệt được thiết kế để mang lại trải nghiệm s&aacute;ng tạo tối ưu cho người d&ugrave;ng. Được ph&aacute;t triển bởi Adobe Systems, Photoshop đ&atilde; trở th&agrave;nh một ti&ecirc;u chuẩn ng&agrave;nh trong việc xử l&yacute; v&agrave; tạo ra h&igrave;nh ảnh chất lượng cao.</p>

<p>Adobe Photoshop chủ yếu được sử dụng để chỉnh sửa, cải thiện v&agrave; tối ưu h&oacute;a h&igrave;nh ảnh số. C&ocirc;ng cụ n&agrave;y cung cấp một loạt c&aacute;c t&iacute;nh năng mạnh mẽ bao gồm điều chỉnh m&agrave;u sắc, độ tương phản, l&agrave;m mịn da, v&agrave; nhiều hiệu ứng đặc biệt kh&aacute;c. N&oacute; kh&ocirc;ng chỉ d&agrave;nh cho ảnh tĩnh m&agrave; c&ograve;n hỗ trợ chỉnh sửa video v&agrave; tạo hiệu ứng chuyển động.</p>

<p><img alt="GEARVN - Adobe Photoshop phần mềm thiết kế độ họa chuyên nghiệp" src="https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-2_28a6464d33e84894a5f86f783d32bb51_1024x1024.jpg" /></p>

<p><strong>Đặc điểm nổi bật:</strong></p>

<ul>
	<li>
	<p><strong>Layers v&agrave; Masking:&nbsp;</strong>Photoshop cho ph&eacute;p người d&ugrave;ng l&agrave;m việc với c&aacute;c lớp (layers), gi&uacute;p tổ chức v&agrave; điều chỉnh từng phần của h&igrave;nh ảnh một c&aacute;ch ri&ecirc;ng biệt. C&ocirc;ng cụ Masking gi&uacute;p tạo ra hiệu ứng v&agrave; sự chuyển động mượt m&agrave;.</p>
	</li>
	<li>
	<p><strong>T&iacute;ch Hợp 3D:&nbsp;</strong>Cung cấp khả năng l&agrave;m việc với đối tượng 3D, l&agrave;m phong ph&uacute; th&ecirc;m trải nghiệm s&aacute;ng tạo.</p>
	</li>
	<li>
	<p><strong>Adobe Creative Cloud:&nbsp;</strong>Photoshop t&iacute;ch hợp tốt với bộ c&ocirc;ng cụ đồ họa v&agrave; thiết kế kh&aacute;c trong Adobe Creative Cloud như Illustrator, InDesign, gi&uacute;p người d&ugrave;ng chuyển đổi dễ d&agrave;ng giữa c&aacute;c ứng dụng.</p>
	</li>
</ul>

<h2><strong>Adobe Illustrator</strong></h2>

<p>Adobe Illustrator l&agrave; một phần mềm thiết kế vector h&agrave;ng đầu, được ph&aacute;t triển bởi Adobe Systems. Với sức mạnh v&agrave; linh hoạt của n&oacute;, Illustrator đ&atilde; trở th&agrave;nh c&ocirc;ng cụ kh&ocirc;ng thể thiếu cho nhiều người l&agrave;m việc trong lĩnh vực thiết kế đồ họa, đặc biệt l&agrave; trong việc tạo v&agrave; chỉnh sửa h&igrave;nh ảnh vector.</p>

<p>Illustrator chủ yếu tập trung v&agrave;o việc tạo v&agrave; chỉnh sửa đồ họa vector. Bạn c&oacute; thể tạo ra c&aacute;c h&igrave;nh ảnh chất lượng cao m&agrave; kh&ocirc;ng l&agrave;m giảm độ ph&acirc;n giải, điều n&agrave;y l&agrave;m cho n&oacute; trở th&agrave;nh c&ocirc;ng cụ ưa th&iacute;ch trong việc tạo biểu đồ, biểu đồ tuyến t&iacute;nh, logo, v&agrave; c&aacute;c h&igrave;nh ảnh c&oacute; đường n&eacute;t sắc sảo.</p>

<p><img alt="GEARVN - Adobe Illustrator phần mềm thiết kế độ họa chuyên nghiệp" src="https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-3_4c885bc1c20440c283e41911685c251d_1024x1024.png" /></p>

<p><strong>Đặc điểm nổi bật:</strong></p>

<ul>
	<li>
	<p><strong>Integrations with Creative Cloud:&nbsp;</strong>Illustrator t&iacute;ch hợp mượt m&agrave; với c&aacute;c ứng dụng kh&aacute;c trong bộ Adobe Creative Cloud, như Photoshop v&agrave; InDesign, gi&uacute;p tối ưu h&oacute;a quy tr&igrave;nh l&agrave;m việc.</p>
	</li>
	<li>
	<p><strong>Mobile Integration:</strong>&nbsp;Adobe đ&atilde; ph&aacute;t triển ứng dụng Illustrator tr&ecirc;n di động, gi&uacute;p bạn c&oacute; thể l&agrave;m việc tr&ecirc;n c&aacute;c thiết bị như iPad v&agrave; iPhone.</p>
	</li>
	<li>
	<p><strong>Performance Improvements:&nbsp;</strong>Phi&ecirc;n bản mới của Illustrator thường xuy&ecirc;n cập nhật với c&aacute;c cải tiến về hiệu suất v&agrave; t&iacute;nh năng mới để đ&aacute;p ứng nhu cầu ng&agrave;y c&agrave;ng cao của người d&ugrave;ng.</p>
	</li>
</ul>

<h2><strong>Phần mềm thiết kế đồ họa Adobe InDesign</strong></h2>

<p>Adobe InDesign l&agrave; một ứng dụng chuy&ecirc;n nghiệp trong lĩnh vực thiết kế bản in v&agrave; đa phương tiện, ph&aacute;t triển bởi Adobe Systems. N&oacute; l&agrave; c&ocirc;ng cụ kh&ocirc;ng thể thiếu cho những người l&agrave;m việc trong ng&agrave;nh xuất bản, đặc biệt l&agrave; trong việc tạo v&agrave; bi&ecirc;n tập c&aacute;c t&agrave;i liệu như s&aacute;ch, tờ rơi, tạp ch&iacute;, v&agrave; c&aacute;c sản phẩm truyền th&ocirc;ng kh&aacute;c.</p>

<p><img alt="GEARVN - Phần mềm thiết kế đồ họa Adobe InDesign" src="https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-4_24685702162446a19f13cd1878d876f8_1024x1024.png" /></p>

<p><strong>Đặc điểm nổi bật:</strong></p>

<ul>
	<li>
	<p><strong>Integration with Adobe Creative Cloud:</strong>&nbsp;InDesign t&iacute;ch hợp tốt với c&aacute;c ứng dụng kh&aacute;c trong bộ Adobe Creative Cloud như Photoshop v&agrave; Illustrator, gi&uacute;p tối ưu h&oacute;a quy tr&igrave;nh l&agrave;m việc.</p>
	</li>
	<li>
	<p><strong>Interactive Documents:</strong>&nbsp;Bạn c&oacute; thể tạo ra t&agrave;i liệu tương t&aacute;c, bao gồm cả c&aacute;c yếu tố như hyperlinks v&agrave; n&uacute;t điều hướng.</p>
	</li>
	<li>
	<p><strong>Preflight and Packaging:</strong>&nbsp;Cung cấp t&iacute;nh năng Preflight để kiểm tra lỗi trước khi in ấn, v&agrave; Packaging gi&uacute;p tổ chức tất cả c&aacute;c tệp cần thiết cho dự &aacute;n để chia sẻ hoặc in ấn.</p>
	</li>
</ul>

<h2><strong>CorelDraw - thiết kế h&igrave;nh ảnh chuy&ecirc;n nghiệp</strong></h2>

<p>CorelDRAW l&agrave; một phần mềm thiết kế đồ họa vector v&agrave; chỉnh sửa ảnh, ph&aacute;t triển bởi Corel Corporation. Đ&acirc;y l&agrave; một ứng dụng mạnh mẽ được sử dụng rộng r&atilde;i trong lĩnh vực thiết kế đồ họa, từ tạo logo, biểu ngữ đến bảng quảng c&aacute;o v&agrave; c&aacute;c vật liệu tiếp thị kh&aacute;c.</p>

<p><img alt="GEARVN - Phần mềm CorelDraw" src="https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-5_38c4b4b757bb457fa4353c97e5f667ab_1024x1024.jpg" /></p>

<p><strong>Đặc điểm nổi bật:</strong></p>

<ul>
	<li>
	<p><strong>CorelDRAW Graphics Suite:</strong>&nbsp;Bộ sản phẩm n&agrave;y kh&ocirc;ng chỉ bao gồm CorelDRAW m&agrave; c&ograve;n c&oacute; c&aacute;c ứng dụng kh&aacute;c như Corel PHOTO-PAINT, Corel Font Manager, v&agrave; Corel CONNECT, gi&uacute;p tối ưu h&oacute;a quy tr&igrave;nh l&agrave;m việc.</p>
	</li>
	<li>
	<p><strong>Compatibility and Export Options:&nbsp;</strong>CorelDRAW hỗ trợ nhiều định dạng file, gi&uacute;p người d&ugrave;ng chia sẻ v&agrave; l&agrave;m việc với c&aacute;c ứng dụng kh&aacute;c một c&aacute;ch thuận tiện.</p>
	</li>
	<li>
	<p><strong>Community and Learning Resources:&nbsp;</strong>Cộng đồng người d&ugrave;ng CorelDRAW lớn mạnh, v&agrave; Corel cung cấp nhiều t&agrave;i nguy&ecirc;n học tập v&agrave; hỗ trợ trực tuyến cho người sử dụng.</p>
	</li>
</ul>

<h2><strong>Sketchup - Thiết kế 3D</strong></h2>

<p>SketchUp l&agrave; một phần mềm m&ocirc; h&igrave;nh 3D được ph&aacute;t triển bởi Trimble Inc. N&oacute; được sử dụng rộng r&atilde;i trong c&aacute;c lĩnh vực như kiến tr&uacute;c, thiết kế nội thất, x&acirc;y dựng, v&agrave; nhiều lĩnh vực s&aacute;ng tạo kh&aacute;c. SketchUp nổi tiếng với giao diện th&acirc;n thiện, dễ sử dụng v&agrave; khả năng tạo ra c&aacute;c m&ocirc; h&igrave;nh 3D nhanh ch&oacute;ng.</p>

<p>SketchUp d&agrave;nh cho mọi người, từ những người mới bắt đầu đến c&aacute;c chuy&ecirc;n gia trong lĩnh vực thiết kế kh&ocirc;ng gian. Điều n&agrave;y bởi v&igrave; giao diện đơn giản v&agrave; t&iacute;nh năng m&ocirc; h&igrave;nh h&oacute;a dễ sử dụng của n&oacute; l&agrave;m cho n&oacute; trở th&agrave;nh một c&ocirc;ng cụ hữu &iacute;ch cho người kh&ocirc;ng c&oacute; kinh nghiệm về thiết kế 3D.</p>

<p><img alt="GEARVN - Thiết kế 3D Sketchup" src="https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-6_7095547383a4464dbdd32a3043acf799_1024x1024.png" /></p>

<p><strong>Đặc điểm nổi bật:</strong></p>

<ul>
	<li>
	<p><strong>Giao Diện Dễ Sử Dụng:&nbsp;</strong>SketchUp c&oacute; giao diện th&acirc;n thiện v&agrave; dễ sử dụng, gi&uacute;p người d&ugrave;ng tập trung v&agrave;o qu&aacute; tr&igrave;nh s&aacute;ng tạo thay v&igrave; phải đối mặt với qu&aacute; tr&igrave;nh học phức tạp.</p>
	</li>
	<li>
	<p><strong>Plugin v&agrave; Extensions:&nbsp;</strong>Cộng đồng người sử dụng SketchUp đ&atilde; ph&aacute;t triển nhiều plugin v&agrave; extensions để mở rộng t&iacute;nh năng của phần mềm, l&agrave;m cho n&oacute; ph&ugrave; hợp với nhiều mục đ&iacute;ch sử dụng.</p>
	</li>
	<li>
	<p><strong>Community Support:</strong>&nbsp;SketchUp c&oacute; một cộng đồng s&ocirc;i động, nơi người d&ugrave;ng c&oacute; thể chia sẻ kiến thức, m&ocirc; h&igrave;nh v&agrave; hỗ trợ lẫn nhau.</p>
	</li>
</ul>

<h2><strong>Blender - Phần mềm thiết kế đồ họa 3D</strong></h2>

<p>Blender l&agrave; một phần mềm m&ocirc; h&igrave;nh h&oacute;a 3D v&agrave; l&agrave;m phim nguồn mở, được ph&aacute;t triển bởi Blender Foundation. N&oacute; l&agrave; một c&ocirc;ng cụ đa nhiệm mạnh mẽ, hỗ trợ nhiều lĩnh vực s&aacute;ng tạo như thiết kế đồ họa, m&ocirc; h&igrave;nh 3D, animation, rendering, compositing, v&agrave; l&agrave;m phim.</p>

<p>Blender cung cấp c&aacute;c c&ocirc;ng cụ m&ocirc; h&igrave;nh h&oacute;a mạnh mẽ cho việc tạo ra c&aacute;c đối tượng 3D phức tạp. Điều n&agrave;y bao gồm cả m&ocirc; h&igrave;nh h&oacute;a đường, h&igrave;nh học, v&agrave; m&ocirc; h&igrave;nh h&oacute;a bề mặt, hỗ trợ animation v&agrave; rigging, cho ph&eacute;p tạo c&aacute;c cảnh động phức tạp v&agrave; kiểm so&aacute;t c&aacute;c đối tượng 3D trong kh&ocirc;ng gian.</p>

<p><img alt="GEARVN - Thiết kế 3D Blender" src="https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-7_f0ed61a40eba4283bb3d58231060af15_1024x1024.png" /></p>

<p><strong>Đặc điểm nổi bật:</strong></p>

<ul>
	<li>
	<p><strong>Open Source:</strong>&nbsp;Blender l&agrave; phần mềm nguồn mở, điều n&agrave;y c&oacute; nghĩa l&agrave; n&oacute; miễn ph&iacute; v&agrave; c&oacute; sẵn cho cộng đồng để sửa lỗi v&agrave; ph&aacute;t triển.</p>
	</li>
	<li>
	<p><strong>Community Support:</strong>&nbsp;C&oacute; một cộng đồng lớn v&agrave; t&iacute;ch cực xung quanh Blender, cung cấp t&agrave;i nguy&ecirc;n học tập, video hướng dẫn, v&agrave; sự gi&uacute;p đỡ.</p>
	</li>
	<li>
	<p><strong>Cross-Platform:&nbsp;</strong>Blender hỗ trợ nhiều hệ điều h&agrave;nh như Windows, macOS v&agrave; Linux.</p>
	</li>
</ul>

<h2><strong>GIMP (GNU Image Manipulation Program)</strong></h2>

<p>GIMP (GNU Image Manipulation Program) l&agrave; một phần mềm chỉnh sửa ảnh nguồn mở, được ph&aacute;t triển bởi dự &aacute;n GNU. N&oacute; l&agrave; một c&ocirc;ng cụ mạnh mẽ v&agrave; linh hoạt cho việc chỉnh sửa v&agrave; xử l&yacute; h&igrave;nh ảnh, gi&uacute;p người d&ugrave;ng tạo ra c&aacute;c t&aacute;c phẩm nghệ thuật số chất lượng cao m&agrave; kh&ocirc;ng phải trả ph&iacute; chi ph&iacute; cấp ph&eacute;p.</p>

<p><img alt="GEARVN - Phần mềm thiết kế đồ họa GIMP (GNU Image Manipulation Program)" src="https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-8_374d134c7e9f48b4b6726c6fea95e4c6_1024x1024.png" /></p>

<p><strong>Đặc điểm nổi bật:</strong></p>

<ul>
	<li>
	<p><strong>Open Source:</strong>&nbsp;GIMP l&agrave; một phần mềm nguồn mở, điều n&agrave;y c&oacute; nghĩa l&agrave; n&oacute; miễn ph&iacute; v&agrave; c&oacute; sẵn cho cộng đồng để sửa lỗi v&agrave; ph&aacute;t triển.</p>
	</li>
	<li>
	<p><strong>Cross-Platform:&nbsp;</strong>GIMP hỗ trợ nhiều hệ điều h&agrave;nh như Windows, macOS, v&agrave; Linux.</p>
	</li>
	<li>
	<p><strong>Community Support:&nbsp;</strong>C&oacute; một cộng đồng người d&ugrave;ng đ&ocirc;ng đảo v&agrave; t&iacute;ch cực, cung cấp t&agrave;i nguy&ecirc;n, hướng dẫn, v&agrave; hỗ trợ cho người d&ugrave;ng GIMP.</p>
	</li>
</ul>

<h2><strong>Autocad&nbsp;</strong></h2>

<p>AutoCAD l&agrave; một phần mềm thiết kế v&agrave; đồ họa kỹ thuật được ph&aacute;t triển bởi Autodesk. N&oacute; l&agrave; một trong những ứng dụng phổ biến nhất trong lĩnh vực thiết kế kỹ thuật, kiến tr&uacute;c, v&agrave; x&acirc;y dựng.</p>

<p>AutoCAD cung cấp một loạt c&aacute;c c&ocirc;ng cụ vẽ v&agrave; chỉnh sửa để tạo ra c&aacute;c bản vẽ kỹ thuật v&agrave; bản vẽ 2D chi tiết. Ngo&agrave;i ra, AutoCAD hỗ trợ m&ocirc; h&igrave;nh h&oacute;a 3D, cho ph&eacute;p người d&ugrave;ng tạo ra c&aacute;c m&ocirc; h&igrave;nh 3D phức tạp của c&aacute;c đối tượng kỹ thuật. C&oacute; c&aacute;c c&ocirc;ng cụ để th&ecirc;m ch&uacute; th&iacute;ch v&agrave; k&iacute;ch thước v&agrave;o bản vẽ, gi&uacute;p m&ocirc; tả chi tiết v&agrave; k&iacute;ch thước của c&aacute;c th&agrave;nh phần kỹ thuật. Hỗ trợ t&iacute;nh năng collaboration, cho ph&eacute;p nhiều người d&ugrave;ng l&agrave;m việc tr&ecirc;n c&ugrave;ng một dự &aacute;n v&agrave; chia sẻ th&ocirc;ng tin một c&aacute;ch dễ d&agrave;ng. N&oacute; cho ph&eacute;p người d&ugrave;ng t&ugrave;y chỉnh c&aacute;c menu, c&ocirc;ng cụ, v&agrave; lệnh để đ&aacute;p ứng nhu cầu cụ thể của họ.</p>

<p><img alt="GEARVN - Phần mềm thiết kế đồ họa Autocad" src="https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-9_30e26e8a0c0a4172ba8de1ddaf48fd17_1024x1024.png" /></p>

<p><strong>Đặc điểm nổi bật:</strong></p>

<ul>
	<li>
	<p><strong>Versatility:</strong>&nbsp;AutoCAD c&oacute; thể được sử dụng cho nhiều mục đ&iacute;ch, từ tạo bản vẽ chi tiết 2D đến m&ocirc; h&igrave;nh h&oacute;a 3D phức tạp.</p>
	</li>
	<li>
	<p><strong>Large User Community:</strong>&nbsp;Với một cộng đồng người d&ugrave;ng lớn, người d&ugrave;ng c&oacute; thể dễ d&agrave;ng t&igrave;m thấy hỗ trợ, t&agrave;i nguy&ecirc;n, v&agrave; chia sẻ th&ocirc;ng tin.</p>
	</li>
	<li>
	<p><strong>Integration with Other Autodesk Products:</strong>&nbsp;AutoCAD t&iacute;ch hợp tốt với c&aacute;c sản phẩm kh&aacute;c của Autodesk, như Revit v&agrave; Inventor, để tối ưu h&oacute;a quy tr&igrave;nh l&agrave;m việc.</p>
	</li>
</ul>

<h2><strong>3ds Max</strong></h2>

<p>Autodesk 3ds Max, thường được gọi l&agrave; 3ds Max, l&agrave; một phần mềm m&ocirc; h&igrave;nh h&oacute;a, animation v&agrave; render 3D ph&aacute;t triển bởi Autodesk. N&oacute; được sử dụng rộng r&atilde;i trong ng&agrave;nh c&ocirc;ng nghiệp truyền th&ocirc;ng v&agrave; giải tr&iacute;, bao gồm việc tạo ra đồ họa chuyển động, game, v&agrave; hiệu ứng đặc biệt trong c&aacute;c sản phẩm đa phương tiện.</p>

<p><img alt="GEARVN - Phần mềm thiết kế đồ họa 3ds Max chuyên nghiệp" src="https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-10_1c048a0f5d17433da16033d9d36499f2_1024x1024.png" /></p>

<p><strong>Đặc điểm nổi bật:</strong></p>

<ul>
	<li>
	<p><strong>Versatile 3D Modeling:&nbsp;</strong>3ds Max cung cấp nhiều c&ocirc;ng cụ v&agrave; kỹ thuật m&ocirc; h&igrave;nh h&oacute;a 3D, từ poly-modeling đến spline-based modeling, gi&uacute;p đ&aacute;p ứng nhu cầu đa dạng của người d&ugrave;ng.</p>
	</li>
	<li>
	<p><strong>Scripting v&agrave; Customization:&nbsp;</strong>Cho ph&eacute;p người d&ugrave;ng t&ugrave;y chỉnh v&agrave; mở rộng chức năng của phần mềm th&ocirc;ng qua scripting, gi&uacute;p tối ưu h&oacute;a quy tr&igrave;nh l&agrave;m việc.</p>
	</li>
	<li>
	<p><strong>Integration with Other Autodesk Products:&nbsp;</strong>3ds Max t&iacute;ch hợp tốt với c&aacute;c sản phẩm kh&aacute;c của Autodesk, như AutoCAD v&agrave; Revit, để tối ưu h&oacute;a quy tr&igrave;nh l&agrave;m việc trong to&agrave;n bộ qu&aacute; tr&igrave;nh thiết kế v&agrave; kỹ thuật.</p>
	</li>
</ul>

<h2><strong>Phần mềm thiết kế Revit&nbsp;</strong></h2>

<p>Autodesk Revit l&agrave; một phần mềm thiết kế v&agrave; x&acirc;y dựng th&ocirc;ng minh, được ph&aacute;t triển bởi Autodesk. Revit được thiết kế đặc biệt cho ng&agrave;nh kiến tr&uacute;c, x&acirc;y dựng, v&agrave; quản l&yacute; dự &aacute;n x&acirc;y dựng, mang lại t&iacute;nh t&iacute;ch hợp cao v&agrave; khả năng l&agrave;m việc chung giữa c&aacute;c chuy&ecirc;n gia kh&aacute;c nhau trong qu&aacute; tr&igrave;nh ph&aacute;t triển dự &aacute;n.</p>

<p><img alt="GEARVN - Phần mềm thiết kế Revit" src="https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-11_180447f4393b4f579f52170c81a017ad_1024x1024.jpg" /></p>

<p><strong>Đặc điểm nổi bật:</strong></p>

<ul>
	<li>
	<p><strong>Parametric Components:&nbsp;</strong>C&oacute; khả năng tạo v&agrave; sử dụng c&aacute;c th&agrave;nh phần c&oacute; thể thay đổi (parametric components), gi&uacute;p linh hoạt trong qu&aacute; tr&igrave;nh thiết kế v&agrave; thay đổi.</p>
	</li>
	<li>
	<p><strong>Interoperability:</strong>&nbsp;Revit c&oacute; khả năng tương th&iacute;ch với nhiều phần mềm kh&aacute;c, gi&uacute;p tối ưu h&oacute;a quy tr&igrave;nh l&agrave;m việc v&agrave; chia sẻ th&ocirc;ng tin dự &aacute;n.</p>
	</li>
	<li>
	<p><strong>Cloud Collaboration:</strong>&nbsp;Autodesk cung cấp t&iacute;nh năng cloud collaboration gi&uacute;p người d&ugrave;ng l&agrave;m việc chung một c&aacute;ch linh hoạt, ngay cả khi ở xa nhau.</p>
	</li>
</ul>

<p>Những phần mềm thiết kế đồ họa chuy&ecirc;n nghiệp n&agrave;y kh&ocirc;ng chỉ l&agrave; những c&ocirc;ng cụ mạnh mẽ cho sự s&aacute;ng tạo m&agrave; c&ograve;n l&agrave; nguồn động vi&ecirc;n cho việc định h&igrave;nh v&agrave; biến &yacute; tưởng th&agrave;nh hiện thực trong thế giới số ng&agrave;y nay. D&ugrave; bạn l&agrave; một nghệ sĩ đồ họa, kiến tr&uacute;c sư, hay chuy&ecirc;n gia x&acirc;y dựng, danh s&aacute;ch n&agrave;y mang lại sự đa dạng v&agrave; linh hoạt để đ&aacute;p ứng mọi nhu cầu v&agrave; th&aacute;ch thức của người s&aacute;ng tạo.</p>
')
INSERT [dbo].[Content] ([Id], [Name], [MetaTitle], [Description], [Image], [CreatedDate], [ModifiedDate], [Status], [Tags], [CategoryId], [Detail]) VALUES (17, N'Intel Core i5-14600K – Kế thừa ngôi vương để trở thành CPU tầm trung tốt nhất cho game thủ PC', N'intel-core-i5-14600k-–-ke-thua-ngoi-vuong-de-tro-thanh-cpu-tam-trung-tot-nhat-cho-game-thu-pc', N'Intel Core i5-14600K – Kế thừa ngôi vương để trở thành CPU tầm trung tốt nhất cho game thủ PC', N'/DataManagement/Images/Content/TinTucTongHop/danh-gia-intel-core-i5-14600k-1024x684.jpg', CAST(N'2024-05-18T12:42:46.050' AS DateTime), NULL, 1, N'so-sanh', 5, N'<p><strong><em>Intel Core i5-14600K cơ bản l&agrave; Core i5-13600K được tăng xung nhịp m&agrave; vẫn giữ mức gi&aacute; tương đương.</em></strong></p>

<p>Core i5-14600K&nbsp;l&agrave; CPU Intel thế hệ 14 &ldquo;Raptor Lake Refresh&rdquo; c&oacute; mức gi&aacute; mềm nhất trong số 3 con chip d&ograve;ng K vừa được ra mắt trong đợt đầu. Dựa tr&ecirc;n nền tảng &ldquo;Raptor Lake&rdquo;, Core i5-14600K được sinh ra l&agrave; để củng cố cho vị thế của Intel trong ph&acirc;n kh&uacute;c tầm trung. V&agrave; như truyền thống của Core i5 đ&oacute; giờ, nếu bạn muốn t&igrave;m cho m&igrave;nh một vi xử l&yacute; thuộc thế hệ mới nhất được tối ưu về mặt hiệu năng tr&ecirc;n gi&aacute; th&agrave;nh (price / performance) th&igrave; kh&ocirc;ng n&ecirc;n bỏ qua con chip n&agrave;y đ&acirc;u nh&eacute;.</p>

<p><img src="https://file.hstatic.net/200000722513/file/_dsc0348_0b42a3e315eb4d6da6d40b17b8cfdee8.jpg" /></p>

<p>&nbsp;</p>

<p>L&yacute; do l&agrave; v&igrave; kiến tr&uacute;c v&agrave; tiến tr&igrave;nh th&igrave; vẫn y như thế hệ 13 &ldquo;Raptor Lake&rdquo;, nhưng lần n&agrave;y Core i5-14600K đ&atilde; được đội xanh buff th&ecirc;m một t&iacute; xung nhịp boost so với&nbsp;Core i5-13600K&nbsp;để tăng hiệu năng, v&agrave; đặc biệt l&agrave; mức gi&aacute; của n&oacute; (tại thời điểm mới ra mắt) vẫn bằng Core i5-13600K lu&ocirc;n nh&eacute;. Với gi&aacute; b&aacute;n 8.990.000 VNĐ, ch&uacute;ng ta c&ugrave;ng xem xem&nbsp;vi xử l&yacute; Intel&nbsp;thế hệ mới sẽ mạnh hơn bao nhi&ecirc;u so với tiền nhiệm nh&eacute;.</p>

<h2><strong>Core i5-14600K ch&iacute;nh l&agrave; Core i5-13600K được tăng xung nhịp</strong></h2>

<p><img src="https://file.hstatic.net/200000722513/file/_dsc0356_1fe9e48d889e42b29c14d0861d699fc6.jpg" /></p>

<p>Sở dĩ m&igrave;nh n&oacute;i như vậy l&agrave; v&igrave; Core i5-14600K vẫn c&oacute; 6 nh&acirc;n P-core &ldquo;Raptor Cove&rdquo; v&agrave; 8 nh&acirc;n E-core &ldquo;Gracemont&rdquo;. Mỗi P-core sẽ c&oacute; 2MB bộ nhớ đệm L2, mỗi cụm E-core (gồm 4 E-core) sẽ c&oacute; 4MB bộ nhớ đệm L2, v&agrave; 24MB bộ nhớ đệm L3 d&agrave;nh cho cả P-core v&agrave; E-core. Suy ra Core i5-14600K l&agrave; con chip 14 nh&acirc;n 20 luồng, y như Core i5-13600K.</p>

<p><img src="https://file.hstatic.net/200000722513/file/_dsc0366_7b9a7a9ab10e4eeb94bdf9fd8c5b14d8.jpg" /></p>

<p>&nbsp;</p>

<p>Về mặt xung nhịp, P-core của Core i5-14600K c&oacute; xung nhịp cơ bản l&agrave; 3,5GHz v&agrave; xung nhịp boost tối đa l&agrave; 5,3GHz &ndash; tăng 200MHz so với Core i5-13600K. C&ograve;n E-core th&igrave; c&oacute; xung nhịp cơ bản l&agrave; 2,6GHz v&agrave; xung nhịp boost l&agrave; 4GHz. Tương tự thế hệ tiền nhiệm, Core i5-14600K c&oacute; TDP l&agrave; 125W, v&agrave; khi đạt tốc độ turbo cao nhất th&igrave; n&oacute; c&oacute; thể ngốn tới 181W (PL2).</p>

<p><img src="https://file.hstatic.net/200000722513/file/_dsc0353_33f0ca233c174ba4a4787e6d2d81daa0.jpg" /></p>

<p>&nbsp;</p>

<p>V&igrave; đ&acirc;y chỉ l&agrave; phi&ecirc;n bản refresh, cho n&ecirc;n Core i5-14600K vẫn tương th&iacute;ch với socket LGA1700 như đời 12 &ldquo;Alder Lake&rdquo; v&agrave; 13 &ldquo;Raptor Lake&rdquo;. Nếu bạn x&agrave;i bo mạch chủ Intel 600 hoặc 700 series th&igrave; chỉ cần cập nhật l&ecirc;n BIOS mới nhất l&agrave; xong (bo mạch chủ ng&agrave;y nay c&oacute; thể cập nhật BIOS m&agrave; kh&ocirc;ng cần gắn CPU), hoặc nếu bạn mua những bo mạch chủ 700 series mới được sản xuất, th&igrave; chỉ cần lắp CPU v&agrave;o l&agrave; x&agrave;i được rồi, kh&ocirc;ng nhất thiết phải cập nhật BIOS l&agrave;m chi.</p>

<p><em>Để test Core i5-14600K, GVN 360 bọn m&igrave;nh đ&atilde; sử dụng c&aacute;c linh kiện như sau:</em></p>

<ul>
	<li>CPU: Intel Core i5-14600K</li>
	<li>Tản nhiệt: Corsair H150i ELITE CAPELLIX LCD</li>
	<li>Kem tản nhiệt: Arctic MX-4</li>
	<li>Bo mạch chủ: MSI MPG B760M EDGE TI WIFI (BIOS: 7E11v11 [12-10-2023])</li>
	<li>RAM: 2 x 16 GB Corsair Vengeance RGB DDR5-6000 (36-36-36-76)</li>
	<li>GPU: Nvidia GeForce RTX 2060</li>
	<li>SSD: Plextor M9P Plus 512 GB</li>
	<li>Nguồn: FSP Hydro G PRO ATX3.0 (PCIe 5.0) 1000W</li>
	<li>Hệ điều h&agrave;nh: Windows 11 Professional 64-bit 22H2</li>
</ul>

<p><em>Sau đ&acirc;y l&agrave; một v&agrave;i con số m&agrave; GVN 360 đ&atilde; benchmark với d&agrave;n PC ở tr&ecirc;n, mời anh em tham khảo:</em></p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot_2023-10-19_084901_6f246b314c3a4140ab928e5cf3d851d1.png" /></p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot_2023-10-19_084903_4f1649391c304e3dbb8506b47d17f21f.png" /></p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot_2023-10-19_084906_b05fdc8c56e3402498e9d11312bebb01.png" /></p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot_2023-10-19_084911_66df5e456e7d406dbbbbd0f84abdef67.png" /></p>

<p>Phần mềm CPU-Z đ&atilde; qu&aacute; quen thuộc với anh em lu&ocirc;n rồi. N&oacute; thường được d&ugrave;ng để kiểm tra th&ocirc;ng số phần cứng. C&oacute; thể thấy m&aacute;y đ&atilde; nhận đ&uacute;ng Core i5-14600K c&ugrave;ng với c&aacute;c th&ocirc;ng số mặc định của n&oacute;, cũng như l&agrave; cặp RAM DDR5 Corsair Vengeance RGB đ&atilde; được bật XMP (chạy với tốc độ 6000MHz). Tuy m&igrave;nh x&agrave;i main MSI MPG B760M EDGE TI WIFI l&agrave; main d&ograve;ng B, nhưng về bản chất th&igrave; Core i5-14600K cũng kh&ocirc;ng qu&aacute; ngốn điện như những con Core i7 hay Core i9 (trừ khi bạn &eacute;p xung), cho n&ecirc;n để xem xem l&agrave; d&agrave;n VRM tr&ecirc;n MPG B760M EDGE TI WIFI c&oacute; thể hỗ trợ cho Core i5-14600K đến mức n&agrave;o nh&eacute;.</p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot_2023-10-19_121933_7751934eb9dd457dbdef225898e162e6.png" /></p>

<p>Sau khi chạy xong th&igrave; PCMark10 trả về số điểm tổng l&agrave; 8596. Trong đ&oacute; điểm Digital Content Creation l&agrave; 13.032 điểm.</p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot_2023-10-19_111451_12591d14d53c4d1d9b9a7c4556c7098d.png" /></p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot_2023-10-19_113025_fcfa5d7aa3124ccc840ddef1860e2c3f.png" /></p>

<p>3DMark Time Spy thường được d&ugrave;ng để test hiệu năng gaming của d&agrave;n PC, c&ograve;n Time Spy Extreme th&igrave; được d&ugrave;ng để test hiệu năng khi chiến game 4K. Với cấu h&igrave;nh tr&ecirc;n, trong Time Spy, Core i5-14600K đạt 18.388 (cao hơn Core i5-13600K tầm 8%), với tổng điểm l&agrave; 8629; c&ograve;n trong Time Spy Extreme th&igrave; Core i5-14600K đạt 8123 điểm (cao hơn Core i5-13600K tầm 3,5%), tổng điểm l&agrave; 3983.</p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot_2023-10-19_094309_13099d7280b94d6492da45b4da4125eb.png" /></p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot_2023-10-19_101516_a19257dd47c545498de31d26b436ba86.png" /></p>

<p>Đ&acirc;y l&agrave; phần mềm cho ph&eacute;p anh em đ&aacute;nh gi&aacute; khả năng dựng h&igrave;nh (render) của CPU, v&igrave; thế n&ecirc;n nếu bạn đang c&oacute; &yacute; định mua Core i5-14600K về l&agrave;m đồ họa 3D hoặc dựng phim th&igrave; c&oacute; thể d&ugrave;ng số điểm n&agrave;y để tham khảo nh&eacute;. Đặc điểm của Cinebench R23 l&agrave; n&oacute; rất th&iacute;ch CPU nhiều nh&acirc;n n&ecirc;n cũng kh&ocirc;ng lạ g&igrave; khi con chip n&agrave;y đạt được số điểm khoảng 23.500 điểm trong b&agrave;i test đa nh&acirc;n, c&ograve;n b&agrave;i test đơn nh&acirc;n th&igrave; đạt khoảng 2000 điểm, cũng ngang ngửa Core i5-13600K. C&ograve;n trong phi&ecirc;n bản mới nhất l&agrave; Cinebench 2024, Core i5-14600K đạt 1332 điểm đa nh&acirc;n v&agrave; 119 điểm đơn nh&acirc;n.</p>

<p><img src="https://file.hstatic.net/200000722513/file/untitled_b2624f3cba8e4f15b4a3fe5188098ebe.jpg" /></p>

<p>Corona được thiết kế để hỗ trợ c&aacute;c phần mềm chuy&ecirc;n dụng như 3ds Max hoặc Maya m&ocirc; phỏng c&aacute;c hiệu ứng quang học th&ocirc;ng qua ray-tracing. V&agrave; Core i5-14600K chỉ cần vỏn vẹn 1 ph&uacute;t để ho&agrave;n th&agrave;nh b&agrave;i benchmark n&agrave;y, bằng với Core i5-13600K.</p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot_2023-10-19_093136_5a22b875fd9049029c73c8f7e26f0e75.png" /></p>

<p>Anh em chắc cũng đ&atilde; từng thấy qua phần mềm n&agrave;y khi xem c&aacute;c b&agrave;i benchmark. N&oacute; được d&ugrave;ng để tạo m&ocirc; h&igrave;nh 3D v&agrave; c&aacute;c hiệu ứng chuyển động. Trong b&agrave;i test dựng h&igrave;nh classroom th&ocirc;ng dụng, Core i5-14600K đạt tốc độ 72,85 samples per minute, chả kh&aacute;c Core i5-13600K l&agrave; bao.</p>

<p><em>C&aacute;c b&agrave;i test hiệu năng gaming ở độ ph&acirc;n giải 1080p, thiết lập đồ họa max setting, tắt DLSS</em></p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot__56__43f7d55a89884031acd793e4ce2ca9af.png" /></p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot__57__fd8e04140ad3499da5a4c1f021db074c.png" /></p>

<p><em>Shadow of The Tomb Raider (bật&nbsp;ray tracing)</em></p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot__61__37af086cb77044609645c260b595d1c0.png" /></p>

<p><em>Shadow of The Tomb Raider (tắt ray tracing)</em></p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot__60__36a0ab3968d54088b86c434465dd02a4.png" /></p>

<p><em>Cyberpunk 2077 (tắt ray tracing)</em></p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot__59__f89fed6b57c5429fa979467079e643b4.png" /></p>

<p><em>Cyberpunk 2077 (bật ray tracing)</em></p>

<p><img src="https://file.hstatic.net/200000722513/file/screenshot__58__ed41b9d17efc476c9ff0acfa3f30f253.png" /></p>

<p><em>Red Dead Redemption 2</em></p>

<p>V&igrave; RTX 2060 được thiết kế để chiến game 1080p, cho n&ecirc;n m&igrave;nh test ở độ ph&acirc;n giải n&agrave;y lu&ocirc;n. Vả lại, khi test hiệu năng gaming của CPU th&igrave; thường sẽ đẩy về độ ph&acirc;n giải 1080p để ch&uacute;ng ta c&oacute; thể thấy r&otilde; sức mạnh của n&oacute;; chứ nếu đẩy l&ecirc;n 1440p hay 4K th&igrave; l&uacute;c n&agrave;y, GPU sẽ đ&oacute;ng vai tr&ograve; quan trọng nhiều hơn l&agrave; CPU trong việc quyết định số fps.</p>

<p><img src="https://file.hstatic.net/200000722513/file/_dsc0384_4fb5cbbbfc2742d397a97369733f0bd3.jpg" /></p>

<p>&nbsp;</p>

<p>Hồi trước, GVN 360 bọn m&igrave;nh c&oacute; test Core i5-13600K với card đầu bảng Nvidia GeForce RTX 4090, v&agrave; n&oacute; vẫn k&eacute;o ngon l&agrave;nh, kh&ocirc;ng xảy ra hiện tượng nghẽn cổ chai. Cho n&ecirc;n với Core i5-14600K th&igrave; cho d&ugrave; sau n&agrave;y, bạn c&oacute; l&ecirc;n đời RTX 4090 th&igrave; cứ v&ocirc; tư nh&eacute;, chứ b&igrave;nh thường Core i5 hay đi với combo RTX 4060 series hay RTX 4070 series l&agrave; c&acirc;n bằng giữa hiệu năng v&agrave; gi&aacute; th&agrave;nh rồi.</p>

<p><img src="https://file.hstatic.net/200000722513/file/_dsc0394_4f0797deb24c48418c6159be438fcd6e.jpg" /></p>

<p>&nbsp;</p>

<p>C&ograve;n n&oacute;i về hiệu năng của Core i5-14600K so với tiền nhiệm th&igrave; th&uacute; thật l&agrave; do chỉ được buff th&ecirc;m c&oacute; 200MHz, cho n&ecirc;n ch&ecirc;nh lệch về hiệu năng l&agrave; rất &iacute;t, tầm tr&ecirc;n dưới 5% th&ocirc;i. X&agrave;i c&ocirc;ng cụ benchmark như tr&ecirc;n th&igrave; họa chăng mới thấy điểm số kh&aacute;c nhau, chứ c&ograve;n v&ocirc; game chơi th&igrave; rất kh&oacute; cảm nhận được sự kh&aacute;c biệt. Render media th&igrave; c&oacute; thể nhanh hơn đ&oacute;, nhưng nhanh hơn cũng chỉ tầm v&agrave;i ba c&aacute;i lướt TikTok th&ocirc;i, kh&ocirc;ng đ&aacute;ng l&agrave; bao.</p>

<h2><strong>Điện năng ti&ecirc;u thụ v&agrave; nhiệt độ hoạt động của Core i5-14600K</strong></h2>

<p><img src="https://file.hstatic.net/200000722513/file/1_95351f8a423c40979241e5ef2b5afbfc.png" /></p>

<p><img src="https://file.hstatic.net/200000722513/file/2_dc4acb2a8a5e49e09865e9e1c5edd656.png" /></p>

<p>Th&ocirc;ng qua phần mềm HWiNFO64, m&igrave;nh ghi nhận nhiệt độ của Core i5-14600K khi chạy benchmark Cinebench R23 v&agrave; Cinebench 2024 dao động trong khoảng 70<sup>o</sup>C đối với Core Temperatures v&agrave; 80<sup>o</sup>C đối với CPU Package, kh&aacute; ổn cho một con chip 14 nh&acirc;n 20 luồng anh em ạ. C&ograve;n mức điện năng ti&ecirc;u thụ th&igrave; l&agrave; 200W (CPU Package Power). Vcore rơi v&agrave;o tầm 1,28V.</p>

<p><img src="https://file.hstatic.net/200000722513/file/1_c7b15e55c58c4cf4abcc123cbdc0a037.png" /></p>

<p><img src="https://file.hstatic.net/200000722513/file/2_e3dc20366311489e9f16d58a6acc9458.png" /></p>

<p>Ngo&agrave;i việc benchmark bằng R23, sẵn đ&acirc;y m&igrave;nh cũng đem con chip n&agrave;y ra stress test bằng Prime95 lu&ocirc;n. Sau khi chạy được tầm 1-2 ph&uacute;t, với thiết lập Small FFTs (stress test CPU nặng nhất), bo mạch chủ MSI MPG B760M EDGE TI WIFI đủ khả năng k&eacute;o tất cả 6 nh&acirc;n P-core chạy với xung nhịp 5,2GHz v&agrave; to&agrave;n bộ 8 nh&acirc;n E-core với xung nhịp 4GHz. Sau hơn 30 ph&uacute;t th&igrave; HWiNFO64 ghi nhận nhiệt độ dao động trong khoảng 80<sup>o</sup>C đối với Core Temperatures v&agrave; 90<sup>o</sup>C đối với CPU Package (tối đa 95<sup>o</sup>C); v&agrave; ngốn khoảng 215W (tối đa l&agrave; 230W). Đặc biệt l&agrave; trong qu&aacute; tr&igrave;nh stress test kh&ocirc;ng xảy ra t&igrave;nh trạng bị rớt xung do bị qu&aacute; nhiệt, chứng tỏ rằng nếu bạn x&agrave;i bo mạch chủ như tr&ecirc;n (hoặc tốt hơn) v&agrave; tản nhiệt nước AIO cỡ Corsair H150i ELITE CAPELLIX LCD th&igrave; sẽ dư sức qua cầu đối với Core i5-14600K.</p>

<p><img src="https://file.hstatic.net/200000722513/file/_dsc0391_bec474798d8d49f0a486547a8f427eda.jpg" /></p>

<p>&nbsp;</p>

<p>Thật ra th&igrave; bạn c&oacute; thể vẫn ổn nếu x&agrave;i tản kh&iacute; xịn, nhưng nhiệt độ c&agrave;ng cao th&igrave; tuổi thọ của CPU sẽ c&agrave;ng giảm, cho n&ecirc;n m&igrave;nh khuyến kh&iacute;ch n&ecirc;n x&agrave;i tản nước AIO 360mm để an t&acirc;m về l&acirc;u về d&agrave;i nh&eacute;. Với lại sau n&agrave;y, nếu c&oacute; l&ecirc;n đời CPU th&igrave; cũng đỡ phải mua tản mới, chỉ cần thay ng&agrave;m l&agrave; được (nếu c&oacute; hỗ trợ).</p>

<p><img src="https://file.hstatic.net/200000722513/file/_dsc0368_ae49806bbf384ef5b7a3d298f6751598.jpg" /></p>

<p>&nbsp;</p>

<p>C&oacute; một lưu &yacute; l&agrave;&nbsp;theo th&ocirc;ng tin m&igrave;nh được biết, ngo&agrave;i những bo mạch chủ socket LGA1700 trước giờ ra th&igrave; kể cả những bo mạch chủ Intel 700 series đợt mới lần n&agrave;y vẫn tiếp tục x&agrave;i cơ chế ng&agrave;m giữ cũ, v&agrave; n&oacute; c&oacute; thể khiến CPU bị cong, m&agrave; cụ thể l&agrave; phần giữa sẽ bị l&otilde;m xuống, l&agrave;m giảm diện t&iacute;ch tiếp x&uacute;c giữa nắp IHS của CPU v&agrave; bề mặt coldplate của block tản nhiệt. Hệ quả l&agrave; hiệu năng l&agrave;m m&aacute;t &iacute;t nhiều cũng sẽ bị ảnh hưởng. V&igrave; thế, để khắc phục vấn đề n&agrave;y, c&aacute;c bạn c&oacute; thể mua khung ốp của h&atilde;ng thứ 3 để thay cho ng&agrave;m giữ CPU tr&ecirc;n bo mạch chủ, gi&uacute;p bề mặt nắp IHS được bằng phẳng hơn v&agrave; đạt được nhiệt độ CPU tốt hơn.</p>

<h2><strong>Core i5-14600K &ndash; Sự lựa chọn s&aacute;ng gi&aacute; d&agrave;nh cho những game thủ theo hệ p/p</strong></h2>

<p><img src="https://file.hstatic.net/200000722513/file/_dsc0370_2c5850899a984210b797e02ea7300030.jpg" /></p>

<p>Đ&acirc;y sẽ l&agrave; một sự lựa chọn cực kỳ hấp dẫn cho game thủ, v&igrave; n&oacute; c&acirc;n bằng giữa yếu tố hiệu năng v&agrave; gi&aacute; th&agrave;nh, v&agrave; nhất l&agrave; vẫn đủ mạnh để k&eacute;o những chiếc card đầu bảng hiện nay. Nhưng cũng phải n&oacute;i l&agrave; như m&igrave;nh c&oacute; đề cập ở tr&ecirc;n, v&igrave; chỉ l&agrave; bản refresh được n&acirc;ng một ch&uacute;t xung nhịp n&ecirc;n Core i5-14600K nh&igrave;n chung cũng chỉ mạnh hơn Core i5-13600K tầm 5% m&agrave; th&ocirc;i. V&agrave; tại thời điểm b&agrave;i viết, Core i5-13600K cũng đ&atilde; giảm gi&aacute; c&ograve;n khoảng 8.390.000 VNĐ, tức l&agrave; ch&ecirc;nh lệch 600.000 VNĐ cho 5% hiệu năng.</p>

<p><img src="https://file.hstatic.net/200000722513/file/_dsc0350_6f3c1bdceb0942e5a7a4ec3ca0ce19a7.jpg" /></p>

<p>&nbsp;</p>

<p>T&ugrave;y g&oacute;c nh&igrave;n của mỗi người m&agrave; mức gi&aacute; đ&oacute; c&oacute; thể đ&aacute;ng hoặc kh&ocirc;ng. Nhưng Core i5-14600K c&ograve;n 1 lợi thế nữa, đ&oacute; l&agrave; con chip n&agrave;y c&oacute; hỗ trợ WiFi 7 v&agrave; Thunderbolt 5. Mặc d&ugrave; 2 chuẩn n&agrave;y vẫn chưa phổ biến tr&ecirc;n thị trường, đ&acirc;y vẫn l&agrave; một điểm cộng khi x&eacute;t về mặt &ldquo;future-proof&rdquo;. Sau n&agrave;y, khi bạn c&oacute; router WiFi 7 hoặc thiết bị x&agrave;i cổng Thunderbolt 5, th&igrave; bạn chỉ cần kết nối với PC v&agrave; tận hưởng th&ocirc;i, kh&ocirc;ng cần phải thay nguy&ecirc;n d&agrave;n m&aacute;y t&iacute;nh mới.</p>

<p><img src="https://file.hstatic.net/200000722513/file/_dsc0399_23c69429c9c6492ba55f6acc301dfbc2.jpg" /></p>

<p>&nbsp;</p>

<p>Tựu trung, nếu bạn đang x&agrave;i Core i5-13600K th&igrave; cũng kh&ocirc;ng nhất thiết phải n&acirc;ng cấp l&ecirc;n đời 14 l&agrave;m g&igrave;, chờ đến thế hệ 15 &ldquo;Arrow Lake&rdquo; biết đ&acirc;u lại c&oacute; k&egrave;o thơm hơn th&igrave; sao. C&ograve;n nếu bạn dự định build nguy&ecirc;n d&agrave;n PC mới th&igrave; Core i5-14600K vẫn l&agrave; sự lựa chọn đ&aacute;ng c&acirc;n nhắc trong ph&acirc;n kh&uacute;c tầm trung với mức gi&aacute; mềm hơn nhiều so với đ&agrave;n anh Core i7 v&agrave; Core i9 m&agrave; c&aacute;ch biệt về mặt hiệu năng cũng chẳng bao nhi&ecirc;u.</p>

<p><img src="https://file.hstatic.net/200000722513/file/_dsc0374_84bcbb1539e246d3bee72b0ad6de895d.jpg" /></p>
')
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (1, N'freestyle')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (1, N'phong-cach')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (1, N'thoi-trang')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (2, N'polo')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (2, N'polo-tay-lo')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (2, N'thoi-trang')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (2, N'thoi-trang-nam')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (3, N'so-mi')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (3, N'top-so-mi-nam')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (3, N'thoi-trang')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (3, N'thoi-trang-nam')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (4, N'hai-huoc')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (4, N'meme')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (4, N'xu-huong')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (5, N'adsd')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (6, N'dat-ten')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (6, N'em-be')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (6, N'y-nghia')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (7, N'don-xuan')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (7, N'ngu-qua')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (7, N'tet')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (8, N'cardigan')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (8, N'phong-cach')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (8, N'thoi-trang-nam')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (9, N'nu')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (9, N'sanh-dieu')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (9, N'so-mi')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (10, N'nu')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (10, N'phoi-do')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (10, N'tat-luoi')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (11, N'chan-vay')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (11, N'ghile')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (11, N'nu')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (11, N'phoi-do')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (12, N'han-quoc')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (12, N'khoac-gio')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (12, N'nu')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (13, N'phoi-do')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (13, N'tet')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (13, N'tre-em')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (14, N'ao-dai')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (14, N'phong-cach')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (14, N'tet')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (14, N'tre-em')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (15, N'dam')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (15, N'du-tiec')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (15, N'tre-em')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (16, N'thiet-ke-do-hoa')
INSERT [dbo].[ContentTag] ([ContentId], [TagId]) VALUES (17, N'so-sanh')
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([Id], [CreatedDate], [Address], [Email], [Phone], [Status], [Content], [Name]) VALUES (1, CAST(N'2023-11-14T23:32:08.910' AS DateTime), N'Vu Thuong', N'vantuan100301@gmail.com', N'0369280523', 0, N'DDaya laf noi dung test', N'Đồng Văn Tuấn')
INSERT [dbo].[Feedback] ([Id], [CreatedDate], [Address], [Email], [Phone], [Status], [Content], [Name]) VALUES (2, CAST(N'2023-11-14T23:33:12.713' AS DateTime), N'Vu Thuong', N'vantuan100301@gmail.com', N'0369280523', 0, N'Day la phan test 2', N'Đồng Văn Tuấn')
INSERT [dbo].[Feedback] ([Id], [CreatedDate], [Address], [Email], [Phone], [Status], [Content], [Name]) VALUES (3, CAST(N'2023-11-15T13:45:55.920' AS DateTime), N'Vu Thuong', N'vantuan100301@gmail.com', N'0369280523', 0, N'áda', N'Đồng Văn Tuấn')
INSERT [dbo].[Feedback] ([Id], [CreatedDate], [Address], [Email], [Phone], [Status], [Content], [Name]) VALUES (4, CAST(N'2023-11-15T13:46:32.220' AS DateTime), N'Vu Thuong', N'vantuan100301@gmail.com', N'0369280523', 0, N'áda', N'Đồng Văn Tuấn')
INSERT [dbo].[Feedback] ([Id], [CreatedDate], [Address], [Email], [Phone], [Status], [Content], [Name]) VALUES (5, CAST(N'2023-11-15T13:47:40.703' AS DateTime), N'Vu Thuong', N'vantuan100301@gmail.com', N'0369280523', 0, N'', N'Đồng Văn Tuấn')
INSERT [dbo].[Feedback] ([Id], [CreatedDate], [Address], [Email], [Phone], [Status], [Content], [Name]) VALUES (6, CAST(N'2023-11-15T13:49:27.230' AS DateTime), N'Vu Thuong', N'vantuan100301@gmail.com', N'0369280523', 0, N'', N'Đồng Văn Tuấn')
INSERT [dbo].[Feedback] ([Id], [CreatedDate], [Address], [Email], [Phone], [Status], [Content], [Name]) VALUES (7, CAST(N'2023-11-15T13:49:41.737' AS DateTime), N'Vu Thuong', N'vantuan100301@gmail.com', N'0369280523', 0, N'', N'Đồng Văn Tuấn')
INSERT [dbo].[Feedback] ([Id], [CreatedDate], [Address], [Email], [Phone], [Status], [Content], [Name]) VALUES (8, CAST(N'2024-01-04T08:22:14.107' AS DateTime), N'Hair Duongw', N'vantuan100301@gmail.com', N'036280523', 0, N'Toi mua hang tu t7 nhung den gio van chua nhan duoc hang', N'Dong Van Tuan')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
INSERT [dbo].[Footer] ([Id], [Content], [Status]) VALUES (N'footer', N'<footer class="bg3 p-t-75 p-b-32">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-lg-3 p-b-50">
                    <h4 class="stext-301 cl0 p-b-30">
                        Categories
                    </h4>

                    <ul>
                        <li class="p-b-10">
                            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                Women
                            </a>
                        </li>

                        <li class="p-b-10">
                            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                Men
                            </a>
                        </li>

                        <li class="p-b-10">
                            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                Shoes
                            </a>
                        </li>

                        <li class="p-b-10">
                            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                Watches
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="col-sm-6 col-lg-3 p-b-50">
                    <h4 class="stext-301 cl0 p-b-30">
                        Help
                    </h4>

                    <ul>
                        <li class="p-b-10">
                            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                Track Order
                            </a>
                        </li>

                        <li class="p-b-10">
                            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                Returns
                            </a>
                        </li>

                        <li class="p-b-10">
                            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                Shipping
                            </a>
                        </li>

                        <li class="p-b-10">
                            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                FAQs
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="col-sm-6 col-lg-3 p-b-50">
                    <h4 class="stext-301 cl0 p-b-30">
                        GET IN TOUCH
                    </h4>

                    <p class="stext-107 cl7 size-201">
                        Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879
                    </p>

                    <div class="p-t-27">
                        <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                            <i class="fa fa-facebook"></i>
                        </a>

                        <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                            <i class="fa fa-instagram"></i>
                        </a>

                        <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                            <i class="fa fa-pinterest-p"></i>
                        </a>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-3 p-b-50">
                    <h4 class="stext-301 cl0 p-b-30">
                        Newsletter
                    </h4>

                    <form>
                        <div class="wrap-input1 w-full p-b-4">
                            <input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
                            <div class="focus-input1 trans-04"></div>
                        </div>

                        <div class="p-t-18">
                            <button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
                                Subscribe
                            </button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="p-t-40">
                <div class="flex-c-m flex-w p-b-18">
                    <a href="#" class="m-all-1">
                        <img src="/Assets/Client/images/icons/icon-pay-01.png" alt="ICON-PAY">
                    </a>

                    <a href="#" class="m-all-1">
                        <img src="/Assets/Client/images/icons/icon-pay-02.png" alt="ICON-PAY">
                    </a>

                    <a href="#" class="m-all-1">
                        <img src="/Assets/Client/images/icons/icon-pay-03.png" alt="ICON-PAY">
                    </a>

                    <a href="#" class="m-all-1">
                        <img src="/Assets/Client/images/icons/icon-pay-04.png" alt="ICON-PAY">
                    </a>

                    <a href="#" class="m-all-1">
                        <img src="/Assets/Client/images/icons/icon-pay-05.png" alt="ICON-PAY">
                    </a>
                </div>

                <p class="stext-107 cl6 txt-center">
                    <!-- Link back to Colorlib can''t be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;
                    <script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> &amp; distributed by <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                    <!-- Link back to Colorlib can''t be removed. Template is licensed under CC BY 3.0. -->

                </p>
            </div>
        </div>
    </footer>
', 1)
GO
SET IDENTITY_INSERT [dbo].[Gallery] ON 

INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (1, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (2, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (3, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (4, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (5, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (6, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (7, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (8, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (9, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (11, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (12, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (13, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (14, N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-2.png', N'/DataManagement/Images/N%E1%BB%AF/%C3%81o%20s%C6%A1%20mi/so-mi-poplin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (15, N'/DataManagement/Images/Women/SoMi/so-mi-satin-2.png', N'/DataManagement/Images/Women/SoMi/so-mi-satin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (16, N'/DataManagement/Images/Women/SoMi/so-mi-satin-1.png', N'/DataManagement/Images/Women/SoMi/so-mi-satin-2.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (17, N'/DataManagement/Images/Women/SoMi/so-mi-satin-2.png', N'/DataManagement/Images/Women/SoMi/so-mi-satin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (18, N'/DataManagement/Images/Women/SoMi/so-mi-satin-2.png', N'/DataManagement/Images/Women/SoMi/so-mi-satin-3.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (19, N'/DataManagement/Images/Men/SoMi/so-mi-oxford-regular-fit-2.png', N'/DataManagement/Images/Men/SoMi/so-mi-oxford-regular-fit-3.png', N'/DataManagement/Images/Men/SoMi/so-mi-oxford-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (20, N'/DataManagement/Images/Women/NiHoodie/hoodie-nu-2.png', N'/DataManagement/Images/Women/NiHoodie/hoodie-nu-3.png', N'/DataManagement/Images/Women/NiHoodie/hoodie-nu-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (21, N'/DataManagement/Images/Women/ChanVay/chan-vay-det-kim-2.png', N'/DataManagement/Images/Women/ChanVay/chan-vay-det-kim-3.png', N'/DataManagement/Images/Women/ChanVay/chan-vay-det-kim-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (22, NULL, NULL, NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (23, NULL, NULL, NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (24, N'/DataManagement/Images/Men/SoMi/so-mi-dai-tay-2.png', N'/DataManagement/Images/Men/SoMi/so-mi-dai-tay-3.png', N'/DataManagement/Images/Men/SoMi/so-mi-dai-tay-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (25, N'/DataManagement/Images/Men/SoMi/so-mi-flannel-regularfit-2.png', N'/DataManagement/Images/Men/SoMi/so-mi-flannel-regularfit-3.png', N'/DataManagement/Images/Men/SoMi/so-mi-flannel-regularfit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (26, N'/DataManagement/Images/Men/SoMi/oxford-loose-fit-2.png', N'/DataManagement/Images/Men/SoMi/oxford-loose-fit-3.png', N'/DataManagement/Images/Men/SoMi/oxford-loose-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (27, N'/DataManagement/Images/Men/SoMi/so-mi-relax-fit-2.png', N'/DataManagement/Images/Men/SoMi/so-mi-relax-fit-3.png', N'/DataManagement/Images/Men/SoMi/so-mi-relax-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (28, N'/DataManagement/Images/Men/SoMi/so-mi-khoac-nhe-2.png', N'/DataManagement/Images/Men/SoMi/so-mi-khoac-nhe-3.png', N'/DataManagement/Images/Men/SoMi/so-mi-khoac-nhe-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (29, N'/DataManagement/Images/Men/SoMi/so-mi-vai-xu-regular-fit-2.png', N'/DataManagement/Images/Men/SoMi/so-mi-vai-xu-regular-fit-3.png', N'/DataManagement/Images/Men/SoMi/so-mi-vai-xu-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (30, N'/DataManagement/Images/Men/SoMi/so-mi-nhung-tam-relaxed-fit-2.png', N'/DataManagement/Images/Men/SoMi/so-mi-nhung-tam-relaxed-fit-3.png', N'/DataManagement/Images/Men/SoMi/so-mi-nhung-tam-relaxed-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (31, N'/DataManagement/Images/Men/SoMi/so-mi-lyocell-regular-fit-2.png', N'/DataManagement/Images/Men/SoMi/so-mi-lyocell-regular-fit-3.png', N'/DataManagement/Images/Men/SoMi/so-mi-lyocell-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (32, N'/DataManagement/Images/Men/SoMi/so-mi-co-hai-ve-regular-fit-2.png', N'/DataManagement/Images/Men/SoMi/so-mi-co-hai-ve-regular-fit-3.png', N'/DataManagement/Images/Men/SoMi/so-mi-co-hai-ve-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (33, N'/DataManagement/Images/Men/SoMi/so-mi-khoac-nhe-oversized-fit-2.png', N'/DataManagement/Images/Men/SoMi/so-mi-khoac-nhe-oversized-fit-3.png', N'/DataManagement/Images/Men/SoMi/so-mi-khoac-nhe-oversized-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (34, N'/DataManagement/Images/Men/AoThunVaSatNach/ao-thun-regular-fit-2.png', N'/DataManagement/Images/Men/AoThunVaSatNach/ao-thun-regular-fit-3.png', N'/DataManagement/Images/Men/AoThunVaSatNach/ao-thun-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (35, N'/DataManagement/Images/Men/AoThunVaSatNach/ao-jersey-regular-fit-2.png', N'/DataManagement/Images/Men/AoThunVaSatNach/ao-jersey-regular-fit-3.png', N'/DataManagement/Images/Men/AoThunVaSatNach/ao-jersey-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (36, N'/DataManagement/Images/Men/AoThunVaSatNach/ao-polo-regular-fit-2.png', N'/DataManagement/Images/Men/AoThunVaSatNach/ao-polo-regular-fit-3.png', N'/DataManagement/Images/Men/AoThunVaSatNach/ao-polo-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (37, N'/DataManagement/Images/Men/AoThunVaSatNach/ao-jersey-thermolite-regular-fit-2.png', N'/DataManagement/Images/Men/AoThunVaSatNach/ao-jersey-thermolite-regular-fit-3.png', N'/DataManagement/Images/Men/AoThunVaSatNach/ao-jersey-thermolite-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (38, N'/DataManagement/Images/Men/AoThunVaSatNach/ao-jersey-loose-fit-2.png', N'/DataManagement/Images/Men/AoThunVaSatNach/ao-jersey-loose-fit-3.png', N'/DataManagement/Images/Men/AoThunVaSatNach/ao-jersey-loose-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (39, N'/DataManagement/Images/Men/AoThunVaSatNach/ao-thun-in-hinh-relax-fit-2.png', N'/DataManagement/Images/Men/AoThunVaSatNach/ao-thun-in-hinh-relax-fit-3.png', N'/DataManagement/Images/Men/AoThunVaSatNach/ao-thun-in-hinh-relax-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (40, N'/DataManagement/Images/Men/HoodieAoNi/ao-ni-loose-fit-2.png', N'/DataManagement/Images/Men/HoodieAoNi/ao-ni-loose-fit-3.png', N'/DataManagement/Images/Men/HoodieAoNi/ao-ni-loose-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (41, N'/DataManagement/Images/Men/HoodieAoNi/ao-rugby-cotton-regular-fit-2.png', N'/DataManagement/Images/Men/HoodieAoNi/ao-rugby-cotton-regular-fit-3.png', N'/DataManagement/Images/Men/HoodieAoNi/ao-rugby-cotton-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (42, N'/DataManagement/Images/Men/HoodieAoNi/hoodie-oversized-fit-2.png', N'/DataManagement/Images/Men/HoodieAoNi/hoodie-oversized-fit-3.png', N'/DataManagement/Images/Men/HoodieAoNi/hoodie-oversized-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (43, N'/DataManagement/Images/Men/HoodieAoNi/hoodie-loose-fit-2.png', N'/DataManagement/Images/Men/HoodieAoNi/hoodie-loose-fit-3.png', N'/DataManagement/Images/Men/HoodieAoNi/hoodie-loose-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (44, N'/DataManagement/Images/Men/HoodieAoNi/hoodie-keo-khoa-regular-fit-2.png', N'/DataManagement/Images/Men/HoodieAoNi/hoodie-keo-khoa-regular-fit-3.png', N'/DataManagement/Images/Men/HoodieAoNi/hoodie-keo-khoa-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (45, N'/DataManagement/Images/Men/AoKhoac/so-mi-khoac-nhe-2.png', N'/DataManagement/Images/Men/AoKhoac/so-mi-khoac-nhe-3.png', N'/DataManagement/Images/Men/AoKhoac/so-mi-khoac-nhe-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (46, N'/DataManagement/Images/Men/AoKhoac/ao-khoac-regular-fit-2.png', N'/DataManagement/Images/Men/AoKhoac/ao-khoac-regular-fit-3.png', N'/DataManagement/Images/Men/AoKhoac/ao-khoac-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (47, N'/DataManagement/Images/Men/AoKhoac/khoac-bong-chay-regular-fit-2.png', N'/DataManagement/Images/Men/AoKhoac/khoac-bong-chay-regular-fit-3.png', N'/DataManagement/Images/Men/AoKhoac/khoac-bong-chay-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (48, N'/DataManagement/Images/Men/AoKhoac/ao-gio-chong-nuoc-regular-fit-2.png', N'/DataManagement/Images/Men/AoKhoac/ao-gio-chong-nuoc-regular-fit-3.png', N'/DataManagement/Images/Men/AoKhoac/ao-gio-chong-nuoc-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (49, N'/DataManagement/Images/Men/AoKhoac/khoac-vai-nhung-tam-2.png', N'/DataManagement/Images/Men/AoKhoac/khoac-vai-nhung-tam-3.png', N'/DataManagement/Images/Men/AoKhoac/khoac-vai-nhung-tam-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (50, N'/DataManagement/Images/Men/QuanDai/quan-jogger-tui-hop-2.png', N'/DataManagement/Images/Men/QuanDai/quan-jogger-tui-hop-3.png', N'/DataManagement/Images/Men/QuanDai/quan-jogger-tui-hop-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (51, N'/DataManagement/Images/Men/QuanDai/quan-dai-tui-hop-regular-fit-2.png', N'/DataManagement/Images/Men/QuanDai/quan-dai-tui-hop-regular-fit-3.png', N'/DataManagement/Images/Men/QuanDai/quan-dai-tui-hop-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (52, N'/DataManagement/Images/Men/QuanDai/quan-dai-slim-fit-2.png', N'/DataManagement/Images/Men/QuanDai/quan-dai-slim-fit-3.png', N'/DataManagement/Images/Men/QuanDai/quan-dai-slim-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (53, N'/DataManagement/Images/Men/QuanDai/quan-ni-regular-fit-2.png', N'/DataManagement/Images/Men/QuanDai/quan-ni-regular-fit-3.png', N'/DataManagement/Images/Men/QuanDai/quan-ni-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (54, N'/DataManagement/Images/Men/QuanDai/quan-chino-cotton-slim-fit-2.png', N'/DataManagement/Images/Men/QuanDai/quan-chino-cotton-slim-fit-3.png', N'/DataManagement/Images/Men/QuanDai/quan-chino-cotton-slim-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (55, N'/DataManagement/Images/Men/QuanJean/straight-regular-fit-2.png', N'/DataManagement/Images/Men/QuanJean/straight-regular-fit-3.png', N'/DataManagement/Images/Men/QuanJean/straight-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (56, N'/DataManagement/Images/Men/QuanJean/loose-jean-2.png', N'/DataManagement/Images/Men/QuanJean/loose-jean-3.png', N'/DataManagement/Images/Men/QuanJean/loose-jean-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (57, N'/DataManagement/Images/Men/QuanJean/jogger-loose-cargo-denim-2.png', N'/DataManagement/Images/Men/QuanJean/jogger-loose-cargo-denim-3.png', N'/DataManagement/Images/Men/QuanJean/jogger-loose-cargo-denim-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (58, N'/DataManagement/Images/Men/QuanJean/skinny-jean-2.png', N'/DataManagement/Images/Men/QuanJean/skinny-jean-3.png', N'/DataManagement/Images/Men/QuanJean/skinny-jean-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (59, N'/DataManagement/Images/Men/QuanJean/relaxed-jean-2.png', N'/DataManagement/Images/Men/QuanJean/relaxed-jean-3.png', N'/DataManagement/Images/Men/QuanJean/relaxed-jean-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (60, N'/DataManagement/Images/Men/QuanJean/hybrid-regular-tapered-joggers-2.png', N'/DataManagement/Images/Men/QuanJean/hybrid-regular-tapered-joggers-3.png', N'/DataManagement/Images/Men/QuanJean/hybrid-regular-tapered-joggers-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (61, N'/DataManagement/Images/Men/QuanShort/short-ni-regular-fit-2.png', N'/DataManagement/Images/Men/QuanShort/short-ni-regular-fit-3.png', N'/DataManagement/Images/Men/QuanShort/short-ni-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (62, N'/DataManagement/Images/Men/QuanShort/short-det-cheo-loose-fit-2.png', N'/DataManagement/Images/Men/QuanShort/short-det-cheo-loose-fit-3.png', N'/DataManagement/Images/Men/QuanShort/short-det-cheo-loose-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (63, N'/DataManagement/Images/Men/QuanShort/short-cotton-regular-fit-2.png', N'/DataManagement/Images/Men/QuanShort/short-cotton-regular-fit-3.png', N'/DataManagement/Images/Men/QuanShort/short-cotton-regular-fit-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (64, N'/DataManagement/Images/Men/QuanShort/short-the-thao-2.png', N'/DataManagement/Images/Men/QuanShort/short-the-thao-3.png', N'/DataManagement/Images/Men/QuanShort/short-the-thao-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (65, N'/DataManagement/Images/Men/QuanShort/short-ni-loose-fit-coolmax-2.png', N'/DataManagement/Images/Men/QuanShort/short-ni-loose-fit-coolmax-3.png', N'/DataManagement/Images/Men/QuanShort/short-ni-loose-fit-coolmax-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (66, N'/DataManagement/Images/Women/SoMi/so-mi-cotton-pha-2.png', N'/DataManagement/Images/Women/SoMi/so-mi-cotton-pha-3.png', N'/DataManagement/Images/Women/SoMi/so-mi-cotton-pha-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (67, N'/DataManagement/Images/Women/SoMi/so-mi-jersey-2.png', N'/DataManagement/Images/Women/SoMi/so-mi-jersey-3.png', N'/DataManagement/Images/Women/SoMi/so-mi-jersey-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (68, N'/DataManagement/Images/Women/SoMi/so-mi-tuxedo-2.png', N'/DataManagement/Images/Women/SoMi/so-mi-tuxedo-3.png', N'/DataManagement/Images/Women/SoMi/so-mi-tuxedo-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (69, N'/DataManagement/Images/Women/SoMi/so-mi-buoc-day-2.png', N'/DataManagement/Images/Women/SoMi/so-mi-buoc-day-3.png', N'/DataManagement/Images/Women/SoMi/so-mi-buoc-day-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (70, N'/DataManagement/Images/Women/SoMi/so-mi-poplin-ren-lo-2.png', N'/DataManagement/Images/Women/SoMi/so-mi-poplin-ren-lo-3.png', N'/DataManagement/Images/Women/SoMi/so-mi-poplin-ren-lo-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (71, N'/DataManagement/Images/Women/BlazerGhile/blazer-hai-hang-2.png', N'/DataManagement/Images/Women/BlazerGhile/blazer-hai-hang-3.png', N'/DataManagement/Images/Women/BlazerGhile/blazer-hai-hang-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (72, N'/DataManagement/Images/Women/BlazerGhile/blazer-tuxedo-2.png', N'/DataManagement/Images/Women/BlazerGhile/blazer-tuxedo-3.png', N'/DataManagement/Images/Women/BlazerGhile/blazer-tuxedo-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (73, N'/DataManagement/Images/Women/BlazerGhile/blazer-nhung-2.png', N'/DataManagement/Images/Women/BlazerGhile/blazer-nhung-3.png', N'/DataManagement/Images/Women/BlazerGhile/blazer-nhung-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (74, N'/DataManagement/Images/Women/BlazerGhile/ghile-mac-vest-2.png', N'/DataManagement/Images/Women/BlazerGhile/ghile-mac-vest-3.png', N'/DataManagement/Images/Women/BlazerGhile/ghile-mac-vest-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (75, N'/DataManagement/Images/Women/BlazerGhile/ghile-mac-vest-den-2.png', N'/DataManagement/Images/Women/BlazerGhile/ghile-mac-vest-den-3.png', N'/DataManagement/Images/Women/BlazerGhile/ghile-mac-vest-den-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (76, N'/DataManagement/Images/Women/ChanVay/chan-vay-bong-2.png', N'/DataManagement/Images/Women/ChanVay/chan-vay-bong-3.png', N'/DataManagement/Images/Women/ChanVay/chan-vay-bong-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (77, N'/DataManagement/Images/Women/ChanVay/chan-vay-xep-ly-2.png', N'/DataManagement/Images/Women/ChanVay/chan-vay-xep-ly-3.png', N'/DataManagement/Images/Women/ChanVay/chan-vay-xep-ly-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (78, N'/DataManagement/Images/Women/ChanVay/chan-vay-mini-van-noi-2.png', N'/DataManagement/Images/Women/ChanVay/chan-vay-mini-van-noi-3.png', N'/DataManagement/Images/Women/ChanVay/chan-vay-mini-van-noi-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (79, N'/DataManagement/Images/Women/ChanVay/chan-vay-kim-sa-2.png', N'/DataManagement/Images/Women/ChanVay/chan-vay-kim-sa-3.png', N'/DataManagement/Images/Women/ChanVay/chan-vay-kim-sa-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (80, N'/DataManagement/Images/Women/CardiganJumper/jumper-co-lo-det-kim-2.png', N'/DataManagement/Images/Women/CardiganJumper/jumper-co-lo-det-kim-3.png', N'/DataManagement/Images/Women/CardiganJumper/jumper-co-lo-det-kim-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (81, N'/DataManagement/Images/Women/CardiganJumper/jumper-co-lo-2.png', N'/DataManagement/Images/Women/CardiganJumper/jumper-co-lo-3.png', N'/DataManagement/Images/Women/CardiganJumper/jumper-co-lo-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (82, N'/DataManagement/Images/Women/CardiganJumper/cardigan-vai-boucle-2.png', N'/DataManagement/Images/Women/CardiganJumper/cardigan-vai-boucle-3.png', N'/DataManagement/Images/Women/CardiganJumper/cardigan-vai-boucle-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (83, N'/DataManagement/Images/Women/CardiganJumper/cardigan-co-no-2.png', N'/DataManagement/Images/Women/CardiganJumper/cardigan-co-no-3.png', N'/DataManagement/Images/Women/CardiganJumper/cardigan-co-no-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (84, N'/DataManagement/Images/Women/QuanJean/ultra-high-ankle-jeggings-2.png', N'/DataManagement/Images/Women/QuanJean/ultra-high-ankle-jeggings-3.png', N'/DataManagement/Images/Women/QuanJean/ultra-high-ankle-jeggings-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (85, N'/DataManagement/Images/Women/QuanJean/skinny-regular-jean-2.png', N'/DataManagement/Images/Women/QuanJean/skinny-regular-jean-3.png', N'/DataManagement/Images/Women/QuanJean/skinny-regular-jean-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (86, N'/DataManagement/Images/Women/QuanJean/jean-cap-cao-rong-2.png', N'/DataManagement/Images/Women/QuanJean/jean-cap-cao-rong-3.png', N'/DataManagement/Images/Women/QuanJean/jean-cap-cao-rong-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10066, NULL, NULL, NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10067, NULL, NULL, NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10068, NULL, NULL, NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10069, NULL, NULL, NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10070, N'/DataManagement/Images/Women/DoBoi/ao-boi-mot-manh-2.jpg', N'/DataManagement/Images/Women/DoBoi/ao-boi-mot-manh-3.jpg', N'/DataManagement/Images/Women/DoBoi/ao-boi-mot-manh-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10071, N'/DataManagement/Images/Women/DoBoi/ao-boi-mot-manh-high-leg-2.jpg', N'/DataManagement/Images/Women/DoBoi/ao-boi-mot-manh-high-leg-3.jpg', N'/DataManagement/Images/Women/DoBoi/ao-boi-mot-manh-high-leg-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10072, N'/DataManagement/Images/Women/DoBoi/chan-vay-di-bien-macrame-2.jpg', N'/DataManagement/Images/Women/DoBoi/chan-vay-di-bien-macrame-3.jpg', N'/DataManagement/Images/Women/DoBoi/chan-vay-di-bien-macrame-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10073, N'/DataManagement/Images/Women/DoBoi/bikini-2.jpg', N'/DataManagement/Images/Women/DoBoi/bikini-3.jpg', N'/DataManagement/Images/Women/DoBoi/bikini-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10074, N'/DataManagement/Images/Women/DoBoi/vay-di-bien-gia-moc-2.jpg', NULL, NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10075, N'/DataManagement/Images/Women/DoNgu/do-ngu-in-hinh-2.jpg', N'/DataManagement/Images/Women/DoNgu/do-ngu-in-hinh-3.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10076, N'/DataManagement/Images/Women/DoNgu/ao-so-mi-va-quan-ngu-satin-2.jpg', N'/DataManagement/Images/Women/DoNgu/ao-so-mi-va-quan-ngu-satin-3.jpg', N'/DataManagement/Images/Women/DoNgu/ao-so-mi-va-quan-ngu-satin-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10077, N'/DataManagement/Images/Women/DoNgu/bo-ao-so-mi-va-quan-ngu-2.jpg', N'/DataManagement/Images/Women/DoNgu/bo-ao-so-mi-va-quan-ngu-3.jpg', N'/DataManagement/Images/Women/DoNgu/bo-ao-so-mi-va-quan-ngu-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10078, N'/DataManagement/Images/Women/DoNgu/vay-ngu-hai-day-2.jpg', N'/DataManagement/Images/Women/DoNgu/vay-ngu-hai-day-3.jpg', N'/DataManagement/Images/Women/DoNgu/vay-ngu-hai-day-4.jpg')
GO
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10079, N'/DataManagement/Images/Women/QuanDai/quan-dai-ong-rong-2.jpg', N'/DataManagement/Images/Women/QuanDai/quan-dai-ong-rong-3.jpg', N'/DataManagement/Images/Women/QuanDai/quan-dai-ong-rong-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10080, N'/DataManagement/Images/Women/QuanDai/jogger-cap-cao-2.jpg', N'/DataManagement/Images/Women/QuanDai/jogger-cap-cao-3.jpg', N'/DataManagement/Images/Women/QuanDai/jogger-cap-cao-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10081, N'/DataManagement/Images/Women/QuanDai/quan-dai-cap-chun-tre-2.jpg', N'/DataManagement/Images/Women/QuanDai/quan-dai-cap-chun-tre-3.jpg', N'/DataManagement/Images/Women/QuanDai/quan-dai-cap-chun-tre-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10082, N'/DataManagement/Images/Women/QuanDai/quan-dai-det-cheo-2.jpg', N'/DataManagement/Images/Women/QuanDai/quan-dai-det-cheo-3.jpg', N'/DataManagement/Images/Women/QuanDai/quan-dai-det-cheo-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10083, N'/DataManagement/Images/Women/QuanAoBasic/ao-co-mu-keo-khoa-2.jpg', N'/DataManagement/Images/Women/QuanAoBasic/ao-co-mu-keo-khoa-3.jpg', N'/DataManagement/Images/Women/QuanAoBasic/ao-co-mu-keo-khoa-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10084, N'/DataManagement/Images/Women/QuanAoBasic/bo-2-ao-thun-lung-2.jpg', N'/DataManagement/Images/Women/QuanAoBasic/bo-2-ao-thun-lung-3.jpg', N'/DataManagement/Images/Women/QuanAoBasic/bo-2-ao-thun-lung-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10085, N'/DataManagement/Images/Women/QuanAoBasic/ao-khoac-mong-det-kim-min-2.jpg', N'/DataManagement/Images/Women/QuanAoBasic/ao-khoac-mong-det-kim-min-3.jpg', N'/DataManagement/Images/Women/QuanAoBasic/ao-khoac-mong-det-kim-min-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10086, N'/DataManagement/Images/Women/QuanAoBasic/ao-khoac-mong-det-kim-2.jpg', N'/DataManagement/Images/Women/QuanAoBasic/ao-khoac-mong-det-kim-3.jpg', N'/DataManagement/Images/Women/QuanAoBasic/ao-khoac-mong-det-kim-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10087, N'/DataManagement/Images/Children/ao-khoac-bong-chay-dinh-trang-tri-2.jpg', N'/DataManagement/Images/Children/ao-khoac-bong-chay-dinh-trang-tri-3.jpg', N'/DataManagement/Images/Children/ao-khoac-bong-chay-dinh-trang-tri-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10088, N'/DataManagement/Images/Children/AoKhoac/ao-khoac-denim-co-co-2.jpg', N'/DataManagement/Images/Children/AoKhoac/ao-khoac-denim-co-co-3.jpg', N'/DataManagement/Images/Children/AoKhoac/ao-khoac-denim-co-co-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10089, N'/DataManagement/Images/Children/AoKhoac/khoac-cotton-2.jpg', N'/DataManagement/Images/Children/AoKhoac/khoac-cotton-3.jpg', N'/DataManagement/Images/Children/AoKhoac/khoac-cotton-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10090, N'/DataManagement/Images/Children/AoKhoac/oversized-printed-baseball%20jacket-2.jpg', N'/DataManagement/Images/Children/AoKhoac/oversized-printed-baseball%20jacket-3.jpg', N'/DataManagement/Images/Children/AoKhoac/oversized-printed-baseball%20jacket-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10091, N'/DataManagement/Images/Children/AoThun/ao-thun-dai-tay-2.jpg', N'/DataManagement/Images/Children/AoThun/ao-thun-dai-tay-3.jpg', N'/DataManagement/Images/Children/AoThun/ao-thun-dai-tay-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10092, N'/DataManagement/Images/Children/AoThun/bo-2-mon-in-hinh-2.jpg', NULL, NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10093, N'/DataManagement/Images/Children/AoThun/cotton-jersey-2.jpg', NULL, NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10094, N'/DataManagement/Images/Children/AoThun/ao-thun-hoa-tiet-2.jpg', N'/DataManagement/Images/Children/AoThun/ao-thun-hoa-tiet-3.jpg', N'/DataManagement/Images/Children/AoThun/ao-thun-hoa-tiet-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10095, N'/DataManagement/Images/Children/AoLen/cardigan-ni-theu-hoa-tiet-2.jpg', N'/DataManagement/Images/Children/AoLen/cardigan-ni-theu-hoa-tiet-3.jpg', N'/DataManagement/Images/Children/AoLen/cardigan-ni-theu-hoa-tiet-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10096, N'/DataManagement/Images/Children/AoLen/cardigan-xu-2.jpg', N'/DataManagement/Images/Children/AoLen/cardigan-xu-3.jpg', N'/DataManagement/Images/Children/AoLen/cardigan-xu-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10097, N'/DataManagement/Images/Children/AoLen/cardigan-ni-dinh-kim-sa-2.jpg', N'/DataManagement/Images/Children/AoLen/cardigan-ni-dinh-kim-sa-3.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10098, N'/DataManagement/Images/Children/QuanJeans/superstretch-slim-fit-jeans-2.jpg', N'/DataManagement/Images/Children/QuanJeans/superstretch-slim-fit-jeans-3.jpg', N'/DataManagement/Images/Children/QuanJeans/superstretch-slim-fit-jeans-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10099, N'/DataManagement/Images/Children/QuanJeans/superstretch-flared-leg-jeans-2.jpg', NULL, NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10100, N'/DataManagement/Images/Children/QuanJeans/relaxed-tapered-fit-jeans-2.jpg', N'/DataManagement/Images/Children/QuanJeans/relaxed-tapered-fit-jeans-3.jpg', N'/DataManagement/Images/Children/QuanJeans/relaxed-tapered-fit-jeans-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10101, N'/DataManagement/Images/Children/QuanJeans/quan-jogger-denim-comfort-tretch-2.jpg', N'/DataManagement/Images/Children/QuanJeans/quan-jogger-denim-comfort-tretch-3.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10102, N'/DataManagement/Images/Children/QuanJeans/wide-leg-jeans-2.jpg', N'/DataManagement/Images/Children/QuanJeans/wide-leg-jeans-3.jpg', N'/DataManagement/Images/Children/QuanJeans/wide-leg-jeans-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10103, N'/DataManagement/Images/Children/QuanShort/quan-short-kieu-tui-giay-2.jpg', N'/DataManagement/Images/Children/QuanShort/quan-short-kieu-tui-giay-3.jpg', N'/DataManagement/Images/Children/QuanShort/quan-short-kieu-tui-giay-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10104, N'/DataManagement/Images/Children/QuanShort/bo-3-quan-short-dap-xe-in-hinh-2.jpg', N'/DataManagement/Images/Children/QuanShort/bo-3-quan-short-dap-xe-in-hinh-3.jpg', N'/DataManagement/Images/Children/QuanShort/bo-3-quan-short-dap-xe-in-hinh-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10105, N'/DataManagement/Images/Ban%20Phim%20Co/Akko/akko-monsgeek-mg75-black-cyan-akko-1/ban-phim-co-monsgeek-mg75-black-cyan-03.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/akko-monsgeek-mg75-black-cyan-akko-1/ban-phim-co-monsgeek-mg75-black-cyan-02.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10106, N'/DataManagement/Images/Children/QuanShort/quan-short-det-cheo-2.jpg', N'/DataManagement/Images/Children/QuanShort/quan-short-det-cheo-3.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10107, N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3098-ds-matcha-red-bean-gateron-cap-switch/ban-phim-co-akko-3098-ds-matcha-red-bean-08.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3098-ds-matcha-red-bean-gateron-cap-switch/ban-phim-co-akko-3098-ds-matcha-red-bean-02.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10108, N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3108-rf-ocean-star-2/aled_8515a3ed780549e9b63bf97d42b9269b_b81e822365fb440ea1f00a535814a7bc_0ac8a12ec39543b89a1f96641ee2b8d3_1024x1024.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3108-rf-ocean-star-2/aled_80d7d9f313fb46818c270eddaf154f8c_fde6e1d397144bbcb9828e987f7d1916_4cc0bc7ad4a94ba2916c36ad8ad8a53d_1024x1024.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10109, N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3087-rf-one-piece-luffy-2/2_43f3a8d3ba6c4186a8a3b091c4d279e4_95bb966043ef4a0da1d3232e6bed0821_bc1a9457beac422ea2cdd451c5b7963c_1024x1024.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3087-rf-one-piece-luffy-2/4_46067de236eb44d9ac7b6f0766a93710_50e9441dcdf04e518af1757723a9d66c_f9b9c698760e43b99c32955522407940_1024x1024.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10110, N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3087-plus-prunus-lannesiana-akko-cs-wine-red-switch/ban-phim-co-akko-3087-plus-prunus-lannesiana-02-768x768.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3087-plus-prunus-lannesiana-akko-cs-wine-red-switch/ban-phim-co-akko-3087-plus-prunus-lannesiana-04.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3087-plus-prunus-lannesiana-akko-cs-wine-red-switch/ban-phim-co-akko-3087-plus-prunus-lannesiana-05.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10111, N'/DataManagement/Images/Children/Vay/vay-cotton-2.jpg', N'/DataManagement/Images/Children/Vay/vay-cotton-3.jpg', N'/DataManagement/Images/Children/Vay/vay-cotton-4.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10112, N'/DataManagement/Images/Men/AoKhoac/khoac-bong-chay-vai-satin-2.png', N'/DataManagement/Images/Men/AoKhoac/khoac-bong-chay-vai-satin-3.png', N'/DataManagement/Images/Men/AoKhoac/khoac-bong-chay-vai-satin-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10113, N'/DataManagement/Images/Men/AoKhoac/khoac-bong-chay-vai-satin-2.png', N'/DataManagement/Images/Men/AoKhoac/khoac-bong-chay-vai-satin-3.png', N'/DataManagement/Images/Men/AoKhoac/khoac-bong-chay-vai-satin-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10114, N'/DataManagement/Images/Men/AoKhoac/khoac-bong-chay-vai-satin-2.png', N'/DataManagement/Images/Men/AoKhoac/khoac-bong-chay-vai-satin-3.png', N'/DataManagement/Images/Men/AoKhoac/khoac-bong-chay-vai-satin-4.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10115, N'/DataManagement/Images/Ban%20Phim%20Co/Akko/monsgeek-mg108-black-pink-2/k-11_749a1fa5830a444da45156bca903f8b6_6b5558a214144436b48b3f6b5755a8d5_8cb5def87848429688d50b972574be4f_1024x1024.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/monsgeek-mg108-black-pink-2/k-12_fae17a5126b942b8aa9c34c86e763395_b0281f6e90d04e318c19f0d3d1af7005_c27f45e5912c442580ce88c21303fa17_1024x1024.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10116, N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3087-v2-ds-horizon-akko-switch-v3-cream-yellow/2_fe4280f2f8944afe8ee7b1791bc4c727_1024x1024.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3087-v2-ds-horizon-akko-switch-v3-cream-yellow/3_448c4e76822645928ddce7745a846ffd_1024x1024.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3087-v2-ds-horizon-akko-switch-v3-cream-yellow/4_732762e4b8a542a1a785fc04064aa230_1024x1024.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10117, N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3108-plus-prunus-lannesiana-akko-cs-wine-white-switch/AKKO-3108-Plus-Prunus-Lannesiana-05.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3108-plus-prunus-lannesiana-akko-cs-wine-white-switch/AKKO-3108-Plus-Prunus-Lannesiana-06.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10118, N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k100-rgb-cherry-mx-speed-ch-912a014-na/gb-4_5f8aa0cb982a4438afec52f8dfb87c12_dae24eebe34349c59588136c8d26d27c_a18d5aca98e94384a1f677e6ee9c6401_1024x1024.png', N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k100-rgb-cherry-mx-speed-ch-912a014-na/gb-4_5f8aa0cb982a4438afec52f8dfb87c12_dae24eebe34349c59588136c8d26d27c_a18d5aca98e94384a1f677e6ee9c6401_1024x1024.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10119, N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k95-rgb-platinum-xt/phim-co-corsair-k95-rgb-platinum-xt-3_a6cff36b270341ea91bba51155eac65f_68236c6c56334bd392f8220fd43d42b3_1024x1024.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k95-rgb-platinum-xt/phim-co-corsair-k95-rgb-platinum-xt-4_ce16990ea69b4bd383c22c72c24a61a3_ee9a156336e94999afb9c12a8e7a10df_1024x1024.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10120, N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k70-tkl-rgb-champion-series-cherry-mx-red-switch/gearvn-corsair-k68-rgb_03_5eced51be8fa47dbacbb06c24d584171_1024x1024.png', N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k70-tkl-rgb-champion-series-cherry-mx-red-switch/gearvn-corsair-k68-rgb_04_0900551c024e448a9d9ffab1b5276951_1024x1024.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10121, N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k65-rgb-mini-white-mx-speed-ch-9194114-na/45406_key_cor_ch_9194114_na_c.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k65-rgb-mini-white-mx-speed-ch-9194114-na/45406_key_cor_ch_9194114_na_d.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10122, N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k68-rgb/gearvn-corsair-k68-rgb_03_5eced51be8fa47dbacbb06c24d584171_1024x1024.png', N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k68-rgb/gearvn-corsair-k68-rgb_04_0900551c024e448a9d9ffab1b5276951_1024x1024.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10123, N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k55-rgb-pro-lite/hinh_c448f85f518246279a8f0879d217e350_1024x1024.gif', N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k55-rgb-pro-lite/hinh-1-white_35da93f03d37491a9e842f9b18884b66_1024x1024.gif', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10124, N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek1280sv2-rgb-brown-switch/ban-phim-ek1280s-v2-02-dareu_png_e8eeb1ae79114362838cbe98c3066e56_1024x1024.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek1280sv2-rgb-brown-switch/ban-phim-ek1280s-v2-03-dareu__1__c4dd295797e14864bee9a9587073ed16_1024x1024.png', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek1280sv2-rgb-brown-switch/ban-phim-ek1280s-v2-04-dareu_95fdbd34435447e2be7efe3ea8c4795a_1024x1024.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10125, N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek75-pro-triple-mode-black-golden-dream-switch/dareu-ek75-pro-01-1.png', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek75-pro-triple-mode-black-golden-dream-switch/dareu-ek75-pro-02-2.png', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek75-pro-triple-mode-black-golden-dream-switch/dareu-ek75-pro-03-1.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10126, N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek884-rgb-brown-switch/ban-phim-gaming-ek884-led-rgb-01.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek884-rgb-brown-switch/ban-phim-gaming-ek884-led-rgb-03.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10127, N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek75-white-black-dareu-dream-switch/ban-phim-dareu-ek75-rgb-02.png', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek75-white-black-dareu-dream-switch/ban-phim-dareu-ek75-rgb-04.png', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek75-white-black-dareu-dream-switch/ban-phim-dareu-ek75-rgb-03.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10128, N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek87v2-white-red-switch/ban-phim-co-gaming-dareu-ek87-v2-led-rgb-03.jpg', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek87v2-white-red-switch/ban-phim-co-gaming-dareu-ek87-v2-led-rgb-05.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10129, N'/DataManagement/Images/Man%20Hinh/Dell/dell-s2722dgm-27-2k-165hz-chuyen-game/7_cdf243092e864830ae90b57718d6f68c_d8b1d12961654f4395f99a4a538ed062_1024x1024.jpg', N'/DataManagement/Images/Man%20Hinh/Dell/dell-s2722dgm-27-2k-165hz-chuyen-game/1_ab127208b7de439c8e4c839b81d5dcac_58fa390de555438ea55b2fc2cd9f5c05_1024x1024.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10130, N'/DataManagement/Images/Man%20Hinh/Dell/man-hinh-dell-e2422h-24-ips/h2_2916f5337f514599b44e4fb550dc5f88_15a8a9c886154f39886b1efc5516655f_1024x1024.jpg', N'/DataManagement/Images/Man%20Hinh/Dell/man-hinh-dell-e2422h-24-ips/h4_45ddbdf709cd437280c6e2919de51fad_c664f4be29a54428937916deca6d9027_1024x1024.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10131, N'/DataManagement/Images/Man%20Hinh/Dell/s2721hn-27-ips-75hz-vien-mong/2_12a81ee0c7874adf8db3b6a4bc34c63a_20ecec0fec534ecaa955c65c1d78424e_1024x1024.jpg', N'/DataManagement/Images/Man%20Hinh/Dell/s2721hn-27-ips-75hz-vien-mong/4_5f236ca9634a4e57ad7d163af201c92d_ab24c134da5941dfb180c14c380cba0e_1024x1024.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10132, N'/DataManagement/Images/Man%20Hinh/Dell/ultrasharp-u2422he-24-ips-usbc-rj45/5546b4a6z.jpg', N'/DataManagement/Images/Man%20Hinh/Dell/ultrasharp-u2422he-24-ips-usbc-rj45/54b96a4z.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10133, N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-colorpro-vp2456-24-ips-usbc-chuyen-do-hoa/vp2456_b02_pc_l_e65cb979b1c049f2894e9ff41ac527c0_098fd2a75acc45e494650e594685061b_1024x1024.jpg', N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-colorpro-vp2456-24-ips-usbc-chuyen-do-hoa/vp2456_c01_pc_l_e1e673f86f0b4b53a1c11b383c0b426f_ab660b2e25bb4320aad6a2c4e53e603f_1024x1024.jpg', N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-colorpro-vp2456-24-ips-usbc-chuyen-do-hoa/vp2456_f03_pc_l_557ee79579024a159a541756624cc35f_abd786f8fa25402b926d66fded3cb388_1024x1024.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10134, N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-va1655-16-ips-fhd-usbc/va1655_rb02_1__pc_l_5d9c351ebabc44528512822f37ba9574_cc2d86fce8af4ce0aeac9a41fa41c621_1024x1024.jpg', N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-va1655-16-ips-fhd-usbc/va1655_f06_pc_l_b715c6190a1340ec8025ed222b102c12_aaed6a0f2bb44af690360d6b509fa1ad_1024x1024.jpg', N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-va1655-16-ips-fhd-usbc/va1655_r02_pc_l_417cf3d896c74d26b15d0855c9201238_65de73c76f7a4abc97269d7bcafb4dc2_1024x1024.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10135, N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-va2215-h-22-75hz-fhd/hinh-viewsonic-va2215-h-22-75hz-fhd-7_ac32d920750c4bdf8bd8244533d9d6f1_eaade5740bae4c5990f8fb1b65f42609_1024x1024.jpg', N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-va2215-h-22-75hz-fhd/hinh-viewsonic-va2215-h-22-75hz-fhd-3_525220a2ded141b69d52b715b79ca73e_f9a7084494a740ad8b34589f89080b02_1024x1024.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10136, N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-va2215-h-22-75hz-fhd/hinh-viewsonic-va2215-h-22-75hz-fhd-3_525220a2ded141b69d52b715b79ca73e_f9a7084494a740ad8b34589f89080b02_1024x1024.jpg', N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-va2215-h-22-75hz-fhd/hinh-viewsonic-va2215-h-22-75hz-fhd-7_ac32d920750c4bdf8bd8244533d9d6f1_eaade5740bae4c5990f8fb1b65f42609_1024x1024.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10137, N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-rog-strix-z790-a-gaming-wifi-ddr5/h732__8__25c1f51bb3514bddacc3a6472f029b33_1024x1024.png', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-rog-strix-z790-a-gaming-wifi-ddr5/h732__5__82f6d7bd4741433f810ba300c001031f_1024x1024.png', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-rog-strix-z790-a-gaming-wifi-ddr5/h732__4__e77b0a8ec48c4139847100cf8f421ad3_1024x1024.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10138, N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-rog-maximus-z790-apex-encore/h732__5__8e2f46aabe4740fdae0e2bbff8e43204_1024x1024.png', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-rog-maximus-z790-apex-encore/h732__12__5acf54d897654d4e8fe591daee825fb7_1024x1024.png', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-rog-maximus-z790-apex-encore/h732__10__cb26b5da5e0a45d6936ff7b9f1d9e250_1024x1024.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10139, N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-tuf-gaming-b660m-plus-wifi-ddr4/tuf-b660m-plus-wifi-d4-01a_a4d962bb51a24acea28e1ce3d0d93da2_d917617c23514955a214c395e282a00f_1024x1024.jpg', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-tuf-gaming-b660m-plus-wifi-ddr4/tuf-b660m-plus-wifi-d4-02_892fd3a470ec47daa3e2f817c2f1d340_c7c0c03e043c4dbe81ea39c721a1c73e_1024x102.jpg', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-tuf-gaming-b660m-plus-wifi-ddr4/tuf-b660m-plus-wifi-d4-03_a1c96d6c2f2f4a099372956f2e4094ab_1cd28957c6fc4fea90c1d3b3ac462166_1024x102.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10140, N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-prime-h510m-a-wifi/prime-h510m-a-wifi-02_6c98215b320f4ac791e75584684356d3_72698879176a41df8a212365d55cde7f_1024x1024.jpg', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-prime-h510m-a-wifi/prime-h510m-a-wifi-03_4e562689294147d3b8b9264b3d7cc431_6dbcd170b3504296a92791e56c288709_1024x1024.jpg', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-prime-h510m-a-wifi/prime-h510m-a-wifi-04_709288b3004d4600b91150b19ba2cfc5_addf6cacbe7e40688e088d1fee307da4_1024x1024.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10141, N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-prime-a320m-e/gearvn-mainboard-asus-prime-a320m-e-2_fb6a2ee0ece044bc840986512ec1dfc6_7777963bcc6e4fb79a9b26a92af8f601_1024x1024.jpg', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-prime-a320m-e/gearvn-mainboard-asus-prime-a320m-e-4_85dffef20faf462491ee38b2411a2df6_f7452f03324147e8a73b1d8e2f0c4d9c_1024x1024.jpg', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-prime-a320m-e/gearvn-mainboard-asus-prime-a320m-e-7_e06b11673ff34c0d8fc8b69039e861de_f6fc9d9095bc481d9639a01ebafb2dce_1024x1024.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10142, N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-prime-a320m-k/gearvn-mainboard-asus-prime-a320m-k-2_d90e21e1d09145ea81950bf31678c9c4_39dcd0c86c7e4d41844e294aa52dabe0_1024x1024.jpg', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-prime-a320m-k/gearvn-mainboard-asus-prime-a320m-k-3_d39e6165ffb142598c1e5070015ee5d5_f9efa2b1445c4eb2bdf9c255d595225e_1024x1024.jpg', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-prime-a320m-k/gearvn-mainboard-asus-prime-a320m-k-4_151d5c5881aa4874b43bca4211358f3a_1da647383b4849dc9ad52dba0ad154bd_1024x1024.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10143, N'/DataManagement/Images/PC-Gaming/phantom-plus-i3060/gvn00996_304119908f124ca08096c17867946c7c_1024x1024-fotor-20231022232728.jpg', N'/DataManagement/Images/PC-Gaming/phantom-plus-i3060/gearvn-gvn-phantom-i3060-__13__95aa33c45c9a4457b298ccd7fcf1eec9_393eccbfe3b4430f96d5a0537d070e5b_1024x1024-fotor-2023102223281.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10144, N'/DataManagement/Images/PC-Gaming/phantom-plus-a3060/pc3.jpg', N'/DataManagement/Images/PC-Gaming/phantom-plus-a3060/post-06_a58e5ffaed7c4dacb8a5eff5fe1b31da_1024x1024-fotor-20231022232345.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10145, N'/DataManagement/Images/PC-Gaming/plantom-plus-a4080/pc4.jpg', N'/DataManagement/Images/PC-Gaming/plantom-plus-a4080/post-08_4672c7e7b50e41b3beac34c724c0614d_1024x1024-fotor-20231022232044.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10146, N'/DataManagement/Images/PC-Gaming/phantom-plus-a3060/pc3.jpg', N'/DataManagement/Images/PC-Gaming/phantom-plus-a3060/post-06_a58e5ffaed7c4dacb8a5eff5fe1b31da_1024x1024-fotor-20231022232345.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10147, N'/DataManagement/Images/PC-Gaming/viper-a1650/_dsc9999_70c25cac63c248c19e19d0c27da43dab_44bd4e7a1a75425bb5a73f886af658fc_1024x1024-fotor-20231022234355.jpg', N'/DataManagement/Images/PC-Gaming/viper-a1650/_dsc0012_c6c5797242bc4bb291d5119c8c05bd1f_b3aafbb384734d648e5b45c5deb2ea90_1024x1024-fotor-20231022234426.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10148, N'/DataManagement/Images/PC-Gaming/viper-i1660s/msi_60d87540e0474fc488be6d3a0471dbe3_1024x1024.png', N'/DataManagement/Images/PC-Gaming/viper-i1660s/_dsc9817_c0171a18878e47c0950cbc40a6c37143_c1f441dd4c4e4f5698efc7bedc6b18bb_1024x1024-fotor-2023102223512.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10149, N'/DataManagement/Images/PC-Gaming/viper-i3050/post-06_78c6e986860f4ef2827bc1179d87bc7e_1024x1024-fotor-20231022235333.jpg', N'/DataManagement/Images/PC-Gaming/viper-i3050/post-07_f583898062554e67bcf962867897540e_1024x1024-fotor-2023102223538.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10150, N'/DataManagement/Images/PC-Gaming/viper-i4060-i5/post-02_f780a1de05724bbabaef364910b22b14_1024x1024-fotor-20231022235539.jpg', N'/DataManagement/Images/PC-Gaming/viper-i4060-i5/post-07_e913b36a3d3f4e86b86ce861d522f704_1024x1024-fotor-20231022235523.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10151, N'/DataManagement/Images/PC-Congviec/Studio-9-plus-i4090/post-03_ffaef405d7aa4babb2d6d69b74eb34ad_1024x1024-fotor-20231022231456.jpg', N'/DataManagement/Images/PC-Congviec/Studio-9-plus-i4090/post-04_6cfbded9dfc944fd95bc78dee9c46055_1024x1024-fotor-20231022231533.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10152, N'/DataManagement/Images/PC-Congviec/Studio-7-plus-a4070ti/post-10_5d4f1285d8254a4b91e2848c05c6f069_1024x1024-fotor-20231022231027.jpg', N'/DataManagement/Images/PC-Congviec/Studio-7-plus-a4070ti/post-05_98cee5cc95e344b6b2fc8b94c186aafd_1024x1024-fotor-2023102223957.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10153, N'/DataManagement/Images/PC-Congviec/Studio-5-i1660s/post-04_79f259cb8b5d467fb3d7ffec8269ad74_1024x1024-fotor-2023102223715.jpg', N'/DataManagement/Images/PC-Congviec/Studio-5-i1660s/post-05_b42198a224954915b14d479deeb7cb5e_1024x1024-fotor-2023102220596.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10154, N'/DataManagement/Images/PC-Congviec/homeworkR3/homeworkR3.jpg', N'/DataManagement/Images/PC-Congviec/homeworkR3/homeworkR31.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10155, N'/DataManagement/Images/Tai%20Nghe/Asus/cetra-true-wireless/asus-rog-cetra-true-wireless-02_acded5b0105145d6beeb8762178ddd94_1024x1024.jpg', N'/DataManagement/Images/Tai%20Nghe/Asus/cetra-true-wireless/asus-rog-cetra-true-wireless-04_bfb893e7c86140a6ae5ec7e724960617_1024x1024.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10156, N'/DataManagement/Images/Tai%20Nghe/Asus/delta-s-core/h732__2__12b532b0c0ec4aea841d3640860b4626_ac11edfcb9b34fa9b33e857f7dc5239e_1024x1024.png', N'/DataManagement/Images/Tai%20Nghe/Asus/delta-s-core/h732__3__16ca4d208d2a4269859d6fccc5fcb547_b86363bab31448aa923f2f492af0c08a_1024x1024.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10157, N'/DataManagement/Images/Tai%20Nghe/Asus/rog-delta-s-animate/h732__1__856c6e92acde49a881f3bc3bad57aa97_23bf6d2435cf4555b814d84d06d78e28_1024x1024.png', N'/DataManagement/Images/Tai%20Nghe/Asus/rog-delta-s-animate/h732__3__a2104aaca6754c64b48f0439191942b5_553ed7b93b0d43879083d9e41fae7449_1024x1024.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10158, N'/DataManagement/Images/Tai%20Nghe/Asus/rog-strix-go-2-4/rog-strix-go-2_4-09_265421c898cc45bab0941d78fa0e3ba6_1024x1024.png', N'/DataManagement/Images/Tai%20Nghe/Asus/rog-strix-go-2-4/rog-strix-go-2_4-08_66eb003c88ec4604aa5fb27871680451_1024x1024.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10159, N'/DataManagement/Images/Tai%20Nghe/Corsair/hs65-surround-carbon/i-nghe-corsair-hs65-surround-carbon-3_fb3e6c72b5d449e0afd33c104cafc56e_8b61b5c71b3743368fe6900b6c363bb1_1024x1024.jpg', N'/DataManagement/Images/Tai%20Nghe/Corsair/hs65-surround-carbon/thumbtainghe_09cc127393684af58143cd53500bb166_0f72c877ac704fc79ad84a255e54128e_1024x1024.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10160, N'/DataManagement/Images/Tai%20Nghe/Corsair/hs70-pro-wireless-carbon/he-corsair-hs70-pro-wireless-carbon-2_3855186e6a3e4f74bf4f15d9dc36990d_c3bff6691ab24c7cbb963acfbe1e4cb0_1024x1024.jpg', N'/DataManagement/Images/Tai%20Nghe/Corsair/hs70-pro-wireless-carbon/he-corsair-hs70-pro-wireless-carbon-3_ba19343bfeb746f5b9c4e4f486971ea2_fee978ad3a344dccbd22e56923d397fb_1024x1024.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10161, N'/DataManagement/Images/Tai%20Nghe/Corsair/hs80-white-rgb-wireless/8251_f91a853ea43dab909497320b70e004ce_2ebfc1c9e64944c3bcb25ff6e6eed8ad_a0e1c9b343dc4c6987b11d38a53eec94_1024x1024.jpg', N'/DataManagement/Images/Tai%20Nghe/Corsair/hs80-white-rgb-wireless/6621_6539e30e1f15d203eea789372e1828f6_48b0272eb6d54dafb3bceb1d062f2161_54ec653d200c40f08c66e0260dee0176_1024x1024.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10162, N'/DataManagement/Images/Tai%20Nghe/Corsair/virtuoso-rgb-wireless-pearl/-rgb-config-gallery-virtuoso-pearl-17_0a8e0197c8924a6a950d470cb1c77605_aad78b37e3684e67af79cc981e2f9b32_1024x1024.png', N'/DataManagement/Images/Tai%20Nghe/Corsair/virtuoso-rgb-wireless-pearl/-rgb-config-gallery-virtuoso-pearl-25_d3c123ef56ad4c12a17756a26582ec0d_10a5a9b8418447e28a4c6417a2497bf8_1024x1024.png', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10163, N'/DataManagement/Images/Tai%20Nghe/Logitech/g-pro-x-2-lightspeed-black/gallery-3-pro-x-2-lightspeed-gaming-headset-black_b8a76c1476e14163ad7f5b8c9454c8e0_1024x1024.png', N'/DataManagement/Images/Tai%20Nghe/Logitech/g-pro-x-2-lightspeed-black/gallery-1-pro-x-2-lightspeed-gaming-headset-black_f0029215fce74bf586e710c7284d822f_1024x1024.png', N'/DataManagement/Images/Tai%20Nghe/Logitech/g-pro-x-2-lightspeed-black/gallery-5-pro-x-2-lightspeed-gaming-headset-black_6bfb821ce6844dc5b9f1b53aae2b9628_1024x1024.png')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10164, N'/DataManagement/Images/Tai%20Nghe/Logitech/g435-lightspeed-wireless-black/62591_tai_nghe_logitech_g435_lightspeed_wireless_black_0001_2.jpg', N'/DataManagement/Images/Tai%20Nghe/Logitech/g435-lightspeed-wireless-black/62591_tai_nghe_logitech_g435_lightspeed_wireless_black_0002_3.jpg', NULL)
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10165, N'/DataManagement/Images/Tai%20Nghe/Logitech/g535-lightspeed-wireless-black/tech-g535-lightspeed-wireless-black-5_91432be7171140b18524af61f2abe0ce_83d83e9df8d249338c5f94945b95b737_1024x1024.jpg', N'/DataManagement/Images/Tai%20Nghe/Logitech/g535-lightspeed-wireless-black/tech-g535-lightspeed-wireless-black-1_4185ee7505e341c3a8ad51b2c87009b1_5190e6a3ab164f1cbdc92e83d9f7d68e_1024x1024.png', N'/DataManagement/Images/Tai%20Nghe/Logitech/g535-lightspeed-wireless-black/tech-g535-lightspeed-wireless-black.jpg')
INSERT [dbo].[Gallery] ([Id], [Image1], [Image2], [Image3]) VALUES (10166, N'/DataManagement/Images/Tai%20Nghe/Logitech/g733-lightspeed-wireless-white/4772-tai-nghe-logitech-g733-wireless-7-1-rgb-6.jpg', N'/DataManagement/Images/Tai%20Nghe/Logitech/g733-lightspeed-wireless-white/ech-g733-lightspeed-wireless-white-22_84e4867eb34b4dda8aee0283eeea541a_6ddf6950f41b49eb9622258d2c7fcc9c_1024x1024.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Gallery] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([Id], [Text], [Link], [DisplayOrder], [Target], [TypeId], [Status]) VALUES (1, N'Trang chủ', N'/', 1, N'_self', 1, 1)
INSERT [dbo].[Menu] ([Id], [Text], [Link], [DisplayOrder], [Target], [TypeId], [Status]) VALUES (2, N'Sản phẩm', N'/san-pham', 2, N'_self', 1, 1)
INSERT [dbo].[Menu] ([Id], [Text], [Link], [DisplayOrder], [Target], [TypeId], [Status]) VALUES (3, N'Giới thiệu', N'/gioi-thieu', 3, N'_self', 1, 1)
INSERT [dbo].[Menu] ([Id], [Text], [Link], [DisplayOrder], [Target], [TypeId], [Status]) VALUES (4, N'Liên hệ', N'/lien-he', 5, N'_self', 1, 1)
INSERT [dbo].[Menu] ([Id], [Text], [Link], [DisplayOrder], [Target], [TypeId], [Status]) VALUES (5, N'Tin tức', N'/tin-tuc', 4, N'_self', 1, 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([Id], [Name]) VALUES (1, N'Header Menu')
INSERT [dbo].[MenuType] ([Id], [Name]) VALUES (2, N'Product Menu')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([PaymentMethod], [Status], [OrderDate], [DeliveryDate], [DeliveryAddress], [CustomerId], [Id], [Name], [Email], [Phone]) VALUES (0, 4, CAST(N'2024-05-18T16:07:45.863' AS DateTime), CAST(N'2024-05-18T16:12:16.797' AS DateTime), N'12th assert', 18, 30046, N'Le Trung', N'vuongletrunggg1@gmail.com', N'0334822321')
INSERT [dbo].[Order] ([PaymentMethod], [Status], [OrderDate], [DeliveryDate], [DeliveryAddress], [CustomerId], [Id], [Name], [Email], [Phone]) VALUES (0, 4, CAST(N'2024-05-18T16:07:51.220' AS DateTime), CAST(N'2024-05-18T16:12:13.853' AS DateTime), N'12th assert', 18, 30047, N'Le Trung', N'vuongletrunggg1@gmail.com', N'0334822321')
INSERT [dbo].[Order] ([PaymentMethod], [Status], [OrderDate], [DeliveryDate], [DeliveryAddress], [CustomerId], [Id], [Name], [Email], [Phone]) VALUES (0, 0, CAST(N'2024-05-18T16:15:33.567' AS DateTime), NULL, N'12th assert', 18, 30048, N'Le Trung', N'vuongletrunggg1@gmail.com', N'0334822321')
INSERT [dbo].[Order] ([PaymentMethod], [Status], [OrderDate], [DeliveryDate], [DeliveryAddress], [CustomerId], [Id], [Name], [Email], [Phone]) VALUES (0, 0, CAST(N'2024-05-18T16:24:39.090' AS DateTime), NULL, N'12th assert', 18, 30049, N'Le Trung', N'vuongletrunggg1@gmail.com', N'0334822321')
INSERT [dbo].[Order] ([PaymentMethod], [Status], [OrderDate], [DeliveryDate], [DeliveryAddress], [CustomerId], [Id], [Name], [Email], [Phone]) VALUES (0, 0, CAST(N'2024-05-18T16:48:22.410' AS DateTime), NULL, N'12th assert', 18, 30050, N'Le Trung', N'vuongletrunggg1@gmail.com', N'0334822321')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price], [TotalQuantity], [TotalPrice], [Status], [SizeId]) VALUES (30044, 10122, 1, CAST(1232500.00 AS Decimal(18, 2)), 1, CAST(1232500.00 AS Decimal(18, 2)), 0, 4)
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price], [TotalQuantity], [TotalPrice], [Status], [SizeId]) VALUES (30045, 10122, 1, CAST(1232500.00 AS Decimal(18, 2)), 1, CAST(1232500.00 AS Decimal(18, 2)), 0, 4)
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price], [TotalQuantity], [TotalPrice], [Status], [SizeId]) VALUES (30046, 10147, 1, CAST(5346500.00 AS Decimal(18, 2)), 1, CAST(5346500.00 AS Decimal(18, 2)), 0, 4)
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price], [TotalQuantity], [TotalPrice], [Status], [SizeId]) VALUES (30048, 10179, 1, CAST(2473500.00 AS Decimal(18, 2)), 1, CAST(2473500.00 AS Decimal(18, 2)), 0, 4)
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price], [TotalQuantity], [TotalPrice], [Status], [SizeId]) VALUES (30049, 10129, 1, CAST(1431000.00 AS Decimal(18, 2)), 1, CAST(1431000.00 AS Decimal(18, 2)), 0, 4)
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity], [Price], [TotalQuantity], [TotalPrice], [Status], [SizeId]) VALUES (30050, 10124, 1, CAST(1529100.00 AS Decimal(18, 2)), 1, CAST(1529100.00 AS Decimal(18, 2)), 0, 4)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10120, N'Bàn phím cơ AKKO MonsGeek MG75 Black & Cyan Akko V3 Cream Yellow switch', N'ban-phim-co-akko-monsgeek-mg75-black-cyan-akko-v3-cream-yellow-switch', N'Bàn phím cơ AKKO MonsGeek MG75 Black & Cyan Akko V3 Cream Yellow switch', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/akko-monsgeek-mg75-black-cyan-akko-1/ban-phim-co-monsgeek-mg75-black-cyan.jpg', CAST(1290000 AS Decimal(18, 0)), 15, CAST(1096500 AS Decimal(18, 0)), 39, CAST(N'2023-12-20T10:37:21.817' AS DateTime), CAST(N'2024-05-15T13:50:22.673' AS DateTime), 1, 10105, N'<p><strong>Th&ocirc;ng số kĩ thuật:</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thiết kế:</strong></td>
			<td>Layout 75%, 82 Ph&iacute;m</td>
		</tr>
		<tr>
			<td><strong>Kết nối:</strong></td>
			<td>USB Type-C to Type-A (d&acirc;y c&oacute; thể th&aacute;o rời)</td>
		</tr>
		<tr>
			<td><strong>Keycap:</strong></td>
			<td>PBT Double-Shot / Cherry profile</td>
		</tr>
		<tr>
			<td><strong>Loại switch:</strong></td>
			<td>AKKO switch v3 (Cream Blue / Cream Yellow)</td>
		</tr>
		<tr>
			<td><strong>Led:</strong></td>
			<td>Đơn sắc trắng</td>
		</tr>
		<tr>
			<td><strong>Hỗ trợ:&nbsp;</strong></td>
			<td>NKRO / Multimedia / Macro / Kh&oacute;a ph&iacute;m windows</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện:</strong></td>
			<td>1 s&aacute;ch hướng dẫn sử dụng + 1 d&acirc;y USB Type-C to USB + Keycap tặng k&egrave;m + Keypuller</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch:</strong></td>
			<td>Windows / MacOS / Linux<br />
			B&agrave;n ph&iacute;m AKKO khi kết nối với MacOS: (Ctrl -&gt; Control | Windows -&gt; Command | Alt -&gt; Option, Mojave OS trở l&ecirc;n sẽ điều chỉnh được thứ tự của c&aacute;c ph&iacute;m n&agrave;y)</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước:</strong></td>
			<td>333&times;143.5&times;32 mm</td>
		</tr>
	</tbody>
</table>
', CAST(890000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10122, N'Bàn phím cơ AKKO 3098 DS Matcha Red Bean Gateron Cap Switch', N'ban-phim-co-akko-3098-ds-matcha-red-bean-gateron-cap-switch', N'Bàn phím cơ AKKO 3098 DS Matcha Red Bean Gateron Cap Switch', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3098-ds-matcha-red-bean-gateron-cap-switch/ban-phim-co-akko-3098-ds-matcha-red-bean-01.jpg', CAST(1450000 AS Decimal(18, 0)), 15, CAST(1232500 AS Decimal(18, 0)), 39, CAST(N'2023-12-20T10:48:01.723' AS DateTime), CAST(N'2024-05-15T13:50:15.423' AS DateTime), 1, 10107, N'<h3><strong>TH&Ocirc;NG SỐ KĨ THUẬT &nbsp;</strong></h3>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>Thương hiệu</td>
			<td>Akko</td>
		</tr>
		<tr>
			<td>Bảo h&agrave;nh</td>
			<td>12 Th&aacute;ng</td>
		</tr>
		<tr>
			<td>Model</td>
			<td>3098 DS&nbsp;<a href="https://gearvn.com/collections/akko-matcha-series">Matcha</a>&nbsp;Red Bean</td>
		</tr>
		<tr>
			<td>M&agrave;u sắc</td>
			<td>Green + White</td>
		</tr>
		<tr>
			<td>Kết nối</td>
			<td>C&oacute; d&acirc;y</td>
		</tr>
		<tr>
			<td>Giao tiếp&nbsp;</td>
			<td>USB Type C c&oacute; thể th&aacute;o rời</td>
		</tr>
		<tr>
			<td>Kiểu d&aacute;ng</td>
			<td>Fullsize (98 ph&iacute;m)</td>
		</tr>
		<tr>
			<td>Loại b&agrave;n ph&iacute;m</td>
			<td>B&agrave;n ph&iacute;m cơ</td>
		</tr>
		<tr>
			<td>Switch</td>
			<td>Gateron Cap Yellow</td>
		</tr>
		<tr>
			<td>Keycap</td>
			<td>PBT Doubleshot</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước (WxDxH)</td>
			<td>382 x 134 x 40 (mm)</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>-</td>
		</tr>
		<tr>
			<td>Phụ kiện&nbsp;</td>
			<td>1 s&aacute;ch hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 20 keycap tặng k&egrave;m + 1 d&acirc;y c&aacute;p USB</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết b&agrave;n ph&iacute;m cơ&nbsp;AKKO 3098 DS Matcha Red Bean (Gateron Cap Yellow)</strong></h2>

<p><strong>B&agrave;n ph&iacute;m AKKO 3098 DS Matcha Red Bean (Gateron Cap Yellow)</strong>&nbsp;l&agrave; chiếc b&agrave;n ph&iacute;m cơ fullsize 98 ph&iacute;m. Với lớp skin cực đ&aacute;ng y&ecirc;u v&agrave; keycap chất lượng, 3098 DS Matcha Red Bean sẽ l&agrave; chiếc b&agrave;n ph&iacute;m cơ đ&aacute;ng mua từ nh&agrave; Akko.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-akko3098dsmatcharedbean-1_a29ff9bbf02b45338a10890479399cab_grande.jpg" /></p>

<h3><strong>Thiết kế &ldquo;matcha đậu đỏ&rdquo; của b&agrave;n ph&iacute;m cơ AKKO 3098 DS Matcha Red Bean (Gateron Cap Yellow)</strong></h3>

<p>B&agrave;n ph&iacute;m cơ&nbsp;<strong>AKKO 3098 DS Matcha Red Bean (Gateron Cap Yellow)</strong>&nbsp;sở hữu thiết kế đơn giản vốn c&oacute; tr&ecirc;n những sản phẩm b&agrave;n ph&iacute;m cơ trước đ&oacute; của Akko. Đem chủ đề về matcha đậu đỏ l&agrave;m lớp &aacute;o cho 3098 DS, chiếc b&agrave;n ph&iacute;m cơ từ Akko tr&ocirc;ng lại c&agrave;ng bắt mắt v&agrave; &ldquo;cưng&rdquo; đến lạ thường.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-akko3098dsmatcharedbean-2_4f64d1c1f50c4c6bb242a0dcaa9e3acc_grande.jpg" /></p>

<h3><strong>Switch Gateron Cap Yellow si&ecirc;u xịn</strong></h3>

<p>Được trang bị d&ograve;ng switch Gateron Cap Yellow c&ugrave;ng với Cherry profile, b&agrave;n ph&iacute;m cơ&nbsp;<strong>AKKO 3098 DS Matcha Red Bean (Gateron Cap Yellow)</strong>&nbsp;đem lại cảm gi&aacute;c g&otilde; ph&iacute;m thoải m&aacute;i với &acirc;m thanh của những chiếc&nbsp;<a href="https://gearvn.com/collections/ban-phim-co-gaming" title="bàn phím cơ">b&agrave;n ph&iacute;m cơ</a>&nbsp;kh&aacute;c.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-akko3098dsmatcharedbean-3_e948c6683ba14dd5a19ddefa16734c4e_grande.jpg" /></p>

<h3><strong>Keycap chất lượng</strong></h3>

<p>B&agrave;n ph&iacute;m cơ&nbsp;<strong>AKKO 3098 DS Matcha Red Bean (Gateron Cap Yellow)</strong>&nbsp;sử dụng keycap l&agrave;m từ nhựa PBT kết hợp với c&ocirc;ng nghệ in Doubleshot, tất cả đem đến cho 3098 DS Matcha Red Bean những ph&iacute;m bấm chất lượng cả về trải nghiệm v&agrave; độ bền.&nbsp;Ngo&agrave;i ra bạn sẽ được tặng k&egrave;m bộ 20 keycap cực cute cho bạn thoải m&aacute;i custom v&agrave; trang tr&iacute; th&ecirc;m cho chiếc b&agrave;n ph&iacute;m của m&igrave;nh.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-akko3098dsmatcharedbean-4_3c35f8adbb90402394b89f953355d64a_grande.jpg" /></p>
', CAST(1050000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10123, N'Bàn phím cơ AKKO 3108 RF Ocean Star Akko Switch V3 Cream Blue', N'ban-phim-co-akko-3108-rf-ocean-star-akko-switch-v3-cream-blue', N'Bàn phím cơ AKKO 3108 RF Ocean Star Akko Switch V3 Cream Blue', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3108-rf-ocean-star-2/aled_c5f0280d5dc349a69b472a0b39547ec2_a63e9c2a9a004328b903c55272fad89d_9df6843566f3436084e4febe046a1a73_1024x1024.jpg', CAST(1599000 AS Decimal(18, 0)), 15, CAST(1359150 AS Decimal(18, 0)), 39, CAST(N'2023-12-20T10:52:10.923' AS DateTime), CAST(N'2024-05-15T13:50:03.613' AS DateTime), 1, 10108, N'<h2><strong>Th&ocirc;ng số sản phẩm:</strong></h2>

<table border="1" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu</strong></td>
			<td>Akko</td>
		</tr>
		<tr>
			<td><strong>Thiết kế</strong></td>
			<td>Fullsize 108 ph&iacute;m</td>
		</tr>
		<tr>
			<td><strong>Kết nối</strong></td>
			<td>USB Type-C to Type-A (d&acirc;y c&oacute; thể th&aacute;o rời) hoặc kh&ocirc;ng d&acirc;y 2.4Ghz (sử dụng pin AAA)</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>440 x 140 x 41mm</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>~ 1.2 kg</td>
		</tr>
		<tr>
			<td><strong>Foam ti&ecirc;u &acirc;m PCB</strong></td>
			<td>T&iacute;ch hợp sẵn</td>
		</tr>
		<tr>
			<td><strong>Hỗ trợ</strong></td>
			<td>NKRO / Multimedia / Macro / Kh&oacute;a ph&iacute;m windows</td>
		</tr>
		<tr>
			<td><strong>Keycap</strong></td>
			<td>PBT Double-Shot, ASA profile</td>
		</tr>
		<tr>
			<td><strong>Switch</strong></td>
			<td>Akko Switch V3 ( Cream Yellow / Cream Blue )</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch</strong></td>
			<td>Windows / MacOS / Linux<br />
			B&agrave;n ph&iacute;m AKKO khi kết nối với MacOS: (Ctrl -&gt; Control | Windows -&gt; Command | Alt -&gt; Option, Mojave OS trở l&ecirc;n sẽ điều chỉnh được thứ tự của c&aacute;c ph&iacute;m n&agrave;y)</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện</strong></td>
			<td>1 s&aacute;ch hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 d&acirc;y c&aacute;p USB Type-C to USB + 2 pin AAA + Keycap tặng k&egrave;m</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; b&agrave;n ph&iacute;m AKKO 3108 RF Ocean Star Akko Switch V3</strong></h2>

<p>AKKO 3108 RF Ocean Star V3 d&ograve;ng&nbsp;b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh&nbsp;với nhiều t&iacute;nh năng nổi bật, tone m&agrave;u ấn tượng độc đ&aacute;o tạo n&ecirc;n sự tươi mới cho mọi kh&ocirc;ng gian l&agrave;m việc v&agrave; giải tr&iacute;. Thuộc Series 3108 đến từ AKKO, được thừa hưởng thiết kế Fullsize c&ugrave;ng cụm ph&iacute;m số numpad tiện lợi.&nbsp;</p>

<h3><strong>Thiết kế Fullsize tiện lợi với 108 ph&iacute;m bấm</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3108-rf-ocean-star_9ee2a60c2e9e40768aefc9431ca71f9b_grande.png" /></p>

<p>&nbsp;</p>

<p>AKKO 3108 RF Ocean Star V3 sở hữu thiết kế Fullsize với 108 ph&iacute;m bấm. Với cụm ph&iacute;m số numpad tiện lợi đ&acirc;y sẽ l&agrave; d&ograve;ng sản phẩm&nbsp;b&agrave;n ph&iacute;m cơ&nbsp;rất ph&ugrave; hợp cho người d&ugrave;ng thường xuy&ecirc;n nhập liệu, soạn thảo văn bản,...</p>

<p><img alt="GEARVN-ban-phim-co-akko-3108-rf-ocean-star" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3108-rf-ocean-star-3_fc41455ccf8348bea5db8e338cd71c05_grande.png" /></p>

<p>Để tr&aacute;nh ảnh hưởng khi chơi game hoặc mất tập trung khi l&agrave;m việc d&ograve;ng AKKO c&ograve;n trang bị cụm ph&iacute;m multimedia tiện lợi với t&iacute;nh năng dừng/ph&aacute;t nhạc, tăng giảm &acirc;m lượng.</p>

<h3><strong>T&ocirc;ng m&agrave;u Ocean Star tươi mới, độc đ&aacute;o</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-ban-phim-co-akko-3108-rf-ocean-star" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3108-rf-ocean-star-1_27efe236b31241a9bec2f56f685d49e0_grande.png" /></p>

<p>&nbsp;</p>

<p>Chuy&ecirc;n mang đến thị trường&nbsp;Gaming Gear&nbsp;những d&ograve;ng sản phẩm chất lượng với nhiều tone m&agrave;u s&aacute;ng tạo độc đ&aacute;o. Phối m&agrave;u hết sức độc đ&aacute;o tạo sự tươi mới qua những gam m&agrave;u lạnh l&agrave;m chủ đạo. Sự kết hợp h&agrave;i h&ograve;a giữa những gam m&agrave;u xanh đen, xanh dương v&agrave; trắng tạo n&ecirc;n tổng thể v&ocirc; c&ugrave;ng đẹp mắt, ấn tượng.</p>

<h3><strong>AKKO switch v3 kết hợp c&ugrave;ng foam ti&ecirc;u &acirc;m PCB&nbsp;</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-ban-phim-co-akko-3108-rf-ocean-star" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3108-rf-ocean-star-2_83a3b04091fd472a94fbc946ddaefc05_grande.png" /></p>

<p>&nbsp;</p>

<p>Để người chơi c&oacute; những cảm gi&aacute;c g&otilde; &ecirc;m &aacute;i, AKKO 3108 RF&nbsp;được sử dụng bộ switch độc quyền&nbsp;AKKO&nbsp;switch v3 độc quyền kết hợp c&ugrave;ng lớp Foam ti&ecirc;u &acirc;m PCB mang đến sự phấn khởi cho mỗi lần ấn ph&iacute;m.</p>

<p><img alt="GEARVN-ban-phim-co-akko-3108-rf-ocean-star" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3108-rf-ocean-star-4_44e7b187f0e0422c991d6d8e2793916a_grande.png" /></p>

<p>Kh&ocirc;ng dừng lại ở đ&oacute;, b&agrave;n ph&iacute;m AKKO c&ograve;n được trang bị l&ecirc;n đến hai loại Switch kh&aacute;c nhau Cream Yellow v&agrave; Cream Blue t&ugrave;y v&agrave;o nhu cầu sử dụng m&agrave; c&oacute; thể chọn c&ocirc;ng tắc cơ ph&ugrave; hợp. Hiện b&agrave;n ph&iacute;m đang c&oacute; tr&ecirc;n kệ tại c&aacute;c Showroom của GEARVN tr&ecirc;n to&agrave;n quốc h&atilde;y đến v&agrave;&nbsp;test b&agrave;n ph&iacute;m&nbsp;nh&eacute;!</p>

<h3><strong>Keycap PBT Double-Shot, ASA profile</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-ban-phim-co-akko-3108-rf-ocean-star" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3108-rf-ocean-star-7_f89c33a48e6d434b8e1452cd51536765_grande.png" /></p>

<p>&nbsp;</p>

<p>Bộ keycaps với chất liệu cao cấp, chống phai m&agrave;u v&agrave; b&aacute;m v&acirc;n tay khi sử dụng với tần suất cao. Sở hữu ADN của những d&ograve;ng Gaming Gear đến từ AKKO, bộ keycaps AKKO với tone m&agrave;u nhẹ nh&agrave;ng sang trọng gi&uacute;p chiếc b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh của bạn th&ecirc;m phần ấn tượng độc đ&aacute;o.</p>

<p><img alt="GEARVN-ban-phim-co-akko-3108-rf-ocean-star" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3108-rf-ocean-star-5_b59ee85618e24dceaf2010d365351b8a_grande.png" /></p>

<p>Đặc biệt, bộ keycaps PBT khi kết hợp với c&ocirc;ng nghệ in hiện đại sẽ gi&uacute;p cho c&aacute;c k&yacute; tự đẹp, sắc sảo hơn khi hợp c&ugrave;ng nhiều thiết bị kh&aacute;c như&nbsp;chuột m&aacute;y t&iacute;nh, tai nghe tạo n&ecirc;n kh&ocirc;ng gian l&agrave;m việc v&agrave; giải tr&iacute; ấn tượng.</p>

<h3><strong>Hỗ trợ đa kết nối tương th&iacute;ch với nhiều nền tảng kh&aacute;c nhau</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-ban-phim-co-akko-3108-rf-ocean-star" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3108-rf-ocean-star-6_8bae478aab37481fb6cb9735716dd641_grande.png" /></p>

<p>&nbsp;</p>

<p>Khả năng tương th&iacute;ch cao, hỗ trợ đa kết nối từ c&oacute; d&acirc;y cho đến kh&ocirc;ng d&acirc;y gi&uacute;p người chơi c&oacute; thể sử dụng b&agrave;n ph&iacute;m ở bất kỳ đ&acirc;u. Với t&iacute;nh năng kh&ocirc;ng d&acirc;y cho ph&eacute;p phạm vi kết nối l&ecirc;n đến 10m c&ugrave;ng với một vi&ecirc;n pin AAA c&oacute; thể sử dụng&nbsp;b&agrave;n ph&iacute;m kh&ocirc;ng d&acirc;y&nbsp;l&ecirc;n đến 5 th&aacute;ng.&nbsp;</p>
', CAST(1199000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10124, N'Bàn phím cơ AKKO 3087 RF One Piece Luffy Akko V3 Cream Yellow switch', N'ban-phim-co-akko-3087-rf-one-piece-luffy-akko-v3-cream-yellow-switch', N'Bàn phím cơ AKKO 3087 RF One Piece Luffy Akko V3 Cream Yellow switch', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3087-rf-one-piece-luffy-2/banphim1.jpg', CAST(1699000 AS Decimal(18, 0)), 10, CAST(1529100 AS Decimal(18, 0)), 39, CAST(N'2023-12-20T10:56:41.240' AS DateTime), CAST(N'2024-05-15T13:49:54.563' AS DateTime), 1, 10109, N'<h2><strong>Th&ocirc;ng số kỹ thuật:&nbsp;</strong></h2>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu</strong></td>
			<td>Akko&nbsp;</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>&nbsp;RF One Piece &ndash; Luffy</td>
		</tr>
		<tr>
			<td><strong>Thiết kế</strong></td>
			<td>TKL 87 ph&iacute;m</td>
		</tr>
		<tr>
			<td><strong>Kết nối</strong></td>
			<td>USB Type-C to Type-A (d&acirc;y c&oacute; thể th&aacute;o rời) hoặc kh&ocirc;ng d&acirc;y 2.4Ghz (sử dụng pin AAA)</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước&nbsp;</strong></td>
			<td>360 x 140 x 40mm</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>~ 0.95 kg</td>
		</tr>
		<tr>
			<td><strong>Foam ti&ecirc;u &acirc;m PCB</strong></td>
			<td>T&iacute;ch hợp sẵn</td>
		</tr>
		<tr>
			<td><strong>Hỗ trợ</strong></td>
			<td>NKRO / Multimedia / Macro / Kh&oacute;a ph&iacute;m windows</td>
		</tr>
		<tr>
			<td><strong>Keycap</strong></td>
			<td>PBT Dye-Subbed, OEM profile</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch</strong></td>
			<td>Windows / MacOS / Linux<br />
			B&agrave;n ph&iacute;m AKKO khi kết nối với MacOS: (Ctrl -&gt; Control | Windows -&gt; Command | Alt -&gt; Option, Mojave OS trở l&ecirc;n sẽ điều chỉnh được thứ tự của c&aacute;c ph&iacute;m n&agrave;y)</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện</strong></td>
			<td>1 s&aacute;ch hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 d&acirc;y c&aacute;p USB Type-C to USB + 2 pin AAA + Keycap tặng k&egrave;m</td>
		</tr>
	</tbody>
</table>
', CAST(1250000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10125, N'BÀN PHÍM CƠ AKKO 3087 PLUS PRUNUS LANNESIANA AKKO CS WINE RED SWITCH', N'ban-phim-co-akko-3087-plus-prunus-lannesiana-akko-cs-wine-red-switch', N'BÀN PHÍM CƠ AKKO 3087 PLUS PRUNUS LANNESIANA AKKO CS WINE RED SWITCH

', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3087-plus-prunus-lannesiana-akko-cs-wine-red-switch/ban-phim-co-akko-3087-plus-prunus-lannesiana-01-ava.png', CAST(1090000 AS Decimal(18, 0)), 10, CAST(981000 AS Decimal(18, 0)), 39, CAST(N'2023-12-20T11:00:22.457' AS DateTime), CAST(N'2024-05-15T13:49:04.680' AS DateTime), 1, 10110, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết b&agrave;n ph&iacute;m cơ AKKO 3087 Plus Prunus Lannesiana</strong></h2>

<p>B&agrave;n ph&iacute;m cơ&nbsp;l&agrave; c&ocirc;ng cụ sử dụng hằng ng&agrave;y c&ugrave;ng d&agrave;n m&aacute;y t&iacute;nh, mang nhiệm vụ truyền đạt y&ecirc;u cầu của người d&ugrave;ng l&ecirc;n hệ thống. V&agrave; AKKO 3087 Plus Prunus Lannesiana được thiết kế để thực hiện tốt nhiệm vụ đ&oacute; cho người d&ugrave;ng c&oacute; ph&uacute;t gi&acirc;y thoải m&aacute;i hơn khi g&otilde; ph&iacute;m.&nbsp;</p>

<p><img alt="GEARVN Bàn phím cơ AKKO 3087 Plus Prunus Lannesiana" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3087-plus-prunus-lannesiana-1_1bf4ad4c18d644cdb63d090811919ab4.png" /></p>

<h3><strong>Thiết kế TKL nhỏ gọn</strong></h3>

<p>B&agrave;n ph&iacute;m AKKO&nbsp;3087 Plus Prunus Lannesiana c&oacute; thiết kế đơn giản với phần case được bao phủ bởi t&ocirc;ng m&agrave;u trắng kết hợp c&ugrave;ng keycaps m&agrave;u hồng tươi s&aacute;ng. Kiểu d&aacute;ng TKL 87 ph&iacute;m nhỏ gọn được giảm bớt d&atilde;y ph&iacute;m numpad b&ecirc;n phải. Việc n&agrave;y tối ưu được diện t&iacute;ch khi đặt b&agrave;n ph&iacute;m tr&ecirc;n b&agrave;n l&agrave;m việc, đồng thời r&uacute;t ngắn khoảng c&aacute;ch khi người d&ugrave;ng thao t&aacute;c c&ugrave;ng chuột m&aacute;y t&iacute;nh.&nbsp;</p>

<p><img alt="GEARVN Bàn phím cơ AKKO 3087 Plus Prunus Lannesiana" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3087-plus-prunus-lannesiana-2_9796664389654d52885e171a61eb393b.png" /></p>

<h3><strong>Keycaps PBT Double-Shot</strong></h3>

<p>Keycaps&nbsp;l&agrave; bộ phận chịu nhiều t&aacute;c động lực nhất từ c&aacute;c đầu ng&oacute;n tay, vậy n&ecirc;n AKKO đ&atilde; lựa chọn chất liệu tốt cho từng con ph&iacute;m của họ. 3087 Plus Prunus Lannesiana sở hữu bộ keycaps được l&agrave;m bằng nhựa PBT si&ecirc;u bền bỉ với độ cứng c&aacute;p cao. C&ugrave;ng với đ&oacute; l&agrave; c&ocirc;ng nghệ in 2 lớp Double-Shot với từng k&yacute; tự sắc n&eacute;t với độ b&aacute;m si&ecirc;u bền theo thời gian.&nbsp;</p>

<p><img alt="GEARVN Bàn phím cơ AKKO 3087 Plus Prunus Lannesiana" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3087-plus-prunus-lannesiana-3_02b2ab6c2f8242848c332f6f953aacd2.png" /></p>

<h3><strong>Switch phản hồi nhanh&nbsp;</strong></h3>

<p>B&agrave;n ph&iacute;m 3087 Plus Prunus Lannesiana sử dụng Akko CS switch với bi&ecirc;n độ l&ograve; xo d&agrave;y cho kết quả phản hồi mượt m&agrave;. Độ nảy ph&iacute;m nhanh ch&oacute;ng gi&uacute;p mọi thao t&aacute;c trở n&ecirc;n ch&iacute;nh x&aacute;c v&agrave; thoải m&aacute;i hơn trong mọi h&agrave;nh tr&igrave;nh g&otilde; ph&iacute;m. C&oacute; 2 loại switch l&agrave; Wine Red (Linear) v&agrave; Wine White (Tactile) để lựa chọn theo cảm gi&aacute;c nhấn của bản th&acirc;n.&nbsp;</p>

<p><img alt="GEARVN Bàn phím cơ AKKO 3087 Plus Prunus Lannesiana" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3087-plus-prunus-lannesiana-4_c78551872b954500aa33af1f9830ddb1.png" /></p>

<h3><strong>Kết nối d&acirc;y th&aacute;o rời tr&ecirc;n b&agrave;n ph&iacute;m AKKO 3087 Plus Prunus Lannesiana</strong></h3>

<p>B&agrave;n ph&iacute;m AKKO 3087 Plus Prunus Lannesiana sử dụng đầu kết nối d&acirc;y Type C to Type A để hoạt động. Đường truyền lu&ocirc;n đảm bảo tốt trong qu&aacute; tr&igrave;nh sử dụng hạn chế độ trễ ngo&agrave;i mong muốn khi đ&aacute;nh m&aacute;y hay chơi game tr&ecirc;n&nbsp;b&agrave;n ph&iacute;m 1 đến 2 triệu&nbsp;n&agrave;y.&nbsp;</p>

<p><img alt="GEARVN Bàn phím cơ AKKO 3087 Plus Prunus Lannesiana" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3087-plus-prunus-lannesiana-5_205b358813e545949a035a2645abcfc1.png" /></p>
', CAST(750000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10129, N'Bàn phím cơ AKKO MonsGeek MG108 Black&Pink Akko Switch V3 Cream Blue', N'ban-phim-co-akko-monsgeek-mg108-black-pink-akko-switch-v3-cream-blue', N'Bàn phím cơ AKKO MonsGeek MG108 Black&Pink Akko Switch V3 Cream Blue', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/monsgeek-mg108-black-pink-2/k-10_f5d39b65431049bd89960928c28166f0_9824417f07c445cf94a78c94760aa052_2c2c98e8f3ed423b8a71ceeeef3bd7fa_1024x1024.jpg', CAST(1590000 AS Decimal(18, 0)), 10, CAST(1431000 AS Decimal(18, 0)), 41, CAST(N'2024-05-15T15:45:06.407' AS DateTime), NULL, 1, 10115, N'<p><strong>Th&ocirc;ng số kĩ thuật:</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thiết kế:</strong></td>
			<td>Fullsize, 108 ph&iacute;m</td>
		</tr>
		<tr>
			<td><strong>Kết nối:</strong></td>
			<td>USB Type-C to Type-A (d&acirc;y c&oacute; thể th&aacute;o rời)</td>
		</tr>
		<tr>
			<td><strong>Foam ti&ecirc;u &acirc;m PCB EVA:</strong></td>
			<td>T&iacute;ch hợp sẵn</td>
		</tr>
		<tr>
			<td><strong>Keycap:</strong></td>
			<td>PBT Double-Shot, ASA profile</td>
		</tr>
		<tr>
			<td><strong>Loại switch:</strong></td>
			<td>Akko switch v3 (Cream Blue / Cream Yellow) v&agrave; AKKO v3 stab đ&atilde; được lube v&agrave; tinh chỉnh sẵn</td>
		</tr>
		<tr>
			<td><strong>Led:</strong></td>
			<td>Nền RGB / PCBA 1.6mm</td>
		</tr>
		<tr>
			<td><strong>Hỗ trợ:&nbsp;</strong></td>
			<td>NKRO / Multimedia / Macro / Kh&oacute;a ph&iacute;m windows</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện:</strong></td>
			<td>1 s&aacute;ch hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 d&acirc;y c&aacute;p USB Type-C to USB + 20 Keycap tặng k&egrave;m</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch:</strong></td>
			<td>Windows / MacOS / Linux<br />
			B&agrave;n ph&iacute;m AKKO khi kết nối với MacOS: (Ctrl -&gt; Control | Windows -&gt; Command | Alt -&gt; Option, Mojave OS trở l&ecirc;n sẽ điều chỉnh được thứ tự của c&aacute;c ph&iacute;m n&agrave;y)</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước:</strong></td>
			<td>445.5 x 137.5 x 41.8mm</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng:</strong></td>
			<td>~ 1.15 kg</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết b&agrave;n ph&iacute;m AKKO MonsGeek MG108 Black&amp;Pink</strong></h2>

<p>AKKO MonsGeek MG108 Black&amp;Pink l&agrave; d&ograve;ng&nbsp;<a href="https://gearvn.com/pages/ban-phim-may-tinh" target="_blank">b&agrave;n ph&iacute;m cơ</a>&nbsp;với thiết kế Fullsize 108 ph&iacute;m bấm tiện lợi, t&ocirc;ng m&agrave;u nổi bật l&agrave;m&nbsp;kh&ocirc;ng gian l&agrave;m việc giải tr&iacute; trở n&ecirc;n sinh động v&agrave; tăng th&ecirc;m phấn khởi khi chơi game. Hứa hẹn AKKO MonsGeek MG108 sẽ l&agrave; d&ograve;ng b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh mang đến cho bạn những trải nghiệm tuyệt vời với&nbsp;gi&aacute; th&agrave;nh hấp dẫn ph&ugrave; hợp với mọi đối tượng.</p>

<h3><strong>Thiết kế Fullsize 108 ph&iacute;m tiện lợi</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-ban-phim-co-akko-monsgeek-mg108-black-pink" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-monsgeek-mg108-black-pink_8da6bdc5e8904712b977be9e0f3e09ef_grande.png" /></p>

<p>&nbsp;</p>

<p>Sở hữu thiết kế Fullsize với layout 108 ph&iacute;m bấm tiện lợi, th&acirc;n thiện c&ugrave;ng cụm ph&iacute;m bấm Numpad ph&ugrave; hợp với&nbsp;người d&ugrave;ng thường xuy&ecirc;n nhập liệu, soạn thảo văn bản,...Bạn ho&agrave;n to&agrave;n c&oacute; thể đặt chiếc&nbsp;<a href="https://gearvn.com/collections/ban-phim-may-tinh" target="_blank">b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh</a>&nbsp;mới nhất từ AKKO trong mọi kh&ocirc;ng gian để tăng th&ecirc;m phần chuy&ecirc;n nghiệp, sang trọng cho kh&ocirc;ng gian l&agrave;m việc v&agrave; giải tr&iacute;.</p>

<h3><strong>T&ocirc;ng m&agrave;u Black&amp;Pink nổi bật</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-ban-phim-co-akko-monsgeek-mg108-black-pink" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-monsgeek-mg108-black-pink-1_691fade6071745179ae8a551f66d1bad_grande.png" /></p>

<p>&nbsp;</p>

<p>Phối m&agrave;u độc đ&aacute;o, ấn tượng ch&iacute;nh l&agrave; những điểm nổi bật tr&ecirc;n những d&ograve;ng&nbsp;<a href="https://gearvn.com/collections/ban-phim-akko" target="_blank">b&agrave;n ph&iacute;m AKKO</a>. Sở hữu t&ocirc;ng m&agrave;u nổi bật với sự kết hợp độc đ&aacute;o giữa hồng v&agrave; đen tạo n&ecirc;n sự ph&aacute; c&aacute;ch tr&ecirc;n chiếc b&agrave;n ph&iacute;m. Bạn c&oacute; thể kết hợp với nhiều thiết bị Gaming Gear kh&aacute;c gi&uacute;p cho b&agrave;n l&agrave;m việc trở n&ecirc;n nổi bật v&agrave; tạo được ấn tượng.</p>

<h3><strong>Sử dụng Switch độc quyền Akko switch v3</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-ban-phim-co-akko-monsgeek-mg108-black-pink" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-monsgeek-mg108-black-pink-4_16ec9baf97a04049ac448174cd5218b4_grande.png" /></p>

<p>&nbsp;</p>

<p>B&ecirc;n cạnh việc sở hữu thiết kế Fullsize c&ugrave;ng t&ocirc;ng m&agrave;u nổi bật, b&agrave;n ph&iacute;m AKKO MonsGeek MG108 Black&amp;Pink c&ograve;n được trang bị bộ Switch độc quyền Akko switch v3 mang đ&ecirc;́n cảm giác nh&acirc;́n cực đã, độ đ&agrave;n hồi v&agrave; độ nhạy cực tốt. Bạn c&oacute; thể t&ugrave;y chọn d&ograve;ng switch theo sở th&iacute;ch khi với nhiều phi&ecirc;n bản (Cream Blue / Cream Yellow) ph&ugrave; hợp với nhu cầu sử dụng.</p>

<h3><strong>LED nền RGB độc đ&aacute;o</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-ban-phim-co-akko-monsgeek-mg108-black-pink" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-monsgeek-mg108-black-pink-3_c252d414350046799151ac053b4ac7c9_grande.png" /></p>

<p>&nbsp;</p>

<p>Để tăng th&ecirc;m phần độc đ&aacute;o cho chiếc b&agrave;n ph&iacute;m, AKKO MonsGeek MG108 Black&amp;Pink được t&iacute;ch hợp đ&egrave;n LED RGB tr&ecirc;n nền đen tăng th&ecirc;m phần&nbsp;độc đ&aacute;o, tăng sức&nbsp;thu h&uacute;t về mặt ngoại h&igrave;nh. Người chơi ho&agrave;n to&agrave;n c&oacute; thể kết hợp với nhiều phụ kiện kh&aacute;c từ&nbsp;<a href="https://gearvn.com/pages/chuot-may-tinh" target="_blank">chuột m&aacute;y t&iacute;nh</a>, tai nghe cho đến phụ kiện kh&aacute;c để tạo n&ecirc;n kh&ocirc;ng gian đầy sắc m&agrave;u RGB đẹp mắt.</p>

<h3><strong>Khả năng tương th&iacute;ch cao</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-ban-phim-co-akko-monsgeek-mg108-black-pink" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-monsgeek-mg108-black-pink-5_ed0ed6ee9cb4472785b9887004245536_grande.png" /></p>

<p>&nbsp;</p>

<p>Bạn c&oacute; thể cất gọn trong balo v&agrave; sử dụng ở bất kỳ đ&acirc;u nhờ v&agrave;o khả năng tương th&iacute;ch cao, kết nối dễ d&agrave;ng th&ocirc;ng qua c&aacute;p Type-C to Type-A c&oacute; thể th&aacute;o rời. Người d&ugrave;ng c&oacute; thể kết nối v&agrave; sử dụng tr&ecirc;n những d&ograve;ng m&aacute;y t&iacute;nh chạy hệ điều h&agrave;nh Windows / MacOS / Linux.</p>
', CAST(1050000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10130, N'Bàn phím cơ AKKO 3087 v2 DS Horizon Akko Switch V3 Cream Yellow', N'ban-phim-co-akko-3087-v2-ds-horizon-akko-switch-v3-cream-yellow', N'Bàn phím cơ AKKO 3087 v2 DS Horizon Akko Switch V3 Cream Yellow', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3087-v2-ds-horizon-akko-switch-v3-cream-yellow/1_809ff4885dd14c3298cef146d6837abe_1024x1024.jpg', CAST(1399000 AS Decimal(18, 0)), 7, CAST(1301070 AS Decimal(18, 0)), 41, CAST(N'2024-05-15T15:47:21.963' AS DateTime), NULL, 1, 10116, N'<h2><strong>Th&ocirc;ng số sản phẩm:</strong></h2>

<table border="1" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu</strong></td>
			<td>Akko</td>
		</tr>
		<tr>
			<td><strong>Kiểu b&agrave;n ph&iacute;m</strong></td>
			<td>Fullsize (87 ph&iacute;m)</td>
		</tr>
		<tr>
			<td><strong>Kết nối</strong></td>
			<td>USB Type-C, c&oacute; thể th&aacute;o rời</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>360 x 140 x 40mm</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>~0.95 kg</td>
		</tr>
		<tr>
			<td><strong>Hỗ trợ</strong></td>
			<td>NKRO / Multimedia / Macro / Kh&oacute;a ph&iacute;m windows</td>
		</tr>
		<tr>
			<td><strong>Keycap</strong></td>
			<td>PBT Dye-Subbed, OEM Profile</td>
		</tr>
		<tr>
			<td><strong>Switch</strong></td>
			<td>Cream Yellow Akko switch v2</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch</strong></td>
			<td>Windows / MacOS / Linux<br />
			B&agrave;n ph&iacute;m AKKO khi kết nối với MacOS: (Ctrl -&gt; Control | Windows -&gt; Command | Alt -&gt; Option, Mojave OS trở l&ecirc;n sẽ điều chỉnh được thứ tự của c&aacute;c ph&iacute;m n&agrave;y)</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện</strong></td>
			<td>1 s&aacute;ch hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 d&acirc;y c&aacute;p USB Type-C to USB</td>
		</tr>
	</tbody>
</table>
', CAST(1199000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10131, N'Bàn phím cơ AKKO 3108 Plus Prunus Lannesiana Akko CS Wine White switch', N'ban-phim-co-akko-3108-plus-prunus-lannesiana-akko-cs-wine-white-switch', N'Bàn phím cơ AKKO 3108 Plus Prunus Lannesiana Akko CS Wine White switch', N'/DataManagement/Images/Ban%20Phim%20Co/Akko/3108-plus-prunus-lannesiana-akko-cs-wine-white-switch/akko-3108-plus-prunus-lannesiana-01.jpg', CAST(1590000 AS Decimal(18, 0)), 15, CAST(1351500 AS Decimal(18, 0)), 41, CAST(N'2024-05-15T15:49:14.537' AS DateTime), NULL, 1, 10117, N'<h2><strong>Th&ocirc;ng số sản phẩm:</strong></h2>

<table border="1" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu</strong></td>
			<td>Akko</td>
		</tr>
		<tr>
			<td><strong>Kiểu b&agrave;n ph&iacute;m</strong></td>
			<td>Fullsize (108 ph&iacute;m)</td>
		</tr>
		<tr>
			<td><strong>Kết nối</strong></td>
			<td>USB Type-C to Type-A (d&acirc;y c&oacute; thể th&aacute;o rời)</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>440 x 140 x 40mm</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>~1.2 kg</td>
		</tr>
		<tr>
			<td><strong>Foam ti&ecirc;u &acirc;m PCB</strong></td>
			<td>T&iacute;ch hợp sẵn</td>
		</tr>
		<tr>
			<td><strong>Hỗ trợ</strong></td>
			<td>NKRO / Multimedia / Macro / Kh&oacute;a ph&iacute;m windows</td>
		</tr>
		<tr>
			<td><strong>Keycap</strong></td>
			<td>PBT Double-Shot, Cherry profile</td>
		</tr>
		<tr>
			<td><strong>Switch</strong></td>
			<td>Akko CS Wine White switch</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch</strong></td>
			<td>Windows / MacOS / Linux<br />
			B&agrave;n ph&iacute;m AKKO khi kết nối với MacOS: (Ctrl -&gt; Control | Windows -&gt; Command | Alt -&gt; Option, Mojave OS trở l&ecirc;n sẽ điều chỉnh được thứ tự của c&aacute;c ph&iacute;m n&agrave;y)</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện</strong></td>
			<td>1 s&aacute;ch hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 d&acirc;y c&aacute;p USB Type-C to USB + Keycap tặng k&egrave;m</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết b&agrave;n ph&iacute;m cơ AKKO 3108 Plus Prunus Lannesiana</strong></h2>

<p>B&agrave;n ph&iacute;m AKKO&nbsp;đ&atilde; qu&aacute; nổi tiếng với cộng đồng người d&ugrave;ng. Thiết kế thu h&uacute;t, mẫu m&atilde; đa dạng v&agrave; h&atilde;ng kh&ocirc;ng ngừng n&acirc;ng cấp sản phẩm để mang đến trải nghiệm tốt nhất cho người d&ugrave;ng. AKKO 3108 Plus Prunus Lannesiana một lần nữa chiếm trọn spotlight ph&acirc;n kh&uacute;c&nbsp;b&agrave;n ph&iacute;m cơ gi&aacute; rẻ, chất lượng.</p>

<p><img alt="GEARVN - Bàn phím cơ AKKO 3108 Plus Prunus Lannesiana" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3108-plus-prunus-lannesiana-1_cdc4cfae60d34ff785d6652edf4ecc3d.png" /></p>

<h3><strong>Thiết kế&nbsp;AKKO 3108 Plus Prunus Lannesiana hiện đại</strong></h3>

<p>B&agrave;n ph&iacute;m cơ AKKO 3108 Plus Prunus Lannesiana sở hữu t&ocirc;ng trắng hồng si&ecirc;u nịnh mắt. Sự kết hợp ho&agrave;n hảo&nbsp;giữa t&ocirc;ng trắng v&agrave; hồng&nbsp;khiến b&agrave;n ph&iacute;m tr&ocirc;ng hiện đại v&agrave; cực kỳ bắt trend nhưng lại v&ocirc; c&ugrave;ng thanh lịch v&agrave; thu h&uacute;t.</p>

<p><img alt="GEARVN - Bàn phím cơ AKKO 3108 Plus Prunus Lannesiana" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3108-plus-prunus-lannesiana-5_3a8cda0640ce4eda8b69261b17922db6.png" /></p>

<p>Case b&agrave;n ph&iacute;m được ho&agrave;n thiện bằng chất liệu nhựa cao cấp gi&uacute;p tổng thể b&agrave;n ph&iacute;m chắc chắn v&agrave; cứng c&aacute;p. Kiểu d&aacute;ng b&agrave;n ph&iacute;m Full size sẽ gi&uacute;p bạn thực hiện đầy đủ mọi nhu cầu từ đ&aacute;nh m&aacute;y, nhập liệu đến viết code.&nbsp;</p>

<h3><strong>Keycap v&agrave; switch chất lượng cao</strong></h3>

<p>AKKO 3108 Plus Prunus Lannesiana được trang bị bộ&nbsp;keycap PBT&nbsp;Double-shot, Cherry profile mang đến trải nghiệm g&otilde; ph&iacute;m mượt v&agrave; &ecirc;m &aacute;i. C&ocirc;ng nghệ in Double-shot gi&uacute;p c&aacute;c k&iacute; tự tr&ecirc;n b&agrave;n ph&iacute;m được r&otilde; n&eacute;t v&agrave; đảm bảo được độ bền trong qu&aacute; tr&igrave;nh sử dụng.</p>

<p><img alt="GEARVN - Bàn phím cơ AKKO 3108 Plus Prunus Lannesiana" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3108-plus-prunus-lannesiana-3_ad43e387e5a64e13a182e0209f77bebf.png" /></p>

<p>B&agrave;n ph&iacute;m đi k&egrave;m với AKKO CS Switch chất lượng cao, kết hợp với bộ foam ti&ecirc;u &acirc;m PCB gi&uacute;p &acirc;m thanh ph&aacute;t ra &ecirc;m tai v&agrave; hạn chế g&acirc;y tiếng ồn kh&oacute; chịu cho những người xung quanh.</p>

<h3><strong>Khả năng tương th&iacute;ch đa dạng</strong></h3>

<p>Kết nối tr&ecirc;n&nbsp;AKKO 3108 Plus Prunus Lannesiana l&agrave; kiểu kết nối c&oacute; d&acirc;y, đặc biệt l&agrave; phần d&acirc;y c&oacute; thể th&aacute;o rời gi&uacute;p bạn dễ d&agrave;ng th&aacute;o, lắp v&agrave; mang b&agrave;n ph&iacute;m di chuyển đến bất kỳ đ&acirc;u.</p>

<p><img alt="GEARVN - Bàn phím cơ AKKO 3108 Plus Prunus Lannesiana" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3108-plus-prunus-lannesiana-6_8caa7ac6f2c5408d8cd1b4dcb1b42260.png" /></p>

<p>B&ecirc;n cạnh đ&oacute;, b&agrave;n ph&iacute;m cũng tương th&iacute;ch với kh&aacute; nhiều hệ điều h&agrave;nh th&ocirc;ng dụng như Windows, MacOS v&agrave; Linux. Bạn c&oacute; thể thoải m&aacute;i sử dụng b&agrave;n ph&iacute;m với bất kỳ hệ thống m&aacute;y t&iacute;nh n&agrave;o.</p>
', CAST(1149000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10132, N'Bàn phím cơ Corsair K100 RGB Cherry MX Speed (CH-912A014-NA)', N'ban-phim-co-corsair-k100-rgb-cherry-mx-speed-ch-912a014-na-', N'Bàn phím cơ Corsair K100 RGB Cherry MX Speed (CH-912A014-NA)', N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k100-rgb-cherry-mx-speed-ch-912a014-na/phim_2ceafcd3b71942409b4724616258c73b_d44aa7fb2a70454d99b01bc9c1117f4f_030600be83d043258c9998e4edef6924_1024x1024.png', CAST(5290000 AS Decimal(18, 0)), 10, CAST(4761000 AS Decimal(18, 0)), 42, CAST(N'2024-05-15T16:04:40.800' AS DateTime), NULL, 1, 10118, N'<h2><strong>TH&Ocirc;NG SỐ KĨ THUẬT</strong></h2>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>Kết nối:</td>
			<td>USB</td>
		</tr>
		<tr>
			<td>Kiểu d&aacute;ng:</td>
			<td>FULL SIZE 111 Ph&iacute;m</td>
		</tr>
		<tr>
			<td>Loại b&agrave;n ph&iacute;m:</td>
			<td>B&agrave;n ph&iacute;m cơ</td>
		</tr>
		<tr>
			<td>Switch:</td>
			<td>Cherry MX Speed</td>
		</tr>
		<tr>
			<td>Keycap:</td>
			<td>Keycap PBT Doubleshot</td>
		</tr>
		<tr>
			<td>Đ&egrave;n LED:</td>
			<td>LED RGB 16.8 triệu m&agrave;u th&ocirc;ng qua ICUE</td>
		</tr>
		<tr>
			<td>Phụ kiện:</td>
			<td>K&ecirc; tay nam ch&acirc;m, Keycap Puller, T&agrave;i liệu hướng dẫn sử dụng</td>
		</tr>
		<tr>
			<td>T&iacute;nh Năng:</td>
			<td>6 ph&iacute;m macro truy cập nhanh ứng dung của Elgato Stream Deck,&nbsp;Anti-Ghosting, ICUE</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; B&agrave;n ph&iacute;m cơ gaming Corsair K100 RGB</strong></h2>

<p>B&agrave;n ph&iacute;m cơ gaming&nbsp;Corsair K100 RGB sở hữu bộ khung&nbsp;b&agrave;n ph&iacute;m&nbsp;bằng chất liệu kim loại, bề mặt được phủ một lớp nh&ocirc;m phay xước gia c&ocirc;ng kh&eacute;o l&eacute;o v&agrave; tinh tế &ocirc;m vừa kh&iacute;t c&aacute;c ch&acirc;n switch, tạo cảm gi&aacute;c vừa vặn v&agrave; chắc chắn, bảo vệ tốt cho b&agrave;n ph&iacute;m k&iacute;ch cỡ full size 108 ph&iacute;m với c&aacute;c ph&iacute;m điều khiển media v&agrave; n&uacute;t cuộn volume quen thuộc g&oacute;c tr&ecirc;n b&ecirc;n phải.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k100-rgb_43a892d422794be996e4ae87329fd907.png" /></p>

<p>Ph&iacute;a b&ecirc;n tr&aacute;i&nbsp;b&agrave;n ph&iacute;m cơ&nbsp;Corsair K100 RGB vẫn l&agrave; d&atilde;y n&uacute;t chức năng c&oacute; thể lập tr&igrave;nh tương th&iacute;ch với c&aacute;c c&ocirc;ng nghệ d&agrave;nh cho streamer của&nbsp;Elgato, tiện lợi cho c&aacute;c game thủ vừa chơi, vừa stream &ldquo;th&agrave;nh quả&rdquo; của m&igrave;nh l&ecirc;n c&aacute;c nền tảng quen thuộc.</p>

<h2><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k100-rgb-1_75083f2d417f43519be5ba0a22b021fb.png" /></h2>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k100-rgb-4_ac41157ad54341eab76a842bfa8f3325.png" /></p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k100-rgb-2_8adf6659bca0467f99f4eb051137a180.png" /></p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k100-rgb-3_89f9036d5a2d4fe1a73986ee1ce4e7ee.png" /></p>
', CAST(3990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10133, N'Bàn phím Corsair K95 RGB Platium XT Blue Switch (CH-9127411-NA)', N'ban-phim-corsair-k95-rgb-platium-xt-blue-switch-ch-9127411-na-', N'Bàn phím Corsair K95 RGB Platium XT Blue Switch (CH-9127411-NA)', N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k95-rgb-platinum-xt/thumbphim_e69573d4e6134e0e9edb90bbcdeaf1b5_dfeaa1292a254732887849e74177d32e_1024x1024.png', CAST(4690000 AS Decimal(18, 0)), 15, CAST(3986500 AS Decimal(18, 0)), 42, CAST(N'2024-05-15T16:06:14.467' AS DateTime), NULL, 1, 10119, N'<h3><strong>TH&Ocirc;NG SỐ KĨ THUẬT :&nbsp;</strong></h3>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>Thương hiệu</td>
			<td>Corsair</td>
		</tr>
		<tr>
			<td>Model</td>
			<td>K95 RGB Platinum XT</td>
		</tr>
		<tr>
			<td>Chất liệu</td>
			<td>Nh&ocirc;m cao cấp</td>
		</tr>
		<tr>
			<td>Switch</td>
			<td>Cherry&reg; MX&nbsp;</td>
		</tr>
		<tr>
			<td>LED</td>
			<td>RGB 16,8 triệu m&agrave;u</td>
		</tr>
		<tr>
			<td>Số n&uacute;t macro</td>
			<td>6 n&uacute;t</td>
		</tr>
		<tr>
			<td>Kết nối</td>
			<td>C&oacute; d&acirc;y, USB</td>
		</tr>
		<tr>
			<td>Tỉ lệ phản hồi</td>
			<td>1ms</td>
		</tr>
		<tr>
			<td>K&ecirc; tay&nbsp;</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>Phần mềm tương th&iacute;ch</td>
			<td>Corsair Utility Engine ( CUE )</td>
		</tr>
		<tr>
			<td>Th&iacute;ch hợp với</td>
			<td>FPS / MOBA</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết b</strong><strong>&agrave;n ph&iacute;m Corsair K95 RGB Platinum XT</strong></h2>

<h3><strong>T&iacute;nh năng nổi bật tr&ecirc;n&nbsp;Corsair K95 RGB Platinum XT</strong></h3>

<p>C&oacute; thể lập tr&igrave;nh với c&aacute;c macro t&ugrave;y chỉnh hoặc thao t&aacute;c nhanh gi&uacute;p cho sự tiện lợi v&agrave; d&agrave;nh thế chủ động trong tr&ograve; chơi.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-corsairk95rgbplatinumxt-1_0fba9bd7b2454071ac9fb649ef567d4f_grande.jpg" /></p>

<h3><strong>Đẳng cấp mới, tiến h&oacute;a mới, chất lượng mới</strong></h3>

<p>Corsair đ&atilde; đưa sản phẩm l&ecirc;n tầm cao mới. T&iacute;ch hợp Switch cơ học mới của Cherry mang đến tốc độ cực nhạy v&agrave; chất lượng, khả năng đ&egrave;n LED đi xuy&ecirc;n qua cũng rất chất lượng, tăng c&aacute;i nh&igrave;n đẹp mắt hơn. Hơn nữa l&agrave; đ&aacute;nh bật mọi loại Switch cơ học kh&aacute;c về tuổi thọ.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-corsairk95rgbplatinumxt-2_42933a6e4164470088d4c71f616472bb_grande.jpg" /></p>

<h3><strong>T&ugrave;y chỉnh &aacute;nh đ&egrave;n LED theo mọi &yacute; th&iacute;ch</strong></h3>

<p>Đ&egrave;n nền tr&ecirc;n mỗi ph&iacute;m c&oacute; LED&nbsp;RGB v&agrave; s&aacute;ng&nbsp;19 kiểu tr&ecirc;n b&agrave;n ph&iacute;m mang lại hiệu ứng &aacute;nh s&aacute;ng sống động v&agrave; sống động với khả năng t&ugrave;y biến gần như v&ocirc; hạn.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-corsairk95rgbplatinumxt-3_3a8e516ad2f046d09abfd5884a757b9b_grande.png" /></p>

<h3><strong>Hỗ trợ phần mềm Elgato</strong></h3>

<p>Lập tr&igrave;nh c&aacute;c lệnh truyền ph&aacute;t đặc biệt v&agrave; ho&aacute;n đổi sang c&aacute;c kh&oacute;a ph&iacute;m S đi k&egrave;m để c&oacute; lệnh thuận tiện cho luồng stream của bạn.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-corsairk95rgbplatinumxt-4_1388c22285644e82b961520e58c99689_grande.png" /></p>

<h3><strong>Độ bền tối đa</strong></h3>

<p>Khung nh&ocirc;m được anot h&oacute;a với bộ kh&oacute;a đ&ocirc;i PBT si&ecirc;u bền 104/105 ph&iacute;m được chế tạo để chịu được thời gian chơi game.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-corsairk95rgbplatinumxt-5_95711ab2b22146e99d5be2ff655b862e_grande.jpg" /></p>

<h3><strong>Clicky v&ocirc; c&ugrave;ng đ&atilde;!</strong></h3>

<p>C&aacute;c ph&iacute;m bấm Cherry&nbsp;MX RGB Blue do Đức sản xuất mang lại độ tin cậy v&agrave; ch&iacute;nh x&aacute;c với phản hồi x&uacute;c gi&aacute;c v&agrave; nhấp ph&iacute;m c&oacute; thể nghe được.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-corsairk95rgbplatinumxt-6_14c82a2c5a0648e7aca5fafdb9832ea1_grande.gif" /></p>
', CAST(3990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10134, N'Bàn phím cơ Corsair K70 TKL RGB Champion Series Cherry MX Red Switch', N'ban-phim-co-corsair-k70-tkl-rgb-champion-series-cherry-mx-red-switch', N'Bàn phím cơ Corsair K70 TKL RGB Champion Series Cherry MX Red Switch', N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k70-tkl-rgb-champion-series-cherry-mx-red-switch/gearvn-corsair-k68-rgb_02_a6e8421f059b4c65886e370c08625b16_1024x1024.png', CAST(3290000 AS Decimal(18, 0)), 10, CAST(2961000 AS Decimal(18, 0)), 42, CAST(N'2024-05-15T16:07:59.230' AS DateTime), NULL, 1, 10120, N'<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu:</strong></td>
			<td>Corsair</td>
		</tr>
		<tr>
			<td><strong>Model:</strong></td>
			<td>Corsair K70 TKL RGB Champion Series</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc:</strong></td>
			<td>Đen</td>
		</tr>
		<tr>
			<td><strong>Kết nối:</strong></td>
			<td>C&oacute; d&acirc;y</td>
		</tr>
		<tr>
			<td><strong>Kiểu d&aacute;ng:</strong></td>
			<td>87 Ph&iacute;m + 9 Ph&iacute;m chức năng</td>
		</tr>
		<tr>
			<td><strong>Size:</strong></td>
			<td>TKL</td>
		</tr>
		<tr>
			<td><strong>Đ&egrave;n led:</strong></td>
			<td>LED RGB</td>
		</tr>
		<tr>
			<td><strong>Switch:</strong></td>
			<td>Cherry MX Speed Red</td>
		</tr>
		<tr>
			<td><strong>Keycaps:</strong></td>
			<td>PBT Doubleshot</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước:</strong></td>
			<td>327x101x42mm</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng:</strong></td>
			<td>0.9 kg</td>
		</tr>
		<tr>
			<td><strong>Chất liệu</strong></td>
			<td>Nhựa cao cấp</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện:</strong></td>
			<td>C&aacute;p type C , Key Puller</td>
		</tr>
		<tr>
			<td><strong>T&iacute;nh năng:</strong></td>
			<td>Full Key (NKRO) with 100% Anti-Ghosting,Supported in iCUE,&nbsp;
			<p>Dedicated Hotkeys, Volume Roller</p>
			</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết b&agrave;n ph&iacute;m cơ Corsair K70 TKL RGB Champion Series</strong></h2>

<h3><strong>Thiết kế tạo l&ecirc;n những nh&agrave; v&ocirc; địch</strong></h3>

<p>CORSAIR CHAMPION SERIES l&agrave; một trong những d&ograve;ng được h&atilde;ng&nbsp;sản phẩm được ph&aacute;t triển qua nhiều năm thử nghiệm với c&aacute;c chuy&ecirc;n gia thể thao điện tử h&agrave;ng đầu, được x&acirc;y dựng để cung cấp&nbsp;b&agrave;n ph&iacute;m cơ, chuột gaming, tai nghe&nbsp;hỗ trợ game thủ&nbsp;gi&agrave;nh chiến thắng trong mọi trận chiến.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k70-tkl-rgb-champion-series-01_12400610d028401382f1cdc0316472c6.jpg" /></p>

<h3><strong>Sẵn s&agrave;ng chiến đấu mọi l&uacute;c mọi nơi</strong></h3>

<p>K70 RGB TKL, b&agrave;n ph&iacute;m cơ được thiết kế cho m&ocirc;i trường thi đấu c&oacute; sự cạnh tranh cao. Với khung nh&ocirc;m bền, di động, kh&ocirc;ng cần ph&iacute;m, v&agrave; Switch&nbsp;c&oacute; thể chuyển chế độ thi đấu để sẵn s&agrave;ng chiến đấu.&nbsp;</p>

<p>Sở hữu&nbsp;thiết kế v&ocirc; c&ugrave;ng nhỏ gọn như những chiếc&nbsp;b&agrave;n ph&iacute;m kh&ocirc;ng d&acirc;y, K70 sẽ l&agrave; sự lựa chọn trong ph&acirc;n kh&uacute;c&nbsp;b&agrave;n ph&iacute;m TKL&nbsp;cho những g&oacute;c m&aacute;y chơi game gọn g&agrave;ng.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k70-tkl-rgb-champion-series-02_46cfa2e6efb84648b0e11b45c7201a33.jpg" /></p>

<h3><strong>C&ocirc;ng tắc bật tắt đế độ chiến đấu</strong></h3>

<p>Lật để tự động chuyển sang đ&egrave;n nền tĩnh v&agrave; tắt k&iacute;ch hoạt macro ngẫu nhi&ecirc;n, v&igrave; vậy bạn c&oacute; thể tập trung v&agrave; chiến thắng đối thủ trong tr&ograve; chơi.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k70-tkl-rgb-champion-series-03_c8bf71f926774e039de79ae76e9f9746.jpg" /></p>

<h3><strong>Tạo cảm gi&aacute;c mơn trớn đầu ng&oacute;n tay bạn với keycap PBT double-shot</strong></h3>

<p>Bộ keycap được đ&uacute;c ch&iacute;nh x&aacute;c với bố cục h&agrave;ng dưới ti&ecirc;u chuẩn chống m&agrave;i m&ograve;n, phai m&agrave;u v&agrave; s&aacute;ng b&oacute;ng, với độ d&agrave;y 1,5mm cho độ ổn định cứng c&aacute;p.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k70-tkl-rgb-champion-series-04_3c1fde345a894fb3852dd567a38d28eb.jpg" /></p>

<h3><strong>Sử dụng Switch tốc độ cao Cherry MX&nbsp;Speed Silver / Red</strong></h3>

<p>Switch CHERRY MX SPEED Silver / Red&nbsp; cung cấp thời gian phản hồi nhanh như chớp với khoảng c&aacute;ch t&aacute;c động cực ngắn chỉ 1,2mm, ho&agrave;n hảo cho lối chơi cạnh tranh nhịp độ nhanh. C&ugrave;ng với&nbsp; đ&oacute; l&agrave; độ bền l&ecirc;n đến 100 triệu lần bấm được đảm bảo.</p>

<p>Hầu hết c&aacute;c sản phẩm đến từ Corsair từ c&aacute;c d&ograve;ng&nbsp;chuột kh&ocirc;ng d&acirc;y, b&agrave;n ph&iacute;m chơi game kết nối th&ocirc;ng qua bluetooth cho đến c&oacute; d&acirc;y&nbsp;ở nhiều ph&acirc;n kh&uacute;c đều đảm bảo được sự ổn định cho người d&ugrave;ng ở tốc độ cao.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k70-tkl-rgb-champion-series-05_82ecde108df2436ca625655c4e137296.jpg" /></p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k70-tkl-rgb-champion-series-08_fdc8c9ec19ad47a1bc29903d1c0224c6.jpg" /></p>

<h3><strong>C&ocirc;ng nghệ si&ecirc;u xử l&yacute; Corsair AXON</strong></h3>

<p>Được trang bị c&ocirc;ng nghệ si&ecirc;u xử l&yacute; Corsair AXON &nbsp;mang lại trải nghiệm b&agrave;n ph&iacute;m chơi game ti&ecirc;n tiến nhất gi&uacute;p Corsair K70 RGB TKL đạt tần số phản hồi l&ecirc;n đến 8000 Hz &ndash; nhanh gấp 8 lần b&agrave;n ph&iacute;m gaming ti&ecirc;u chuẩn th&ocirc;ng thường.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k70-tkl-rgb-champion-series-06_e069f0913b744e67a34d9a9ab3d138ed.jpg" /></p>

<h3><strong>C&aacute;p USB-C c&oacute; thể th&aacute;o rời, phần mềm đồng bộ iCUE tuỳ chỉnh m&agrave;u sắc, &aacute;nh s&aacute;ng, chức năng của b&agrave;n ph&iacute;m</strong></h3>

<p>Mang theo Corsair K70 RGB TKL di chuyển linh hoạt v&agrave; kết nối mọi nơi đồng bộ c&ugrave;ng phần mềm iCUE. Khả năng đồng bộ với phần mềm iCUE sẽ đồng bộ m&agrave;u sắc, hiệu ứng &aacute;nh s&aacute;ng của ph&iacute;m với c&aacute;c sản phẩm kh&aacute;c của Corsair, cho ph&eacute;p bạn t&ugrave;y chỉnh từ LED RGB đến c&aacute;c chức năng kh&aacute;c của b&agrave;n ph&iacute;m.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k70-tkl-rgb-champion-series-07_55f89ee3e3eb432085c2b0566f9656ab.jpg" /></p>
', CAST(2790000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10135, N'Bàn phím Corsair K65 RGB Mini White - MX SPEED (CH-9194114-NA)', N'ban-phim-corsair-k65-rgb-mini-white-mx-speed-ch-9194114-na-', N'Bàn phím Corsair K65 RGB Mini White - MX SPEED (CH-9194114-NA)', N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k65-rgb-mini-white-mx-speed-ch-9194114-na/45406_key_cor_ch_9194114_na_a.jpg', CAST(2590000 AS Decimal(18, 0)), 10, CAST(2331000 AS Decimal(18, 0)), 42, CAST(N'2024-05-15T16:10:23.643' AS DateTime), NULL, 1, 10121, N'<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>Thương hiệu:</td>
			<td>Corsair</td>
		</tr>
		<tr>
			<td>Model:</td>
			<td>Corsair K65 RGB Mini White</td>
		</tr>
		<tr>
			<td>M&agrave;u sắc:</td>
			<td>Trắng</td>
		</tr>
		<tr>
			<td>Kết nối:</td>
			<td>C&oacute; d&acirc;y</td>
		</tr>
		<tr>
			<td>Kiểu d&aacute;ng:</td>
			<td>60% - 61 Ph&iacute;m</td>
		</tr>
		<tr>
			<td>Size:</td>
			<td>60%</td>
		</tr>
		<tr>
			<td>Đ&egrave;n led:</td>
			<td>LED RGB 16.8 triệu m&agrave;u th&ocirc;ng qua ICUE</td>
		</tr>
		<tr>
			<td>Switch:</td>
			<td>Cherry MX Speed</td>
		</tr>
		<tr>
			<td>Keycaps:</td>
			<td>PBT Double Shot si&ecirc;u bền</td>
		</tr>
		<tr>
			<td>Trọng lượng:</td>
			<td>0.81 kg</td>
		</tr>
		<tr>
			<td>Chất liệu</td>
			<td>Nhựa cao cấp</td>
		</tr>
		<tr>
			<td>Phụ kiện:</td>
			<td>C&aacute;p Type C - Key Puller - Logo Corsair Keycap - Radiant Spacebar</td>
		</tr>
		<tr>
			<td>T&iacute;nh năng:</td>
			<td>&nbsp;Full Key (NKRO) with 100% Anti-Ghosting, LED RGB.</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết b&agrave;n ph&iacute;m cơ Corsair K65 RGB MINI White Cherry MX Speed/&nbsp;Red</strong></h2>

<p>&nbsp;</p>

<p>B&agrave;n ph&iacute;m cơ&nbsp;<strong>Corsair K65 RGB MINI White&nbsp;</strong>Cherry MX Speed/&nbsp;Red&nbsp;kết hợp hiệu suất cấp cao với t&iacute;nh di động, n&oacute; c&oacute; c&ocirc;ng nghệ si&ecirc;u xử l&yacute; AXON, Switch cơ CHERRY MX v&agrave; khả năng t&ugrave;y chỉnh đặc biệt trong một thiết kế&nbsp;b&agrave;n ph&iacute;m cơ&nbsp;nhỏ gọn 60%.</p>

<h3><strong>Thiết kế 60% si&ecirc;u nhỏ gọn</strong></h3>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k65-rgb-mini-01_35e5b06bff924cf092bc50fc54f27129.jpg" /><strong>Corsair K65 RGB MINI</strong>&nbsp;cung cấp c&aacute;c t&iacute;nh năng lớn được g&oacute;i gọn trong kiểu ph&iacute;m 60%, dễ d&agrave;ng ph&ugrave; hợp với mọi thiết lập để chơi game thoải m&aacute;i v&agrave; di chuyển. C&ugrave;ng với thiết kế v&ocirc; c&ugrave;ng nhỏ gọn kh&ocirc;ng kh&aacute;c g&igrave; c&aacute;c d&ograve;ng&nbsp;b&agrave;n ph&iacute;m kh&ocirc;ng d&acirc;y. Đ&acirc;y sẽ l&agrave; một trong những sản phẩm ngoại vi d&agrave;nh cho game thủ th&iacute;ch một g&oacute;c m&aacute;y chơi game gọn g&agrave;ng.</p>

<h3><strong>C&aacute; nh&acirc;n h&oacute;a c&aacute;ch chơi của bạn</strong></h3>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k65-rgb-mini-02_768fb1b15a5d4cc6b128026b7c8236b4.jpg" /></p>

<p><br />
Thể hiện phong c&aacute;ch của bạn với đ&egrave;n nền RGB động cho mỗi ph&iacute;m đi k&egrave;m t&ugrave;y chọn, c&ugrave;ng với bố cục h&agrave;ng dưới ti&ecirc;u chuẩn để bạn c&oacute; thể ho&aacute;n đổi trong c&aacute;c bộ keycap t&ugrave;y chỉnh của ri&ecirc;ng m&igrave;nh. Đồng thời th&ocirc;ng qua phần mềm đi k&egrave;m, bạn c&oacute; thể tuỳ chỉnh v&agrave; đồng bộ hệ thống LED b&agrave;n ph&iacute;m với c&aacute;c sản phẩm&nbsp;chuột kh&ocirc;ng d&acirc;y&nbsp;cho đến kết nối th&ocirc;ng qua d&acirc;y USB, pad chuột led v&agrave; cả tai nghe.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k65-rgb-mini-03_d5ab7a296d9942bda68020e1a0ff6a1e.jpg" /></p>

<h3><strong>&nbsp;Keycaps PBT Double-Shot si&ecirc;u bền</strong></h3>

<p>Được đ&uacute;c bằng Keycap PBT cao cấp mang đế chất lượng sử dụng tuyệt vời nhất d&agrave;nh cho bạn trong mọi t&aacute;c vụ sử dụng h&agrave;ng ng&agrave;y.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k65-rgb-mini-04_454beb346e824c418cef0341c7db89d5.jpg" /></p>

<h3><strong>&nbsp;C&aacute;c ph&iacute;m tắt mở rộng</strong></h3>

<p>C&aacute;c ph&iacute;m tắt tuỳ biến mở rộng gi&uacute;p bạn dễ d&agrave;ng chiến thắng trong c&aacute;c tựa game của m&igrave;nh.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k65-rgb-mini-05_4f55159be33d449b976df4704ea098ea.jpg" /></p>

<ul>
	<li>Truy cập một tập hợp mạnh mẽ c&aacute;c t&iacute;nh năng in tr&ecirc;n&nbsp;bo mạch chủ, bao gồm hơn 30 điều khiển độc đ&aacute;o cho &aacute;nh s&aacute;ng, cấu h&igrave;nh, macro, phương tiện, &acirc;m lượng v&agrave; con trỏ chuột.</li>
	<li>Ghi macro t&iacute;ch hợp v&agrave; hai lớp chức năng cho ph&eacute;p bạn ghi macro khi di chuyển tới (FN + ph&iacute;m bất kỳ) hoặc (FN + FN2 + ph&iacute;m bất kỳ) để truy cập thuận tiện v&agrave;o c&aacute;c lệnh n&acirc;ng cao của bạn m&agrave; kh&ocirc;ng phải hy sinh bất kỳ ph&iacute;m ti&ecirc;u chuẩn n&agrave;o.</li>
	<li>Chế độ kh&oacute;a ph&iacute;m Windows đảm bảo bạn sẽ kh&ocirc;ng bao giờ v&ocirc; t&igrave;nh l&agrave;m gi&aacute;n đoạn tr&ograve; chơi của m&igrave;nh v&agrave;o những thời điểm quan trọng.</li>
	<li>8MB bộ nhớ tr&ecirc;n bo mạch</li>
	<li>Lưu trữ tới 50 cấu h&igrave;nh tr&ecirc;n bo mạch với c&aacute;c macro t&ugrave;y chỉnh v&agrave; hiệu ứng &aacute;nh s&aacute;ng sống động độc đ&aacute;o của ri&ecirc;ng bạn với tối đa 20 lớp &aacute;nh s&aacute;ng.</li>
	<li>Được cung cấp bởi AXON</li>
</ul>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k65-rgb-mini-06_6501443fc2cd49a9b22c9206cb0b37a8.jpg" /><br />
<strong>Corsair K65 RGB MINI</strong>&nbsp;đem đến trải nghiệm b&agrave;n ph&iacute;m chơi game ti&ecirc;n tiến nhất của CORSAIR mang lại đầu v&agrave;o nhanh hơn gấp 4 lần với t&iacute;nh năng si&ecirc;u thăm d&ograve; tự nhi&ecirc;n 8.000Hz v&agrave; qu&eacute;t ph&iacute;m 4.000Hz, đồng thời tạo ra hiệu ứng &aacute;nh s&aacute;ng l&ecirc;n đến 20 lớp.</p>

<h3>&nbsp;<strong>Switch Cherry MX SPEED RGB mạnh mẽ v&agrave; nhanh ch&oacute;ng</strong></h3>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k65-rgb-mini-07_65449e2533c14905bd2f3d360251578d.jpg" /></p>

<p>Switch CHERRY MX SPEED cung cấp thời gian phản hồi nhanh như &aacute;nh s&aacute;ng với khoảng c&aacute;ch t&aacute;c động cực ngắn 1,2mm, độ bền l&ecirc;n đến 100 triệu lần nhấn, ho&agrave;n hảo cho lối chơi cạnh tranh nhịp độ nhanh.</p>

<h3><strong>C&aacute;p USB-C c&oacute; thể th&aacute;o rời</strong></h3>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k65-rgb-mini-08_9c1d353eaa884ce2be48ba56dbfddb19.jpg" /></p>

<h3><strong>Hợp nhất thiết lập của bạn với phần mềm đồng bộ iCUE</strong></h3>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-corsair-k65-rgb-mini-09_1eee05d5d429485e848044e721787860.jpg" /></p>

<p><br />
Sự ph&aacute;t triển tiếp theo trong phần mềm CORSAIR iCUE l&agrave; ở đ&acirc;y, biến to&agrave;n bộ thiết lập của bạn th&agrave;nh một hệ sinh th&aacute;i gắn kết, ho&agrave;n to&agrave;n nhập vai với khả năng điều khiển trực quan.</p>
', CAST(1590000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10136, N'Bàn phím cơ Corsair K68 RGB Red switch (CH-9102010-NA)', N'ban-phim-co-corsair-k68-rgb-red-switch-ch-9102010-na-', N'Bàn phím cơ Corsair K68 RGB Red switch (CH-9102010-NA)', N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k68-rgb/gearvn-corsair-k68-rgb_02_a6e8421f059b4c65886e370c08625b16_1024x1024.png', CAST(3590000 AS Decimal(18, 0)), 10, CAST(3231000 AS Decimal(18, 0)), 42, CAST(N'2024-05-15T16:12:26.313' AS DateTime), NULL, 1, 10122, N'<p><strong>TH&Ocirc;NG SỐ KỸ&nbsp;THUẬT :&nbsp;</strong></p>

<p>&nbsp;</p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>Thương hiệu</td>
			<td>Corsair</td>
		</tr>
		<tr>
			<td>Model</td>
			<td>B&agrave;n ph&iacute;m Corsair K68 RGB</td>
		</tr>
		<tr>
			<td>Kiểu b&agrave;n ph&iacute;m</td>
			<td>Full size</td>
		</tr>
		<tr>
			<td>Số lượng ph&iacute;m</td>
			<td>104 + 9 ph&iacute;m chức năng</td>
		</tr>
		<tr>
			<td>Switch</td>
			<td>Cherry MX Red</td>
		</tr>
		<tr>
			<td>Tốc độ phản hồi</td>
			<td>1mm/1000 Hz</td>
		</tr>
		<tr>
			<td>Đ&egrave;n LED</td>
			<td>LED RGB</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>1.41kg</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>455 x 170 &nbsp;x 39 mm</td>
		</tr>
		<tr>
			<td>T&iacute;ch hợp ph&iacute;m</td>
			<td>Media Keys<br />
			Kh&oacute;a Windows</td>
		</tr>
		<tr>
			<td>Chống bụi,nước</td>
			<td>IP32</td>
		</tr>
		<tr>
			<td>T&iacute;nh năng</td>
			<td>Fullkey (NKRO) v&agrave; Anti - Ghosting 100%, chống bụi , chống nước chuẩn IP32</td>
		</tr>
		<tr>
			<td>Phụ kiện</td>
			<td>HDSD, k&ecirc; tay , key puller</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết b&agrave;n ph&iacute;m Corsair K68 RGB</strong></h2>

<h3><strong>B&agrave;n ph&iacute;m c&oacute; khả năng chống nước v&agrave; bụi theo chuẩn IP32</strong></h3>

<p>Giờ đ&acirc;y bạn c&oacute; thể an t&acirc;m sử dụng&nbsp;b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh&nbsp;một c&aacute;ch thoải m&aacute;i hơn v&igrave; Corsair đ&atilde; trang bị khả năng chống nước v&agrave; bụi theo ti&ecirc;u chuẩn IP32. Đồng h&agrave;nh c&ugrave;ng bạn suốt ng&agrave;y d&agrave;i c&ugrave;ng&nbsp;chuẩn IP32 cho ph&eacute;p bạn chống lại những vật thể bụi c&oacute; k&iacute;ch thước lớn hơn 2,5mm v&agrave; nước đổ trực tiếp từ tr&ecirc;n xuống (hoặc lệch một g&oacute;c 15 độ).&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-corsair-k68-rgb-03_5274f55385554f098a3e4137fd6125d4.jpg" /></p>

<h3><strong>Thiết kế được ho&agrave;n thiện ở chất lượng cao</strong></h3>

<p>C&aacute;c d&ograve;ng b&agrave;n ph&iacute;m cơ từ&nbsp;b&agrave;n ph&iacute;m kh&ocirc;ng d&acirc;y&nbsp;cho đến c&oacute; d&acirc;y từ Corsair lu&ocirc;n mang thiết kế v&ocirc; c&ugrave;ng ấn tượng v&agrave; độc đ&aacute;o.&nbsp;Sản phẩm được chăm ch&uacute;t v&agrave; ho&agrave;n thiện ở chất lượng cao, nhờ đ&oacute; m&agrave; bạn ho&agrave;n to&agrave;n an t&acirc;m khi trải nghiệm. Đi k&egrave;m những phần cứng tuyệt vời nhất như switch Cherry MX Red gi&uacute;p bạn g&otilde; &ecirc;m &aacute;i. K&ecirc; tay xịn x&ograve; chống mỏi v&agrave; &ecirc;m &aacute;i.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-corsair-k68-rgb-02_5cd9c0ba44e544278535b279bdb25acf.jpg" /></p>

<p><strong>Đầy đủ 104 ph&iacute;m c&ugrave;ng 9 ph&iacute;m chức năng</strong></p>

<p>Một điểm cộng của sản phẩm&nbsp;b&agrave;n ph&iacute;m cơ&nbsp;mới nhất đến từ Corsair l&agrave; n&oacute; l&agrave; b&agrave;n ph&iacute;m fullsize với b&agrave;n ph&iacute;m số đi k&egrave;m. Rất lợi hại khi bạn sử dụng trong c&ocirc;ng việc h&agrave;ng ng&agrave;y cũng như t&iacute;nh to&aacute;n, văn ph&ograve;ng. Ngo&agrave;i ra, c&ocirc;ng nghệ 100% Anti-ghosting sẽ gi&uacute;p thiết bị nhận được tất cả c&aacute;c lệnh của bạn, ngay cả khi bạn g&otilde; b&agrave;n ph&iacute;m rất nhanh v&agrave; nhiều ph&iacute;m c&ugrave;ng một l&uacute;c.&nbsp;</p>

<p>Đi k&egrave;m 9 ph&iacute;m chức năng gi&uacute;p bạn dễ d&agrave;ng tăng giảm &acirc;m lượng, qua b&agrave;i, tạm dừng.&nbsp;Cũng như ph&iacute;m kh&oacute;a windows gi&uacute;p bạn an t&acirc;m chơi game c&ugrave;ng c&aacute;c d&ograve;ng&nbsp;chuột kh&ocirc;ng d&acirc;y&nbsp;cho đến c&oacute; d&acirc;y&nbsp;m&agrave; kh&ocirc;ng sợ bấm nhầm, hoặc tắt bật led với chỉ 1 n&uacute;t bấm.</p>

<p><strong>K&ecirc; tay &ecirc;m &aacute;i đi k&egrave;m</strong></p>

<p>B&agrave;n ph&iacute;m&nbsp;K68&nbsp;trang bị đi k&egrave;m một k&ecirc; tay &ecirc;m &aacute;i, gi&uacute;p cổ tay của bạn thư gian trong qu&aacute; tr&igrave;nh sử dụng l&acirc;u d&agrave;i.</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-corsair-k68-rgb-06_233b029a72a4430cbd6fa2eff73bd88f.jpg" /></p>

<h3><strong>Phần mềm hỗ trợ iCUE tinh chỉnh chức năng t&ugrave;y chọn</strong></h3>

<p>&nbsp;</p>

<p>B&agrave;n ph&iacute;m th&ocirc;ng minh c&ograve;n đi k&egrave;m phần mềm hỗ trợ iCUE gi&uacute;p bạn t&ugrave;y chọn nhiều chức năng của ph&iacute;m, lập tr&igrave;nh macro v&agrave; hơn thế nữa. Đồng thời nhờ v&agrave;o phần mềm độc quyền từ Corsair m&agrave; người chơi c&oacute; thể t&ugrave;y chỉnh hiệu ứng &aacute;nh s&aacute;ng tr&ecirc;n b&agrave;n ph&iacute;m sao cho đồng bộ với c&aacute;c thiết bị chơi game kh&aacute;c như&nbsp;chuột m&aacute;y t&iacute;nh,&nbsp;tai nghe chơi game,...</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-corsair-k68-rgb-07_3ef2c7488fbc4c3bbc1ce83806729c9b.jpg" /></p>

<p><strong>Lời kết :</strong></p>

<p>Bạn đang cần một sản phẩm b&agrave;n ph&iacute;m cơ chơi game bền bỉ, chống bụi v&agrave; nước. Switch cao cấp g&otilde; &ecirc;m &aacute;i v&agrave; đầy đủ b&agrave;n ph&iacute;m số c&ugrave;ng nhiều ph&iacute;m chức năng gi&uacute;p bạn tận dụng cả giải tr&iacute; v&agrave; l&agrave;m việc th&igrave; đ&acirc;y l&agrave; b&agrave;n ph&iacute;m d&agrave;nh cho bạn.</p>
', CAST(2390000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10137, N'Bàn phím Corsair K55 RGB PRO LITE', N'ban-phim-corsair-k55-rgb-pro-lite', N'Bàn phím Corsair K55 RGB PRO LITE', N'/DataManagement/Images/Ban%20Phim%20Co/Corsair/k55-rgb-pro-lite/hinh-1_f82effdb3c1a47b7a3de79d7f8207122_1024x1024.gif', CAST(1090000 AS Decimal(18, 0)), 10, CAST(981000 AS Decimal(18, 0)), 42, CAST(N'2024-05-15T16:14:06.873' AS DateTime), NULL, 1, 10123, N'<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu:</strong></td>
			<td>Corsair</td>
		</tr>
		<tr>
			<td><strong>Bảo h&agrave;nh:</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Model:</strong></td>
			<td>K55 RGB PRO LITE</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc:</strong></td>
			<td>Đen</td>
		</tr>
		<tr>
			<td><strong>Kết nối:</strong></td>
			<td>C&oacute; d&acirc;y</td>
		</tr>
		<tr>
			<td><strong>Kiểu d&aacute;ng:</strong></td>
			<td>Full size</td>
		</tr>
		<tr>
			<td><strong>Size:</strong></td>
			<td>Full size</td>
		</tr>
		<tr>
			<td><strong>Đ&egrave;n led:</strong></td>
			<td>RGB</td>
		</tr>
		<tr>
			<td><strong>Switch:</strong></td>
			<td>Cao su</td>
		</tr>
		<tr>
			<td><strong>Keycaps:</strong></td>
			<td>ABS</td>
		</tr>
		<tr>
			<td><strong>D&acirc;y:</strong></td>
			<td>Cao su</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng:</strong></td>
			<td>1.07 Kg</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết b&agrave;n ph&iacute;m Corsair K55 RGB PRO LITE</strong></h2>

<p>Corsair K55 RGB PRO LITE mẫu&nbsp;b&agrave;n ph&iacute;m giả cơ&nbsp;chất lượng mang đến cảm gi&aacute;c g&otilde; &ecirc;m tay, tốc độ phản hồi tốt. Ngo&agrave;i ra, nhờ v&agrave;o thiết kế đẹp mắt tạo điều kiện cho người chơi dễ d&agrave;ng Setups g&oacute;c m&aacute;y l&agrave;m việc &amp; chơi game độc đ&aacute;o khi kết hợp c&ugrave;ng chuột m&aacute;y t&iacute;nh,&nbsp;tai nghe gaming&nbsp;c&ugrave;ng nhiều phụ kiện kh&aacute;c.</p>

<h3><strong>Thiết kế ấn tượng c&ugrave;ng Layout Fullsize 110 Keys tiện lợi</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/200000722513/file/gearvn-ban-phim-corsair-k55-rgb-pro-lite_87e8412c94d64260be499986e103ff0b_grande.png" /></p>

<p>&nbsp;</p>

<p>Corsair K55 RGB PRO LITE sở hữu thiết kế ấn tượng với tone m&agrave;u đen mờ chủ đạo, c&aacute;c chi tiết được bo tr&ograve;n mềm mại tạo cảm gi&aacute;c v&ocirc; c&ugrave;ng sang trọng nhưng vẫn kh&ocirc;ng k&eacute;m mạnh mẽ. Diện mạo độc đ&aacute;o, linh hoạt tạo điều kiện thuận lợi Build g&oacute;c m&aacute;y l&agrave;m việc &amp; giải tr&iacute; ấn tượng khi kết hợp c&ugrave;ng&nbsp;chuột gaming, tai nghe m&aacute;y t&iacute;nh,...</p>

<h3><strong>T&iacute;ch hợp cụm ph&iacute;m Dedicated Hotkeys</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/200000722513/file/gearvn-ban-phim-corsair-k55-rgb-pro-lite-1_aa17aa42f60f4d828086618e38d02098_grande.png" /></p>

<p>&nbsp;</p>

<p>B&ecirc;n cạnh thiết kế mạnh mẽ, phong c&aacute;ch Corsair K55 RGB PRO LITE c&ograve;n được t&iacute;ch hợp cụm ph&iacute;m Dedicated Hotkeys gi&uacute;p bạn kiểm so&aacute;t c&aacute;c tr&ograve; chơi một c&aacute;ch tốt nhất. Đặc biệt, người chơi c&oacute; thể t&ugrave;y chỉnh chức năng của c&aacute;c cụm ph&iacute;m n&agrave;y th&ocirc;ng qua phần mềm CORSAIR iCUE độc quyền từ Corsair.</p>

<h3><strong>Trang bị Switch Rubber Dome tạo cảm gi&aacute;c g&otilde; &ecirc;m tay</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/200000722513/file/gearvn-ban-phim-corsair-k55-rgb-pro-lite-3_eecb1922fff7498186d4c90c0aab8778_grande.png" /></p>

<p>&nbsp;</p>

<p>Trang bị bộ c&ocirc;ng tắc cơ học độc quyền Rubber Dome mang đến trải nghiệm mới lạ khi g&otilde; b&agrave;n ph&iacute;m. Tuy thuộc ph&acirc;n kh&uacute;c b&agrave;n ph&iacute;m giả cơ nhưng Corsair K55 RGB PRO LITE tạo cho người chơi cảm gi&aacute;c bấm chắc chắn, tốc độ phản hồi cao c&ugrave;ng &acirc;m thanh g&otilde; &ecirc;m tai rất ph&ugrave; hợp với m&ocirc;i trường l&agrave;m việc, học tập kh&ocirc;ng c&aacute;c d&ograve;ng&nbsp;b&agrave;n ph&iacute;m cơ&nbsp;cao cấp trong hệ sinh th&aacute;i Corsair.</p>

<h3><strong>Sở hữu bộ Keycaps ABS si&ecirc;u bền</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/200000722513/file/gearvn-ban-phim-corsair-k55-rgb-pro-lite-4_72ac0605e92e44928de917ce3db5be65_grande.png" /></p>

<p>&nbsp;</p>

<p>B&ecirc;n cạnh việc sở hữu bộ c&ocirc;ng tắc bấm nhẹ v&agrave; mượt, b&agrave;n ph&iacute;m Corsair&nbsp;c&ograve;n trang bị bộ Keycaps ABS c&oacute; độ cao vừa phải, bề mặt c&oacute; độ cong hợp l&yacute; vừa &ocirc;m lấy c&aacute;c ng&oacute;n tay gi&uacute;p g&otilde; nhanh v&agrave; ch&iacute;nh x&aacute;c m&agrave; kh&ocirc;ng tốn qu&aacute; nhiều sự tập trung. Đặc biệt, Corsair K55 RGB PRO LITE c&ograve;n được trang bị lớp bảo vệ IP42 chống nước, chống bụi gi&uacute;p bảo vệ&nbsp;b&agrave;n ph&iacute;m&nbsp;một c&aacute;ch hiệu quả.</p>

<h3><strong>Hệ thống chiếu s&aacute;ng LED RGB sinh động</strong></h3>

<p>Để gi&uacute;p vẻ ngo&agrave;i th&ecirc;m phần cuốn h&uacute;t b&agrave;n ph&iacute;m Corsair K55 RGB PRO LITE được t&iacute;ch hợp hệ thống led RGB độc đ&aacute;o, s&aacute;ng tạo với nhiều hiệu ứng chiếu s&aacute;ng kh&aacute;c nhau như Pulse, Color Shift, Color Wave, Rainbow Wave tạo điều kiện cho người chơi dễ d&agrave;ng đồng bộ m&agrave;u sắc RGB c&ugrave;ng c&aacute;c phụ kiện chơi game như chuột gaming,&nbsp;tai nghe Bluetooth&nbsp;hay bất kỳ phụ kiện kh&aacute;c.</p>

<h3><strong>Khả năng tương th&iacute;ch cao dễ d&agrave;ng gh&eacute;p nối nhiều thiết bị</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/200000722513/file/gearvn-ban-phim-corsair-k55-rgb-pro-lite-2_319e63d5a09b421397af7a6722a4681d_grande.png" /></p>

<p>&nbsp;</p>

<p>Dễ d&agrave;ng kết nối với nhiều thiết bị kh&aacute;c nhau từ&nbsp;m&aacute;y t&iacute;nh để b&agrave;n,&nbsp;Laptop&nbsp;chạy hệ điều h&agrave;nh kh&aacute;c nhau th&ocirc;ng qua c&aacute;p USB 2.0 Type-A si&ecirc;u bền đảm bảo qu&aacute; tr&igrave;nh sử dụng kh&ocirc;ng bị gi&aacute;n đoạn.&nbsp;&nbsp;</p>
', CAST(890000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10138, N'Bàn phím DareU EK1280SV2 RGB Brown Switch', N'ban-phim-dareu-ek1280sv2-rgb-brown-switch', N'Bàn phím DareU EK1280SV2 RGB Brown Switch', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek1280sv2-rgb-brown-switch/9_95602867672d4d6ea54bd3d148121379_1024x1024.jpg', CAST(790000 AS Decimal(18, 0)), 5, CAST(750500 AS Decimal(18, 0)), 10038, CAST(N'2024-05-15T16:18:48.013' AS DateTime), NULL, 1, 10124, N'<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu:</strong></td>
			<td>DareU</td>
		</tr>
		<tr>
			<td><strong>Model:</strong></td>
			<td>B&agrave;n Ph&iacute;m Gaming DAREU EK1280s v2</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc:</strong></td>
			<td>Đen</td>
		</tr>
		<tr>
			<td><strong>Kết nối:</strong></td>
			<td>C&oacute; d&acirc;y</td>
		</tr>
		<tr>
			<td><strong>Kiểu d&aacute;ng:</strong></td>
			<td>104 ph&iacute;m</td>
		</tr>
		<tr>
			<td><strong>Size:</strong></td>
			<td>Full size</td>
		</tr>
		<tr>
			<td><strong>Đ&egrave;n led:</strong></td>
			<td>Led ph&iacute;m Rainbow - Led viền 2 b&ecirc;n ph&iacute;m RGB</td>
		</tr>
		<tr>
			<td><strong>Switch:</strong></td>
			<td>DareU &quot;D&quot; Switch: Blue / Red / Brown</td>
		</tr>
		<tr>
			<td><strong>Keycaps:</strong></td>
			<td>ABS Doubleshot</td>
		</tr>
		<tr>
			<td><strong>D&acirc;y:</strong></td>
			<td>D&agrave;i 1,8m</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước:</strong></td>
			<td>440 x 140 x 36 mm</td>
		</tr>
		<tr>
			<td><strong>T&iacute;nh năng:</strong></td>
			<td>N-Key Rollover, led Rainbow</td>
		</tr>
	</tbody>
</table>
', CAST(499000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10139, N'Bàn phím cơ DareU EK75 Pro Triple Mode Black Golden Dream switch', N'ban-phim-co-dareu-ek75-pro-triple-mode-black-golden-dream-switch', N'Bàn phím cơ DareU EK75 Pro Triple Mode Black Golden Dream switch', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek75-pro-triple-mode-black-golden-dream-switch/4_a238490d858c4e9ead25123a62109abc_1024x1024.jpg', CAST(1290000 AS Decimal(18, 0)), 15, CAST(1096500 AS Decimal(18, 0)), 10038, CAST(N'2024-05-15T16:19:52.573' AS DateTime), NULL, 1, 10125, N'<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Loại kết nối</strong></td>
			<td>Bluetooth | Wireless| TypeC</td>
		</tr>
		<tr>
			<td><strong>Cấu tr&uacute;c</strong></td>
			<td>Gasket-Mount</td>
		</tr>
		<tr>
			<td><strong>Keycap</strong></td>
			<td>OEM profile, PBT Double-Shot</td>
		</tr>
		<tr>
			<td><strong>Switch</strong></td>
			<td>DareU DREAM<br />
			Hotswap</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>3750 mAh</td>
		</tr>
		<tr>
			<td><strong>K ey Conflict</strong></td>
			<td>N Ph&iacute;m Rollover &amp; N&uacute;t Knob</td>
		</tr>
		<tr>
			<td><strong>LED&nbsp;</strong></td>
			<td>RGB</td>
		</tr>
	</tbody>
</table>
', CAST(799000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10140, N'Bàn phím cơ DareU EK884 RGB Brown Switch', N'ban-phim-co-dareu-ek884-rgb-brown-switch', N'Bàn phím cơ DareU EK884 RGB Brown Switch', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek884-rgb-brown-switch/ban-phim-gaming-ek884-led-rgb-02.jpg', CAST(690000 AS Decimal(18, 0)), 10, CAST(621000 AS Decimal(18, 0)), 10038, CAST(N'2024-05-15T16:22:44.697' AS DateTime), NULL, 1, 10126, N'<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>H&atilde;ng sản xuất</strong></td>
			<td>Dare-U</td>
		</tr>
		<tr>
			<td><strong>Model</strong></td>
			<td>EK884</td>
		</tr>
		<tr>
			<td><strong>Layout</strong></td>
			<td>84 Ph&iacute;m</td>
		</tr>
		<tr>
			<td><strong>Keycap</strong></td>
			<td>ABS</td>
		</tr>
		<tr>
			<td><strong>Kết nối</strong></td>
			<td>D&acirc;y USB Type C</td>
		</tr>
		<tr>
			<td><strong>LED</strong></td>
			<td>RGB</td>
		</tr>
		<tr>
			<td><strong>Switch</strong></td>
			<td>D Switch</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết</strong></h2>

<h3><strong>Thiết kế d&agrave;nh cho game thủ</strong></h3>

<p>B&agrave;n Ph&iacute;m Cơ Dare-U EK884 c&oacute; thiết kế tối giản với layout 84 ph&iacute;m khiến cho bạn ph&iacute;m nhỏ gọn ph&ugrave; hợp với những kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch sự đơn giản , thường xuy&ecirc;n phải di chuyển</p>

<p>B&agrave;n Ph&iacute;m Cơ Dare-U EK884 được trang bị hệ thống đ&egrave;n RGB sống động mang đến cho game thủ m&agrave;n tr&igrave;nh diễn &aacute;nh s&aacute;ng ấn tượng, tạo phong c&aacute;ch c&aacute; t&iacute;nh cho g&oacute;c m&aacute;y.</p>

<p><img alt="Bàn phím cơ DareU EK884 RGB" src="https://file.hstatic.net/1000026716/file/gearvn-dareu-ek884-2_23744c044a54490f9e2463901a5b7fe4_grande.png" /></p>

<h3><strong>Trang bị switch &quot;D&quot; ch&iacute;nh h&atilde;ng</strong></h3>

<p>B&agrave;n Ph&iacute;m Cơ Dare-U EK884 sử dụng &ldquo;D&rdquo; Switch do Dareu thiết kế đảm bảo tuổi thọ l&ecirc;n đến 50 triệu lần bấm, cũng tạo ra tiếng phản hồi đ&atilde; tai như c&aacute;c loại cao cấp kh&aacute;c.</p>

<p><img alt="Bàn phím cơ DareU EK884 RGB" src="https://file.hstatic.net/1000026716/file/gearvn-dareu-ek884-3_ea5c7501423a4ad5a79b480091d02359_grande.png" /></p>

<h3><strong>Khả năng kết nối</strong></h3>

<p>B&agrave;n Ph&iacute;m Cơ Dare-U EK884 c&oacute; d&acirc;y&nbsp;c&oacute; độ d&agrave;i 1,8 m sử dụng usb type-c c&oacute; khả năng th&aacute;o rời tiện dụng</p>

<p>Sử dụng ch&acirc;n cắm&nbsp;tiện lợi, với khả năng tương th&iacute;ch với c&aacute;c hệ điều h&agrave;nh Windows, Mac kh&ocirc;ng g&acirc;y kh&oacute; khăn cho người d&ugrave;ng th&ocirc;ng qua cổng kết nối USB 2.0 th&ocirc;ng dụng.</p>

<p><img alt="Bàn phím cơ DareU EK884 RGB" src="https://file.hstatic.net/1000026716/file/gearvn-dareu-ek884-4_ab57de1a33384bb384dcb358c5f6856f_grande.png" /></p>
', CAST(380000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10141, N'Bàn phím cơ DareU EK75 White Black DareU Dream switch', N'ban-phim-co-dareu-ek75-white-black-dareu-dream-switch', N'Bàn phím cơ DareU EK75 White Black DareU Dream switch', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek75-white-black-dareu-dream-switch/EK-75-DAREU.png', CAST(699000 AS Decimal(18, 0)), 10, CAST(629100 AS Decimal(18, 0)), 10038, CAST(N'2024-05-15T16:24:06.943' AS DateTime), NULL, 1, 10127, N'<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Loại kết nối</strong></td>
			<td>C&oacute; d&acirc;y</td>
		</tr>
		<tr>
			<td><strong>Layout</strong></td>
			<td>80 key&nbsp;+ 1 knob (US）</td>
		</tr>
		<tr>
			<td><strong>Keycap</strong></td>
			<td>ABS double injection</td>
		</tr>
		<tr>
			<td><strong>Switch</strong></td>
			<td>AREU customized Dream switch</td>
		</tr>
		<tr>
			<td><strong>Driver</strong></td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td><strong>Key Conflict</strong></td>
			<td>N-Key Rollover</td>
		</tr>
		<tr>
			<td><strong>LED&nbsp;</strong></td>
			<td>Rainbow</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>651g+/-10g</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>30.2 x 333.2 x 140.4mm</td>
		</tr>
	</tbody>
</table>
', CAST(399000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10142, N'Bàn phím DareU EK87V2 White Red Switch', N'ban-phim-dareu-ek87v2-white-red-switch', N'Bàn phím DareU EK87V2 White Red Switch', N'/DataManagement/Images/Ban%20Phim%20Co/Dareu/ek87v2-white-red-switch/ban-phim-co-gaming-dareu-ek87-v2-led-rgb-01.jpg', CAST(699000 AS Decimal(18, 0)), 10, CAST(629100 AS Decimal(18, 0)), 10038, CAST(N'2024-05-15T16:28:38.967' AS DateTime), NULL, 1, 10128, N'<h3><strong>Th&ocirc;ng số kỹ thuật</strong></h3>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td><strong>H&atilde;ng sản xuất</strong></td>
			<td>DAREU</td>
		</tr>
		<tr>
			<td><strong>Model</strong></td>
			<td>DAREU EK87 V2</td>
		</tr>
		<tr>
			<td><strong>Layout</strong></td>
			<td>87 KEY</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u</strong></td>
			<td>Trắng</td>
		</tr>
		<tr>
			<td>Kết nối</td>
			<td>C&oacute; d&acirc;y</td>
		</tr>
		<tr>
			<td><strong>Switch</strong></td>
			<td>Blue/ Brown/ Red D switch</td>
		</tr>
		<tr>
			<td><strong>Keycap</strong></td>
			<td>ABS 2 lớp m&agrave;u</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>39 x 366 x 137 mm</td>
		</tr>
		<tr>
			<td><strong>C&acirc;n nặng</strong></td>
			<td>936 g</td>
		</tr>
		<tr>
			<td><strong>LED Light</strong></td>
			<td>Rainbow/ LED Light</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết b&agrave;n ph&iacute;m DareU EK87V2 White</strong></h2>

<p>DareU EK87V2 White d&ograve;ng&nbsp;b&agrave;n ph&iacute;m cơ&nbsp;gi&aacute; rẻ sở hữu layout v&ocirc; c&ugrave;ng nhỏ gọn, thiết kế sang trọng với t&ocirc;ng m&agrave;u trắng chủ đạo kết hợp c&ugrave;ng c&aacute;c chi tiết được gia c&ocirc;ng tinh xảo tạo n&ecirc;n tổng thể v&ocirc; c&ugrave;ng nổi loạn, quyến rũ v&agrave; đầy ấn tượng. Hứa hẹn đ&acirc;y sẽ l&agrave;m một trong những d&ograve;ng b&agrave;n ph&iacute;m cơ đ&aacute;p ứng tốt c&aacute;c t&aacute;c vụ học tập v&agrave; giải tr&iacute; với gi&aacute; th&agrave;nh v&ocirc; c&ugrave;ng hợp l&yacute; m&agrave; bạn đang t&igrave;m kiếm đấy nh&eacute;!</p>

<h3><strong>Thiết kế nhỏ gọn Layout 87 ph&iacute;m bấm</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-ban-phim-dareu-ek87v2-white-brown-switch" src="https://file.hstatic.net/200000722513/file/gearvn-ban-phim-dareu-ek87v2-white-brown-switch-3_167c7ccd272346e6b5164cb71c574114_1024x1024.png" /></p>

<p>&nbsp;</p>

<p>Thiết kế bố cục 87% v&ocirc; c&ugrave;ng nhỏ gọn bạn ho&agrave;n to&agrave;n c&oacute; thể tự do s&aacute;ng tạo g&oacute;c m&aacute;y, r&uacute;t ngắn khoảng c&aacute;ch di chuyển giữa b&agrave;n ph&iacute;m v&agrave;&nbsp;chuột m&aacute;y t&iacute;nh&nbsp;để n&acirc;ng cao hiệu suất l&agrave;m việc trong thời gian d&agrave;i. Ngo&agrave;i ra, nhờ v&agrave;o Layout Tenkeyless với 87 ph&iacute;m bấm bạn ho&agrave;n to&agrave;n c&oacute; thể cất gọn trong Balo c&ugrave;ng c&aacute;c thiết bị ngoại vi kh&aacute;c như chuột,&nbsp;tai nghe Bluetooth&nbsp;v&agrave; nhiều phụ kiện kh&aacute;c để c&oacute; thể sử dụng ở bất kỳ đ&acirc;u khi cần thiết.</p>

<h3><strong>Phối m&agrave;u sang trọng, đẳng cấp</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-ban-phim-dareu-ek87v2-white-brown-switch" src="https://file.hstatic.net/200000722513/file/gearvn-ban-phim-dareu-ek87v2-white-brown-switch_b090e1612f0341f5bb787da0c8d1faf1_grande.png" /></p>

<p>&nbsp;</p>

<p>B&ecirc;n cạnh thiết kế v&ocirc; c&ugrave;ng nhỏ gọn, DareU EK87V2 c&ograve;n sở hữu phối m&agrave;u v&ocirc; c&ugrave;ng sang trọng v&agrave; đầy s&aacute;ng tạo. Với việc sử dụng tone m&agrave;u trắng l&agrave;m chủ đạo v&agrave; điểm nhấn bằng ph&iacute;m Enter, ESC đen kết hợp c&ugrave;ng c&aacute;c đường n&eacute;t được gia c&ocirc;ng tỉ mỉ tất cả tạo chiếc&nbsp;b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh&nbsp;v&ocirc; c&ugrave;ng đẹp mắt v&agrave; đầy ấn tượng.</p>

<h3><strong>Hệ thống led chiếu s&aacute;ng Rainbow/ LED Light</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-ban-phim-dareu-ek87v2-white-brown-switch" src="https://file.hstatic.net/200000722513/file/gearvn-ban-phim-dareu-ek87v2-white-brown-switch-1_7926b4c77959459496d9285c1b64c330_grande.png" /></p>

<p>&nbsp;</p>

<p>Để tăng th&ecirc;m vẻ ngo&agrave;i độc đ&aacute;o, DareU t&iacute;ch hợp hệ thống LED Rainbow v&ocirc; c&ugrave;ng sinh động c&ugrave;ng nhiều hiệu ứng chiếu s&aacute;ng kh&aacute;c nhau c&oacute; thể t&ugrave;y chỉnh qua c&aacute;c tổ hợp ph&iacute;m. Điều n&agrave;y gi&uacute;p người chơi tự do đồng bộ &aacute;nh s&aacute;ng c&ugrave;ng c&aacute;c phụ kiện kh&aacute;c, tạo n&ecirc;n kh&ocirc;ng gian l&agrave;m việc &amp; giải tr&iacute; l&yacute; tưởng.</p>

<h3><strong>Trang bị c&ocirc;ng tắc cơ học D Switch</strong></h3>

<p>Trang bị c&ocirc;ng tắc cơ học D Switch với tốc độ phản hồi nhanh, cảm gi&aacute;c bấm đầm, chắc chắn c&ugrave;ng &acirc;m thanh g&otilde; v&ocirc; c&ugrave;ng &ecirc;m tai tạo cho người chơi cảm gi&aacute;c phấn khởi khi soạn thảo văn bản, g&otilde; ph&iacute;m l&uacute;c chat v&agrave; tăng th&ecirc;m cảm hứng khi chơi c&aacute;c tựa game y&ecirc;u th&iacute;ch.&nbsp;</p>

<h3><strong>Keycap ABS 2 lớp m&agrave;u si&ecirc;u bền</strong></h3>

<p>Bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m sử dụng&nbsp;b&agrave;n ph&iacute;m cơ DareU&nbsp;với tần suất cao v&igrave; được t&iacute;ch hợp bộ Keycaps ABS 2 lớp si&ecirc;u bền, đảm bảo c&aacute;c k&yacute; tự tr&ecirc;n b&agrave;n ph&iacute;m sẽ kh&ocirc;ng bị phai mờ hoặc b&oacute;ng khi g&otilde; ph&iacute;m.</p>
', CAST(400000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10143, N'Màn hình cong Dell S2722DGM 27" 2K 165Hz chuyên game', N'man-hinh-cong-dell-s2722dgm-27-2k-165hz-chuyen-game', N'Màn hình cong Dell S2722DGM 27" 2K 165Hz chuyên game', N'/DataManagement/Images/Man%20Hinh/Dell/dell-s2722dgm-27-2k-165hz-chuyen-game/dell_s2722dgm_gearvn_abc1302b3f854b7bacd6dc2ed3f06c74_2d17977b41454dbb90c0f21ead5ebcab_1024x1024.jpg', CAST(9099000 AS Decimal(18, 0)), 10, CAST(8189100 AS Decimal(18, 0)), 10039, CAST(N'2024-05-17T14:02:10.637' AS DateTime), NULL, 1, 10129, N'<p><strong>Th&ocirc;ng số kĩ thuật:</strong>&nbsp;</p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu</strong></td>
			<td>Dell</td>
		</tr>
		<tr>
			<td><strong>Bảo h&agrave;nh</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Kích thước</strong></td>
			<td>27 inch</td>
		</tr>
		<tr>
			<td><strong>Đ&ocirc;̣ ph&acirc;n giải</strong></td>
			<td>QHD 2560 x 1440</td>
		</tr>
		<tr>
			<td><strong>Tấm nền</strong></td>
			<td>VA</td>
		</tr>
		<tr>
			<td><strong>T&acirc;̀n s&ocirc;́ quét</strong></td>
			<td>165Hz</td>
		</tr>
		<tr>
			<td><strong>Thời gian phản h&ocirc;̀i</strong></td>
			<td>2 ms (gray-to-gray); 1 ms (MPRT)</td>
		</tr>
		<tr>
			<td><strong>Ki&ecirc;̉u màn hình (phẳng / cong )</strong></td>
			<td>Cong</td>
		</tr>
		<tr>
			<td><strong>Đ&ocirc;̣ sáng</strong></td>
			<td>350 cd/m2</td>
		</tr>
		<tr>
			<td><strong>Góc nhìn</strong></td>
			<td>178 (H) / 178 (V)</td>
		</tr>
		<tr>
			<td><strong>Khả năng hi&ecirc;̉n thị màu sắc</strong></td>
			<td>16.8 triệu m&agrave;u,&nbsp;99% sRGB</td>
		</tr>
		<tr>
			<td><strong>Đ&ocirc;̣ tương phản tĩnh</strong></td>
			<td>
			<p>1000: 1&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td><strong>C&ocirc;̉ng kết nối</strong></td>
			<td>
			<ul>
				<li>2 x HDMI</li>
				<li>DisplayPort</li>
				<li>Audio line-out (mini-jack)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong>Khối lượng</strong></td>
			<td>9.12Kg</td>
		</tr>
		<tr>
			<td><strong>Điện năng ti&ecirc;u thụ</strong></td>
			<td>56 W</td>
		</tr>
		<tr>
			<td><strong>Hỗ trợ VESA</strong></td>
			<td>100 x 100 mm</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>60.838 cm x 19.037 cm x 39.321 cm</td>
		</tr>
		<tr>
			<td><strong>Phụ ki&ecirc;̣n đi kèm</strong></td>
			<td>
			<p>C&aacute;p nguồn, C&aacute;p DisplayPort, C&aacute;p HDMI</p>
			</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute;&nbsp;m&agrave;n h&igrave;nh cong Dell&nbsp;S2722DGM 27&quot; 2K 165Hz chuy&ecirc;n game</strong></h2>

<p>Dell l&agrave; một trong những h&atilde;ng sản xuất&nbsp;m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh&nbsp;hướng đến sự đơn giản, chắc chắn sang trọng nhưng mang lại chất lượng h&igrave;nh ảnh vượt trội. M&agrave;n h&igrave;nh cong Dell S2722DGM&nbsp;ch&uacute; trọng tỉ mỉ từng chi tiết c&ugrave;ng thiết kế nhỏ gọn tạo n&ecirc;n kh&ocirc;ng gian sang trọng cho kh&ocirc;ng gian của bạn.</p>

<p><img src="https://file.hstatic.net/1000026716/file/man-hinh-cong-dell-s2722dgm-27-2k-165hz-chuyen-game-1_0f60d362a1ad497583e96a31cba77473.jpg" /></p>

<p>&nbsp;</p>

<p>Chất lượng&nbsp;m&agrave;n h&igrave;nh 2K&nbsp;cho ph&eacute;p d&ugrave; bạn ngồi l&agrave;m việc hoặc chơi game giải tr&iacute; ở vị tr&iacute; n&agrave;o của&nbsp;m&agrave;n h&igrave;nh Dell&nbsp;th&igrave; chất lượng h&igrave;nh ảnh v&agrave; m&agrave;u sắc mang lại vẫn được giữ nguy&ecirc;n với g&oacute;c nh&igrave;n cực rộng.</p>

<p>Dell nổi tiếng với c&aacute;c thiết kế tối giản nhưng rất thẩm mĩ v&agrave; hiện đại,&nbsp;Dell S2722DGM&nbsp;c&oacute; ngoại h&igrave;nh rất &ldquo;nịnh mắt&rdquo; c&aacute;c game thủ bới m&agrave;u đen c&aacute; t&iacute;nh, đường n&eacute;t vu&ocirc;ng vắn đậm chất gaming.</p>

<p><img src="https://file.hstatic.net/1000026716/file/man-hinh-cong-dell-s2722dgm-27-2k-165hz-chuyen-game-3_6690bb6ca2d94c6082a5515df3661ff5.jpg" /></p>

<p>&nbsp;</p>

<p>Mặt sau tạo h&igrave;nh với những đường cắt c&aacute;ch điệu thể hiện sự ph&oacute;ng kho&aacute;ng, lạ mắt. C&aacute;c lỗ th&ocirc;ng hơi ở mặt sau của m&agrave;n h&igrave;nh được thiết kế để tăng cường ph&acirc;n t&aacute;n nhiệt, gi&uacute;p m&agrave;n h&igrave;nh của bạn lu&ocirc;n trong t&igrave;nh trạng m&aacute;t mẻ.</p>

<p><img src="https://file.hstatic.net/1000026716/file/man-hinh-cong-dell-s2722dgm-27-2k-165hz-chuyen-game-2_f35f2ce031994273ae837270511be25f.jpg" /></p>

<p>&nbsp;</p>

<p>Ch&acirc;n đế v&agrave; m&agrave;n h&igrave;nh c&oacute; thể th&aacute;o rời v&agrave; dễ d&agrave;ng lắp đặt c&ugrave;ng&nbsp;thiết kế lại nhỏ gọn, vững n&ecirc;n dễ d&agrave;ng phối gh&eacute;p với những pad l&oacute;t chuột cỡ lớn của game thủ m&agrave; kh&ocirc;ng chiếm diện t&iacute;ch sử dụng. Đồng thời, đ&acirc;y l&agrave; một trong những&nbsp;m&agrave;n h&igrave;nh Dell 27 Inch&nbsp;sở hữu bộ&nbsp;ch&acirc;n đế&nbsp;cho ph&eacute;p điều chỉnh độ cao, g&oacute;c nghi&ecirc;ng linh hoạt theo vị tr&iacute; sử dụng của mỗi game thủ.</p>

<ul>
	<li><strong>Được thiết kế độc đ&aacute;o:</strong>&nbsp;Lỗ th&ocirc;ng hơi ở mặt sau của m&agrave;n h&igrave;nh được thiết kế để tăng cường ph&acirc;n t&aacute;n nhiệt.</li>
	<li><strong>Đứng v&agrave; cung cấp:</strong>&nbsp;Chơi game thoải m&aacute;i trong thời gian d&agrave;i nhờ một ch&acirc;n đế thon, thon mới với khả năng điều chỉnh độ cao v&agrave; độ nghi&ecirc;ng dễ d&agrave;ng.</li>
	<li><strong>C&aacute;c c&ocirc;ng cụ tập trung v&agrave;o tr&ograve; chơi:</strong>&nbsp;Dễ d&agrave;ng điều hướng v&agrave; quản l&yacute; c&aacute;c menu hiển thị tr&ecirc;n m&agrave;n h&igrave;nh (OSD) với ph&iacute;m điều khiển v&agrave; n&uacute;t tắt mới nằm ở mặt sau của m&agrave;n h&igrave;nh.</li>
	<li><strong>T&ugrave;y chỉnh mọi lợi thế:&nbsp;</strong>Ba cấu h&igrave;nh do người d&ugrave;ng x&aacute;c định cung cấp nhiều t&ugrave;y chọn c&aacute; nh&acirc;n h&oacute;a hơn.&nbsp;</li>
	<li><strong>Kh&ocirc;ng&nbsp;nhấp nh&aacute;y&nbsp;:</strong>&nbsp;Điều khiển độ s&aacute;ng bằng d&ograve;ng điện một chiều cho ph&eacute;p m&agrave;n h&igrave;nh kh&ocirc;ng nhấp nh&aacute;y, mang lại cho bạn trải nghiệm xem thoải m&aacute;i hơn.</li>
	<li><strong>&Iacute;t căng thẳng hơn:</strong>&nbsp;T&iacute;nh năng ComfortView giảm ph&aacute;t thải &aacute;nh s&aacute;ng xanh c&oacute; hại, giảm đ&aacute;ng kể mỏi mắt kỹ thuật số.</li>
</ul>
', CAST(7890000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10144, N'Màn hình Dell E2422H 24" IPS', N'man-hinh-dell-e2422h-24-ips', N'Màn hình Dell E2422H 24" IPS', N'/DataManagement/Images/Man%20Hinh/Dell/man-hinh-dell-e2422h-24-ips/dell_e2422h_gearvn_f5ba1e5ec0314e8e81795ca787bb2568_2cf4bd407f1442c483d6394be8fc7f3d_1024x1024.jpg', CAST(4190000 AS Decimal(18, 0)), 15, CAST(3561500 AS Decimal(18, 0)), 10039, CAST(N'2024-05-17T14:04:38.743' AS DateTime), NULL, 1, 10130, N'<p><strong>Th&ocirc;ng số sản phẩm:</strong></p>

<table border="1" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Loại m&agrave;n h&igrave;nh</strong></td>
			<td>LED</td>
		</tr>
		<tr>
			<td><strong>Tấm nền</strong></td>
			<td>IPS</td>
		</tr>
		<tr>
			<td><strong>Tỷ lệ khung h&igrave;nh</strong></td>
			<td>16:9</td>
		</tr>
		<tr>
			<td><strong>Độ ph&acirc;n giải</strong></td>
			<td>1920 x 1080&nbsp;- 60Hz</td>
		</tr>
		<tr>
			<td><strong>Pixel Pitch</strong></td>
			<td>0,2745 mm x 0,2745 mm</td>
		</tr>
		<tr>
			<td><strong>Độ s&aacute;ng</strong></td>
			<td>250 cd / m&nbsp;<sup>2</sup></td>
		</tr>
		<tr>
			<td><strong>Tỷ lệ tương phản</strong></td>
			<td>1000: 1&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Thời gian phản hồi</strong></td>
			<td>5 ms gray to gray in Extreme mode</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc hiển thị</strong></td>
			<td>16.7&nbsp;triệu m&agrave;u sắc</td>
		</tr>
		<tr>
			<td><strong>Cổng kết nối</strong></td>
			<td>1 X VGA<br />
			1 X DisplayPort 1.2 (c&oacute; d&acirc;y DP đi k&egrave;m)</td>
		</tr>
		<tr>
			<td><strong>Xử l&iacute; bề mặt</strong></td>
			<td>Chống ch&oacute;i</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>C&oacute; ch&acirc;n đế:&nbsp;6.73 inches x 21.76 inches x 16.55 inches</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>5.50 kg&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Ti&ecirc;u chuẩn</strong></td>
			<td>ENERGY STAR<br />
			EPEAT Gold đ&atilde; được đăng k&yacute;<br />
			Chứng nhận TCO hiện h&agrave;nh</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết m&agrave;n h&igrave;nh Dell E2422H 24 inch IPS</strong></h2>

<p>M&agrave;n h&igrave;nh Dell&nbsp;E2422H&nbsp;24 inch&nbsp;IPS ch&iacute;nh l&agrave; những g&igrave; bạn cần để l&agrave;m việc hiệu quả hơn. Sở hữu một g&oacute;c nh&igrave;n rộng tr&ecirc;n tấm nền IPS c&ugrave;ng độ ph&acirc;n giải&nbsp;FHD, bạn chắc chắn sẽ c&oacute; được trải nghiệm tuyệt vời tr&ecirc;n m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh của m&igrave;nh. B&ecirc;n cạnh đ&oacute;, c&ocirc;ng nghệ ComfortView được trang bị để hạn chế tối đa lượng &aacute;nh s&aacute;ng xanh từ m&agrave;n h&igrave;nh g&acirc;y hại cho mắt.</p>

<p><img alt="GEARVN - Màn hình Dell E2422H 24inch IPS" src="https://file.hstatic.net/1000026716/file/gearvn-man_hinh_dell_e2422h_24inch_ips-1_28856e7176794da8aa6f0b7de08a457f.jpg" /></p>

<h3><strong>Thiết kế tiện lợi</strong></h3>

<p>M&agrave;n h&igrave;nh Dell E2422H mang một vẻ ngo&agrave;i gọn g&agrave;ng v&agrave; đơn giản. Thiết kế viền m&agrave;n h&igrave;nh mỏng l&agrave;m tăng vẻ ngo&agrave;i hiện đại v&agrave; n&acirc;ng cao khả năng hiển thị h&igrave;nh ảnh hơn. Dell E2422H gi&uacute;p tối ưu kh&ocirc;ng gian l&agrave;m việc của bạn nhờ thiết kế gi&aacute; đỡ nhỏ gọn v&agrave; quản l&yacute; c&aacute;p th&ocirc;ng minh được cải tiến. Ngo&agrave;i ra, bạn c&oacute; thể kết nối dễ d&agrave;ng với c&aacute;c hệ thống hiện đại kh&aacute;c nhờ v&agrave;o c&aacute;c cổng&nbsp;VGA&nbsp;v&agrave; DP c&oacute; tr&ecirc;n Dell E2422H.</p>

<p><img alt="GEARVN - Màn hình Dell E2422H 24inch IPS" src="https://file.hstatic.net/1000026716/file/gearvn-man_hinh_dell_e2422h_24inch_ips-5_455b2b9960754a5692564b0faff244d4.jpg" /></p>

<h3><strong>Tr&igrave;nh quản l&iacute; m&agrave;n h&igrave;nh của Dell E2422H</strong></h3>

<p>Dell E2422H cho ph&eacute;p bạn sắp xếp nhiều ứng dụng tr&ecirc;n một hoặc nhiều m&agrave;n h&igrave;nh với 38 ph&acirc;n v&ugrave;ng cửa sổ đ&atilde; được thiết lập sẵn v&agrave; c&aacute; nh&acirc;n h&oacute;a l&ecirc;n đến năm cửa sổ, gi&uacute;p bạn thực hiện tốt khả năng đa nhiệm. Bạn cũng c&oacute; thể c&agrave;i đặt cấu h&igrave;nh quản l&yacute; của m&igrave;nh c&ugrave;ng với c&aacute;c ph&iacute;m tắt để bạn c&oacute; thể l&agrave;m việc nhanh hơn v&agrave; tiết kiệm nhiều thời gian hơn.</p>

<p><img alt="GEARVN - Màn hình Dell E2422H 24inch IPS" src="https://file.hstatic.net/1000026716/file/gearvn-man_hinh_dell_e2422h_24inch_ips-2_e310c3deaa0e481c95836f69e59836c5.jpg" /></p>

<h3><strong>Tiết kiệm năng lượng</strong></h3>

<p>M&agrave;n h&igrave;nh Dell E2422H đạt y&ecirc;u cầu ti&ecirc;u chuẩn của m&ocirc;i trường v&agrave; c&aacute;c quy định mới nhất như ENERGY STAR, EPEAT Gold v&agrave; TCO. Một t&iacute;nh năng mới PowerNap gi&uacute;p l&agrave;m mờ hoặc k&iacute;ch hoạt chế độ ngủ khi m&agrave;n h&igrave;nh kh&ocirc;ng sử dụng gi&uacute;p tiết kiệm đ&aacute;ng kể năng lượng.</p>

<p><img alt="GEARVN - Màn hình Dell E2422H 24inch IPS" src="https://file.hstatic.net/1000026716/file/gearvn-man_hinh_dell_e2422h_24inch_ips-4_d5dd82957868437eb33d208b27a923be.jpg" /></p>
', CAST(3790000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10145, N'Màn hình Dell S2721HN 27" IPS 75Hz viền mỏng', N'man-hinh-dell-s2721hn-27-ips-75hz-vien-mong', N'Màn hình Dell S2721HN 27" IPS 75Hz viền mỏng', N'/DataManagement/Images/Man%20Hinh/Dell/s2721hn-27-ips-75hz-vien-mong/1_280bb4b9924145fdb5b41c6c8c1af6a0_0803824e5dcf49d0bb4c309f9b96d137_1024x1024.jpg', CAST(6390000 AS Decimal(18, 0)), 15, CAST(5431500 AS Decimal(18, 0)), 10039, CAST(N'2024-05-17T14:06:42.780' AS DateTime), NULL, 1, 10131, N'<p><strong><strong>Th&ocirc;ng số kỹ thuật:</strong></strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<p><strong>Thương hiệu:</strong></p>
			</td>
			<td>
			<p>Dell</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Bảo h&agrave;nh:</strong></p>
			</td>
			<td>
			<p>36 th&aacute;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch thước:</strong></p>
			</td>
			<td>
			<p>27 inch</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ ph&acirc;n giải:</strong></p>
			</td>
			<td>
			<p>FullHD 1920x1080</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tấm nền:</strong></p>
			</td>
			<td>
			<p>IPS</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tần số qu&eacute;t:</strong></p>
			</td>
			<td>
			<p>75Hz&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Thời gian phản hồi:</strong></p>
			</td>
			<td>
			<p>4 ms</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kiểu m&agrave;n h&igrave;nh (phẳng/cong):</strong></p>
			</td>
			<td>
			<p>Phẳng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ s&aacute;ng:</strong></p>
			</td>
			<td>
			<p>250 nits</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>G&oacute;c nh&igrave;n:</strong></p>
			</td>
			<td>
			<p>178&deg; (H) / 178&deg; (V)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khả năng hiển thị m&agrave;u sắc:</strong></p>
			</td>
			<td>
			<p>99% sRGB</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ tương phản:</strong></p>
			</td>
			<td>
			<p>1,000:1</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Cổng xuất h&igrave;nh:</strong></p>
			</td>
			<td>
			<p>2 x HDMI (HDCP 1.4)<br />
			Audio line-out</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>T&iacute;nh năng đặc biệt:</strong></p>
			</td>
			<td>
			<p>Hỗ trợ chuẩn VESA 100x100</p>
			</td>
		</tr>
		<tr>
			<td><strong>Thiết kế</strong></td>
			<td>Tilt Angle: -5/+21</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>With stand - width: 24 in - depth: 7.4 in - height: 17.8 in<br />
			Without stand - width: 2.1 in - height: 14.3 in</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khối lượng:</strong></p>
			</td>
			<td>
			<p>16.75 lbs</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Ti&ecirc;u thụ điện:</strong></p>
			</td>
			<td>
			<p>15.5 W</p>
			</td>
		</tr>
	</tbody>
</table>

<h3><strong>Đ&aacute;nh gi&aacute; chi tiết m&agrave;n h&igrave;nh Dell S2721HN 27&ldquo; IPS 75Hz viền mỏng</strong></h3>

<p>Sở hữu thiết kế mỏng nhẹ, viền cực kỳ mỏng gi&uacute;p chiếc m&agrave;n h&igrave;nh Dell S2721HN th&ecirc;m phần sang trọng. Với k&iacute;ch thước&nbsp;m&agrave;n h&igrave;nh 27 inch&nbsp;tr&ecirc;n tấm nền IPS, Dell S2721HN mang đến khả năng hiển thị h&igrave;nh ảnh rộng lớn, sắc n&eacute;t.</p>

<h3><strong>Thiết kế mỏng nhẹ, sang trọng</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-s2721hn-27-ips-75hz-vien-mong_2dc9db3d262a4bd3974821fd1641d0e4_grande.png" /></p>

<p>&nbsp;</p>

<p>Dell S2721HN 27&ldquo; IPS 75Hz sở hữu thiết kế v&ocirc; c&ugrave;ng sang trọng v&agrave; tinh tế, điều đ&oacute; được thể hiện qua việc Dell đ&atilde; sử dụng viền cực mỏng tr&ecirc;n d&ograve;ng&nbsp;m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh&nbsp;mới nhất gi&uacute;p người d&ugrave;ng c&oacute; thể tận hưởng g&oacute;c nh&igrave;n lớn hơn, chi tiết sẽ sắc n&eacute;t ở nhiều g&oacute;c độ. Đồng thời, tăng th&ecirc;m phần sang trọng khi đặt ở bất kỳ kh&ocirc;ng gian l&agrave;m việc, giải tr&iacute; n&agrave;o.&nbsp;</p>

<h3><strong>Giảm mỏi mắt trong suốt thời gian d&agrave;i sử dụng</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-s2721hn-27-ips-75hz-vien-mong-6_6b1dbba216ae44aaa406826a864be449_grande.png" /></p>

<p>&nbsp;</p>

<p>Dell S2721HN&nbsp; được t&iacute;ch hợp c&ocirc;ng nghệ flicker- free chống mỏi mắt gi&uacute;p mắt thoải m&aacute;i hơn khi đọc b&aacute;o, lướt web. Nhờ v&agrave;o t&iacute;nh năng Dell comfortview mắt sẽ được bảo vệ tối đa bằng c&aacute;ch giảm thiểu &aacute;nh s&aacute;ng xanh g&acirc;y hại. Đ&acirc;y l&agrave; ưu điểm vượt trội so với c&aacute;c đối thủ ở c&ugrave;ng ph&acirc;n kh&uacute;c</p>

<h3><strong>Trải nghiệm m&agrave;n h&igrave;nh sắc n&eacute;t</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-s2721hn-27-ips-75hz-vien-mong-2_fa1bc0053e3247358fcbc72e80c1a1f6_grande.png" /></p>

<p>&nbsp;</p>

<p>M&agrave;n h&igrave;nh Dell&nbsp;kết hợp với c&ocirc;ng nghệ AMD, tốc độ l&agrave;m mới 75Hz, gi&uacute;p người d&ugrave;ng trải nghiệm cảm gi&aacute;c mượt m&agrave;, kh&ocirc;ng bị x&eacute; h&igrave;nh. Với m&agrave;n h&igrave;nh Dell người chơi sẽ được tận hưởng h&igrave;nh ảnh sắc n&eacute;t, đẹp mắt v&agrave; c&aacute;c Gam m&agrave;u v&ocirc; c&ugrave;ng ch&iacute;nh x&aacute;c.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-s2721hn-27-ips-75hz-vien-mong-5_44c6d75fe15a487abcd78283508dc785_grande.png" /></p>

<p>Dell S2721HN l&agrave; thế hệ m&agrave;n h&igrave;nh 27 inch với g&oacute;c nh&igrave;n vượt trội mang lại trải nghiệm v&ocirc; c&ugrave;ng đ&atilde; mắt, người chơi c&oacute; thể tận hưởng g&oacute;c nh&igrave;n cực rộng nhờ c&ocirc;ng nghệ&nbsp;IPS, chi tiết sẽ sắc n&eacute;t ở nhiều g&oacute;c độ.</p>

<h3><strong>Độ tương phản v&agrave; độ s&aacute;ng l&yacute; tưởng</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-s2721hn-27-ips-75hz-vien-mong-3_997af1afedc14e71b394e5e19feb0f72_grande.png" /></p>

<p>&nbsp;</p>

<p>Sở hữu chỉ số độ s&aacute;ng ở mức 250 nits, ph&ugrave; hợp để chơi game hay c&aacute;c nhu cầu giải tr&iacute; th&ocirc;ng thường. Về độ tương phản, m&agrave;n h&igrave;nh đạt độ tương phản dưới 1000:1 cả khi ở độ s&aacute;ng tối đa v&agrave; tối thiểu, mang lại h&igrave;nh ảnh sắc n&eacute;t v&agrave; c&oacute; chiều s&acirc;u tăng th&ecirc;m trải nghiệm với mọi nhu cầu sử dụng.&nbsp;</p>
', CAST(4390000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10146, N'Màn hình Dell UltraSharp U2422HE 24" IPS USBC RJ45', N'man-hinh-dell-ultrasharp-u2422he-24-ips-usbc-rj45', N'Màn hình Dell UltraSharp U2422HE 24" IPS USBC RJ45', N'/DataManagement/Images/Man%20Hinh/Dell/ultrasharp-u2422he-24-ips-usbc-rj45/554b4az.jpg', CAST(8190000 AS Decimal(18, 0)), 20, CAST(6552000 AS Decimal(18, 0)), 10039, CAST(N'2024-05-17T14:08:48.750' AS DateTime), NULL, 1, 10132, N'<p><strong><strong>Th&ocirc;ng số kỹ thuật:</strong></strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<p><strong>Thương hiệu:</strong></p>
			</td>
			<td>
			<p>Dell</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Bảo h&agrave;nh:</strong></p>
			</td>
			<td>
			<p>36 th&aacute;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch thước:</strong></p>
			</td>
			<td>
			<p>24&quot;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ ph&acirc;n giải:</strong></p>
			</td>
			<td>
			<p>FullHD 1920x1080</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tấm nền:</strong></p>
			</td>
			<td>
			<p>IPS</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tần số qu&eacute;t:</strong></p>
			</td>
			<td>
			<p>60 Hz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Thời gian phản hồi:</strong></p>
			</td>
			<td>
			<p>5 ms</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kiểu m&agrave;n h&igrave;nh (phẳng/cong):</strong></p>
			</td>
			<td>
			<p>Phẳng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ s&aacute;ng:</strong></p>
			</td>
			<td>
			<p>250 nits</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>G&oacute;c nh&igrave;n:</strong></p>
			</td>
			<td>
			<p>178&deg; (H) / 178&deg; (V)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khả năng hiển thị m&agrave;u sắc:</strong></p>
			</td>
			<td>
			<p>100% sRGB, 100% Rec709, 85% DCI-P3</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ tương phản tĩnh:</strong></p>
			</td>
			<td>
			<p>1,000:1</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ tương phản động:</strong></p>
			</td>
			<td>
			<p>100,000,000:1</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Cổng xuất h&igrave;nh:</strong></p>
			</td>
			<td>
			<p>1 x Cổng DP 1.4<br />
			1 x Cổng HDMI 1.4<br />
			1 x Cổng DisplayPort (đầu ra) với MST<br />
			1 x Cổng USB Type-C (chế độ Altenrate với Display POrt 1.4, Power Delivery tối đa 90W)<br />
			1 x Cổng ngược d&ograve;ng USB Type-C (chỉ dữ liệu 10GPBs USB 3.2 gen 2)<br />
			1 x Cổng hạ lưu USB Loại C với khả năng sạc ở mức 15W (Tối đa)<br />
			1 x USB si&ecirc;u tốc độ 10Gbps với khả năng sạc BC1.2 ở 2 A (tối đa)<br />
			3 x USB si&ecirc;u tốc độ 10 Gbps (Thế hệ USB 3.2 2) cổng hạ lưu<br />
			1 x cổng ra &acirc;m thanh<br />
			1 x cổng LAN RJ45</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>T&iacute;nh năng đặc biệt:</strong></p>
			</td>
			<td>
			<p>Hỗ trợ chuẩn VESA 100x100</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khối lượng:</strong></p>
			</td>
			<td>
			<p>3.95&nbsp;kg</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Ti&ecirc;u thụ điện:</strong></p>
			</td>
			<td>
			<p>11.8W</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch thước chuẩn:</strong></p>
			</td>
			<td>
			<p>538&nbsp;x 363&nbsp;x 180&nbsp;(mm)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phụ kiện đi k&egrave;m:</strong></p>
			</td>
			<td>
			<p>1 x c&aacute;p DisplayPort</p>

			<p>1 x c&aacute;p USB SuperSpeed ​​- USB Type C to&nbsp;A</p>

			<p>1 x c&aacute;p USB Type C to C</p>
			</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết m&agrave;n h&igrave;nh&nbsp;Dell UltraSharp U2422HE 24&quot; IPS USBC RJ45</strong></h2>

<h3><strong>Sức mạnh từ USB type C v&agrave; cổng LAN RJ45&nbsp;- Kết nối của tương lai</strong></h3>

<p>Kết nối USB-C nhận c&ocirc;ng suất ph&acirc;n phối l&ecirc;n đến 90W (c&ocirc;ng suất ph&acirc;n phối cao nhất trong ph&acirc;n kh&uacute;c) qua USB-C, v&igrave; vậy bạn c&oacute; thể sạc pin m&aacute;y t&iacute;nh x&aacute;ch tay của m&igrave;nh v&agrave; tận hưởng năng suất kh&ocirc;ng bị gi&aacute;n đoạn.&nbsp;</p>

<p>Ngo&agrave;i ra, h&atilde;y tăng tốc thời gian chuyển đổi từ b&agrave;n l&agrave;m việc của bạn bằng một sợi c&aacute;p duy nhất truyền điện, dữ liệu v&agrave; video - tất cả c&ugrave;ng một l&uacute;c. Một trong những d&ograve;ng&nbsp;m&agrave;n h&igrave;nh&nbsp;nhận kết nối nhanh hơn v&agrave; thuận lợi, nhanh ch&oacute;ng truy cập gi&uacute;p bạn dễ d&agrave;ng sạc v&agrave; kết nối với nhiều loại thiết bị. Đặc biệt với cổng LAN RJ45 hỗ trợ truy cập mạng một c&aacute;ch ổn định cho trải nghiệm tuyệt vời.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422he-24-ips-usbc-rj45-1_721a0e9b92084975af91d1a63af88b3a_grande.jpg" /></p>

<h3><strong>Tr&igrave;nh quản l&yacute; đi k&egrave;m th&ocirc;ng minh</strong></h3>

<p>&nbsp;</p>

<p>Hiệu quả ở mọi cấp độ nhờ t&iacute;nh năng sắp xếp dễ d&agrave;ng của tr&igrave;nh quản l&yacute; hiển thị (DDM) của Dell cho ph&eacute;p bạn nhanh ch&oacute;ng xếp v&agrave; xem c&aacute;c ứng dụng của m&igrave;nh cạnh nhau tr&ecirc;n một hoặc nhiều m&agrave;n h&igrave;nh được kết nối để mang lại hiệu quả đa nhiệm. V&agrave; với DDM được cải tiến, bạn sẽ nhận được nhiều bố cục đặt trước hơn nữa. Chuyển đổi liền mạch nhờ t&iacute;nh năng tự động kh&ocirc;i phục ghi nhớ nơi bạn đ&atilde; dừng lại, v&igrave; vậy c&aacute;c ứng dụng sẽ quay trở lại nơi bạn đ&atilde; rời khỏi ch&uacute;ng, ngay cả sau khi bạn đ&atilde; r&uacute;t ph&iacute;ch cắm. Ch&igrave;a kh&oacute;a của sự tiện lợi l&agrave; c&aacute;c ph&iacute;m tắt c&oacute; thể gi&uacute;p bạn tiết kiệm nhiều thời gian hơn, cho ph&eacute;p bạn dễ d&agrave;ng định cấu h&igrave;nh c&agrave;i đặt quản l&yacute; m&agrave;n h&igrave;nh của m&igrave;nh để bạn c&oacute; thể l&agrave;m việc nhanh hơn.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422he-24-ips-usbc-rj45-6_f0e33eb3cce1432da37b787132bd55bd_grande.jpg" /></p>

<h3><strong>Linh hoạt v&agrave; năng suất cao với khả năng điều chỉnh m&agrave;n h&igrave;nh đa dạng</strong></h3>

<p>&nbsp;</p>

<p>Th&ecirc;m kh&ocirc;ng gian để l&agrave;m việc: Tận dụng tối đa kh&ocirc;ng gian b&agrave;n l&agrave;m việc hạn chế của bạn với ch&acirc;n đế nhỏ gọn n&agrave;y. Thiết kế InfinityEdge với khả năng l&agrave;m việc với chế độ xem kh&ocirc;ng bị gi&aacute;n đoạn tr&ecirc;n nhiều m&agrave;n h&igrave;nh với thiết kế gần như kh&ocirc;ng viền n&agrave;y. V&agrave; khi bạn sử dụng thiết lập m&agrave;n h&igrave;nh k&eacute;p của Dell, bạn c&oacute; thể tăng năng suất của m&igrave;nh l&ecirc;n đến 21%. Linh hoạt cho sự thoải m&aacute;i cả ng&agrave;y với khả năng nghi&ecirc;ng, xoay, xoay v&agrave; điều chỉnh độ cao của m&agrave;n h&igrave;nh để ph&ugrave; hợp với nhu cầu của bạn, bạn c&oacute; thể thoải m&aacute;i cả ng&agrave;y.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422he-24-ips-usbc-rj45-2_567b703e69724d4cb3fa05698d7c5d86_grande.jpg" /></p>

<h3><strong>Đa dạng cổng kết nối</strong></h3>

<p>Với đa dạng cổng kết nối như HDMI, DP v&agrave; đặc biệt l&agrave; USB type C gi&uacute;p khả năng kết nối của m&agrave;n h&igrave;nh để sử dụng đa dạng v&agrave; linh hoạt. Ngo&agrave;i ra c&ograve;n t&iacute;ch hợp th&ecirc;m c&aacute;c&nbsp;cổng USB 3.2 Gen 2&nbsp;hỗ trợ bạn kết nối c&aacute;c thiết bị ngoại vi v&agrave; sao ch&eacute;p dữ liệu dễ d&agrave;ng hơn với tốc độ cao l&ecirc;n đến 10Gbps hoặc sạc điện thoại hay c&aacute;c thiết bị kh&aacute;c.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422he-24-ips-usbc-rj45-5_89bfa0dceab04e9db9a62fedd3242aa8_grande.jpg" /></p>

<h3><strong>Đ&atilde; được chứng nhận v&agrave; đạt được nhiều giải thưởng uy t&iacute;n</strong></h3>

<p>M&agrave;n h&igrave;nh Dell&nbsp;UltraSharp l&agrave; một m&agrave;n h&igrave;nh đạt được nhiều giải thưởng về thiết kế cũng như chất lượng được khẳng định bởi chứng nhận của chuy&ecirc;n gia. Tự h&agrave;o khi mang đến cho bạn một sản phẩm tuyệt vời v&agrave; tối ưu nhất cho c&ocirc;ng việc đồ họa.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422he-24-ips-usbc-rj45-3_a1e04871245d4767a59c06f3801c1746_grande.jpg" /></p>
', CAST(6890000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10147, N'Màn hình ViewSonic ColorPro VP2456 24" IPS USBC chuyên đồ hoạ', N'man-hinh-viewsonic-colorpro-vp2456-24-ips-usbc-chuyen-do-hoa', N'Màn hình ViewSonic ColorPro VP2456 24" IPS USBC chuyên đồ hoạ', N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-colorpro-vp2456-24-ips-usbc-chuyen-do-hoa/manhinh3.jpg', CAST(6290000 AS Decimal(18, 0)), 15, CAST(5346500 AS Decimal(18, 0)), 10040, CAST(N'2024-05-17T14:11:52.330' AS DateTime), NULL, 1, 10133, N'<h2><strong><strong>TH&Ocirc;NG SỐ KĨ THUẬT:&nbsp;</strong></strong></h2>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Kích thước</strong></td>
			<td>24-inch</td>
		</tr>
		<tr>
			<td><strong>Đ&ocirc;̣ ph&acirc;n giải</strong></td>
			<td>FullHD</td>
		</tr>
		<tr>
			<td><strong>Tấm nền</strong></td>
			<td>IPS&nbsp;</td>
		</tr>
		<tr>
			<td><strong>T&acirc;̀n s&ocirc;́ quét</strong></td>
			<td>60Hz</td>
		</tr>
		<tr>
			<td><strong>Thời gian phản h&ocirc;̀i</strong></td>
			<td>5ms</td>
		</tr>
		<tr>
			<td><strong>Ki&ecirc;̉u màn hình ( phẳng / cong )</strong></td>
			<td>Phẳng</td>
		</tr>
		<tr>
			<td><strong>Đ&ocirc;̣ sáng</strong></td>
			<td>250 cd/m&sup2; (typ)</td>
		</tr>
		<tr>
			<td><strong>Góc nhìn</strong></td>
			<td>178&ordm; horizontal, 178&ordm; vertical</td>
		</tr>
		<tr>
			<td><strong>Đ&ocirc;̣ tương phản tĩnh</strong></td>
			<td>1,000:1 (typ)</td>
		</tr>
		<tr>
			<td><strong>Độ tương phản động</strong></td>
			<td>20M:1</td>
		</tr>
		<tr>
			<td><strong>Đầu nối</strong></td>
			<td>USB 3.2 Type A Down Stream: 3<br />
			USB 3.2 Type B Up Stream: 1<br />
			USB 3.2 Type C Up Stream; DisplayPort Alt mode : 1 (60W power charger)<br />
			HDMI 1.4: 1<br />
			DisplayPort: 1<br />
			Power in: 3-pin Socket (IEC C14 / CEE22)</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch VESA</strong></td>
			<td>100 x 100 mm</td>
		</tr>
		<tr>
			<td><strong>Khối lượng</strong></td>
			<td>Khối lượng tịnh (kg): 6.5<br />
			Khối lượng tịnh kh&ocirc;ng c&oacute; ch&acirc;n đế (kg): 4<br />
			Tổng (kg): 8,4</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước&nbsp;</strong></td>
			<td>Bao b&igrave; (mm):&nbsp;620 x 392 x 228<br />
			K&iacute;ch thước (mm): 539 x 388.46~518.46 x 215<br />
			K&iacute;ch thước kh&ocirc;ng c&oacute; ch&acirc;n đế (mm): 539 x 320 x 52</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết m&agrave;n h&igrave;nh ViewSonic ColorPro VP2456 24&ldquo; IPS USBC chuy&ecirc;n đồ hoạ</strong></h2>

<p>M&agrave;n h&igrave;nh ViewSonic&nbsp;ColorPro VP2456 l&agrave; một&nbsp;m&agrave;n h&igrave;nh đồ họa&nbsp;l&yacute; tưởng cho nh&agrave; thiết kế đồ họa với k&iacute;ch thước&nbsp;24 inch, hầu như ph&ugrave; hợp với mọi kh&ocirc;ng gian l&agrave;m việc. Kết hợp với tấm nền IPS cao cấp v&agrave; độ phủ m&agrave;u rộng, ViewSonic ColorPro VP2456 cho khả năng t&aacute;i tạo h&igrave;nh ảnh tuyệt vời, đ&aacute;p ứng y&ecirc;u cầu sử dụng của d&acirc;n thiết kế đồ họa.</p>

<p><img alt="GEARVN - Màn hình ViewSonic ColorPro VP2456 24“ IPS USBC chuyên đồ hoạ" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-viewsonic-colorpro-vp2456-24-ips-usbc-chuyen-do-hoa-1_3b1288f3bf1144e79a3ea8058d3eaec9.png" /></p>

<h3><strong>Thiết kế hiện đại v&agrave; mới mẻ</strong></h3>

<p>M&agrave;n h&igrave;nh ViewSonic ColorPro VP2456 sở hữu thiết kế v&ocirc; c&ugrave;ng h&uacute;t mắt v&agrave; hiện đại. Ba cạnh viền m&agrave;n h&igrave;nh si&ecirc;u mỏng tạo cảm gi&aacute;c h&igrave;nh ảnh hiển thị liền mạch, kh&ocirc;ng bị gi&aacute;n đoạn bởi những viền đen to tướng. Phần ch&acirc;n đế h&igrave;nh chữ nhật mỏng, chắc chắn, kh&ocirc;ng chiếm qu&aacute; nhiều diện t&iacute;ch tr&ecirc;n b&agrave;n l&agrave;m việc.</p>

<p><img alt="GEARVN - Màn hình ViewSonic ColorPro VP2456 24“ IPS USBC chuyên đồ hoạ" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-viewsonic-colorpro-vp2456-24-ips-usbc-chuyen-do-hoa-5_b66b6a58caea49fc9940606afbebb1e9.png" /></p>

<p>Hơn nữa, ViewSonic ColorPro VP2456 c&ograve;n sở hữu thiết kế c&ocirc;ng th&aacute;i học hiện đại, bạn c&oacute; thể điều chỉnh độ cao, độ nghi&ecirc;ng v&agrave; xoay m&agrave;n h&igrave;nh một g&oacute;c 90 độ để t&igrave;m được g&oacute;c nh&igrave;n tốt nhất cho m&igrave;nh trong qu&aacute; tr&igrave;nh sử dụng.&nbsp;</p>

<h3><strong>H&igrave;nh ảnh sắc n&eacute;t đến từng chi tiết</strong></h3>

<p>ColorPro VP2456 sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 24 inch, độ ph&acirc;n giải&nbsp;Full HD&nbsp;cho khả năng hiển thị h&igrave;nh ảnh sống động, ch&acirc;n thật v&agrave; r&otilde; n&eacute;t hơn. B&ecirc;n cạnh đ&oacute;, c&ocirc;ng nghệ m&agrave;n h&igrave;nh IPS gi&uacute;p t&aacute;i tạo m&agrave;u sắc ấn tượng, ch&iacute;nh x&aacute;c đến từng chi tiết nhỏ v&agrave; hầu như kh&ocirc;ng c&oacute; sự thay đổi ở mọi g&oacute;c nh&igrave;n.</p>

<p><img alt="GEARVN - Màn hình ViewSonic ColorPro VP2456 24“ IPS USBC chuyên đồ hoạ" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-viewsonic-colorpro-vp2456-24-ips-usbc-chuyen-do-hoa-8_f1a5fe2e43824599a242925b8c73e7c1_grande.png" /></p>

<h3><strong>Độ chuẩn m&agrave;u sắc tr&ecirc;n ViewSonic ColorPro VP2456</strong></h3>

<p>ViewSonic ColorPro VP2456 c&ograve;n sở hữu độ phủ rộng, đạt 80% Adobe RGB v&agrave; 80% DCI-P3. H&atilde;ng đ&atilde; sử dụng thang m&agrave;u rộng hơn sRGB để nh&agrave; thiết kế thỏa sức s&aacute;ng tạo, tận dụng mọi lợi thế m&agrave;u sắc để tạo n&ecirc;n những sản phẩm ấn tượng.</p>

<p><img alt="GEARVN - Màn hình ViewSonic ColorPro VP2456 24“ IPS USBC chuyên đồ hoạ" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-viewsonic-colorpro-vp2456-24-ips-usbc-chuyen-do-hoa-7_72d97a50fcae4ab7b1801f9437548a96.png" /></p>

<p>Với nhu cầu sử dụng của nh&agrave; thiết kế th&igrave; bao nhi&ecirc;u đ&acirc;y l&agrave; chưa đủ. Ngo&agrave;i khả năng hiển thị th&igrave; độ ch&iacute;nh x&aacute;c v&agrave; nhất qu&aacute;n m&agrave;u sắc l&agrave; yếu tố kh&ocirc;ng thể thiếu. ViewSonic ColorPro VP2456 tự h&agrave;o khi hệ số Delta E &lt; 2, bạn sẽ kh&ocirc;ng thể t&igrave;m ra sự kh&aacute;c biệt về m&agrave;u sắc giữa sản phẩm tr&ecirc;n m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh với sản phẩm được in ra ngo&agrave;i đời thật.&nbsp;</p>

<h3><strong>Cải thiện hiệu suất c&ocirc;ng việc</strong></h3>

<p>ViewSonic ColorPro VP2456 được trang bị c&aacute;c cổng kết nối phổ biến v&agrave; th&ocirc;ng dụng như HDMI, DisplayPort, đặc biệt l&agrave; cổng USB Type C hiện đại để thoải m&aacute;i kết nối với nhiều thiết bị ngoại vi, truyền ph&aacute;t dữ liệu nhanh ch&oacute;ng hay dễ d&agrave;ng&nbsp;kết nối Macbook với m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh, cải thiện hiệu suất c&ocirc;ng việc v&agrave; n&acirc;ng cao trải nghiệm sử dụng.</p>

<p><img alt="GEARVN - Màn hình ViewSonic ColorPro VP2456 24“ IPS USBC chuyên đồ hoạ" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-viewsonic-colorpro-vp2456-24-ips-usbc-chuyen-do-hoa-9_ce6bba1d455c43229226cc35b40ec822_grande.png" /></p>

<h3><strong>Tận dụng tối đa khả năng hiển thị</strong></h3>

<p>T&iacute;nh năng Picture-by-picture (PBP) kh&ocirc;ng phải l&agrave; một t&iacute;nh năng mới mẻ nhưng n&oacute; lại l&agrave; điểm cộng lớn tr&ecirc;n ViewSonic ColorPro VP2456. N&oacute; cho ph&eacute;p c&aacute;c nhiếp ảnh gia v&agrave; nh&agrave; thiết kế xem v&agrave; chỉnh sửa h&igrave;nh ảnh c&ugrave;ng một l&uacute;c. Đồng thời sử dụng c&aacute;c c&agrave;i đặt m&agrave;u ri&ecirc;ng biệt, giống như bạn đang l&agrave;m việc tr&ecirc;n hai m&agrave;n h&igrave;nh song song.&nbsp;</p>

<h3><strong>Chứng nhận bảo vệ mắt v&agrave; tiết kiệm năng lượng</strong></h3>

<p>Nh&agrave; thiết kế phải ngồi h&agrave;ng giờ liền trước&nbsp;m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh&nbsp;để l&agrave;m việc. Do đ&oacute;, sẽ kh&ocirc;ng thể tr&aacute;nh khỏi một số vấn đề li&ecirc;n quan đến thị gi&aacute;c. Biết được điều đ&oacute; n&ecirc;n ViewSonic đ&atilde; trang bị th&ecirc;m hai t&iacute;nh năng l&agrave; Blue Light Filter v&agrave; Flicker Free, được chứng nhận từ TUV, để loại bỏ &aacute;nh s&aacute;ng xanh tiềm ẩn g&acirc;y hại cho mắt v&agrave; giảm t&igrave;nh trạng đau mỏi mắt khi phải tiếp x&uacute;c với m&agrave;n h&igrave;nh qu&aacute; l&acirc;u.</p>

<p><img alt="GEARVN - Màn hình ViewSonic ColorPro VP2456 24“ IPS USBC chuyên đồ hoạ" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-viewsonic-colorpro-vp2456-24-ips-usbc-chuyen-do-hoa-10_a119d3e93a00427289a082edd63cc563_grande.png" /></p>
', CAST(3990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10148, N'Màn hình di động Viewsonic VA1655 16" IPS FHD USBC', N'man-hinh-di-dong-viewsonic-va1655-16-ips-fhd-usbc', N'Màn hình di động Viewsonic VA1655 16" IPS FHD USBC', N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-va1655-16-ips-fhd-usbc/viewsonic_va1655_gearvn_4da3f1b1e84048f8b4ef7c890bdf4a13_37da76d0a48943e480dc7637240f814e_1024x1024.jpg', CAST(4990000 AS Decimal(18, 0)), 15, CAST(4241500 AS Decimal(18, 0)), 10040, CAST(N'2024-05-17T14:13:46.210' AS DateTime), NULL, 1, 10134, N'<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu</strong></td>
			<td>ViewSonic</td>
		</tr>
		<tr>
			<td><strong>Bảo h&agrave;nh</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Kích thước</strong></td>
			<td>16&quot;</td>
		</tr>
		<tr>
			<td><strong>Đ&ocirc;̣ ph&acirc;n giải</strong></td>
			<td>FullHD ( 1920 x 1080 ) 16:9</td>
		</tr>
		<tr>
			<td><strong>Tấm nền</strong></td>
			<td>IPS</td>
		</tr>
		<tr>
			<td><strong>T&acirc;̀n s&ocirc;́ quét</strong></td>
			<td>60Hz</td>
		</tr>
		<tr>
			<td><strong>Thời gian phản h&ocirc;̀i</strong></td>
			<td>7ms</td>
		</tr>
		<tr>
			<td><strong>Ki&ecirc;̉u màn hình ( phẳng / cong )</strong></td>
			<td>Phẳng&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Đ&ocirc;̣ sáng</strong></td>
			<td>250 cd/m2</td>
		</tr>
		<tr>
			<td><strong>Góc nhìn</strong></td>
			<td>178 (H) / 178 (V)&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Khả năng hi&ecirc;̉n thị màu sắc</strong></td>
			<td>16,2 triệu m&agrave;u,&nbsp;8 bit (6 bit + FRC),&nbsp;NTSC: 45% k&iacute;ch thước (Typ), sRGB: 64% k&iacute;ch thước (Typ)</td>
		</tr>
		<tr>
			<td><strong>Đ&ocirc;̣ tương phản tĩnh</strong></td>
			<td>800 : 1&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Độ tương phản động</strong></td>
			<td>50.000.000 : 1&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Đầu nối</strong></td>
			<td>USB 3.2 Type C DisplayPort Alt mode only : 1 (60W power charger)<br />
			Đầu ra &acirc;m thanh 3,5 mm: 1<br />
			Mini HDMI: 1<br />
			Cổng cắm nguồn: USB Type C (power only)</td>
		</tr>
		<tr>
			<td><strong>&Acirc;m thanh</strong></td>
			<td>Loa trong: 0.8Watts x2</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>Bao b&igrave; (mm): 434 x 391 x 88<br />
			K&iacute;ch thước (mm): 359 x 227 x 17<br />
			K&iacute;ch thước kh&ocirc;ng c&oacute; ch&acirc;n đế (mm): 359 x 227 x 17</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>Khối lượng tịnh (kg): 0.7<br />
			Khối lượng tịnh kh&ocirc;ng c&oacute; ch&acirc;n đế (kg): 0.7<br />
			Tổng (kg): 1.7</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện đi k&egrave;m</strong></td>
			<td>&nbsp;VA1655 x1, mini HDMI to HDMI Cable (v1.4; Male-Male) x1, USB Type-C Cable (Male-Male) x1, Quick Start Guide x1, Sleeve case x1</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết m&agrave;n h&igrave;nh di động Viewsonic VA1655 16&ldquo; IPS FHD USBC</strong></h2>

<h3><strong>Di động, nhỏ gọn v&agrave; nhiều kết nối</strong></h3>

<p>M&agrave;n h&igrave;nh Viewsonic&nbsp;VA1655 sở hữu m&agrave;n h&igrave;nh 16 inch, độ ph&acirc;n giải&nbsp;Full HD&nbsp;cho khả năng hiển thị đẹp v&agrave; r&otilde; n&eacute;t. Với trọng lượng chưa đến 1kg, bạn ho&agrave;n c&oacute; thể gấp gọn v&agrave; thuận tiện mang theo Viewsonic VA1655 b&ecirc;n m&igrave;nh, học tập v&agrave; giải tr&iacute;.</p>

<p><img alt="GEARVN - Màn hình di động Viewsonic VA1655 16“ IPS FHD USBC" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-di-dong-viewsonic-va1655-16-ips-fhd-usbc-10_5d19054795d448bd9fa2a1f7a813fbbf_grande.png" /></p>

<p>T&iacute;nh di động cao l&agrave; một yếu tố ti&ecirc;n quyết của&nbsp;m&agrave;n h&igrave;nh di động, ph&ugrave; hợp với những kh&aacute;ch h&agrave;ng c&oacute; nhu cầu di chuyển, đi c&ocirc;ng t&aacute;c m&agrave; vẫn đảm bảo được khả năng l&agrave;m việc tốt với chiếc m&agrave;n h&igrave;nh 16 inch cực kỳ nhỏ gọn n&agrave;y. Nhiều kết nối đa dạng như cổng Mini HDMI hoặc trực tiếp qua USB type C c&oacute; hỗ trợ Displayport.</p>

<h3><strong>Cổng kết nối&nbsp;USB type C</strong></h3>

<p>T&iacute;nh tiện lợi khi m&agrave;n h&igrave;nh trang bị cổng USB type C hỗ trợ cắm nguồn v&agrave; sử dụng&nbsp;m&agrave;n h&igrave;nh&nbsp;ngay lập tức. C&ograve;n tiện lợi hơn khi bạn sử dụng bộ nguồn đi k&egrave;m với m&agrave;n h&igrave;nh th&igrave; n&oacute; c&oacute; thể th&ocirc;ng qua m&agrave;n h&igrave;nh v&agrave; sạc 2 chiều cho m&aacute;y t&iacute;nh của bạn. Qu&aacute; tuyệt vời v&agrave; nhiều c&ocirc;ng năng.</p>

<p><img alt="GEARVN - Màn hình di động Viewsonic VA1655 16“ IPS FHD USBC" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-di-dong-viewsonic-va1655-16-ips-fhd-usbc-1_6534d749f7de447493cc26c7364c83b8.png" /></p>

<h3><strong>Độ ph&acirc;n giải FullHD 1080p</strong></h3>

<p>Cung cấp c&aacute;i nh&igrave;n r&otilde; n&eacute;t, ch&acirc;n thực v&agrave; trực quan khi bạn sử dụng nhờ độ ph&acirc;n giải cao. Hỗ trợ bạn l&agrave;m việc hay giải tr&iacute; một c&aacute;ch tối ưu với 2 loa đi k&egrave;m rất hay v&agrave; trong trẻo.</p>

<p><img alt="GEARVN - Màn hình di động Viewsonic VA1655 16“ IPS FHD USBC" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-di-dong-viewsonic-va1655-16-ips-fhd-usbc-2_2dc9e8023cb24197ab3729985170e87e.png" /></p>

<h3><strong>Kết nối linh hoạt</strong></h3>

<p>Ngo&agrave;i cổng USB Type-C, m&agrave;n h&igrave;nh n&agrave;y c&ograve;n c&oacute; cổng mini HDMI v&agrave; giắc cắm tai nghe 3,5 mm để kết nối plug-and-play với nhiều thiết bị đa phương tiện. Hơn nữa, Viewsonic VA1655 c&ograve;n hỗ trợ khả năng hiển thị nội dung theo chiều dọc. Với chức năng n&agrave;y, bạn c&oacute; thể điều chỉnh hướng hiển thị cho ph&ugrave; hợp với nhu cầu sử dụng của m&igrave;nh.</p>

<p><img alt="GEARVN - Màn hình di động Viewsonic VA1655 16“ IPS FHD USBC" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-di-dong-viewsonic-va1655-16-ips-fhd-usbc-11_61e80f9636bc4bb498588dc6d8ad8a1e_grande.png" /></p>
', CAST(3790000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10149, N'Màn hình ViewSonic VA2215-H 22" 75Hz FHD', N'man-hinh-viewsonic-va2215-h-22-75hz-fhd', N'Màn hình ViewSonic VA2215-H 22" 75Hz FHD', N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-va2215-h-22-75hz-fhd/manhinh4.jpg', CAST(3000000 AS Decimal(18, 0)), 30, CAST(2100000 AS Decimal(18, 0)), 10040, CAST(N'2024-05-17T14:15:53.317' AS DateTime), CAST(N'2024-05-17T14:19:52.630' AS DateTime), 1, 10135, N'<h2><strong><strong>Th&ocirc;ng số kỹ thuật</strong></strong></h2>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>H&atilde;ng sản xuất</strong></td>
			<td>ViewSonic&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Model</strong></td>
			<td>VA2215-H</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước m&agrave;n h&igrave;nh</strong></td>
			<td>22 inch</td>
		</tr>
		<tr>
			<td><strong>Độ ph&acirc;n giải</strong></td>
			<td>FHD 1920 x 1080</td>
		</tr>
		<tr>
			<td><strong>Tỉ lệ</strong></td>
			<td>16:9</td>
		</tr>
		<tr>
			<td><strong>Tấm nền m&agrave;n h&igrave;nh</strong></td>
			<td>VA</td>
		</tr>
		<tr>
			<td><strong>Độ tương phản</strong></td>
			<td>3,000:1 (typ)</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc hiển thị</strong></td>
			<td>16.7 triệu m&agrave;u</td>
		</tr>
		<tr>
			<td><strong>Tần số qu&eacute;t</strong></td>
			<td>75Hz</td>
		</tr>
		<tr>
			<td><strong>Cổng kết nối</strong></td>
			<td>VGA:&nbsp;1<br />
			3.5mm Audio Out:&nbsp;1<br />
			HDMI 1.4:&nbsp;1<br />
			Power in:&nbsp;External power adapter</td>
		</tr>
		<tr>
			<td><strong>Thời gian đ&aacute;p ứng</strong></td>
			<td>5ms</td>
		</tr>
		<tr>
			<td><strong>G&oacute;c nh&igrave;n</strong></td>
			<td>178&ordm; horizontal, 178&ordm; vertical</td>
		</tr>
		<tr>
			<td><strong>Điện năng ti&ecirc;u thụ</strong></td>
			<td>Eco Mode (Conserve):&nbsp;13W<br />
			Eco Mode (optimized):&nbsp;15W<br />
			Consumption (typical):&nbsp;20W<br />
			Consumption (max):&nbsp;21W<br />
			Voltage:&nbsp;AC 100-240V, 50/60 Hz<br />
			Stand-by:&nbsp;0.5W<br />
			Power Supply:&nbsp;External</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>Packaging (in.):&nbsp;22.4 x 15.1 x 4.6<br />
			Physical (in.):&nbsp;19.4 x 14.8 x 7.4<br />
			Physical Without Stand (in.):&nbsp;19.4 x 11.1 x 1.5</td>
		</tr>
		<tr>
			<td><strong>C&acirc;n nặng</strong></td>
			<td>Net (kg):&nbsp;2.4<br />
			Net Without Stand (kg):&nbsp;2<br />
			Gross (kg):&nbsp;3.5</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện</strong></td>
			<td>HDMI Cable (v1.4; Male-Male) x1, AC/DC Adapter x1, Quick Start Guide x1</td>
		</tr>
	</tbody>
</table>

<h2><strong><strong>Đ&aacute;nh gi&aacute; chi tiết</strong></strong></h2>

<p>&nbsp;</p>

<p><strong><img src="https://file.hstatic.net/1000026716/file/a1_8b378e2aa98145d4ab8abec460a8bd13.jpg" /></strong></p>

<p><strong><img src="https://file.hstatic.net/1000026716/file/a2_845d6292daf64835b777d90699097aea.jpg" /></strong></p>

<p><strong><img src="https://file.hstatic.net/1000026716/file/a3_f507aa4eb0e94fe3816cb050f1c2aaca.jpg" /></strong></p>

<p><strong><img src="https://file.hstatic.net/1000026716/file/a4_faa6b3d0e84f4dbe99796fe0810aa0e2.jpg" /></strong></p>

<p><strong><img src="https://file.hstatic.net/1000026716/file/a5_bfb51ed6af2d456b894e09e985ca3d05.jpg" /></strong></p>

<p><strong><img src="https://file.hstatic.net/1000026716/file/a6_953fbf51972041ca9742ec8f1b89a637.jpg" /></strong></p>

<p><strong><img src="https://file.hstatic.net/1000026716/file/a7_5c3a1bef37a441c09307f4ab045b648f.jpg" /></strong></p>
', CAST(1500000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10150, N'Màn hình ViewSonic VA2209-H 22" IPS FHD 75Hz viền mỏng', N'man-hinh-viewsonic-va2209-h-22-ips-fhd-75hz-vien-mong', N'Màn hình ViewSonic VA2209-H 22" IPS FHD 75Hz viền mỏng', N'/DataManagement/Images/Man%20Hinh/viewsonic/viewsonic-va2209-h-22-ips-fhd-75hz-vien-mong/viewsonic_va2209-h_gearvn_78535813111a415282d1046e2a7aaec6_22de40e38c084dfab5be14c13ce3d84e_1024x1024.jpg', CAST(1890000 AS Decimal(18, 0)), 20, CAST(1512000 AS Decimal(18, 0)), 10040, CAST(N'2024-05-17T14:18:50.357' AS DateTime), NULL, 1, 10136, N'<h2><strong>Th&ocirc;ng số kĩ thuật:</strong></h2>

<p>&nbsp;</p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu</strong></td>
			<td>Viewsonic</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>22</td>
		</tr>
		<tr>
			<td><strong>Tỉ lệ m&agrave;n h&igrave;nh</strong></td>
			<td>16:9</td>
		</tr>
		<tr>
			<td><strong>Độ ph&acirc;n giải</strong></td>
			<td>FHD 1920x1080</td>
		</tr>
		<tr>
			<td><strong>Tấm nền</strong></td>
			<td>IPS</td>
		</tr>
		<tr>
			<td><strong>Tần số qu&eacute;t</strong></td>
			<td>75Hz&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Thời gian phản hồi</strong></td>
			<td>4ms (GtG)</td>
		</tr>
		<tr>
			<td><strong>Tỷ lệ tương phản</strong></td>
			<td>1000:1 (điển h&igrave;nh)&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Độ s&aacute;ng</strong></td>
			<td>250 cd / m&sup2;</td>
		</tr>
		<tr>
			<td><strong>G&oacute;c nh&igrave;n</strong></td>
			<td>178 &deg; (H) / 178 &deg; (V) (CR&gt; 10)</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc m&agrave;n h&igrave;nh</strong></td>
			<td>NTSC: 72% size (Typ)<br />
			sRGB: 104% size (Typ)</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước m&agrave;n h&igrave;nh (mm)</strong></td>
			<td>381 (H) &times; 491 (W) &times; 189 (D)</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>3.3 kg</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch VESA</strong></td>
			<td>100mm x 100mm</td>
		</tr>
		<tr>
			<td><strong>Cổng kết nối</strong></td>
			<td>VGA: 1<br />
			Đầu ra &acirc;m thanh 3,5 mm: 1<br />
			HDMI 1.4: 1<br />
			Cổng cắm nguồn: DC Socket (Center Positive)</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết m&agrave;n h&igrave;nh ViewSonic VA2209-H 22&ldquo; IPS FHD 75Hz viền mỏng</strong></h2>

<h3><strong>SuperClear IPS</strong></h3>

<p>Tận hưởng m&agrave;u sắc sống động phong ph&uacute; v&agrave; độ s&aacute;ng nhất qu&aacute;n bất kể vị tr&iacute; thuận lợi. Với c&ocirc;ng nghệ tấm nền SuperClear IPS,&nbsp;<strong>m&agrave;n h&igrave;nh ViewSonic&nbsp;VA2209-H</strong>&nbsp;mang lại chất lượng h&igrave;nh ảnh ph&ugrave; hợp với thời tiết m&agrave; bạn đang nh&igrave;n từ ph&iacute;a tr&ecirc;n, b&ecirc;n dưới, b&ecirc;n cạnh hoặc ph&iacute;a trước m&agrave;n h&igrave;nh.</p>

<p><img alt="GEARVN - Màn hình ViewSonic VA2209-H 22“ IPS FHD 75Hz viền mỏng" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-viewsonic-va2209-h-22-ips-fhd-75hz-vien-mong-1_f3ead034ac1740589931e2371bfee410.png" /></p>

<h3><strong>Độ ph&acirc;n giải Full HD</strong></h3>

<p>ViewSonic VA2209-H sở hữu độ ph&acirc;n giải Full HD 1920x1080 cho hiệu suất h&igrave;nh ảnh pixel-by-pixel đ&aacute;ng kinh ngạc. Bạn sẽ trải nghiệm độ r&otilde; n&eacute;t v&agrave; chi tiết đ&aacute;ng kinh ngạc cho d&ugrave; đang l&agrave;m việc, chơi game hay tận hưởng những nội dung giải tr&iacute; đa phương tiện mới nhất.</p>

<p><img alt="GEARVN - Màn hình ViewSonic VA2209-H 22“ IPS FHD 75Hz viền mỏng" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-viewsonic-va2209-h-22-ips-fhd-75hz-vien-mong-8_3691130824174169b40ad8edc126afeb_grande.png" /></p>

<h3><strong>Tốc độ l&agrave;m mới 75Hz</strong></h3>

<p>Với tốc độ l&agrave;m mới 75Hz, VA2209-H n&agrave;y mang lại h&igrave;nh ảnh lưu động tuyệt vời v&agrave; đồ họa ho&agrave;n mỹ bất kể h&agrave;nh động trong tr&ograve; chơi diễn ra nhanh đến mức n&agrave;o. Th&ecirc;m v&agrave;o đ&oacute;, m&agrave;n h&igrave;nh c&ograve;n đi k&egrave;m với nhiều t&iacute;nh năng độc quyền từ ViewSonic cung cấp c&aacute;c c&agrave;i đặt trước &ldquo;Tr&ograve; chơi,&rdquo; &ldquo;Phim&rdquo;, &ldquo;Web&rdquo;, &ldquo;Văn bản&rdquo; v&agrave; &ldquo;Đơn sắc&rdquo;. C&aacute;c c&agrave;i đặt trước n&agrave;y n&acirc;ng cao đường cong gamma, nhiệt độ m&agrave;u, độ tương phản v&agrave; độ s&aacute;ng để mang lại trải nghiệm xem được tối ưu h&oacute;a cho c&aacute;c ứng dụng m&agrave;n h&igrave;nh kh&aacute;c nhau.</p>

<p><img alt="GEARVN - Màn hình ViewSonic VA2209-H 22“ IPS FHD 75Hz viền mỏng" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-viewsonic-va2209-h-22-ips-fhd-75hz-vien-mong-9_42094c890d294d8db6e950d7542bc913_grande.png" /></p>

<h3><strong>Thiết kế m&agrave;n h&igrave;nh kh&ocirc;ng khung</strong></h3>

<p>Với thiết kế ba viền kh&ocirc;ng khung, m&agrave;n h&igrave;nh lại khả năng thiết lập đa m&agrave;n h&igrave;nh r&otilde; r&agrave;ng, liền mạch. Kết hợp với c&ocirc;ng nghệ đồng bộ h&oacute;a th&iacute;ch ứng, Flicker Free v&agrave; Bộ lọc &aacute;nh s&aacute;ng xanh gi&uacute;p loại bỏ ho&agrave;n to&agrave;n t&igrave;nh trạng đau mỏi mắt khi phải tiếp x&uacute;c với&nbsp;m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh&nbsp;qu&aacute; l&acirc;u v&agrave; cung cấp h&igrave;nh ảnh mượt m&agrave;, kh&ocirc;ng bị giật, lag.</p>

<p><img alt="GEARVN - Màn hình ViewSonic VA2209-H 22“ IPS FHD 75Hz viền mỏng" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-viewsonic-va2209-h-22-ips-fhd-75hz-vien-mong-10_f6f59d2e7f1c47af95a207ab6874b749_grande.png" /></p>

<h3><strong>Tương th&iacute;ch VESA</strong></h3>

<p>Nếu bạn muốn tối ưu kh&ocirc;ng gian l&agrave;m việc, ViewSonic VA2209-H c&oacute; hỗ trợ treo tường, cho ph&eacute;p bạn gắn m&agrave;n h&igrave;nh v&agrave;o nơi bạn thấy vừa vặn bằng c&aacute;ch sử dụng ng&agrave;m tương th&iacute;ch với VESA.</p>

<p><img alt="GEARVN - Màn hình ViewSonic VA2209-H 22“ IPS FHD 75Hz viền mỏng" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-viewsonic-va2209-h-22-ips-fhd-75hz-vien-mong-4_491ae5abfe5e4c16a22336033110bb1d.png" /></p>
', CAST(1090000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10151, N'Bo mạch chủ ASUS ROG Strix Z790-A GAMING WIFI DDR5', N'bo-mach-chu-asus-rog-strix-z790-a-gaming-wifi-ddr5', N'Bo mạch chủ ASUS ROG Strix Z790-A GAMING WIFI DDR5', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-rog-strix-z790-a-gaming-wifi-ddr5/h732_564dbeded8ca482bb32ad750843da0b7_1024x1024.png', CAST(10990000 AS Decimal(18, 0)), 25, CAST(8242500 AS Decimal(18, 0)), 10041, CAST(N'2024-05-17T14:30:06.427' AS DateTime), CAST(N'2024-05-17T14:30:23.673' AS DateTime), 1, 10137, N'<h2><strong>Th&ocirc;ng số kỹ thuật&nbsp;</strong></h2>

<table border="1" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<p><strong>CPU</strong></p>
			</td>
			<td>
			<ul>
				<li>Intel&reg; Socket LGA1700 cho Bộ xử l&yacute; Intel&reg; Core &trade; thế hệ thứ 13 &amp; Bộ xử l&yacute; Intel&reg; Core &trade;, Pentium&reg; Gold v&agrave; Celeron&reg; thế hệ thứ 12 *</li>
				<li>Hỗ trợ C&ocirc;ng nghệ Intel&reg; Turbo Boost 2.0 v&agrave; C&ocirc;ng nghệ Intel&reg; Turbo Boost Max 3.0 **</li>
			</ul>

			<p>** Hỗ trợ C&ocirc;ng nghệ Intel&reg; Turbo Boost Max 3.0 t&ugrave;y thuộc v&agrave;o loại CPU.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Chipset</strong></p>
			</td>
			<td>
			<p>Intel&reg; Z790 Chipset</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Bộ nhớ</strong></p>
			</td>
			<td>
			<ul>
				<li>4 x DIMM, Max. 192GB, DDR5&nbsp;</li>
				<li>7800+ (OC)/7600(OC)/7400(OC)/7200(OC)/7000(OC)/6800(OC)/6600(OC)/6400(OC)/ 6200(OC)/6000(OC)/5800(OC)/5600/5400/5200/5000/4800 /&nbsp;Non-ECC, Un-buffer memory *</li>
				<li>Kiến tr&uacute;c bộ nhớ k&ecirc;nh đ&ocirc;i</li>
				<li>Hỗ trợ cấu h&igrave;nh bộ nhớ cực cao của Intel&reg; (XMP)</li>
				<li>OptiMem II</li>
			</ul>
			* C&aacute;c loại bộ nhớ được hỗ trợ, tốc độ dữ liệu (Tốc độ), v&agrave; số lượng m&ocirc;-đun DRAM kh&aacute;c nhau t&ugrave;y thuộc v&agrave;o cấu h&igrave;nh CPU v&agrave; bộ nhớ.</td>
		</tr>
		<tr>
			<td>
			<p><strong>Đồ họa t&iacute;ch hợp</strong></p>
			</td>
			<td>
			<ul>
				<li>1 x DisplayPort **</li>
				<li>1 x cổng HDMI&reg; ***</li>
			</ul>
			* Th&ocirc;ng số kỹ thuật đồ họa c&oacute; thể kh&aacute;c nhau giữa c&aacute;c loại CPU.<br />
			** Hỗ trợ tối đa 8K @ 60Hz như được chỉ định trong DisplayPort 1.4.<br />
			*** Hỗ trợ 4K @ 60Hz như được chỉ định trong HDMI 2.1.<br />
			**** Hỗ trợ độ ph&acirc;n giải VGA phụ thuộc v&agrave;o độ ph&acirc;n giải của bộ vi xử l&yacute; hoặc card đồ họa.</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khe mở rộng</strong></p>
			</td>
			<td>
			<p><strong>Bộ xử l&yacute; Intel&reg; thế hệ thứ 13 &amp; 12</strong></p>

			<ul>
				<li>1 x khe cắm PCIe 5.0 x16</li>
			</ul>

			<p><strong>Bộ chip Intel&reg; Z790</strong></p>

			<ul>
				<li>2 x khe cắm PCIe 4.0 x16 (hỗ trợ x4/x4 chế độ)</li>
				<li>1 x khe cắm PCIe 3.0 x1</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Lưu trữ&nbsp;</strong></p>
			</td>
			<td>
			<p><strong>T&ocirc;̉ng c&ocirc;̣ng hỗ trợ 4&nbsp;khe cắm x M.2 v&agrave; 4 x cổng SATA 6Gb / s *</strong></p>

			<p><strong>Bộ xử l&yacute; Intel&reg; thế hệ thứ 13 &amp; 12</strong></p>

			<ul>
				<li>Khe cắm M.2_1 (Ph&iacute;m M), loại 2242/2260/2280/22110 (hỗ trợ chế độ PCIe 4.0 x4)</li>
			</ul>

			<p><strong>Bộ chip Intel&reg; Z790</strong></p>

			<ul>
				<li>Khe cắm M.2_2&nbsp;(Ph&iacute;m M), loại&nbsp;2242/2260/2280 (hỗ trợ chế độ PCIe 4.0 x4)</li>
				<li>Khe cắm M.2_3&nbsp;(Ph&iacute;m M), loại 2242/2260/2280/22110&nbsp;(hỗ trợ chế độ PCIe 4.0 x4)</li>
				<li>Khe cắm M.2_4&nbsp;(Ph&iacute;m M), loại&nbsp;2242/2260/2280 (hỗ trợ chế độ PCIe 4.0 x4 &amp; SATA)</li>
				<li>4 x cổng SATA 6Gb / s</li>
			</ul>

			<p>* C&ocirc;ng nghệ lưu trữ nhanh Intel&reg; hỗ trợ PCIe RAID 0/1/5/10, SATA RAID 0/1/5/10.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Ethernet</strong></p>
			</td>
			<td>
			<p>1 x Intel&reg; 2.5Gb Ethernet<br />
			ASUS LANGuard</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Wireless &amp; Bluetooth</strong></p>
			</td>
			<td>
			<ul>
				<li>Wi-Fi 6E</li>
				<li>2x2 Wi-Fi 6E (802.11 a / b / g / n / ac / ax)</li>
				<li>Hỗ trợ dải tần 2,4/5/6GHz *</li>
				<li>Bluetooth&reg; v5.3</li>
			</ul>
			* Quy định của WiFi 6E 6GHz c&oacute; thể kh&aacute;c nhau giữa quốc gia v&agrave; chức năng sẽ sẵn s&agrave;ng trong Windows 11 trở l&ecirc;n.</td>
		</tr>
		<tr>
			<td>
			<p><strong>USB</strong></p>
			</td>
			<td>
			<p><strong>USB ph&iacute;a sau: Tổng số 10&nbsp;cổng</strong></p>

			<ul>
				<li>1 x cổng USB 3.2 Gen 2x2 (1 x USB Type-C&reg;)</li>
				<li>3 x cổng USB 3.2 Gen 2 (2&nbsp;x Type-A + 1 x USB Type-C&reg;)</li>
				<li>4 x cổng USB 3.2 Gen 1 (4 x Type-A)</li>
				<li>2 x cổng USB 2.0&nbsp;(2&nbsp;x Type-A)</li>
			</ul>

			<p><strong>USB ph&iacute;a trước: Tổng số 7&nbsp;cổng</strong></p>

			<ul>
				<li>1 x đầu nối USB 3.2 Gen 2x2 (hỗ trợ USB Type-C&reg; với c&ocirc;ng suất sạc nhanh PD l&ecirc;n đến 30W)</li>
				<li>1 x đầu cắm USB 3.2 Gen 1 hỗ trợ th&ecirc;m 2&nbsp;cổng USB 3.2 Gen 1</li>
				<li>2 x đầu cắm USB 2.0 hỗ trợ 4 cổng USB 2.0 bổ sung</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Audio&nbsp;</strong></p>
			</td>
			<td><strong>ROG SupremeFX 7.1 &Acirc;m thanh v&ograve;m &Acirc;m thanh độ n&eacute;t cao CODEC ALC4080</strong>
			<ul>
				<li>&nbsp;Cảm bi&ecirc;́n&nbsp;trở kh&aacute;ng cho đầu ra tai nghe ph&iacute;a trước v&agrave; ph&iacute;a sau</li>
				<li>&nbsp;Hỗ trợ: Ph&aacute;t hiện giắc cắm, Đa luồng, Kiểm tra lại giắc cắm ở bảng điều khiển ph&iacute;a trước</li>
				<li>&nbsp;Đầu ra ph&aacute;t lại &acirc;m thanh nổi SNR 120 dB chất lượng cao v&agrave; đầu v&agrave;o ghi &acirc;m 113 dB SNR</li>
				<li>&nbsp;Hỗ trợ ph&aacute;t lại l&ecirc;n đến 32-Bit / 384 kHz</li>
			</ul>
			<strong>T&iacute;nh năng &acirc;m thanh</strong>

			<ul>
				<li>C&ocirc;ng nghệ SupremeFX Shielding</li>
				<li>Savitech SV3H712 AMP</li>
				<li>Cổng ra S / PDIF quang học ph&iacute;a sau</li>
				<li>Tụ &acirc;m thanh cao cấp</li>
				<li>Audio Cover</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Cổng I / O mặt sau</strong></p>
			</td>
			<td>
			<ul>
				<li>1 x cổng USB 3.2 Gen 2x2 (1 x USB Type-C&reg;)</li>
				<li>3 x cổng USB 3.2 Gen 2 (2&nbsp;x Type-A, 1 x USB Type-C&reg;)</li>
				<li>4 x cổng USB 3.2 Gen 1 (4 x Type-A)</li>
				<li>2 x cổng USB 2.0&nbsp;(2&nbsp;x Type-A)</li>
				<li>1 x DisplayPort</li>
				<li>1 x cổng HDMI&reg;</li>
				<li>1 x M&ocirc;-đun Wi-Fi</li>
				<li>1 x cổng Ethernet Intel&reg; 2.5Gb</li>
				<li>5 x giắc cắm &acirc;m thanh</li>
				<li>1 x cổng ra quang học S / PDIF</li>
				<li>1 x n&uacute;t BIOS FlashBack &trade;</li>
				<li>1 x N&uacute;t x&oacute;a CMOS</li>
			</ul>

			<p>* Cổng Lime (Line out) của bảng điều khiển ph&iacute;a sau kh&ocirc;ng hỗ trợ &acirc;m thanh kh&ocirc;ng gian. Nếu bạn muốn sử dụng &acirc;m thanh kh&ocirc;ng gian, h&atilde;y đảm bảo kết nối thiết bị đầu ra &acirc;m thanh với giắc cắm &acirc;m thanh ở mặt trước của khung m&aacute;y.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Đầu nối I / O Intrernal</strong></p>
			</td>
			<td>
			<p><strong>Li&ecirc;n quan đến Quạt v&agrave; L&agrave;m m&aacute;t</strong></p>

			<ul>
				<li>
				<p>1 x 4 ch&acirc;n đầu cắm quạt CPU</p>
				</li>
				<li>
				<p>1 x 4 ch&acirc;n đầu cắm quạt CPU OPT</p>
				</li>
				<li>
				<p>1 x 4 ch&acirc;n đầu cắm bơm AIO</p>
				</li>
				<li>
				<p>5 x 4 ch&acirc;n đầu cắm Chassis Fan</p>
				</li>
			</ul>

			<p><strong>Li&ecirc;n quan đến ngu&ocirc;̀n</strong></p>

			<ul>
				<li>
				<p>1 x 24 ch&acirc;n đầu nối nguồn ch&iacute;nh&nbsp;</p>
				</li>
				<li>
				<p>2 x 8 ch&acirc;n đầu nối nguồn + 12V</p>
				</li>
			</ul>

			<p><strong>Li&ecirc;n quan đến lưu trữ</strong></p>

			<ul>
				<li>
				<p>4 x khe cắm M.2 (Ph&iacute;m M)</p>
				</li>
				<li>
				<p>4 x c&ocirc;̉ng SATA 6Gb/s</p>
				</li>
			</ul>

			<p><strong>USB</strong></p>

			<ul>
				<li>1 x đầu nối USB 3.2 Gen 2x2 (hỗ trợ USB Type-C&reg;)</li>
				<li>1 x đầu cắm USB 3.2 Gen 1 hỗ trợ th&ecirc;m 2&nbsp;cổng USB 3.2 Gen 1</li>
				<li>2 x đầu cắm USB 2.0 hỗ trợ 4 cổng USB 2.0 bổ sung</li>
			</ul>

			<p><strong>K&ecirc;́t n&ocirc;́i khác</strong></p>

			<ul>
				<li>3 x đ&acirc;̀u cắm Addressable Gen 2&nbsp;</li>
				<li>1 x đầu cắm Aura RGB</li>
				<li>1 x d&acirc;y nhảy qu&aacute; &aacute;p CPU</li>
				<li>1 x đầu cắm &acirc;m thanh bảng điều khiển ph&iacute;a trước (AAFP)</li>
				<li>1 x 20-3 ch&acirc;n đ&acirc;̀u cắm&nbsp;bảng điều khiển hệ thống với chức năng x&acirc;m nhập khung</li>
				<li>1 x đầu cắm cảm biến nhiệt</li>
				<li>1 x đầu cắm Thunderbolt &trade;</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>C&aacute;c t&iacute;nh năng đặc biệt</strong></p>
			</td>
			<td><strong>Extreme Engine Digi +</strong>
			<ul>
				<li>Tụ kim loại đen 5K</li>
			</ul>
			<strong>ASUS Q-Design</strong>

			<ul>
				<li>M.2 Q-Latch</li>
				<li>Khe cắm PCIe Q-Release</li>
				<li>Q-DIMM</li>
				<li>Q-LED (CPU [đỏ], DRAM [v&agrave;ng], VGA [trắng], Thiết bị khởi động [v&agrave;ng xanh])</li>
				<li>Q-Slot</li>
			</ul>
			<strong>Giải ph&aacute;p tản nhiệt của ASUS</strong>

			<ul>
				<li>Tấm nền&nbsp;<a href="https://gearvn.com/collections/tan-nhiet-khi" target="_blank">tản nhiệt</a>&nbsp;M.2</li>
				<li>Tản nhiệt M.2</li>
				<li>Thiết kế tản nhiệt VRM</li>
			</ul>
			<strong>ASUS EZ DIY</strong>

			<ul>
				<li>N&uacute;t BIOS FlashBack &trade;</li>
				<li>Đ&egrave;n LED BIOS FlashBack &trade;</li>
				<li>N&uacute;t x&oacute;a CMOS</li>
				<li>Bộ bảo vệ đ&ograve;n bẩy CPU Socket</li>
				<li>ProCool II</li>
				<li>Tấm chắn I / O gắn sẵn</li>
				<li>SafeSlot</li>
				<li>SafeDIMM</li>
			</ul>
			<strong>Aura Sync</strong>

			<ul>
				<li>Đ&acirc;̀u cắm Aura RGB</li>
				<li>Đ&acirc;̀u cắm Addressable Gen 2</li>
			</ul>
			<strong>Bảng điều khiển ph&iacute;a trước USB 3.2 Gen 2x2 với Hỗ trợ sạc nhanh PD</strong>

			<ul>
				<li>Hỗ trợ: sạc l&ecirc;n đến 30W</li>
				<li>Đầu ra: tối đa 5 / 9V. Tối đa 3A, 12V. 2,5A</li>
				<li>Tương th&iacute;ch với PD3.0</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>C&aacute;c t&iacute;nh năng phần mềm</strong></p>
			</td>
			<td>
			<p><strong>Phần mềm độc quyền của ROG</strong></p>

			<ul>
				<li>GameFirst VI</li>
				<li>ROG CPU-Z</li>
				<li>Sonic Studio III + Sonic Studio Virtual Mixer + Sonic Suite Companion</li>
				<li>Sonic Radar III</li>
				<li>DTS&reg; Sound Unbound</li>
			</ul>

			<p><strong>Phần mềm độc quyền của ASUS</strong></p>

			<p>Armoury Crate</p>

			<ul>
				<li>AIDA64 Extreme (60 ng&agrave;y d&ugrave;ng thử miễn ph&iacute;)</li>
				<li>Aura Creator</li>
				<li>Aura Sync</li>
				<li>Quạt Xpert 4 (với AI Cooling II)</li>
				<li>Tiết kiệm năng lượng</li>
				<li>Khử tiếng ồn AI hai chiều</li>
			</ul>

			<p>AI Suite 3</p>

			<ul>
				<li>Tối ưu h&oacute;a dễ d&agrave;ng với &eacute;p xung AI</li>
				<li>TPU</li>
				<li>DIGI + VRM</li>
				<li>Ứng dụng Turbo</li>
				<li>PC Cleaner</li>
			</ul>

			<p>MyAsus</p>

			<p>Norton 360 d&agrave;nh cho người chơi game</p>

			<p>WinRAR</p>

			<p><strong>UEFI BIOS</strong></p>

			<p>Hướng dẫn &eacute;p xung AI</p>

			<p>ASUS EZ DIY</p>

			<ul>
				<li>
				<p>ASUS CrashFree BIOS 3</p>
				</li>
				<li>
				<p>ASUS EZ Flash 3</p>
				</li>
				<li>
				<p>Chế độ ASUS UEFI BIOS EZ</p>
				</li>
			</ul>

			<p>FlexKey<br />
			MemTest86</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>BIOS</strong></p>
			</td>
			<td>
			<p>256 Mb Flash ROM, UEFI AMI BIOS</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Manageability</strong></p>
			</td>
			<td><br />
			WOL by PME, PXE</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phụ kiện đi k&egrave;m</strong></p>
			</td>
			<td>
			<p><strong>C&aacute;p</strong></p>

			<ul>
				<li>2 x c&aacute;p SATA 6Gb / s</li>
			</ul>

			<p><strong>Bộ l&agrave;m m&aacute;t bổ sung</strong></p>

			<ul>
				<li>1 x đệm nhiệt cho M.2</li>
			</ul>

			<p><strong>Khác</strong></p>

			<ul>
				<li>1 x ăng-ten di chuyển Wi-Fi của ASUS</li>
				<li>1 x g&oacute;i quan hệ c&aacute;p</li>
				<li>1 x M.2 backplate g&oacute;i Q-Latch</li>
				<li>1 x g&oacute;i M.2 Q-Latch</li>
				<li>1 x m&oacute;c ch&igrave;a kh&oacute;a ROG</li>
				<li>1 x nh&atilde;n d&aacute;n ROG Strix</li>
				<li>1 x thẻ cảm ơn ROG Strix</li>
				<li>2 x g&oacute;i cao su M.2</li>
				<li>1 x M.2 cao su mặt sau</li>
			</ul>

			<p><strong>T&agrave;i liệu</strong></p>

			<ul>
				<li>
				<p>1 x Hướng dẫn sử dụng</p>
				</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong>H&ecirc;̣ đi&ecirc;̀u hành</strong></td>
			<td>Windows&reg; 11, Windows&reg; 10 64-bit</td>
		</tr>
		<tr>
			<td>
			<p><strong>Yếu tố h&igrave;nh thức</strong></p>
			</td>
			<td>Hệ số h&igrave;nh thức ATX<br />
			12 inch x 9,6 inch (30,5 cm x 24,4 cm)</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết mainboard&nbsp;ASUS ROG STRIX Z790-A GAMING WIFI DDR5</strong></h2>

<p>ASUS, một trong những &ldquo;&ocirc;ng ho&agrave;ng&rdquo; của lĩnh vực&nbsp;linh kiện m&aacute;y t&iacute;nh. Lu&ocirc;n đ&aacute;p ứng tuyệt vời cho những nhu cầu sử dụng cao cấp của game thủ, thế hệ ROG Strix đ&atilde; mang tới những sản phẩm cực k&igrave; chất lượng, điển h&igrave;nh l&agrave; mainboard. Để cung cấp khả năng c&acirc;n bằng sức mạnh khổng lồ của những linh kiện cao ng&agrave;y nay, chipset Z790 đ&atilde; được ASUS tận dụng v&agrave;o trong sản phẩm của m&igrave;nh với model&nbsp;<strong>ASUS ROG STRIX Z790-A GAMING WIFI DDR5</strong>.</p>

<h3><strong>Ngoại h&igrave;nh nổi bật</strong></h3>

<p>L&agrave; sản phẩm thuộc l&ograve; ROG Strix, ASUS ROG STRIX Z790-A GAMING WIFI DDR5 sở hữu mọi đặc điểm l&agrave;m nổi bật l&ecirc;n h&igrave;nh d&aacute;ng của một game thủ. Những chi tiết được đ&aacute;nh b&oacute;ng s&aacute;ng bạc tạo n&ecirc;n thần th&aacute;i cao cấp. Tr&ecirc;n đ&oacute; l&agrave; những chi tiết li&ecirc;n quan đến ROG Strix như logo mắt c&uacute; vọ, d&ograve;ng chữ ROG Strix c&aacute;ch t&acirc;n bắt mắt. Tất cả c&ugrave;ng h&ograve;a quyện tạo n&ecirc;n kiệt t&aacute;c tuyệt vời cho những bộ&nbsp;PC Gaming&nbsp;mạnh mẽ.</p>

<p><img alt="GEARVN - Bo Mạch Chủ ASUS ROG STRIX Z790-A GAMING WIFI DDR5" src="https://file.hstatic.net/200000722513/file/gearvn-bo-mach-chu-asus-rog-strix-z790-a-gaming-wifi-ddr5-10_790025438e1c4eabad7fe58827c1cd99_1024x1024.jpg" /></p>

<h3><strong>All-in v&agrave;o hiệu năng đỉnh cao</strong></h3>

<p>Sức mạnh khổng lồ của những linh kiện sẽ kh&ocirc;ng thể đạt mức tối đa nếu chưa được trải qua qu&aacute; tr&igrave;nh &ldquo;độ&rdquo; - &eacute;p xung v&agrave; đ&acirc;y l&agrave; điều m&agrave; ASUS kh&ocirc;ng thể để qu&ecirc;n tr&ecirc;n ASUS ROG STRIX Z790-A GAMING WIFI DDR5. Trang bị c&ocirc;ng nghệ ASUS AI Overclocking th&ocirc;ng minh, mọi th&ocirc;ng số v&agrave; chi tiết sẽ được c&ocirc;ng cụ t&iacute;nh to&aacute;n ch&iacute;nh x&aacute;c để mang tới hiệu suất &eacute;p xung tối đa đưa th&ocirc;ng số l&ecirc;n mức giới hạn.</p>

<p><img alt="GEARVN - Bo Mạch Chủ ASUS ROG STRIX Z790-A GAMING WIFI DDR5" src="https://file.hstatic.net/200000722513/file/gearvn-bo-mach-chu-asus-rog-strix-z790-a-gaming-wifi-ddr5-11_b06664ac04d44a6793079a9366350e80_1024x1024.jpg" /></p>

<p>Khả năng xử l&yacute; đồ họa l&agrave; điều kh&ocirc;ng thể thiếu tr&ecirc;n những cấu h&igrave;nh PC Gaming cao cấp v&agrave; với ASUS ROG STRIX Z790-A GAMING WIFI DDR5 th&igrave; nhiệm vụ n&agrave;y được giao cho những khe cắm PCIe. Trong đ&oacute;, khe cắm PCIe 5.0 x16 đ&atilde; c&oacute; mặt ngay tr&ecirc;n chiếc mainboard ASUS với k&iacute;ch thước v&ocirc; c&ugrave;ng l&yacute; tưởng v&agrave; lượng băng th&ocirc;ng dồi d&agrave;o. Chưa dừng lại đ&oacute; khi thế hệ PCIe mới nhất cũng sẽ được xuất hiện tr&ecirc;n khe cắm&nbsp;ổ cứng SSD&nbsp;bao gồm 4 khe cắm PCIe 4.0 M.2. Tốc độ xử l&yacute; được đảm bảo c&ugrave;ng những tấm tản nhiệt uy t&iacute;n để mang lại hiệu suất hoạt động tốt nhất v&agrave; bền bỉ nhất.</p>

<p><img alt="GEARVN - Bo Mạch Chủ ASUS ROG STRIX Z790-A GAMING WIFI DDR5" src="https://file.hstatic.net/200000722513/file/gearvn-bo-mach-chu-asus-rog-strix-z790-a-gaming-wifi-ddr5-12_8a76c5c3fb744d1780b1e2619045c043_1024x1024.jpg" /></p>

<p>V&agrave; để duy tr&igrave; mọi hoạt động một c&aacute;ch tr&ocirc;i chảy, tất cả được ASUS ROG STRIX Z790-A GAMING WIFI DDR5 ho&aacute;n xuyến th&ocirc;ng qua thiết kế nguồn điện cao cấp. Với 16 + 1 phase nguồn c&oacute; thể chịu mức điện &aacute;p l&ecirc;n đến 70A, năng lượng được xử l&yacute; để cung cấp lại cho &ldquo;đầu n&atilde;o&rdquo; xử l&yacute; mạnh mẽ nhất hiện như như&nbsp;Intel Gen 13&nbsp;v&agrave; Gen 12. Kh&ocirc;ng thể thiếu sự ổn định th&ocirc;ng qua những đầu cuộn cảm v&agrave; tụ điện cao cấp gi&uacute;p mọi nguồn năng lượng được duy tr&igrave; tốt trong qu&aacute; tr&igrave;nh sử dụng. ASUS ROG STRIX Z790-A GAMING WIFI DDR5 li&ecirc;n kết với nguồn điện từ&nbsp;PSU&nbsp;th&ocirc;ng qua 2 cổng cắm ProCool II 8-pin, sở hữu lớp vỏ từ kim loại đem đến nhiệt độ m&aacute;t hơn v&agrave; giảm trở kh&aacute;ng điện tốt hơn. Tất cả sẽ được t&iacute;ch hợp tr&ecirc;n nền tảng PCB 6 lớp cho độ ổn định trong qu&aacute; tr&igrave;nh vận h&agrave;nh để&nbsp;CPU&nbsp;c&oacute; nhiều khoảng kh&ocirc;ng cho &eacute;p xung.</p>

<p><img alt="GEARVN - Bo Mạch Chủ ASUS ROG STRIX Z790-A GAMING WIFI DDR5" src="https://file.hstatic.net/200000722513/file/gearvn-bo-mach-chu-asus-rog-strix-z790-a-gaming-wifi-ddr5-13_f6c2649afc2944dc92434f5c30d3a825_1024x1024.jpg" /></p>

<p>Tối ưu khả năng đa nhiệm v&agrave; lưu trữ tr&ecirc;n ASUS ROG STRIX Z790-A GAMING WIFI DDR5 l&agrave; 4 khe&nbsp;RAM DDR5. Đ&acirc;y sẽ l&agrave; yếu tố tuyệt vời để mang lại khả năng tương th&iacute;ch tuyệt vời cho thế hệ&nbsp;RAM&nbsp;mới nhất c&ugrave;ng tốc độ c&oacute; thể l&ecirc;n tới 7800 MT/s. Hỗ trợ th&ecirc;m v&agrave;o hiệu suất chung sẽ l&agrave; c&ocirc;ng nghệ AEMP (ASUS Enhanced Memory Profile) để h&ograve;a hợp giữa phần cứng v&agrave; phần mềm, tự động tối ưu h&oacute;a để rồi mang lại hiệu suất xử l&yacute; cũng như &eacute;p xung tốt nhất.</p>

<p><img alt="GEARVN - Bo Mạch Chủ ASUS ROG STRIX Z790-A GAMING WIFI DDR5" src="https://file.hstatic.net/200000722513/file/gearvn-bo-mach-chu-asus-rog-strix-z790-a-gaming-wifi-ddr5-14_41668c3109704482b4b2a31a11cee6d1_1024x1024.jpg" /></p>

<h3><strong>Đ&aacute;p ứng mọi nhu cầu tản nhiệt</strong></h3>

<p>Sức mạnh lớn phải đi đ&ocirc;i với hiệu quả l&agrave;m m&aacute;t tốt, ASUS ROG STRIX Z790-A GAMING WIFI DDR5 đem tới cho ch&uacute;ng ta mọi giải ph&aacute;p tản nhiệt c&oacute; thể ở mọi vị tr&iacute;. Đầu ti&ecirc;n xuất hiện tr&ecirc;n d&agrave;n VRM với 2 tấm tản nhiệt d&agrave;y dặn nhưng vẫn đảm bảo khe hở kh&ocirc;ng kh&iacute; thuận tiện cho qu&aacute; tr&igrave;nh l&agrave;m m&aacute;t.</p>

<p><img alt="GEARVN - Bo Mạch Chủ ASUS ROG STRIX Z790-A GAMING WIFI DDR5" src="https://file.hstatic.net/200000722513/file/gearvn-bo-mach-chu-asus-rog-strix-z790-a-gaming-wifi-ddr5-15_d684cae3c08a4b2f8134266639d39424_grande.jpg" /></p>

<p>Kế tiếp đ&oacute; l&agrave; tấm tản nhiệt ở những khe M.2 tr&ecirc;n ASUS ROG STRIX Z790-A GAMING WIFI DDR5. Trang bị đầy đủ từ tấm ốp lưng đến tấm tản nhiệt bao phủ mặt tr&ecirc;n để đảm bảo nhiệt độ l&yacute; tưởng nhất cho mọi chiếc&nbsp;SSD M.2 NVME.</p>

<p><img alt="GEARVN - Bo Mạch Chủ ASUS ROG STRIX Z790-A GAMING WIFI DDR5" src="https://file.hstatic.net/200000722513/file/gearvn-bo-mach-chu-asus-rog-strix-z790-a-gaming-wifi-ddr5-16_eb9c82e96f8e409c8a653b0a94325835_grande.jpg" /></p>

<p>Tr&ecirc;n bề mặt ASUS ROG STRIX Z790-A GAMING WIFI DDR5 sẽ trang bị đầy đủ những cổng cắm d&agrave;nh cho c&aacute;c thiết bị tản nhiệt. Từ những chiếc th&aacute;p tản nhiệt d&agrave;nh cho CPU,&nbsp;fan tản nhiệt&nbsp;đến những chiếc&nbsp;tản nhiệt AIO, mọi linh kiện tản nhiệt sẽ được&nbsp;mainboard ASUS&nbsp;đảm bảo khả năng tương th&iacute;ch về nhu cầu lắp đặt v&agrave; sử dụng.</p>

<p><img alt="GEARVN - Bo Mạch Chủ ASUS ROG STRIX Z790-A GAMING WIFI DDR5" src="https://file.hstatic.net/200000722513/file/gearvn-bo-mach-chu-asus-rog-strix-z790-a-gaming-wifi-ddr5-17_f62b92e82f6340fbb291bc7cdb50c9e6_grande.jpg" /></p>

<h3><strong>Trang bị những kết nối tốc độ</strong></h3>

<p>ASUS ROG STRIX Z790-A GAMING WIFI DDR5 mang đến những kết nối Internet si&ecirc;u tốc d&agrave;nh cho người d&ugrave;ng n&oacute;i chung v&agrave; game thủ n&oacute;i ri&ecirc;ng. Đ&aacute;p ứng kết nối kh&ocirc;ng d&acirc;y với anten WiFi 6E mang lại băng tần l&ecirc;n đến 6 GHz, đảm bảo kết nối lu&ocirc;n tốc độ với mọi nhu cầu Internet. Để cho kết nối lu&ocirc;n ổn định th&igrave; cổng Ethernet 2.5G sẽ l&agrave; giải ph&aacute;p mạng tuyệt vời, đưa mọi game thủ v&agrave;o trận chiến với sự ổn định v&agrave; tốc độ được tin tưởng.</p>

<p><img alt="GEARVN - Bo Mạch Chủ ASUS ROG STRIX Z790-A GAMING WIFI DDR5" src="https://file.hstatic.net/200000722513/file/gearvn-bo-mach-chu-asus-rog-strix-z790-a-gaming-wifi-ddr5-18_f4d751de0f2a44e9938f90e5a892d111_1024x1024.jpg" /></p>

<p>Nhu cầu kết nối c&ugrave;ng những thiết bị ngoại vi được ASUS ROG STRIX Z790-A GAMING WIFI DDR5 đ&aacute;p ứng với 2 cổng USB 3.2 Gen2x2 Type-C. Mang đến tốc độ l&ecirc;n đến 20Gbps, được đặt ở hệ thống I/O ph&iacute;a sau v&agrave; ở ph&iacute;a trước&nbsp;case m&aacute;y t&iacute;nh, cho người d&ugrave;ng dễ d&agrave;ng v&agrave; thuận tiện trong qu&aacute; tr&igrave;nh sử dụng. Ngo&agrave;i ra, những cổng USB n&agrave;y c&ograve;n hỗ trợ c&ocirc;ng nghệ sạc PD 3.0, cho ra c&ocirc;ng suất l&ecirc;n tới 30W.</p>

<p><img alt="GEARVN - Bo Mạch Chủ ASUS ROG STRIX Z790-A GAMING WIFI DDR5" src="https://file.hstatic.net/200000722513/file/gearvn-bo-mach-chu-asus-rog-strix-z790-a-gaming-wifi-ddr5-19_ad079577bafe495cae6644cb7550855f_1024x1024.jpg" /></p>
', CAST(6990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10152, N'Bo mạch chủ ASUS ROG MAXIMUS Z790 APEX ENCORE	', N'bo-mach-chu-asus-rog-maximus-z790-apex-encore', N'Bo mạch chủ ASUS ROG MAXIMUS Z790 APEX ENCORE	', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-rog-maximus-z790-apex-encore/rog-maximus-z790-apex-encore-01_b4949e02146c444ba4cf8aa2e7f4869a_1024x1024.jpg', CAST(15990000 AS Decimal(18, 0)), 20, CAST(12792000 AS Decimal(18, 0)), 10041, CAST(N'2024-05-17T14:32:11.863' AS DateTime), NULL, 1, 10138, N'<h2><strong>Th&ocirc;ng số kỹ thuật&nbsp;</strong></h2>

<table border="1" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<p><strong>CPU</strong></p>
			</td>
			<td>
			<ul>
				<li>Intel&reg; Socket LGA1700 cho Bộ xử l&yacute; Intel&reg; Core &trade; thế hệ thứ 14 &amp; 13 &amp; Bộ xử l&yacute; Intel&reg; Core &trade;, Pentium&reg; Gold v&agrave; Celeron&reg; thế hệ thứ 12 *</li>
				<li>Hỗ trợ C&ocirc;ng nghệ Intel&reg; Turbo Boost 2.0 v&agrave; C&ocirc;ng nghệ Intel&reg; Turbo Boost Max 3.0 **</li>
			</ul>

			<p>** Hỗ trợ C&ocirc;ng nghệ Intel&reg; Turbo Boost Max 3.0 t&ugrave;y thuộc v&agrave;o loại CPU.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Chipset</strong></p>
			</td>
			<td>
			<p>Intel&reg; Z790 Chipset</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Bộ nhớ</strong></p>
			</td>
			<td>
			<ul>
				<li>2 x DIMM, Tối đa 96GB, DDR5 8400+(OC)/8200+(OC)/8000+(OC)/7800(OC)/7600(OC)/7400(OC)/7200(OC)/7000(OC)/6800(OC)/6600(OC)/6400(OC)/6200(OC)/ 6000(OC)/ 5800(OC)/ 5600/ 5400/ 5200/ 5000/ 4800 Kh&ocirc;ng phải ECC, Bộ nhớ kh&ocirc;ng đệm *</li>
				<li>Kiến tr&uacute;c bộ nhớ k&ecirc;nh đ&ocirc;i</li>
				<li>Hỗ trợ cấu h&igrave;nh bộ nhớ cao cấp Intel&reg; (XMP)</li>
				<li>OptiMem III</li>
			</ul>
			* C&aacute;c loại bộ nhớ được hỗ trợ, tốc độ (tốc độ) dữ liệu v&agrave; số lượng m&ocirc;-đun DRAM kh&aacute;c nhau t&ugrave;y thuộc v&agrave;o CPU v&agrave; bộ nhớ<br />
			cấu h&igrave;nh, để biết th&ecirc;m th&ocirc;ng tin, vui l&ograve;ng tham khảo danh s&aacute;ch Hỗ trợ CPU/Bộ nhớ trong tab Hỗ trợ của trang th&ocirc;ng tin sản phẩm hoặc truy cập https://www.asus.com/support/.<br />
			- Bộ nhớ DDR5 kh&ocirc;ng ECC, kh&ocirc;ng đệm hỗ trợ chức năng ECC On-Die.<br />
			- Để c&oacute; kết quả &eacute;p xung bộ nhớ tối ưu, h&atilde;y đảm bảo c&agrave;i đặt Bộ quạt bộ nhớ ROG đi k&egrave;m.</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khe mở rộng</strong></p>
			</td>
			<td>
			<p><strong>Bộ xử l&yacute; Intel&reg; thế hệ thứ 13 &amp; 12</strong></p>

			<ul>
				<li>2 x khe cắm PCIe 5.0 x16 (hỗ trợ chế độ x16 hoặc x8 / x8) **</li>
			</ul>

			<p><strong>Bộ chip Intel&reg; Z790**</strong></p>

			<ul>
				<li>2 x khe cắm PCIe 4.0 x4</li>
			</ul>

			<p>* Vui l&ograve;ng kiểm tra bảng ph&acirc;n nh&aacute;nh PCIe<br />
			tr&ecirc;n trang web hỗ trợ (https://www.asus.com/support/FAQ/1037507/).<br />
			** M.2_1 chia sẻ băng th&ocirc;ng với PCIEX16(G5)_2 v&agrave; PCIEX16(G5)_1. Khi M.2_1 được sử dụng với thiết bị SSD,<br />
			PCIEX16(G5)_2 sẽ bị tắt v&agrave; PCIEX16(G5)_1 sẽ chỉ chạy x8.<br />
			- Để đảm bảo khả năng tương th&iacute;ch của thiết bị được c&agrave;i đặt, vui l&ograve;ng tham khảo https://www.asus.com/support/ để biết danh s&aacute;ch c&aacute;c thiết bị ngoại vi được hỗ trợ.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Lưu trữ&nbsp;</strong></p>
			</td>
			<td><strong>T&ocirc;̉ng c&ocirc;̣ng hỗ trợ 5 khe cắm M.2 v&agrave; 6 x cổng SATA 6Gb / s *</strong><br />
			<strong>Bộ xử l&yacute; Intel&reg; thế hệ thứ 13 &amp; 12</strong>
			<ul>
				<li>Khe cắm M.2_1 (Ph&iacute;m M), loại 2242/2260/2280 (hỗ trợ chế độ PCIe 4.0 x4)</li>
				<li>Khe cắm PCIe 5.0 M.2 (Key M) qua thẻ PCIe 5.0 M.2, loại 2242/2260/2280/22110</li>
			</ul>
			<strong>Bộ chip Intel&reg; Z790</strong>

			<ul>
				<li>Khe cắm M.2_2 (Ph&iacute;m M), kiểu 2242/2260/2280 (hỗ trợ chế độ PCIe 4.0 x4 &amp; SATA)</li>
				<li>Khe cắm DIMM.2_1 (Kh&oacute;a M) qua ROG DIMM.2, loại 2242/2260/2280/22110 (hỗ trợ chế độ PCIe 4.0 x4)</li>
				<li>Khe cắm DIMM.2_2 (Key M) qua ROG DIMM.2, loại 2242/2260/2280/22110 (hỗ trợ chế độ PCIe 4.0 x4)</li>
				<li>4 x cổng SATA 6Gb / s **</li>
			</ul>

			<p>* C&ocirc;ng nghệ lưu trữ nhanh Intel&reg; hỗ trợ PCIe RAID 0/1/5/10, SATA RAID 0/1/5/10<br />
			* M.2_1 chia sẻ băng th&ocirc;ng với PCIEX16(G5)_2 v&agrave; PCIEX16(G5)_1. Khi M.2_1 được sử dụng bởi thiết bị SSD, PCIEX16(G5)_2 sẽ bị tắt v&agrave; PCIEX16(G5)_1 sẽ chỉ chạy x8.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Ethernet</strong></p>
			</td>
			<td>
			<ul>
				<li>1 x Intel&reg; 2.5Gb Ethernet</li>
				<li>ASUS LANGuard</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Wireless &amp; Bluetooth</strong></p>
			</td>
			<td>
			<ul>
				<li>Intel&reg; Wi-Fi 7*</li>
				<li>2x2 Wi-Fi 7 (802.11be)**</li>
				<li>Hỗ trợ băng tần 2,4/5/6GHz***</li>
				<li>Hỗ trợ băng th&ocirc;ng Wi-Fi 7 320 MHz, tốc độ truyền l&ecirc;n tới 5,8Gbps.</li>
				<li>Bluetooth&reg; v5.4****</li>
			</ul>
			* Tương th&iacute;ch với Windows 11 trở l&ecirc;n.<br />
			** Hỗ trợ đầy đủ chức năng Wi-Fi 7 MLO (Hoạt động đa li&ecirc;n kết) sẽ sẵn s&agrave;ng trong Nền tảng Windows 11 2024 (Windows 11 24H2)<br />
			hoặc sau đ&oacute;.<br />
			*** Quy định về băng tần v&agrave; băng th&ocirc;ng Wi-Fi 6GHz c&oacute; thể kh&aacute;c nhau giữa c&aacute;c quốc gia.<br />
			**** Phi&ecirc;n bản Bluetooth c&oacute; thể kh&aacute;c nhau, vui l&ograve;ng tham khảo trang web của nh&agrave; sản xuất m&ocirc;-đun Wi-Fi để biết th&ocirc;ng số kỹ thuật mới nhất.</td>
		</tr>
		<tr>
			<td>
			<p><strong>USB</strong></p>
			</td>
			<td><strong>USB ph&iacute;a sau (Tổng số 10 cổng)</strong>
			<ul>
				<li>1 x cổng USB 3.2 Gen 2x2 (1 x USB Type-C&reg;)</li>
				<li>5 x cổng USB 3.2 Gen 2 (5 x Type-A)</li>
				<li>4 x cổng USB 3.2 Gen 1 (4 x Type-A)</li>
			</ul>
			<strong>USB ph&iacute;a trước (Tổng số 9 cổng)</strong>

			<ul>
				<li>1 x đầu nối USB 3.2 Gen 2x2 (hỗ trợ USB Type-C&reg; với l&ecirc;n đến 60W PD / QC4 +)</li>
				<li>2 x đầu cắm USB 3.2 Gen 1 hỗ trợ th&ecirc;m 4 cổng USB 3.2 Gen 1</li>
				<li>2 đầu cắm USB 2.0 hỗ trợ th&ecirc;m 4 cổng USB 2.0</li>
			</ul>

			<p>&nbsp;</p>

			<p>* USB Type-C<sup><sup>&reg;</sup></sup>&nbsp;power delivery output: max. 5V/3A<br />
			** USB Type-C<sup><sup>&reg;</sup></sup>&nbsp;power delivery output: 5/9/15/20V max. 3A, PPS:3.3&ndash;21V max. 3A</p>

			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Audio&nbsp;</strong></p>
			</td>
			<td><strong>ROG SupremeFX 7.1 &Acirc;m thanh v&ograve;m &Acirc;m thanh độ n&eacute;t cao CODEC ALC4080</strong>
			<ul>
				<li>Cảm bi&ecirc;́n&nbsp;trở kh&aacute;ng cho đầu ra tai nghe ph&iacute;a trước v&agrave; ph&iacute;a sau</li>
				<li>Hỗ trợ: Ph&aacute;t hiện giắc cắm, Đa luồng, Thử lại giắc cắm ở bảng điều khiển ph&iacute;a trước</li>
				<li>Đầu ra ph&aacute;t lại &acirc;m thanh nổi SNR 120 dB chất lượng cao v&agrave; đầu v&agrave;o ghi &acirc;m 113 dB SNR</li>
				<li>Hỗ trợ ph&aacute;t lại l&ecirc;n đến 32-Bit / 384 kHz &quot;</li>
			</ul>
			<strong>T&iacute;nh năng &acirc;m thanh</strong>

			<ul>
				<li>C&ocirc;ng nghệ che chắn SupremeFX</li>
				<li>AMP Savitech SV3H712</li>
				<li>Giắc &acirc;m thanh mạ v&agrave;ng</li>
				<li>Cổng ra S/PDIF quang ph&iacute;a sau</li>
				<li>Tụ &acirc;m thanh cao cấp</li>
				<li>B&igrave;a &acirc;m thanh</li>
			</ul>

			<p>* Cổng LINE OUT ở mặt sau kh&ocirc;ng hỗ trợ &acirc;m thanh kh&ocirc;ng gian. Nếu bạn muốn sử dụng &acirc;m thanh kh&ocirc;ng gian, h&atilde;y đảm bảo kết nối thiết bị đầu ra &acirc;m thanh của bạn với giắc &acirc;m thanh ở mặt trước khung m&aacute;y hoặc sử dụng thiết bị &acirc;m thanh giao diện USB.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Cổng I / O mặt sau</strong></p>
			</td>
			<td>
			<ul>
				<li>1 x cổng USB 20Gbps (1 x USB Type-C&reg;)</li>
				<li>5 x cổng USB 10Gbps (5 x Loại A)</li>
				<li>4 x cổng USB 5Gbps (4 x Loại A)</li>
				<li>1 x M&ocirc;-đun Wi-Fi</li>
				<li>1 x cổng Ethernet Intel&reg; 2,5Gb</li>
				<li>5 x jack cắm &acirc;m thanh mạ v&agrave;ng</li>
				<li>1 x cổng ra quang S/PDIF</li>
				<li>1 x n&uacute;t BIOS FlashBack&trade;</li>
				<li>1 x N&uacute;t x&oacute;a CMOS</li>
				<li>1 x Cổng b&agrave;n ph&iacute;m PS/2 (m&agrave;u t&iacute;m)</li>
				<li>1 x Cổng chuột PS/2 (xanh)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Đầu nối I / O Intrernal</strong></p>
			</td>
			<td>
			<p><strong>Li&ecirc;n quan đến Quạt v&agrave; L&agrave;m m&aacute;t</strong></p>

			<ul>
				<li>1 x Đầu cắm quạt CPU 4 ch&acirc;n</li>
				<li>1 x Đầu cắm quạt CPU OPT 4 ch&acirc;n</li>
				<li>1 x Đầu cắm bơm AIO 4 ch&acirc;n</li>
				<li>Đầu cắm quạt khung gầm 2 x 4 ch&acirc;n</li>
				<li>2 x Đầu cắm quạt tốc độ tối đa 4 ch&acirc;n</li>
				<li>1 x ti&ecirc;u đề W_PUMP+</li>
				<li>1 x đầu cắm nước v&agrave;o 2 ch&acirc;n</li>
				<li>1 x Đầu cắm ra nước 2 ch&acirc;n</li>
				<li>1 x Đầu cắm d&ograve;ng nước 3 ch&acirc;n</li>
				<li>1 x Đầu cắm quạt lưu lượng bổ sung</li>
			</ul>

			<p><strong>Li&ecirc;n quan đến ngu&ocirc;̀n</strong></p>

			<ul>
				<li>1 x 24 ch&acirc;n đầu nối nguồn ch&iacute;nh&nbsp;</li>
				<li>2 x 8 ch&acirc;n đầu nối nguồn + 12V</li>
				<li>1 x 6 ch&acirc;n đ&acirc;́u&nbsp;n&ocirc;́i ngu&ocirc;̀n&nbsp;PCle</li>
			</ul>

			<p><strong>Li&ecirc;n quan đến lưu trữ</strong></p>

			<ul>
				<li>3 x khe cắm M.2 (Ph&iacute;m M)</li>
				<li>1 x khe cắm DIMM.2 hỗ trợ 2 x khe cắm M.2 (Ph&iacute;m M)</li>
				<li>4 x c&ocirc;̉ng SATA 6Gb/s</li>
			</ul>

			<p><strong>USB</strong></p>

			<ul>
				<li>1 x đầu nối USB 20Gbps (hỗ trợ USB Type-C&reg;)</li>
				<li>2 x đầu cắm USB 5Gbps hỗ trợ th&ecirc;m 4 cổng USB 5Gbps</li>
				<li>2 x đầu cắm USB 2.0 hỗ trợ th&ecirc;m 4 cổng USB 2.0</li>
			</ul>

			<p><strong>K&ecirc;́t n&ocirc;́i khác</strong></p>

			<p>&nbsp;</p>

			<ul>
				<li>1 x 80 Light Bar jumper</li>
				<li>3 x Addressable Gen 2 headers</li>
				<li>1 x Alternative PCIe Mode Switch</li>
				<li>1 x Aura RGB header</li>
				<li>2 x BCLK button</li>
				<li>1 x BIOS Switch button</li>
				<li>1 x FlexKey button</li>
				<li>1 x Front Panel Audio header (F_AUDIO)</li>
				<li>1 x LN2 Mode jumper</li>
				<li>1 x Osc sence header</li>
				<li>1 x Pause switch</li>
				<li>12 x ProbeIt Measurement Points</li>
				<li>1 x ReTry button</li>
				<li>2 x RSVD switches</li>
				<li>1 x RSVD header</li>
				<li>1 x Safe Boot button</li>
				<li>1 x Slow Mode switch</li>
				<li>1 x Start button</li>
				<li>1 x 10-1 pin System Panel header</li>
				<li>1 x Thermal Sensor header</li>
				<li>1 x Thunderbolt&trade; (USB4<sup><sup>&reg;</sup></sup>) header</li>
				<li>1 x V_Latch switch</li>
			</ul>

			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>C&aacute;c t&iacute;nh năng đặc biệt</strong></p>
			</td>
			<td><strong>Extreme OC Kit</strong>
			<ul>
				<li>N&uacute;t FlexKey</li>
				<li>Chế độ LN2</li>
				<li>ProbeIt</li>
				<li>N&uacute;t thử lại</li>
				<li>N&uacute;t khởi động an to&agrave;n</li>
				<li>N&uacute;t bắt đầu</li>
				<li>Chế độ chậm</li>
			</ul>
			<strong>Extreme Engine Digi +</strong>

			<ul>
				<li>Tụ điện SMD</li>
				<li>Choke hợp kim MicroFine</li>
			</ul>
			<strong>ASUS Q-Design</strong>

			<ul>
				<li>M.2 Q-Latch</li>
				<li>PCIe Slot Q-Release</li>
				<li>Q-Antenna</li>
				<li>Q-Code</li>
				<li>Q-Connector</li>
				<li>Q-DIMM</li>
				<li>Q-LED (CPU [red], DRAM [yellow], VGA [white], Boot Device [yellow green])</li>
				<li>Q-Slot</li>
			</ul>
			<strong>Giải ph&aacute;p tản nhiệt của ASUS</strong>

			<ul>
				<li>Tấm nền tản nhiệt M.2</li>
				<li>Tản nhiệt M.2</li>
				<li>Thiết kế tản nhiệt VRM</li>
			</ul>
			<strong>ASUS EZ DIY</strong>

			<ul>
				<li>N&uacute;t BIOS FlashBack &trade;</li>
				<li>N&uacute;t x&oacute;a CMOS</li>
				<li>Bộ bảo vệ đ&ograve;n bẩy CPU Socket</li>
				<li>ProCool II</li>
				<li>Tấm chắn I / O gắn sẵn</li>
				<li>SafeSlot</li>
				<li>SafeDIMM</li>
			</ul>
			<strong>Đồng bộ h&oacute;a AURA</strong>

			<ul>
				<li>Đầu cắm Aura RGB</li>
				<li>Addressable Gen 2</li>
			</ul>

			<p><strong>Dual BIOS</strong></p>

			<p>&nbsp;</p>
			<strong>Bảng điều khiển ph&iacute;a trước USB 3.2 Gen 2x2 với Hỗ trợ sạc nhanh 4+</strong>

			<ul>
				<li>Hỗ trợ: sạc l&ecirc;n đến 60W *</li>
				<li>Đầu ra: tối đa 5/9/15 / 20V. 3A, PPS: tối đa 3,3&ndash;21V. 3A</li>
				<li>Tương th&iacute;ch với PD3.0 v&agrave; PPS</li>
			</ul>
			* Để hỗ trợ 60W, vui l&ograve;ng lắp c&aacute;p nguồn v&agrave;o đầu nối nguồn PCIe 6 ch&acirc;n hoặc chỉ c&oacute; thể hỗ trợ 27W</td>
		</tr>
		<tr>
			<td>
			<p><strong>C&aacute;c t&iacute;nh năng phần mềm</strong></p>
			</td>
			<td>
			<p><strong>Phần mềm độc quyền của ROG</strong></p>

			<ul>
				<li>ROG CPU-Z</li>
				<li>DTS<sup><sup>&reg;</sup></sup>&nbsp;Sound Unbound</li>
				<li>Internet Security (1-year full version)</li>
			</ul>

			<p><strong>Phần mềm độc quyền của ASUS</strong></p>

			<p>Armoury Crate</p>

			<ul>
				<li>AIDA64 Extreme (1 year full version)</li>
				<li>Aura Creator</li>
				<li>Aura Sync</li>
				<li>Fan Xpert 4 (with AI Cooling II)</li>
				<li>GameFirst</li>
				<li>Power Saving</li>
				<li>Sonic Studio</li>
				<li>Two-Way AI Noise Cancelation</li>
			</ul>

			<p>AI Suite 3</p>

			<ul>
				<li>Tối ưu h&oacute;a dễ d&agrave;ng với &eacute;p xung AI</li>
				<li>TPU</li>
				<li>DIGI + Power Control</li>
				<li>Ứng dụng Turbo</li>
				<li>PC Cleaner</li>
			</ul>

			<p>MyAsus<br />
			USB Wattage Watcher<br />
			Intel<sup><sup>&reg;</sup></sup>&nbsp;Unison&trade;<br />
			WinRAR (40 Days Free Trial)</p>

			<p><strong>UEFI BIOS</strong></p>

			<p>Hướng dẫn &eacute;p xung AI</p>

			<p>ASUS EZ DIY</p>

			<ul>
				<li>
				<p>ASUS CrashFree BIOS 3</p>
				</li>
				<li>
				<p>ASUS EZ Flash 3</p>
				</li>
				<li>
				<p>Chế độ ASUS UEFI BIOS EZ</p>
				</li>
			</ul>

			<p>MyHotkey</p>

			<p>MemTest86</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>BIOS</strong></p>
			</td>
			<td>
			<p>2 x 256 Mb Flash ROM, UEFI AMI BIOS</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Manageability</strong></p>
			</td>
			<td><br />
			WOL by PME, PXE</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phụ kiện đi k&egrave;m</strong></p>
			</td>
			<td>
			<p><strong>ROG DIMM.2 với tản nhiệt</strong></p>

			<ul>
				<li>1 x ROG DIMM.2 với tản nhiệt</li>
				<li>1 x đệm M.2 cho ROG DIMM.2</li>
				<li>2 x g&oacute;i v&iacute;t M.2 cho ROG DIMM.2</li>
			</ul>

			<p><strong>Thẻ PCIe 5.0 M.2 với tản nhiệt</strong></p>

			<ul>
				<li>1 x Thẻ PCIe 5.0 M.2 với tản nhiệt</li>
				<li>1 x g&oacute;i v&iacute;t M.2 cho thẻ ROG PCIe 5.0 M.2</li>
			</ul>

			<p><strong>Bộ l&agrave;m m&aacute;t bổ sung</strong></p>

			<ul>
				<li>1 x đệm nhiệt cho M.2</li>
				<li>1 x gi&aacute; đỡ quạt DDR5</li>
				<li>1 x Quạt DDR5</li>
				<li>1 x v&iacute;t quạt DDR5</li>
			</ul>

			<p><strong>Điều khoản kh&aacute;c</strong></p>

			<ul>
				<li>1 x ASUS WiFi Q-Antenna</li>
				<li>1 x Q-connector</li>
				<li>1 x ROG VIP card</li>
				<li>3 x M.2 Q-Latch packages for M.2 backplate</li>
				<li>3 x M.2 backplate Rubber Packages</li>
			</ul>

			<p><strong>Phương tiện c&agrave;i đặt</strong></p>

			<ul>
				<li>1 x ổ USB với c&aacute;c tiện &iacute;ch v&agrave; tr&igrave;nh điều khiển</li>
			</ul>

			<p><strong>T&agrave;i liệu</strong></p>

			<ul>
				<li>1 x Quick start guide</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong>H&ecirc;̣ đi&ecirc;̀u hành</strong></td>
			<td>Windows&reg; 11, Windows&reg; 10 64-bit</td>
		</tr>
		<tr>
			<td>
			<p><strong>Yếu tố h&igrave;nh thức</strong></p>
			</td>
			<td>Hệ số h&igrave;nh thức ATX<br />
			12 inch x 9.6 inch ( 30.5 cm x 24.4 cm )</td>
		</tr>
	</tbody>
</table>
', CAST(8990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10153, N'Bo mạch chủ ASUS TUF GAMING B660M-PLUS WIFI DDR4', N'bo-mach-chu-asus-tuf-gaming-b660m-plus-wifi-ddr4', N'Bo mạch chủ ASUS TUF GAMING B660M-PLUS WIFI DDR4', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-tuf-gaming-b660m-plus-wifi-ddr4/tuf-b660m-plus-wifi-d4-01_0c7a9a623c9745ea85dcbccc866ce033_54d57443b83b4f38a462050f7d146f7a_1024x102.jpg', CAST(3790000 AS Decimal(18, 0)), 20, CAST(3032000 AS Decimal(18, 0)), 10041, CAST(N'2024-05-17T14:35:00.610' AS DateTime), NULL, 1, 10139, N'<table border="1" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>USB ph&iacute;a trước (Tổng số 7 cổng)</strong>
			<ul>
				<li>1 x đầu nối USB 3.2 Gen 1 (hỗ trợ USB Type-C&reg;)</li>
				<li>1 x đầu cắm USB 3.2 Gen 1 hỗ trợ th&ecirc;m 2 cổng USB 3.2 Gen 1</li>
				<li>2 đầu cắm USB 2.0 hỗ trợ th&ecirc;m 4 cổng USB 2.0</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong>&Acirc;m thanh</strong></td>
			<td>&Acirc;m thanh v&ograve;m Realtek 7.1 CODEC &Acirc;m thanh độ n&eacute;t cao<br />
			- Hỗ trợ: Ph&aacute;t hiện giắc cắm, Đa luồng, Kiểm tra lại giắc cắm ở bảng điều khiển ph&iacute;a trước<br />
			- Hỗ trợ ph&aacute;t lại l&ecirc;n đến 24-Bit / 192 kHz<br />
			- T&iacute;nh năng &acirc;m thanh<br />
			- Che chắn &acirc;m thanh<br />
			- Bộ điều chỉnh trước nguồn gi&uacute;p giảm nhiễu nguồn điện đầu v&agrave;o để đảm bảo hiệu suất nhất qu&aacute;n<br />
			- Cổng ra S / PDIF quang ph&iacute;a sau<br />
			- Tụ &acirc;m thanh cao cấp<br />
			- C&aacute;c lớp PCB &acirc;m thanh chuy&ecirc;n dụng</td>
		</tr>
		<tr>
			<td><strong>Kết nối I/O cổng sau</strong></td>
			<td>1 x Cổng USB 3.2 Gen 2x2 (1 x USB Type-C)<br />
			4 x cổng USB 3.2 Gen 2 (4 x Type-A)<br />
			1 x cổng USB 3.2 Gen 1 (1 x Type-A)<br />
			2 x cổng USB 2.0 (2 x Type-A)<br />
			1 x DisplayPort<br />
			1 x cổng HDMI<br />
			1 x M&ocirc;-đun Wi-Fi<br />
			1 x cổng Realtek 2.5Gb Ethernet<br />
			5 x giắc cắm &acirc;m thanh<br />
			1 x cổng ra quang học S / PDIF</td>
		</tr>
		<tr>
			<td><strong>Kết nối I/O nội bộ</strong></td>
			<td><strong>Li&ecirc;n quan đến Quạt v&agrave; L&agrave;m m&aacute;t</strong>
			<ul>
				<li>1 x đầu cắm quạt CPU 4 ch&acirc;n</li>
				<li>1 x đầu cắm Quạt OPT CPU 4 ch&acirc;n</li>
				<li>1 x đầu cắm bơm AIO 4 ch&acirc;n</li>
				<li>3 x đầu cắm Quạt khung gầm 4 ch&acirc;n</li>
			</ul>
			<strong>Li&ecirc;n quan đến nguồn điện</strong>

			<ul>
				<li>1 x đầu nối nguồn ch&iacute;nh 24 ch&acirc;n</li>
				<li>1 x đầu nối nguồn 8 ch&acirc;n +12V</li>
				<li>1 x đầu nối nguồn 4 ch&acirc;n +12V</li>
			</ul>
			<strong>Li&ecirc;n quan đến lưu trữ</strong>

			<ul>
				<li>2 x khe cắm M.2 (Ph&iacute;m M)</li>
				<li>4 x cổng SATA 6Gb / s</li>
			</ul>
			<strong>USB</strong>

			<ul>
				<li>1 x đầu nối USB 3.2 Gen 1 (hỗ trợ USB Type-C)</li>
				<li>1 x đầu cắm USB 3.2 Gen 1 hỗ trợ th&ecirc;m 2 cổng USB 3.2 Gen 1</li>
				<li>2 đầu cắm USB 2.0 hỗ trợ th&ecirc;m 4 cổng USB 2.0</li>
			</ul>
			<strong>Điều khoản kh&aacute;c</strong>

			<ul>
				<li>3 x ti&ecirc;u đề Gen 2 c&oacute; thể định địa chỉ</li>
				<li>1 x đầu cắm AURA RGB</li>
				<li>1 x x&oacute;a ti&ecirc;u đề CMOS</li>
				<li>1 x ti&ecirc;u đề Cổng COM</li>
				<li>1 x đầu cắm &acirc;m thanh bảng điều khiển ph&iacute;a trước (AAFP)</li>
				<li>1 x 20-3 pin Ti&ecirc;u đề bảng điều khiển hệ thống với chức năng x&acirc;m nhập khung</li>
				<li>1 x đầu cắm Thunderbolt</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong>T&iacute;nh năng đặc biệt</strong></td>
			<td><strong>BẢO VỆ TUF của ASUS</strong><br />
			- DIGI + VRM (- Thiết kế nguồn điện kỹ thuật số với DrMOS)<br />
			- Bảo vệ qu&aacute; d&ograve;ng DRAM n&acirc;ng cao<br />
			- Bảo vệ ESD<br />
			- TUF LANGuard<br />
			- Bảo vệ qu&aacute; &aacute;p<br />
			- SafeSlot<br />
			- I / O mặt sau bằng th&eacute;p kh&ocirc;ng gỉ<br />
			<strong>ASUS Q-Design</strong><br />
			- M.2 Q-Latch<br />
			- Q-DIMM<br />
			- Q-LED (CPU [đỏ], DRAM [v&agrave;ng], VGA [trắng], Thiết bị khởi động [v&agrave;ng xanh])<br />
			- Q-Slot<br />
			<strong>Giải ph&aacute;p tản nhiệt của ASUS</strong><br />
			- Tản nhiệt M.2 linh hoạt<br />
			- Thiết kế tản nhiệt VRM<br />
			<strong>ASUS EZ DIY</strong><br />
			- Bộ bảo vệ đ&ograve;n bẩy ổ cắm CPU<br />
			- ProCool<br />
			- Tấm chắn I / O gắn sẵn<br />
			- SafeDIMM<br />
			<strong>Đồng bộ h&oacute;a AURA</strong><br />
			- Đầu cắm AURA RGB<br />
			- Ti&ecirc;u đề Gen 2 c&oacute; thể định địa chỉ</td>
		</tr>
		<tr>
			<td><strong>Đặc điểm phần mềm</strong></td>
			<td><strong>Phần mềm độc quyền của ASUS</strong><br />
			Th&ugrave;ng vũ trang<br />
			- AURA Creator<br />
			- Đồng bộ h&oacute;a AURA<br />
			- Quạt Xpert 2+<br />
			- Chống ồn AI hai chiều<br />
			AI Suite 3<br />
			- Hiệu suất v&agrave; Tiện &iacute;ch tiết kiệm điện<br />
			TurboV EVO<br />
			EPU<br />
			DIGI + VRM<br />
			TUF GAMING CPU-Z<br />
			Xử l&yacute; &acirc;m thanh DTS<br />
			MyASUS<br />
			Phần mềm chống vi r&uacute;t Norton (Phi&ecirc;n bản d&ugrave;ng thử miễn ph&iacute;)<br />
			WinRAR<br />
			<strong>UEFI BIOS</strong><br />
			ASUS EZ DIY<br />
			- ASUS CrashFree BIOS 3<br />
			- ASUS EZ Flash 3<br />
			- Chế độ ASUS UEFI BIOS EZ</td>
		</tr>
		<tr>
			<td><strong>BIOS</strong></td>
			<td>128 Mb Flash ROM, UEFI AMI BIOS</td>
		</tr>
		<tr>
			<td><strong>Quản l&yacute;</strong></td>
			<td>WOL bởi PME, PXE</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện</strong></td>
			<td><strong>C&aacute;p</strong><br />
			2 x c&aacute;p SATA 6Gb / s<br />
			<strong>Điều khoản kh&aacute;c</strong><br />
			1 x ăng-ten di chuyển Wi-Fi của ASUS<br />
			1 x G&oacute;i cao su M.2<br />
			1 x g&oacute;i v&iacute;t SSD M.2<br />
			1 x H&igrave;nh d&aacute;n TUF Gaming<br />
			<strong>Phương tiện c&agrave;i đặt</strong><br />
			1 x hỗ trợ DVD<br />
			<strong>T&agrave;i liệu</strong><br />
			1 x thẻ chứng nhận TUF<br />
			1 x Hướng dẫn sử dụng</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh</strong></td>
			<td>Windows 11 64-bit, Windows 10 64-bit</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>microATX<br />
			24,4cm x 24,4cm</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết bo mạch chủ ASUS TUF GAMING B660M-PLUS WIFI DDR4</strong></h2>

<p>Bo mạch chủ&nbsp;ASUS TUF GAMING&nbsp;B660M-PLUS WIFI D4 mang tất cả c&aacute;c yếu tố thiết yếu của&nbsp;bộ vi xử l&yacute;&nbsp;Intel mới nhất v&agrave; kết hợp ch&uacute;ng với c&aacute;c t&iacute;nh năng sẵn s&agrave;ng cho tr&ograve; chơi v&agrave; độ bền đ&atilde; được kiểm chứng. Được thiết kế với c&aacute;c th&agrave;nh phần cao cấp gi&uacute;p giải ph&aacute;p năng lượng được n&acirc;ng cấp v&agrave; hỗ trợ hệ thống l&agrave;m m&aacute;t to&agrave;n diện,&nbsp;TUF GAMING&nbsp;B660M-PLUS mang đến hiệu suất ổn định v&agrave; mạnh mẽ để chơi tựa game nặng. Với c&oacute; logo TUF Gaming điển h&igrave;nh v&agrave; kết hợp c&aacute;c yếu tố thiết kế h&igrave;nh học đơn giản TUF GAMING B660M-PLUS phản &aacute;nh độ tin cậy v&agrave; độ ổn định đặc trưng cho d&ograve;ng TUF Gaming.</p>

<p><img alt="GEARVN - ASUS TUF GAMING B660M-PLUS WIFI DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus_tuf_gaming_b660m-plus_wifi_ddr4-1_9472310258c2440d89d6b6090ac27fdd.jpg" /></p>

<h3><strong>Hiệu suất đỉnh cao</strong></h3>

<p>Với khả năng cung cấp điện năng được n&acirc;ng cấp v&agrave; c&aacute;c t&ugrave;y chọn l&agrave;m m&aacute;t to&agrave;n diện để th&uacute;c đẩy hiệu năng của bộ vi xử l&yacute;&nbsp;Intel Core thế hệ thứ 12, mainboard TUF GAMING B660M-PLUS l&agrave; nền tảng ho&agrave;n hảo cho d&agrave;n&nbsp;PC gaming&nbsp;chiến đấu cực ch&aacute;y đến c&ugrave;ng.</p>

<p><img alt="GEARVN - ASUS TUF GAMING B660M-PLUS WIFI DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus_tuf_gaming_b660m-plus_wifi_ddr4-2_498ab852b9bc4165bfe6149d99ddbc7c.jpg" /></p>

<p>Mạch điện tr&ecirc;n mainboard ASUS B660M-PLUS được cải thiện khi c&aacute;c VRM tr&ecirc;n bo mạch c&oacute; 10 + 1 tầng nguồn DrMOS kết hợp MOSFET cao thấp gi&uacute;p đẩy mạnh to&agrave;n bộ sức mạnh của CPU. Thiết kế đa lớp PCB, bộ kết nối nguồn EATX 8-pin v&agrave; 4-pin cung cấp độ bền cao v&agrave; ngăn chặn c&aacute;c lỗi như lỗi ph&aacute;t s&oacute;ng, lỗi kết nối,...</p>

<h3><strong>Hệ thống tản nhiệt tr&ecirc;n TUF GAMING B660M-PLUS</strong></h3>

<p>Tản nhiệt&nbsp;VRM tr&ecirc;n TUF GAMING B660M-PLUS được mở rộng. Diện t&iacute;ch bề mặt rộng r&atilde;i của&nbsp;bộ tản nhiệt&nbsp;lớn bao phủ VRM v&agrave; cuộn cảm để cải thiện khả năng tản nhiệt. TUF GAMING B660M Series c&oacute; tản nhiệt M.2 linh hoạt để sử dụng th&ecirc;m một khe M.2 v&agrave; giữ cho&nbsp;SSD&nbsp;M.2 ở nhiệt độ hoạt động tối ưu để c&oacute; hiệu suất v&agrave; độ tin cậy nhất qu&aacute;n.</p>

<p><img alt="GEARVN - ASUS TUF GAMING B660M-PLUS WIFI DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus_tuf_gaming_b660m-plus_wifi_ddr4-4_6faa6fb7957b4cbebe8cc1eb4ec88cd1.jpg" /></p>

<p>Ngo&agrave;i ra, TUF GAMING B660M-PLUS c&ograve;n c&oacute; t&iacute;nh năng điều khiển&nbsp;quạt tản nhiệt&nbsp;to&agrave;n diện c&oacute; thể được định cấu h&igrave;nh th&ocirc;ng qua tiện &iacute;ch Fan Xpert 2+ hoặc ASUS UEFI BIOS.</p>

<h3><strong>Trải nghiệm chơi gaming tuyệt vời</strong></h3>

<p>TUF GAMING B660M-PLUS cung cấp g&oacute;i tr&ograve; chơi hiệu suất cao với c&aacute;c t&iacute;nh năng nổi bật để cải thiện trải nghiệm của bạn, bao gồm kết nối mạng cực nhanh để chơi tr&ograve; chơi trực tuyến mượt m&agrave; hơn, &acirc;m thanh nguy&ecirc;n bản với c&aacute;c t&iacute;n hiệu vị tr&iacute; để chơi game FPS v&agrave; &aacute;nh s&aacute;ng RGB tr&ecirc;n bo mạch đồng bộ với c&aacute;c&nbsp;gaming gear&nbsp;k&egrave;m theo gi&uacute;p bạn tạo ra kh&ocirc;ng gian chơi game của ri&ecirc;ng bạn.</p>

<p><img alt="GEARVN - ASUS TUF GAMING B660M-PLUS WIFI DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus_tuf_gaming_b660m-plus_wifi_ddr4-2_498ab852b9bc4165bfe6149d99ddbc7c.jpg" /></p>

<h3><strong>Easy PC DIY</strong></h3>

<p>Mainboard ASUS&nbsp;TUF GAMING B660M-PLUS được thiết kế để dễ d&agrave;ng thiết lập v&agrave; cấu h&igrave;nh theo c&aacute;ch bạn muốn, ngay cả khi bạn l&agrave; newbie trong l&agrave;ng tự build PC. Hệ sinh th&aacute;i TUF GAMING Alliance gi&uacute;p lựa chọn c&aacute;c&nbsp;linh kiện gaming&nbsp;tương th&iacute;ch dễ d&agrave;ng. Trong khi phần mềm Armory Crate cung cấp Fan Xpert 2+ v&agrave; th&ocirc;ng tin phần cứng, đồng thời cung cấp to&agrave;n quyền kiểm so&aacute;t t&iacute;nh năng khử nhiễu AI hai chiều, &aacute;nh s&aacute;ng RGB v&agrave; c&agrave;i đặt ngoại vi.</p>

<p><img alt="GEARVN - ASUS TUF GAMING B660M-PLUS WIFI DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus_tuf_gaming_b660m-plus_wifi_ddr4-3_1783a93bbdbc43149c0ef0752f0c0e69.jpg" /></p>
', CAST(1990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10154, N'Bo mạch chủ ASUS Prime H510M-A Wifi DDR4', N'bo-mach-chu-asus-prime-h510m-a-wifi-ddr4', N'Bo mạch chủ ASUS Prime H510M-A Wifi DDR4', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-prime-h510m-a-wifi/prime-h510m-a-wifi-01_c891301135af4f1587c6d1605eaae3f6_7c27533aae114aa68dbfb8e2f4ebba34_1024x1024.jpg', CAST(2190000 AS Decimal(18, 0)), 10, CAST(1971000 AS Decimal(18, 0)), 10041, CAST(N'2024-05-17T14:37:51.213' AS DateTime), NULL, 1, 10140, N'<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>H&atilde;ng sản xuất:</td>
			<td>ASUS</td>
		</tr>
		<tr>
			<td>Model:</td>
			<td>PRIME H510M-A WIFI</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>CPU:</p>
			</td>
			<td>Intel&reg;&nbsp;Socket&nbsp;LGA1200&nbsp;for&nbsp;11th&nbsp;Gen&nbsp;Intel&reg;&nbsp;Core&trade;&nbsp;Processors&nbsp;&amp;&nbsp;10th&nbsp;Gen&nbsp;Intel&reg;&nbsp;Core&trade;,&nbsp;Pentium&reg;&nbsp;Gold&nbsp;and&nbsp;Celeron&reg;&nbsp;Processors*
			<p>Supports Intel&reg; 14 nm CPU</p>

			<p>Supports Intel&reg; Turbo Boost Technology 2.0 and Intel&reg; Turbo Boost Max Technology 3.0</p>
			</td>
		</tr>
		<tr>
			<td>Chipset:</td>
			<td>H510</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>Memory:</p>
			</td>
			<td>Memory Channels:2DDR4 (Dual&nbsp;Channel)<br />
			Max Memory Size:64GB
			<p>DDR4 3200(OC)/2933/2800/2666/2400/2133 MHz Non-ECC, Un-buffered Memory*</p>

			<p>Dual Channel Memory Architecture</p>

			<p>Supports Intel&reg; Extreme Memory Profile (XMP)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>Graphics:</p>
			</td>
			<td>1 x DisplayPort 1.4<br />
			1 x D-Sub<br />
			1 x HDMI&trade; 2.0</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>Expansion Slots:</p>
			</td>
			<td>
			<p><strong>Intel<sup>&reg;</sup>&nbsp;11th &amp; 10th Gen Processors</strong></p>

			<p>1 x PCIe 4.0/3.0 x16 slot</p>

			<p>Intel<sup>&reg;</sup>&nbsp;11th Gen processors support PCIe 4.0 x16</p>

			<p>&nbsp;</p>

			<p>Intel<sup>&reg;</sup>&nbsp;10th Gen processors support PCIe 3.0 x16</p>

			<p>&nbsp;</p>

			<p><strong>Intel<sup>&reg;</sup>&nbsp;H510 Chipset</strong></p>

			<p>2 x PCIe 3.0 x1 slots&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>Storage:</p>
			</td>
			<td>Supports&nbsp;1&nbsp;x&nbsp;M.2&nbsp;slot&nbsp;and&nbsp;4&nbsp;x&nbsp;SATA&nbsp;6Gb/s&nbsp;ports
			<p><strong>Intel&reg; H510 Chipset</strong></p>

			<p>M.2 slot (Key M), type 2242/2260/2280 (supports PCIe 3.0 x4 &amp; SATA modes)</p>

			<p>4 x SATA 6Gb/s ports</p>
			</td>
		</tr>
		<tr>
			<td>Ethernet:</td>
			<td>1 x Intel&reg; I219-V 1Gb Ethernet</td>
		</tr>
		<tr>
			<td>Wireless &amp; Bluetooth:</td>
			<td>Intel&reg; Wi-Fi 5 9462NGW<br />
			Wi-Fi 5 (802.11 a/b/g/n/ac)<br />
			Supports 2.4/5GHz frequency band<br />
			Bluetooth v5.1</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>USB:</p>
			</td>
			<td><strong>Rear USB: Total 6 ports</strong>
			<ul>
				<li>2 x USB 3.2 Gen 1 ports (2 x Type-A)&nbsp;</li>
				<li>4 x USB 2.0 ports (4 x Type-A)</li>
			</ul>
			<strong>Front USB: Total 5 ports</strong>

			<ul>
				<li>1 x USB 3.2 Gen 1 header supports additional 2 USB 3.2 Gen 1 ports</li>
				<li>2 x USB 2.0 headers support additional 3 USB 2.0 ports</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>Audio:</p>
			</td>
			<td>
			<p>Realtek ALC897/887 7.1 Surround Sound High Definition Audio CODEC</p>

			<ul>
				<li>Supports: Jack-detection, Multi-streaming, Front Panel Jack-retasking</li>
				<li>Supports up to 24-Bit/192 kHz playback</li>
			</ul>

			<p><strong>Audio Features</strong></p>

			<ul>
				<li>Audio Shielding</li>
				<li>Premium Japanese audio capacitors</li>
				<li>Dedicated audio PCB layers</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>Back Panel I/O Ports:</p>
			</td>
			<td>
			<p>2 x USB 3.2 Gen 1 ports (2 x Type-A)</p>

			<p>4 x USB 2.0 ports (4 x Type-A)</p>

			<p>1 x DisplayPort</p>

			<p>1 x D-Sub port</p>

			<p>1 x HDMI&trade; port</p>

			<p>1 x ASUS Wi-Fi Module</p>

			<p>1 x Intel&reg; I219-V 1Gb Ethernet port</p>

			<p>3 x Audio jacks</p>

			<p>1 x PS/2&nbsp;Keyboard -&nbsp;b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh&nbsp;(purple) port</p>

			<p>1 x PS/2 Mouse (green) port</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>Intrernal I/O Connectors:</p>
			</td>
			<td>
			<p><strong>Fan and Cooling related</strong></p>

			<ul>
				<li>1 x 4-pin CPU Fan header</li>
				<li>2 x 4-pin Chassis Fan headers</li>
			</ul>

			<p><strong>Power related</strong></p>

			<ul>
				<li>1 x 24-pin Main Power connector</li>
				<li>1 x 8-pin +12V Power connector</li>
			</ul>

			<p><strong>Storage related</strong></p>

			<ul>
				<li>1 x M.2 slot (Key M)</li>
				<li>4 x SATA 6Gb/s ports</li>
			</ul>

			<p><strong>USB</strong></p>

			<ul>
				<li>1 x USB 3.2 Gen 1 header supports additional 2 USB 3.2 Gen 1 ports</li>
				<li>2 x USB 2.0 headers support additional 3 USB 2.0 ports</li>
			</ul>

			<p><strong>Miscellaneous</strong></p>

			<ul>
				<li>2 x AURA Addressable Gen 2 headers</li>
				<li>2 x AURA RGB headers</li>
				<li>1 x Clear CMOS header</li>
				<li>1 x COM Port header</li>
				<li>1 x Front Panel Audio header (AAFP)</li>
				<li>1 x S/PDIF Out header</li>
				<li>1 x Speaker header</li>
				<li>1 x SPI TPM header (14-1pin)</li>
				<li>1 x 10-1 pin System Panel header</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>Special Features:</p>
			</td>
			<td>
			<p><strong>ASUS 5X PROTECTION III</strong></p>

			<ul>
				<li>DIGI+ VRM</li>
				<li>LANGuard</li>
				<li>Overvoltage Protection</li>
				<li>SafeSlot Core</li>
				<li>Stainless-Steel Back I/O</li>
			</ul>

			<p><strong>ASUS Q-Design</strong></p>

			<ul>
				<li>Q-DIMM</li>
				<li>Q-Slot</li>
			</ul>

			<p><strong>ASUS Thermal Solution</strong></p>

			<ul>
				<li>M.2 heatsink</li>
				<li>VRM heatsink design</li>
			</ul>

			<p><strong>AURA Sync</strong></p>

			<ul>
				<li>AURA RGB headers</li>
				<li>Addressable Gen 2 RGB headers</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>Software Features:</p>
			</td>
			<td>
			<p><strong>ASUS Exclusive Software</strong></p>

			<p>Armoury Crate</p>

			<p>- AURA Creator</p>

			<p>- AURA Sync</p>

			<p>AI Suite 3</p>

			<p>- Performance And Power Saving Utility</p>

			<p>&nbsp; TurboV EVO</p>

			<p>&nbsp; EPU</p>

			<p>&nbsp; DIGI+ VRM</p>

			<p>&nbsp; Fan Xpert 2+</p>

			<p>- EZ update</p>

			<p>ASUS CPU-Z</p>

			<p>AI Charger</p>

			<p>DAEMON Tools</p>

			<p>MyAsus</p>

			<p>Norton Anti-virus software (Free Trial version)</p>

			<p>WinRAR</p>

			<p><strong>UEFI BIOS</strong></p>

			<p>ASUS EZ DIY</p>

			<p>- ASUS CrashFree BIOS 3</p>

			<p>- ASUS EZ Flash 3</p>
			- ASUS UEFI BIOS EZ Mode</td>
		</tr>
		<tr>
			<td>BIOS:</td>
			<td>128 Mb Flash ROM, UEFI AMI BIOS</td>
		</tr>
		<tr>
			<td>Manageability:</td>
			<td>WOL by PME, PXE</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>Accessories:</p>
			</td>
			<td>
			<p><strong>Cables</strong></p>

			<ul>
				<li>2 x SATA 6Gb/s cables</li>
			</ul>

			<p><strong>Miscellaneous</strong></p>

			<ul>
				<li>1 x&nbsp;ASUS WiFi&nbsp;moving antennas</li>
				<li>1 x I/O Shield</li>
				<li>1 x M.2 Rubber Package</li>
				<li>1 x M.2 SSD screw package</li>
			</ul>

			<p><strong>Installation Media</strong></p>

			<ul>
				<li>1 x Support DVD</li>
			</ul>

			<p><strong>Documentation</strong></p>

			<ul>
				<li>1 x User manual</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>Operating System:</td>
			<td>Windows 10 64bit</td>
		</tr>
		<tr>
			<td>Form Factor:</td>
			<td>microATX<br />
			22.6cm&nbsp;x&nbsp;21.1cm</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết mainboard&nbsp;ASUS PRIME H510M-A WIFI</strong></h2>

<p>Nổi tiếng với chất lượng ho&agrave;n thiện lu&ocirc;n được đ&aacute;nh gi&aacute; cao, Asus lu&ocirc;n mang tới những sản phẩm mainboard tuyệt vời cho người d&ugrave;ng. Đến từ ph&acirc;n kh&uacute;c mainboard gi&aacute; rẻ v&agrave; l&agrave; phi&ecirc;n bản tiếp theo của chipset&nbsp;H410, mainboard&nbsp;<strong>Asus Prime H510M-A Wifi</strong>&nbsp;sẽ l&agrave; một lựa chọn đ&aacute;ng gi&aacute; d&agrave;nh cho những d&agrave;n PC Gaming gi&aacute; rẻ trong năm nay.</p>

<h3><strong>N&acirc;ng cao khả năng t&ugrave;y chỉnh</strong></h3>

<p>Một sự n&acirc;ng cấp mạnh mẽ trong d&ograve;ng&nbsp;mainboard&nbsp;gi&aacute; rẻ, Asus Prime H510M-A Wifi được trang bị những c&ocirc;ng cụ, c&ocirc;ng nghệ t&ugrave;y chỉnh mạnh mẽ cho trải nghiệm tốt nhất:</p>

<ul>
	<li>
	<p>Bộ xử l&yacute; năng lượng EPU: Tối ưu h&oacute;a điện năng ti&ecirc;u thụ v&agrave; tiết kiệm điện th&ocirc;ng minh với chế độ Đi vắng (Away mode).</p>
	</li>
</ul>

<p>&nbsp;</p>

<p><img alt="GEARVN - Asus Prime H510M-A Wifi DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus-prime-h510m-a-wifi-10_1e97d44b4f90470d9c603e90e448c7bc.png" /></p>

<p>&nbsp;</p>

<ul>
	<li>
	<p>Fan Xpert 2+: Phần mềm hỗ trợ điều chỉnh v&agrave; kiểm so&aacute;t dễ d&agrave;ng với hệ thống quạt tản nhiệt, nay được trang bị th&ecirc;m chức năng Auto-Tuning hỗ trợ bạn cấu h&igrave;nh mọi c&agrave;i đặt chỉ với 1 c&uacute; click chuột.</p>
	</li>
</ul>

<p>&nbsp;</p>

<p><img alt="GEARVN - Asus Prime H510M-A Wifi DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus-prime-h510m-a-wifi-15_d61711c2a57b475f96c2d005e7e9f968.png" /></p>

<p>&nbsp;</p>

<ul>
	<li>
	<p>Module Digi + VRM: Cung cấp khả năng kiểm so&aacute;t theo thời gian thực gi&uacute;p ph&aacute;t hiện t&igrave;nh trạng bất thường của điện &aacute;p, tự động chuyển đổi tần số v&agrave; hiệu năng. Ngo&agrave;i ra, module c&ograve;n cho ph&eacute;p bạn tinh chỉnh, thiết lập với&nbsp;CPU&nbsp;hướng đến sự ổn định v&agrave; hiệu suất mạnh mẽ nhất.</p>
	</li>
</ul>

<p>&nbsp;</p>

<p><img alt="GEARVN - Asus Prime H510M-A Wifi DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus-prime-h510m-a-wifi-16_dbbd35d1545b42e9884949c22dd08789.png" /></p>

<p>&nbsp;</p>

<p>Kết hợp với khả năng t&ugrave;y chỉnh mạnh mẽ đ&oacute; l&agrave; hệ thống BIOS với giao diện quản l&yacute; th&acirc;n thiện với mọi cấp độ người d&ugrave;ng tr&ecirc;n&nbsp;mainboard H510&nbsp;từ Asus. Cung cấp 2 chế độ l&agrave; Advanced (N&acirc;ng cao) v&agrave; chế độ EZ cho bạn dễ d&agrave;ng t&ugrave;y chỉnh theo &yacute; muốn c&aacute; nh&acirc;n của m&igrave;nh.</p>

<h3><strong>Hệ thống tản nhiệt tối ưu</strong></h3>

<p>Mainboard Asus&nbsp;Prime H510M-A Wifi sở hữu những khả năng tản nhiệt tối ưu nhất d&agrave;nh cho&nbsp;quạt tản nhiệt&nbsp;v&agrave; tản nhiệt CPU, tất cả được đảm bảo bằng con chip th&ocirc;ng minh gi&uacute;p kiểm so&aacute;t t&igrave;nh trạng qu&aacute; nhiệt hoặc qu&aacute; tải.</p>

<p><img alt="GEARVN - Asus Prime H510M-A Wifi DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus-prime-h510m-a-wifi-9_a052178777bd4005b5d15bfdafae8314_grande.png" /></p>

<p>N&acirc;ng cao hiệu suất khai th&aacute;c sức mạnh của Asus Prime H510M-A Wifi với những tấm heatsink M.2 v&agrave; VRM. Khe cắm SSD M.2 được bảo vệ bởi tấm heatsink gi&uacute;p tản nhiệt thụ động, c&ugrave;ng sự chắc chắn khi ốc v&iacute;t được cố định tr&ecirc;n main. Đối với d&agrave;n VRM l&agrave; tấm tản nhiệt k&iacute;ch thước lớn gia tăng khả năng truyền tải nhiệt lượng từ MOSFET, từ đ&oacute; đem lại khả năng hoạt động mạnh mẽ nhất.</p>

<h3><strong>Khe cắm SSD tốc độ cao&nbsp;</strong></h3>

<p>Asus Prime H510M-A Wifi cung cấp khe cắm&nbsp;SSD&nbsp;M.2 hỗ trợ băng th&ocirc;ng x4 PCI Express 3.0, mang lại tốc độ truyền tải l&ecirc;n đến 32Gb/s. Điều n&agrave;y sẽ gi&uacute;p bạn tối ưu h&oacute;a thời gian sao ch&eacute;p dữ liệu v&agrave; tốc độ đọc file tr&ecirc;n ổ cứng.</p>

<p><img alt="GEARVN - Asus Prime H510M-A Wifi DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus-prime-h510m-a-wifi-17_98f71515f1f94d4490317ada3bf82898_grande.png" /></p>

<h3><strong>Những cổng kết nối th&ocirc;ng dụng nhất</strong></h3>

<p>Trang bị những cổng kết nối tối ưu cho c&ocirc;ng việc v&agrave; giải tr&iacute; hiện nay, Asus Prime H510M-A Wifi mang đến cổng USB 3.2 Gen 1 cho khả năng kết nối c&aacute;c thiết bị ngoại vi. Hỗ trợ n&acirc;ng cao sức mạnh l&agrave; khe PCIe 4.0 tương th&iacute;ch với&nbsp;CPU Intel Gen 11&nbsp;mới nhất c&ugrave;ng GPU mới nhất hiện nay, với băng th&ocirc;ng lớn v&agrave; tốc độ truyền tải &ldquo;si&ecirc;u chớp&rdquo; từ đ&oacute; tạo n&ecirc;n những cấu h&igrave;nh&nbsp;PC Gaming&nbsp;gi&aacute; rẻ nhưng vẫn chất.</p>

<p><img alt="GEARVN - Asus Prime H510M-A Wifi DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus-prime-h510m-a-wifi-12_22a6411714564a5abf817616b39759a4.png" /></p>

<p>Sự cải tiến tr&ecirc;n Asus Prime H510M-A Wifi c&ograve;n đến từ kết nối Wi-Fi 5, sự n&acirc;ng cấp r&otilde; rệt so với những mainboard gi&aacute; trước đ&acirc;y, cung cấp cho bạn th&ecirc;m lựa chọn kết nối Internet. Ngo&agrave;i ra, c&ocirc;ng nghệ Intel Ethernet Connection I219-V kh&ocirc;ng những cung cấp tốc độ mạng tối đa m&agrave; c&ograve;n gi&uacute;p tiết kiệm t&agrave;i nguy&ecirc;n từ CPU v&agrave; cung cấp th&ocirc;ng lượng TCP, DCP cho khả năng kết nối mượt m&agrave; hơn.</p>

<h3><strong>Khả năng c&aacute; nh&acirc;n h&oacute;a cải tiến</strong></h3>

<p>Asus Prime H510M-A Wifi DDR4 được ch&iacute;nh Asus ch&uacute; trọng v&agrave;o khả năng c&aacute; nh&acirc;n h&oacute;a cho người d&ugrave;ng với những c&ocirc;ng nghệ như codec độc quyền cung cấp chất lượng &acirc;m thanh tuyệt vời. Tối ưu h&oacute;a khả năng lắp đặt với thiết kế DIY th&acirc;n thiện người d&ugrave;ng khi thiết kế cho người d&ugrave;ng một chốt ở khe PCIe n&acirc;ng cao sự chắc chắn khi lắp đặt&nbsp;VGA&nbsp;l&ecirc;n 1.6 lần v&agrave; kh&ocirc;ng sợ những t&igrave;nh huống bị đứt bởi c&aacute;c vết cắt.</p>

<p><img alt="GEARVN - Asus Prime H510M-A Wifi DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus-prime-h510m-a-wifi-18_2b5ea5c6e69c4b1cbc350f307cbac71f_grande.png" /></p>

<p>&nbsp;</p>

<p>Với phần mềm Armoury Crate đi k&egrave;m với mainboard Asus, bạn c&oacute; thể t&ugrave;y chỉnh hiệu ứng&nbsp;LED RGB&nbsp;th&ocirc;ng qua chức năng Aura Sync, biến bộ m&aacute;y trở n&ecirc;n lung linh hơn. C&ugrave;ng khả năng th&ocirc;ng b&aacute;o, tự động cập nhất driver thiết yếu bạn sẽ hạn chế tối lỗi gặp phải trong qu&aacute; tr&igrave;nh sử dụng.</p>

<p><img alt="GEARVN - Asus Prime H510M-A Wifi DDR4" src="https://file.hstatic.net/1000026716/file/gearvn-asus-prime-h510m-a-wifi-19_74f69c1b5d034bc784faed5a87387185_grande.jpg" /></p>
', CAST(1190000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10155, N'Bo Mạch Chủ Asus Prime A320M-E', N'bo-mach-chu-asus-prime-a320m-e', N'Bo Mạch Chủ Asus Prime A320M-E', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-prime-a320m-e/arvn-mainboard-asus-prime-a320m-e-666_a1b53779717448008bfe8cd6f96e4ff8_e912b1960c8a48618fbd3dabba10c4cc_1024x1024.jpg', CAST(1390000 AS Decimal(18, 0)), 10, CAST(1251000 AS Decimal(18, 0)), 10041, CAST(N'2024-05-17T14:39:52.140' AS DateTime), NULL, 1, 10141, N'<p><strong>TH&Ocirc;NG SỐ KĨ THUẬT</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>CPU</strong></td>
			<td>AMD Socket AM4 cho AMD Ryzen&trade;/A-series thế hệ thứ 7/Athlon&trade; bộ vi xử l&yacute;<br />
			Hỗ trợ CPU l&ecirc;n đến 8 l&otilde;i</td>
		</tr>
		<tr>
			<td><strong>Chipset</strong></td>
			<td>AMD A320</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p><strong>Bộ nhớ</strong></p>
			</td>
			<td>2 x DIMM, Max. 32GB, DDR4 3200(O.C.)/2933(O.C.)/2666/2400/2133 MHz ECC v&agrave; kh&ocirc;ng ECC, Kh&ocirc;ng Đệm Bộ nhớ<br />
			<strong>Bộ vi xử l&yacute; AMD Ryzen&trade;</strong><br />
			Kiến tr&uacute;c bộ nhớ K&ecirc;nh đ&ocirc;i<br />
			2 x DIMM, Max. 32GB, DDR4 2400/2133 MHz Kh&ocirc;ng ECC, Kh&ocirc;ng Đệm Bộ nhớ<br />
			<strong>Bộ vi xử l&yacute; AMD A-series/Athlon&trade; thế hệ thứ 7</strong></td>
		</tr>
		<tr>
			<td>
			<p><strong>Đồ hoạ</strong></p>
			</td>
			<td>Đồ họa AMD Radeon&trade; R Series t&iacute;ch hợp trong APU A-series thế hệ thứ 7 *<br />
			hỗ trợ đầu ra Multi- VGA : cổng HDMI/DVI-D/RGB
			<ul>
				<li>Hỗ trợ DVI-D, hệ ph&acirc;n giải cao nhất l&ecirc;n đến 1920 x 1200 @ 60 Hz</li>
				<li>Hỗ trợ RGB với. độ ph&acirc;n giải tối đa 1920 x 1200 @ 60 Hz</li>
				<li>Hỗ trợ HDMI 1.4b với độ ph&acirc;n giải tối đa 4096 x 2160 @ 24 Hz / 2560 x 1600 @ 60 Hz</li>
			</ul>
			<br />
			Bộ nhớ chia sẻ tối đa 2048 MB</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p><strong>Slot PCIe</strong></p>
			</td>
			<td><strong>Bộ vi xử l&yacute; AMD Ryzen&trade;</strong><br />
			1 x PCIe 3.0/2.0 x16 (chế độ x16)<br />
			<strong>Bộ vi xử l&yacute; AMD A-series/Athlon&trade; thế hệ thứ 7</strong><br />
			1 x PCIe 3.0/2.0 x16 (chế độ x8 )<br />
			<strong>Bộ chip AMD A320</strong><br />
			2 x PCIe 2.0 x1</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p><strong>Lưu trữ</strong></p>
			</td>
			<td><strong>Bộ chip AMD A320 :</strong><br />
			4 x Cổng SATA 6Gb /s, m&agrave;u x&aacute;m,<br />
			Hỗ trợ Raid 0, 1, 10<br />
			<strong>Bộ vi xử l&yacute; AMD Ryzen&trade; :</strong><br />
			1 x M.2 Socket 3, với M Key, hỗ trợ thiết bị lưu trữ kiểu 2242/2260/2280 (chế độ SATA &amp; PCIE 3.0 x4)<br />
			<strong>Bộ vi xử l&yacute; AMD A-series/Athlon&trade; thế hệ thứ 7 :</strong><br />
			1 x M.2 Socket 3, với M Key, hỗ trợ thiết bị lưu trữ kiểu 2242/2260/2280 (Chế độ SATA)</td>
		</tr>
		<tr>
			<td><strong>LAN</strong></td>
			<td>Realtek&reg; RTL8111H, 1 x Bộ điều khiển Gigabit LAN</td>
		</tr>
		<tr>
			<td><strong>Audio</strong></td>
			<td>Realtek&reg; ALC887 8-k&ecirc;nh CODEC &Acirc;m thanh HD</td>
		</tr>
		<tr>
			<td>
			<p><strong>Cổng USB</strong></p>
			</td>
			<td><strong>Bộ vi xử l&yacute; AMD Ryzen&trade;/AMD A-series/Athlon&trade; thế hệ thứ 7 :</strong><br />
			4 x Cổng USB 3.1 Gen 1 (4 ở mặt sau, m&agrave;u xanh, m&agrave;u xanh)<br />
			<strong>AMD A320 chipset :</strong><br />
			2 x Cổng USB 3.1 Gen 1 (2 ở giữa bo mạch)<br />
			<strong>AMD A320 chipset :</strong><br />
			1 x Cổng USB 3.1 Gen 2 (1 ở mặt sau, m&agrave;u xanh, xanh m&ograve;ng k&eacute;t, Kiểu A)<br />
			<strong>AMD A320 chipset :</strong><br />
			4 x Cổng USB 2.0 (4 ở giữa bo mạch)</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p><strong>T&iacute;nh năng đặc biệt</strong></p>
			</td>
			<td><strong>ASUS 5X Protection III :</strong>
			<ul>
				<li>ASUS SafeSlot Core: Khe cắm PCIe được gia cố gi&uacute;p ngăn hư hại</li>
				<li>ASUS LANGuard: Bảo vệ chống đột biến điện mạng LAN, s&eacute;t đ&aacute;nh v&agrave; ph&oacute;ng tĩnh điện!</li>
				<li>Bảo vệ chống tăng qu&aacute; &aacute;p của ASUS: Thiết kế điện năng bảo vệ mạch đẳng cấp thế giới</li>
				<li>Lưng I/O bằng th&eacute;p kh&ocirc;ng gỉ của ASUS: Khả năng chống ăn m&ograve;n tốt hơn 3 lần cho độ bền cao hơn nữa!</li>
				<li>ASUS DIGI+ VRM: 6 pha thiết kế điện năng số</li>
			</ul>
			<strong>T&iacute;nh năng độc quyền của ASUS</strong>&nbsp;:

			<ul>
				<li>AI Suite 3</li>
				<li>Ai Charger</li>
			</ul>
			<strong>Giải ph&aacute;p giải nhiệt ASUS Quiet</strong>&nbsp;:

			<ul>
				<li>Thiết kế giải ph&aacute;p tản nhiệt kh&ocirc;ng quạt Phong c&aacute;ch</li>
				<li>ASUS Fan Xpert</li>
			</ul>
			<strong>ASUS EZ DIY :</strong>

			<ul>
				<li>ASUS CrashFree BIOS 3</li>
				<li>ASUS EZ Flash 3</li>
				<li>BIOS đa ng&ocirc;n ngữ</li>
				<li>Chế độ EZ của ASUS UEFI BIOS</li>
			</ul>
			<strong>ASUS Q-Design :</strong>

			<ul>
				<li>ASUS Q-Slot</li>
				<li>ASUS Q-DIMM</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh hỗ trợ</strong></td>
			<td>Windows&reg; 10 , 64bit</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p><strong>Back I/O Ports</strong></p>
			</td>
			<td>1 x b&agrave;n ph&iacute;m PS / 2 (m&agrave;u t&iacute;m)<br />
			1 x chuột PS / 2 (m&agrave;u xanh)<br />
			1 x DVI-D<br />
			1 x D-Sub<br />
			1 x HDMI<br />
			1 x cổng LAN (RJ45)<br />
			1 x USB 3.1 thế hệ thứ 2 (xanh m&ograve;ng k&eacute;t)<br />
			4 x USB 3.1 thế hệ thứ 1 (m&agrave;u xanh)<br />
			3 x giắc cắm &acirc;m thanh</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p><strong>Internal I/O Ports</strong></p>
			</td>
			<td>1 x kết nối USB 3.0 hỗ trợ th&ecirc;m 2 cổng USB 3.0 (19-pin)<br />
			2 x kết nối USB 2.0 hỗ trợ th&ecirc;m 4 cổng USB 2.0<br />
			1 x kết nối cổng COM<br />
			4 x kết nối SATA 6Gb / s<br />
			1 x kết nối CPU Fan (1 x 4 ch&acirc;n)<br />
			1 x kết nối Chassis Fan (1 x 4 ch&acirc;n)<br />
			1 x Đầu ra S/PDIF<br />
			1 x M.2 Socket 3 với M Key, hỗ trợ thiết bị lưu trữ kiểu 2242/2260/2280 (chế độ SATA &amp; PCIE 3.0 x4)<br />
			1 x kết nối điện năng 24-pin EATX<br />
			1 x kết nối điện năng 4-pin ATX 12V<br />
			1 x kết nối Giắc cắm &acirc;m thanh (AAFP)<br />
			1 x bảng điều khiển Hệ thống<br />
			1 x ch&acirc;n nối Clear CMOS<br />
			1 x Đầu cắm loa</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p><strong>Phụ kiện</strong></p>
			</td>
			<td>Hướng dẫn sử dụng<br />
			2 x c&aacute;p SATA 6Gb / s<br />
			I/O Shield<br />
			1 x DVD hỗ trợ<br />
			1 x M.2 Anchor</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p><strong>BIOS</strong></p>
			</td>
			<td>128 Mb Flash ROM, UEFI AMI BIOS, PnP,WfM2.0, SM BIOS 3.0, ACPI 6.1, Multi-language BIOS, ASUS EZ Flash 3, ASUS CrashFree BIOS 3, T&iacute;nh năng My Favourites, Nhật k&yacute; Lần Sửa đổi Cuối c&ugrave;ng, F12 Chụp m&agrave;n h&igrave;nh, Th&ocirc;ng tin bộ nhớ ASUS DRAM SPD (Ph&aacute;t hiện Trạng th&aacute;i Tuần tự), F6 Kiểm so&aacute;t Qfan</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>Dạng thiết kế mATX<br />
			8.9 inch x 8.7 inch ( 22.6 cm x 22.1 cm )</td>
		</tr>
		<tr>
			<td><strong>Ch&uacute; &yacute;</strong></td>
			<td>*1：Kh&ocirc;ng hỗ trợ Bộ vi xử l&yacute; AMD Ryzen&trade;.</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;mainboard ASUS PRIME A320M E</strong></h2>

<p>&nbsp;</p>

<p>Main m&aacute;y t&iacute;nh&nbsp;<strong>PRIME A320</strong>&nbsp;series sở hữu C&ocirc;ng nghệ 5X Protection II đầu ng&agrave;nh, sử dụng những linh kiện tốt nhất, thiết kế mạch ho&agrave;n hảo v&agrave; tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn khắt khe để bảo đảm chất lượng v&agrave; độ bền l&acirc;u d&agrave;i cho bo mạch chủ của bạn.</p>

<p>Điều n&agrave;y đồng nghĩa với sự bảo vệ v&agrave; ổn định vượt trội cho m&aacute;y t&iacute;nh &mdash; đ&acirc;y l&agrave; th&agrave;nh quả từ nhiều thập kỷ kinh nghiệm kỹ thuật của thương hiệu bo mạch chủ h&agrave;ng đầu thế giới.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-e-01_d43893e184a94170879f5cc6bdbbb92b.jpg" /></p>

<p>&nbsp;</p>

<h3><strong>SafeSlot Core</strong></h3>

<p>SafeSlot Core l&agrave; khe cắm PCIe độc quyền của ASUS. Với một thiết kế được gia cố được gắn v&agrave;o bo mạch chủ bởi một m&oacute;c đặc biệt, Safeslot Core cung cấp độ b&aacute;m mạnh hơn 1,6 lần v&agrave; độ bền đứt tốt hơn 1,3 lần so với c&aacute;c khe cắm mở rộng ti&ecirc;u chuẩn.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-e-02_2f681b58b32b4f4ba9045a771d07fec7.jpg" /></p>

<p>&nbsp;</p>

<p><strong>LANGuard tăng cường lưu lượng. Chịu đột biến điện tốt hơn 2,5 lần.</strong></p>

<p>ASUS LANGuard l&agrave; lớp bảo vệ mạng ở cấp phần cứng sử dụng c&ocirc;ng nghệ nối t&iacute;n hiệu v&agrave; c&aacute;c tụ điện chống nhiễu từ cao cấp được cắm tr&ecirc;n bề mặt đảm bảo kết nối ổn định hơn v&agrave; lưu lượng tốt hơn; th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c linh kiện chống tĩnh điện v&agrave; bảo vệ chống đột biến điện cho khả năng chịu tĩnh điện lớn hơn v&agrave; độ bảo vệ chống đột biến điện cao hơn.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-e-03_8af8b6350b6f4d5b984ef5558afb870a.jpg" /></p>

<h3><strong>Bảo vệ chống tăng&nbsp;&aacute;p vượt mức</strong></h3>

<p>Một thiết kế mạch độc quyền với bộ điều tiết điện &aacute;p t&iacute;ch hợp b&ecirc;n trong nhằm bảo vệ chipset, cổng kết nối v&agrave; bộ m&atilde; (codec) &acirc;m thanh của bạn khỏi những hư hại g&acirc;y ra bởi mức điện &aacute;p cao bất thường do nguồn cung cấp yếu hoặc kh&ocirc;ng ổn định.</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-e-04_575790b3280a4d4f993ecac5c0c9d222.jpg" /></p>

<h3><strong>USB 3.1 10Gb/s tr&ecirc;n bo mạch</strong></h3>

<p>Với USB 3.1 Kiểu A c&oacute; khả năng tương th&iacute;ch ngược, bạn sẽ được trải nghiệm kết nối si&ecirc;u linh hoạt c&ugrave;ng tốc độ truyền tải dữ liệu nhanh như &aacute;nh s&aacute;ng, l&ecirc;n đến 10Gb/s (nhanh gấp hai lần USB 3.1 Thế hệ 1 ti&ecirc;u chuẩn).</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-e-06_318255a2b1324e59a2aca8b2688f7b65.jpg" /></p>

<h3><strong>Tăng tốc với M.2 t&iacute;ch hợp l&ecirc;n đến 32Gb/s</strong></h3>

<p>Với băng th&ocirc;ng x4 PCI Express 3.0/2.0, M.2 hỗ trợ tốc độ truyền dữ liệu đến 32Gb/s. Đ&acirc;y l&agrave; lựa chọn ho&agrave;n hảo cho ổ lưu trữ hệ điều h&agrave;nh hoặc ứng dụng, gi&uacute;p to&agrave;n bộ m&aacute;y t&iacute;nh hoặc c&aacute;c ứng dụng chuy&ecirc;n nghiệp của bạn vận h&agrave;nh nhanh hơn rất nhiều.</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-e-07_939542aaa8704d528e553de8af8958e6.jpg" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h3><strong>UEFI BIOS được giới truyền th&ocirc;ng ca ngợi</strong></h3>

<p>&nbsp;</p>

<p>BIOS đồ họa điều khiển bằng chuột mượt m&agrave; nhất, b&oacute;ng bẩy nhất đ&atilde; được cải thiện để c&ograve;n bắt mắt hơn nữa. D&ugrave; bạn l&agrave; một tay mơ m&aacute;y t&iacute;nh hay một chuy&ecirc;n gia &eacute;p xung l&atilde;o luyện, c&aacute;c Chế độ Cao cấp v&agrave; EZ sẽ gi&uacute;p bạn thực hiện tốt c&ocirc;ng việc một c&aacute;ch dễ d&agrave;ng v&agrave; nhanh ch&oacute;ng.</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-e-08_e954f253a1bc45a786475f48c6b780ed.jpg" /></p>
', CAST(990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10156, N'Bo mạch chủ ASUS Prime A320M-K', N'bo-mach-chu-asus-prime-a320m-k', N'Bo mạch chủ ASUS Prime A320M-K', N'/DataManagement/Images/Linh%20Kien%20May%20Tinh/mainboard/asus-prime-a320m-k/gearvn-mainboard-asus-prime-a320m-k-1_5aa6fbb595ab4d3e98bee0d8b970c31e_529ffcd6e21b4a5e9cc4d726a7828af9_1024x1024.jpg', CAST(1390000 AS Decimal(18, 0)), 8, CAST(1278800 AS Decimal(18, 0)), 10041, CAST(N'2024-05-17T14:42:31.480' AS DateTime), NULL, 1, 10142, N'<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<p><strong>CPU hỗ trợ</strong></p>
			</td>
			<td>
			<p>AMD</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Chipset</strong></p>
			</td>
			<td>
			<p>A320</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>RAM hỗ trợ</strong></p>
			</td>
			<td>
			<p>2 x DIMM, Max. 32GB, DDR4 3200(O.C.)/3000(O.C.)/2933(O.C.)/2800(O.C.)/2666/2400/2133 MHz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khe cắm mở rộng</strong></p>
			</td>
			<td>
			<p>AMD Ryzen&trade; 2nd Generation/ Ryzen&trade; 1st Generation Processors<br />
			1 x PCIe 3.0/2.0 x16 (x16 mode)&nbsp;</p>

			<p>AMD Ryzen&trade; with Radeon&trade; Vega Graphics /7th Generation A-Series/Athlon X4 Processors<br />
			1 x PCIe 3.0/2.0 x16 (x8 mode)&nbsp;</p>

			<p>AMD Athlon&trade; with Radeon&trade; Vega Graphics Processors<br />
			1 x PCIe 3.0/2.0 x16 (x4 mode)&nbsp;</p>

			<p>AMD A320 chipset<br />
			2 x PCIe 2.0 x1</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Ổ cứng hỗ trợ</strong></p>
			</td>
			<td>
			<p>4 x SATA 6Gb/s port(s)</p>

			<p>1 x M.2 Socket 3, with M key, type 2242/2260/2280</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Cổng kết nối (Internal)</strong></p>
			</td>
			<td>
			<p>1 x USB 3.1 Gen 1(up to 5Gbps) connector(s) support(s) additional 2 USB 3.1 Gen 1 port(s) (19-pin)<br />
			2 x USB 2.0 connector(s) support(s) additional 4 USB 2.0 port(s)<br />
			1 x M.2 Socket 3 with M key, type 2242/2260/2280 storage devices support (SATA &amp; PCIE 3.0 x 4 mode)<br />
			1 x COM port(s) connector(s)<br />
			4 x SATA 6Gb/s connector(s)<br />
			1 x CPU Fan connector(s) (1 x 4 -pin)<br />
			1 x Chassis Fan connector(s) (1 x 4 -pin)<br />
			1 x S/PDIF out header(s)<br />
			1 x 24-pin EATX Power connector(s)<br />
			1 x 4-pin ATX 12V Power connector(s)<br />
			1 x Front panel audio connector(s) (AAFP)<br />
			1 x System panel(s)&nbsp;<br />
			1 x Clear CMOS jumper(s)<br />
			1 x Speaker connector</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Cổng kết nối (Back Panel)</strong></p>
			</td>
			<td>
			<p>1 x PS/2 keyboard (purple)<br />
			1 x PS/2 mouse (green)<br />
			1 x D-Sub<br />
			1 x HDMI<br />
			1 x LAN (RJ45) port(s)<br />
			4 x USB 3.1 Gen 1 (blue) ,&nbsp;<br />
			2 x USB 2.0&nbsp;<br />
			3 x Audio jack(s)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Lan</strong></p>
			</td>
			<td>
			<p>Realtek&reg; RTL8111H, 1 x Gigabit LAN Controller(s)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch cỡ</strong></p>
			</td>
			<td>
			<p>mATX Form Factor&nbsp;<br />
			8.9 inch x 8.7 inch ( 22.6 cm x 22.1 cm )</p>
			</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;Mainboard Asus PRIME A320M-K</strong></h2>

<p>- Được trang bị bộ xử l&yacute; Athlon &trade; thế hệ thứ 7 v&agrave; AMD&reg; Ryzen &trade; AM4 thế hệ thứ 7 để tối đa h&oacute;a khả năng kết nối v&agrave; tốc độ với NVMe M.2, hỗ trợ 32GB DDR4, USB 3.1 v&agrave; Gigabit LAN</p>

<p>- C&aacute;c biện ph&aacute;p bảo vệ phần cứng&nbsp;5X Protection III&nbsp;cung cấp độ bền v&agrave; độ tin cậy của th&agrave;nh phần</p>

<p>- Khe cắm PCIe được tăng cường bằng s&aacute;ng chế của SafeSlot được cấp bằng s&aacute;ng chế ngăn ngừa thiệt hại từ&nbsp;GPU&nbsp;nặng</p>

<p>- FanXpert cung cấp c&aacute;c điều khiển quạt n&acirc;ng cao để l&agrave;m m&aacute;t tối ưu</p>

<p>- &Acirc;m thanh HD 8 k&ecirc;nh dẫn đầu trong ng&agrave;nh do c&aacute;c tụ điện Nhật Bản điều khiển c&oacute; thiết kế chiếu s&aacute;ng tr&ecirc;n&nbsp;bo mạch chủ</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-k-07_82f8aa2acc2b47afa002d7a8f5e02b76.jpg" /></p>

<h3><strong>5X Protection III</strong></h3>

<p>ASUS l&agrave; nh&agrave; sản xuất bo mạch chủ h&agrave;ng đầu thế giới, nổi tiếng với c&aacute;ch tiếp cận Tư duy Thiết kế độc đ&aacute;oi. Thử nghiệm của ch&uacute;ng t&ocirc;i vượt qu&aacute; c&aacute;c ti&ecirc;u chuẩn ng&agrave;nh c&ocirc;ng nghiệp, được hỗ trợ bởi c&aacute;c th&agrave;nh phần chất lượng cao để bảo vệ đặc biệt trong thế giới thực.</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-k-01_d1653685d2f546a597106d842ff77173.jpg" /></p>

<h3><strong>SafeSlot&nbsp;</strong></h3>

<p>Khe cắm PCIe được củng cố ngăn ngừa hư hỏng SafeSlot Core l&agrave; khe cắm PCIe độc ​​quyền của ASUS. Với thiết kế ki&ecirc;n cố được neo v&agrave;o bo mạch chủ bằng một m&oacute;c đặc biệt, Safeslot Core cung cấp khả năng giữ ch&acirc;n mạnh hơn 1,6 lần v&agrave; khả năng chống cắt lớn hơn 1,3 lần so với c&aacute;c khe cắm mở rộng ti&ecirc;u chuẩn.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-k-02_d5e4ce72b175495299bb3ccb6e3def3c.jpg" /></p>

<h3><strong>Ng&ocirc;n ngữ thiết kế</strong></h3>

<p>&nbsp;</p>

<p>Tăng th&ocirc;ng lượng. Khả năng chịu đột biến cao hơn 2,5 lần. ASUS LANGuard l&agrave; bảo vệ mạng cấp độ phần cứng sử dụng c&ocirc;ng nghệ gh&eacute;p nối t&iacute;n hiệu v&agrave; c&aacute;c tụ điện gắn tr&ecirc;n bề mặt chống EMI cao cấp để đảm bảo kết nối đ&aacute;ng tin cậy hơn v&agrave; th&ocirc;ng lượng tốt hơn, c&ugrave;ng với c&aacute;c th&agrave;nh phần được bảo vệ tĩnh điện v&agrave; chống đột biến để c&oacute; khả năng chịu tĩnh điện cao hơn v&agrave; cải thiện khả năng bảo vệ chống lại nước d&acirc;ng.</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-k-03_0fff6c59e6104b4a8d23bb0d4ab00204.jpg" /></p>

<h3><strong>Bảo vệ qu&aacute; &aacute;p</strong></h3>

<p>&nbsp;</p>

<p>Thiết kế nguồn bảo vệ mạch đẳng cấp thế giới<br />
Một thiết kế mạch độc quyền với bộ điều chỉnh điện &aacute;p t&iacute;ch hợp để bảo vệ chipset, cổng kết nối v&agrave; codec &acirc;m thanh của bạn khỏi bị hư hỏng do điện &aacute;p mức cao kh&ocirc;ng mong muốn từ nguồn điện kh&ocirc;ng ổn định hoặc k&eacute;m chất lượng</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-k-04_414a3e0490194fb08b333b17fc0d4096.jpg" /></p>

<h3><strong>Khả năng tương th&iacute;ch tuyệt vời</strong></h3>

<p>&nbsp;</p>

<p>Đ&atilde; được kiểm tra để tương th&iacute;ch với hơn 1.000 CPU, m&ocirc;-đun bộ nhớ DDR4, cạc đồ họa v&agrave; hơn thế nữa. Tự do lựa chọn c&aacute;c bộ phận đi v&agrave;o m&aacute;y của bạn l&agrave; trọng t&acirc;m của PC DIY. Chương tr&igrave;nh chứng nhận mở rộng của ch&uacute;ng t&ocirc;i tập trung v&agrave;o việc cung cấp khả năng tương th&iacute;ch tốt nhất với nhiều loại linh kiện v&agrave; thiết bị nhất, cho ph&eacute;p bạn tự do x&acirc;y dựng v&agrave; n&acirc;ng cấp m&agrave; kh&ocirc;ng phải bực bội. Tương th&iacute;ch ngay h&ocirc;m nay v&agrave; tương th&iacute;ch xa trong tương lai - đ&oacute; l&agrave; c&aacute;ch của ASUS.</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-k-05_b88035c9205f4416a22a339fda755714.jpg" /></p>

<h3><strong>Hệ sinh th&aacute;i ASUS</strong></h3>

<p>&nbsp;</p>

<p>ASUS cung cấp một bộ c&aacute;c th&agrave;nh phần độc quyền - card đồ họa, card &acirc;m thanh, ổ đĩa quang - bổ sung ho&agrave;n hảo cho d&ograve;ng Prime A320, để bạn c&oacute; thể tự tin ho&agrave;n th&agrave;nh việc x&acirc;y dựng bo mạch chủ t&ugrave;y chỉnh của m&igrave;nh.</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-mainboard-asus-prime-a320m-k-06_67b7179e457f4a429494f5818638302d.jpg" /></p>

<h3><strong>UEFI BIOS tuyệt vời</strong></h3>

<p>&nbsp;</p>

<p>BIOS đồ họa điều khiển bằng chuột mượt m&agrave; nhất, b&oacute;ng bẩy nhất đ&atilde; được cải thiện để c&ograve;n bắt mắt hơn nữa. D&ugrave; bạn l&agrave; một tay mơ m&aacute;y t&iacute;nh hay một chuy&ecirc;n gia &eacute;p xung l&atilde;o luyện, c&aacute;c Chế độ Cao cấp v&agrave; EZ sẽ gi&uacute;p bạn thực hiện tốt c&ocirc;ng việc một c&aacute;ch dễ d&agrave;ng v&agrave; nhanh ch&oacute;ng.</p>
', CAST(990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10157, N'PC Gaming Intel i7-13700F/ VGA RTX 3060', N'pc-gaming-intel-i7-13700f-vga-rtx-3060', N'PC Gaming Intel i7-13700F/ VGA RTX 3060', N'/DataManagement/Images/PC-Gaming/phantom-plus-i3060/gearvn-gvn-phantom-i3060-__4__b253b01d29944d0dbdd86483f36521c7_ea508ea074a8475c947869873f8c71e5_1024x1024-fotor-2023102223262.jpg', CAST(29990000 AS Decimal(18, 0)), 5, CAST(28490500 AS Decimal(18, 0)), NULL, CAST(N'2024-05-17T14:46:43.657' AS DateTime), NULL, 1, 10143, N'<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Mainboard&nbsp;</strong></td>
			<td><strong>MSI MAG B760M MORTAR WIFI DDR4</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>CPU</strong></td>
			<td><strong>Intel Core i7 13700F / 2.1GHz Turbo 5.2GHz / 16 Nh&acirc;n 24 Luồng / 30MB / LGA 1700</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>RAM&nbsp;</strong></td>
			<td><strong>Corsair Vengeance RS RGB 8GB 3600&nbsp;x 2</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>VGA</strong></td>
			<td><strong>MSI GeForce RTX 3060 Ventus 2X OC 12G</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>HDD&nbsp;</strong></td>
			<td><strong>C&oacute; thể t&ugrave;y chọn&nbsp;n&acirc;ng cấp</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>SSD&nbsp;</strong></td>
			<td><strong>WD Blue SN570 500G M.2 NVMe PCIe Gen3</strong></td>
			<td>60 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>PSU&nbsp;</strong></td>
			<td><strong>Corsair CV750 - 80 Plus Bronze</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Case&nbsp;</strong></td>
			<td><strong>Case Cooler Master CMP 510 (3 fan ARGB)</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Cooling</strong></td>
			<td><strong>Cooler Master MASTERLIQUID ML240 ILLUSION</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
	</tbody>
</table>

<h3><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;GVN PHANTOM i3060</strong></h3>

<h3><strong>Bo mạch chủ&nbsp;MSI MAG B760M MORTAR WIFI DDR4</strong></h3>

<p>MSI MAG B760M MORTAR WIFI DDR4&nbsp;l&agrave; một trong những d&ograve;ng&nbsp;mainboard&nbsp;được&nbsp;chắt lọc c&aacute;c yếu tố thiết yếu của nền tảng Intel&nbsp;mới nhất v&agrave; kết hợp ch&uacute;ng để tạo th&agrave;nh một sản phẩm ho&agrave;n hảo trong ph&acirc;n kh&uacute;c tầm trung.&nbsp;</p>

<p><img src="https://product.hstatic.net/200000722513/product/j1_94498d70476f47478fe5bb280a9f8c5b_acc8dedcb0854fcc8162f50628415f6c_grande.jpg" /></p>

<p>Được thiết kế với c&aacute;c th&agrave;nh phần tốt nhất, chiếc bo mạch chủ cung cấp đầy đủ những kết nối cơ bản gi&uacute;p cuộc sống của bạn dễ d&agrave;ng hơn.&nbsp;Việc được bọc th&eacute;p sẽ l&agrave;m giảm thiểu hiện tượng gẫy hay vặn xoắn khe PCI-E khi bạn chọn lắp những VGA lớn. Qua đ&oacute; gi&uacute;p tăng độ bền của sản phẩm v&agrave; khả năng sang nhượng trong tương lai l&agrave; s&aacute;ng sủa hơn tr&ocirc;ng thấy khi&nbsp;build PC.</p>

<p>&nbsp;</p>

<h3><strong>Intel Core i7 13700F / 2.1GHz Turbo 5.2GHz / 16 Nh&acirc;n 24 Luồng / 30MB / LGA 1700</strong></h3>

<p>CPU Intel Core i7-13700F&nbsp;được sản xuất dựa tr&ecirc;n tiến tr&igrave;nh 14nm đem lại cho bộ vi xử l&yacute; sức mạnh ấn tượng. Với 16 nh&acirc;n 24 luồng đi k&egrave;m với tần số cơ bản l&agrave; 2.10 GHz v&agrave; turbo boost l&ecirc;n đến 5.2&nbsp;GHz,&nbsp;i7-13700F&nbsp;đem lại tốc độ xử l&yacute; t&aacute;c vụ v&ocirc; c&ugrave;ng nhanh v&agrave; khả năng hoạt động đa nhiệm mượt m&agrave; khi học tập, l&agrave;m việc v&agrave; giải tr&iacute;.</p>

<p><img src="https://product.hstatic.net/1000026716/product/en-box-t4-i7f-13th-right-1080x1080pixels_60cfa7b27c6641689e0d09174392723d_grande.png" /></p>

<h3><strong>Ram Corsair Vengeance RS RGB 1x8GB 3600</strong></h3>

<p>Với thanh &aacute;nh s&aacute;ng ho&agrave;n to&agrave;n tiếp x&uacute;c với đ&egrave;n LED RGB rực rỡ, được kết hợp với thiết kế tản nhiệt Ram Corsair Vengeance RS RGB 1x8GB 3600 từng đoạt giải thưởng v&agrave; được chế tạo với c&aacute;c th&agrave;nh phần chất lượng cao nhất, bộ nhớ Ram Corsair Vengeance RS RGB 1x8GB 3600 kết hợp &aacute;nh s&aacute;ng RGB sống động nhất với hiệu suất vượt trội. Ram Corsair Vengeance RS RGB 1x8GB 3600 được trang bị dải led RGB 16 triệu m&agrave;u, hỗ trợ t&ugrave;y chỉnh dễ d&agrave;ng bằng phần mềm.</p>

<p><img src="https://product.hstatic.net/1000026716/product/gvn_cs4_b6e4471aa19d4d6b92a093095899cab7_grande.jpg" /></p>

<p>&nbsp;</p>

<h3><strong>Card m&agrave;n h&igrave;nh MSI GeForce RTX 3060 Ventus 2X OC 12G</strong></h3>

<p>Để xử l&yacute; h&igrave;nh ảnh trong m&aacute;y t&iacute;nh như m&agrave;u sắc, thiết lập độ ph&acirc;n giải, độ tương phản, chất lượng h&igrave;nh ảnh hiển thị tr&ecirc;n m&agrave;n h&igrave;nh. GVN PHANTOM&nbsp;i3060 được trang bị d&ograve;ng VGA ấn tượng về hiệu năng v&agrave; cả thiết kết từ MSI.&nbsp;</p>

<p><img src="https://product.hstatic.net/200000722513/product/1024_8cf8d2e8bf3b46eb9a15cb1d790b0130_grande.png" /></p>

<p>MSI GeForce RTX 3060 Ventus 2X OC 12G sở hữu 2 quạt tản nhiệt c&ocirc;ng suất cao, được hỗ trợ bằng một tấm lưới kim loại gi&uacute;p dẫn truyền nhiệt v&agrave; hỗ trợ quạt khiến card lu&ocirc;n ở mức nhiệt l&yacute; tưởng.</p>

<p>Sở hữu cho m&igrave;nh 3584 nh&acirc;n CUDA, 1.78 xung nhịp tăng tốc c&ugrave;ng bộ nhớ 12GB GDDR6 gi&uacute;p card sở hữu hiệu năng thật sự mạnh mẽ. Từ đ&oacute; bạn c&oacute; thể dễ d&agrave;ng trải nghiệm c&aacute;c tựa game AAA ở mức đồ họa cao cho chiếc&nbsp;m&aacute;y t&iacute;nh để b&agrave;n&nbsp;của bạn.</p>

<p>&nbsp;</p>

<h3><strong>SSD WD Blue SN570 500G M.2 NVMe PCIe Gen3</strong></h3>

<p>SSD WD Blue SN570 500G M.2 NVMe PCIe Gen3 l&agrave; chiếc M.2&nbsp;SSD&nbsp;cao cấp của thương hiệu&nbsp;Kingston. Sử dụng kết nối&nbsp;PCIe 3.0 x 4 c&oacute; băng th&ocirc;ng l&ecirc;n tới 32Gb/s. Gi&uacute;p&nbsp;SSD WD Blue SN570 500G M.2 NVMe PCIe Gen3 c&oacute; tốc độ hoạt động kh&aacute; tốt, đạt tối đa 3300/s đối với tốc độ đọc v&agrave; 1200MB/s ở tốc độ ghi. Chắc chắn chiếc ổ cứng SSD&nbsp;n&agrave;y sẽ l&agrave;m h&agrave;i l&ograve;ng rất nhiều người sử dụng.</p>

<p><img src="https://product.hstatic.net/1000026716/product/wd_blue_sn570_500g_ww_front_lr__1__20ec0c2bae4a4bf4a65bc08a59eb6f8d_grande.jpg" /></p>

<p>&nbsp;</p>

<h3><strong>Nguồn Corsair CV750 - 80 Plus Bronze</strong></h3>

<p>Nguồn<strong>&nbsp;</strong><strong>Corsair CV750 - 80 Plus Bronze</strong><strong>&nbsp;</strong>mang trong m&igrave;nh hiệu năng mạnh mẽ, sự c&aacute;ch t&acirc;n v&agrave; đổi mới với c&aacute; t&iacute;nh ri&ecirc;ng biệt.&nbsp;<strong>Corsair CV750 - 80 Plus Bronze</strong>&nbsp;chất lượng x&acirc;y dựng rất cao v&agrave; gi&uacute;p cho c&aacute;c th&agrave;nh phần quan trọng của bộ nguồn hoạt động một c&aacute;ch ổn định.</p>

<p><img src="https://product.hstatic.net/1000026716/product/gearvn-nguon-corsair-cv750-80-plus-bronze-2_003d75e26fc640879185b38fadd11040.jpg" /></p>

<h3><strong>Case Cooler Master CMP 510 (3 fan ARGB)</strong></h3>

<p><strong>Case Cooler Master CMP 510 (3 fan ARGB)</strong>&nbsp;l&agrave; d&ograve;ng case hỗ trợ khả năng l&agrave;m m&aacute;t cực kỳ ấn tượng với bốn&nbsp;quạt tản nhiệt&nbsp;LED đi c&ugrave;ng.</p>

<p><img src="https://product.hstatic.net/1000026716/product/cmp510_webpages_4000x4000_gallery-13-zoom_9845dd0d6b0d4302af5b4b7105b3e77b.png" /></p>

<p>Hỗ trợ l&ecirc;n đến s&aacute;u quạt l&agrave;m m&aacute;t 120mm&nbsp;v&agrave; cả bộ tản nhiệt l&ecirc;n đến 240mm. C&ugrave;ng với đ&oacute;, trang bị th&ecirc;m c&aacute;c tấm lưới ph&iacute;a trước v&agrave; ph&iacute;a tr&ecirc;n cung cấp hệ thống th&ocirc;ng gi&oacute; tối ưu để di chuyển một lượng lớn kh&ocirc;ng kh&iacute; trong suốt vỏ m&aacute;y</p>

<h3><strong>Tản nhiệt Cooler Master MASTERLIQUID ML240 ILLUSION</strong></h3>

<p>Nhằm duy tr&igrave; hiệu năng, sức mạnh cho PHANTOM i3060, GEARVN đ&atilde; trang bị th&ecirc;m cho bạn chiếc Tản nhiệt Cooler Master MASTERLIQUID ML240 ILLUSION. Hỗ trợ socket LGA 1700 c&ugrave;ng những khung kim loại đa dạng, Tản nhiệt Cooler Master MASTERLIQUID ML240 ILLUSION thoải m&aacute;i lắp đặt cho những CPU thế hệ mới.</p>

<p><img src="https://product.hstatic.net/1000026716/product/masterliquid-ml240-illusion-gallery-1_d19533774c0b488c970169781c352522_grande.png" /></p>

<p>Tản nhiệt Cooler Master MASTERLIQUID ML240 ILLUSION&nbsp;ghi điểm với chiếc quạt LED ARGB tạo n&ecirc;n m&agrave;u sắc rực rỡ g&oacute;p phần t&ocirc; điểm v&agrave;o buổi tiệc &aacute;nh s&aacute;ng của PHANTOM i3060.</p>
', CAST(17900000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10158, N'PC Gaming AMD R7-7700/ VGA RTX 3060', N'pc-gaming-amd-r7-7700-vga-rtx-3060', N'PC Gaming AMD R7-7700/ VGA RTX 3060', N'/DataManagement/Images/PC-Gaming/phantom-plus-a3060/post-01_f1d18e216b9f4498b3e67964a6148969_1024x1024-fotor-20231022232245.jpg', CAST(37990000 AS Decimal(18, 0)), 8, CAST(34950800 AS Decimal(18, 0)), NULL, CAST(N'2024-05-17T14:57:00.087' AS DateTime), NULL, 1, 10144, N'<p><strong><span style="font-size:18.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Th&ocirc;ng số chi tiết PHANTOM a3060</span></span></strong></p>

<table class="Table" style="border:undefined">
	<tbody>
		<tr>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Mainboard </span></span></u></strong></p>
			</td>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">NZXT N7 B650E WHITE</span></span></u></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">36 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">CPU</span></span></u></strong></p>
			</td>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">AMD Ryzen 7 7700 / 3.8GHz Boost 5.3GHz / 8 nh&acirc;n 16 luồng / 40MB / AM5</span></span></u></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">36 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">RAM</span></span></u></strong><strong> </strong></p>
			</td>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Corsair Vengeance RGB 32GB (2x16GB) 5600 DDR5 White</span></span></u></strong><strong> </strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">36 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">VGA</span></span></u></strong><strong> </strong></p>
			</td>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">GIGABYTE GeForce RTX 3060 VISION OC 12G (rev 2.0)</span></span></u></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">36 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">HDD </span></span></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">C&oacute; thể t&ugrave;y chọn<strong> <u>n&acirc;ng cấp</u></strong></span></span></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">24 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">SSD</span></span></u></strong><strong> </strong></p>
			</td>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">WD Black SN770 500G M.2 NVMe PCIe Gen4</span></span></u></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">60 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">PSU</span></span></u></strong><strong> </strong></p>
			</td>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">ASUS TUF Gaming 750B 80 Plus Bronze</span></span></u></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">72 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Case</span></span></u></strong><strong> </strong></p>
			</td>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">NZXT H5 Flow White</span></span></u></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">24 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Tản nhiệt</span></span></strong></p>
			</td>
			<td>
			<p><strong><u><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">NZXT AIO Kraken X53 RGB WHITE</span></span></u></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">72 Th&aacute;ng</span></span></p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p><strong><span style="font-size:18.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Chi tiết về GVN PHANTOM a3060</span></span></strong></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Mainboard NZXT N7 B650E WHITE</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Mở m&agrave;n cho PHANTOM a3060 sẽ l&agrave; chiếc mainboard đến từ NZXT với model<strong> N7 B650E WHITE</strong>. Sở hữu vẻ ngo&agrave;i v&ocirc; c&ugrave;ng sang trọng với những chi tiết được ho&agrave;n thiện đẹp mắt vốn l&agrave; đặc trưng của ch&iacute;nh d&ograve;ng mainboard NZXT N7. Trang bị socket AM5, NZXT N7 B650E WHITE hỗ trợ CPU AMD Ryzen từ series 7000 trở l&ecirc;n cho bạn thoải m&aacute;i lựa chọn CPU khi l&agrave; một fan đội đỏ. </span></span></p>

<p><img src="https://product.hstatic.net/1000026716/product/z4129036210591_7cef2e107008ab931b8aba745b796758_c7c6d83900064e26b5b8079d643ee2b4_grande.jpg" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">CPU AMD Ryzen 7 7700 / 3.8GHz Boost 5.3GHz / 8 nh&acirc;n 16 luồng / 40MB / AM5</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">L&agrave; trung t&acirc;m xử l&yacute; mọi t&aacute;c vụ trong PHANTOM a3060, <strong>AMD Ryzen 7 7700</strong> sẽ l&agrave; bộ vi xử l&yacute; được GEARVN lựa chọn cho d&agrave;n PC n&agrave;y. Ho&agrave;n thiện tr&ecirc;n kiến tr&uacute;c Zen 3 7nm đem lại cho chiếc CPU khả năng xử l&yacute; với tốc độ tối đa l&ecirc;n đến 5.3GHz. Tất cả những t&aacute;c vụ sẽ được AMD Ryzen 7 7700 ho&agrave;n th&agrave;nh trong thời gian tối ưu nhất từ xử l&yacute; h&igrave;nh ảnh (render) đến chơi game.</span></span></p>

<p><img src="https://product.hstatic.net/1000026716/product/gearvn-amd-ryzen-7-7700-1_b5fe209e78084b978058d105a7c29ff3_grande.png" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">RAM Corsair Vengeance RGB 32GB (2x16GB) 5600 DDR5 White</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Bộ đ&ocirc;i RAM <strong>Corsair Vengeance RGB 32GB (2x16GB) 5600 DDR5 White</strong> sẽ l&agrave; bộ đ&ocirc;i kit RAM c&oacute; mặt trong bộ PC Gaming từ nh&agrave; AMD. Kho&aacute;c l&ecirc;n tấm gi&aacute;p tản nhiệt nh&ocirc;m với t&ocirc;ng m&agrave;u trắng chủ đạo l&agrave;m bật l&ecirc;n c&ugrave;ng dải đ&egrave;n RGB, Corsair Vengeance RGB 32GB (2x16GB) 5600 DDR5 White tạo n&ecirc;n điểm nhấn khi mọi &aacute;nh mắt lướt qua.</span></span></p>

<p><img src="https://product.hstatic.net/1000026716/product/w1_f98b77de451b4c32b638c2328aaa355a_grande.png" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Card m&agrave;n h&igrave;nh GIGABYTE GeForce RTX 3060 VISION OC 12G (rev 2.0)</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">VGA, điều m&agrave; mọi game thủ quan t&acirc;m tr&ecirc;n PHANTOM a3060, vị tr&iacute; ấy sẽ được d&agrave;nh <strong>GIGABYTE GeForce RTX 3060 VISION OC 12G (rev 2.0)</strong>. Sử dụng GPU RTX 3060, sức mạnh xử l&yacute; h&igrave;nh ảnh tuyệt vời tr&ecirc;n GIGABYTE GeForce RTX 3060 VISION OC 12G (rev 2.0) l&agrave; điều kh&ocirc;ng thể chối c&atilde;i. Kết hợp c&ugrave;ng những c&ocirc;ng nghệ mới, GIGABYTE GeForce RTX 3060 VISION OC 12G (rev 2.0) đem lại h&igrave;nh ảnh đẹp mắt, mượt m&agrave; tr&ecirc;n những chiếc m&agrave;n h&igrave;nh 2K cho trải nghiệm gaming trở n&ecirc;n th&uacute; vị hơn bao giờ hết.</span></span></p>

<p><img src="https://product.hstatic.net/1000026716/product/img9_9af136da4d99451fab2bc18fbd493a3d_grande.png" /></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Thiết kế của GIGABYTE GeForce RTX 3060 VISION OC 12G (rev 2.0) l&agrave; thứ đập v&agrave;o mắt mọi game thủ khi lướt qua. C&aacute;c đường n&eacute;t được trau chuốt cho cảm gi&aacute;c đ&acirc;y ch&iacute;nh l&agrave; bộ gi&aacute;p d&agrave;nh cho chiến binh của ch&uacute;ng ta, GIGABYTE GeForce RTX 3060 VISION OC 12G (rev 2.0).</span></span></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">SSD WD Black SN770 500G M.2 NVMe PCIe Gen4</span></span></strong></p>

<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">WD Black SN770 500G M.2 NVMe PCIe Gen4</span></span></strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"> sẽ l&agrave; trung t&acirc;m lưu trữ cho m&aacute;y t&iacute;nh khi build PC của ch&uacute;ng ta. Kh&ocirc;ng gian lưu trữ khi&ecirc;m tốn với 500GB nhưng được xử l&yacute; với tốc độ đọc/ghi cao, WD Black SN770 sẽ kh&ocirc;ng l&agrave;m bạn thất vọng khi l&agrave; lựa chọn d&agrave;nh cho khả n&acirc;ng cấp tốc độ khởi động, truy xuất v&agrave; lưu file.</span></span></p>

<p><img src="https://product.hstatic.net/1000026716/product/z3453602902388_cd4d84551922555986ca587b4522f8f1_40f78090bec246f1a90f2f0da44aa691_grande.jpg" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">PSU ASUS TUF Gaming 750B 80 Plus Bronze</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Cung cấp năng lượng cho to&agrave;n hệ thống sẽ l&agrave; <strong>ASUS TUF Gaming 750B 80 Plus Bronze</strong>. Đạt chuẩn 80 Plus Bronze mang lại cho TUF Gaming 750B 80 Plus Bronze khả năng cung cấp hiệu suất l&ecirc;n đến 85%. Trang bị những chiếc quạt HDB gi&uacute;p c&acirc;n bằng nhiệt độ b&ecirc;n trong ASUS TUF Gaming 750B 80 Plus Bronze giữ sự bền bỉ trong qu&aacute; tr&igrave;nh hoạt động. Đ&acirc;y sẽ l&agrave; sự lựa chọn tối ưu d&agrave;nh cho PHANTOM a3060.</span></span></p>

<p><img src="https://product.hstatic.net/1000026716/product/tai_xuong_65ae0773e1484fbda757ca368a4690a4_grande.png" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Case NZXT H5 Flow White</span></span></strong></p>

<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Case NZXT H5 Flow White</span></span></strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"> l&agrave; chiếc case được lựa chọn d&agrave;nh cho m&aacute;y t&iacute;nh để b&agrave;n NZXT H5 Flow White. Sở hữu k&iacute;ch thước đủ lớn d&agrave;nh cho 5 chiếc fan 120mm hay tản nhiệt AIO 280mm, Case NZXT H5 Flow White cho bạn thoải m&aacute;i trang bị hệ thống tản nhiệt d&agrave;nh cho d&agrave;n PC của m&igrave;nh. </span></span></p>

<p><img src="https://product.hstatic.net/1000026716/product/1666138830-h5-flow-hero-white_b07a47e4546048be848148c351a0bb9a_grande.png" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Tản nhiệt NZXT AIO Kraken X53 RGB WHITE</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Duy tr&igrave; khả năng hoạt động bền bỉ cho PHANTOM a3060 sẽ l&agrave; <strong>NZXT AIO Kraken X53 RGB WHITE</strong>. Tản nhiệt CPU từ NZXT kh&ocirc;ng bao giờ l&agrave;m ch&uacute;ng ta thất vọng với khi sở hữu vẻ ngo&agrave;i bắt mắt với 2 chiếc quạt ARGB c&ugrave;ng sức mạnh tản nhiệt tối ưu, NZXT AIO Kraken X53 RGB WHITE xứng đ&aacute;ng c&oacute; mặt trong d&agrave;n m&aacute;y chơi game của ch&uacute;ng ta. Tản nhiệt NZXT AIO Kraken X53 RGB WHITE thoải m&aacute;i trong việc n&acirc;ng cấp trong tương lai.</span></span></p>

<p><img src="https://product.hstatic.net/1000026716/product/1631819120-kraken-x63-rgb-white_164480631673444eaf29637ad532e92c_grande.png" /></p>

<p>&nbsp;</p>
', CAST(19990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10159, N'PC Gaming AMD R7-7700X/ VGA RTX 4080', N'pc-gaming-amd-r7-7700x-vga-rtx-4080', N'PC Gaming AMD R7-7700X/ VGA RTX 4080', N'/DataManagement/Images/PC-Gaming/plantom-plus-a4080/post-01_828b76d7d9fe4ee48a8a601aa81bb34a_1024x1024-fotor-20231022231915.jpg', CAST(72990000 AS Decimal(18, 0)), 10, CAST(65691000 AS Decimal(18, 0)), NULL, CAST(N'2024-05-17T15:03:38.427' AS DateTime), NULL, 1, 10145, N'<p><strong><span style="font-size:18.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">TH&Ocirc;NG SỐ KỸ THUẬT</span></span></strong></p>

<table class="Table" style="border:undefined">
	<tbody>
		<tr>
			<td>&nbsp;</td>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">T&ecirc;n sản phẩm</span></span></strong></p>
			</td>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Thời gian bảo h&agrave;nh</span></span></strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Mainboard</span></span></p>
			</td>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">ASUS TUF GAMING X670E-PLUS WIFI (DDR5)</span></span></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">36 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">CPU </span></span></p>
			</td>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">AMD Ryzen 7 7700X / 4.5GHz Boost 5.4GHz / 8 nh&acirc;n 16 luồng / 40MB / AM5</span></span></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">36 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">RAM</span></span></p>
			</td>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Corsair Vengeance RGB 32GB (2x16GB) 5600 DDR5</span></span></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">36 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">VGA</span></span></p>
			</td>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">ASUS TUF Gaming GeForce RTX 4080 OC Edition 16GB GDDR6X</span></span></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">36 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">HDD</span></span></p>
			</td>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">C&oacute; thể t&ugrave;y chọn N&acirc;ng cấp</span></span></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">24 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">SSD</span></span></p>
			</td>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">WD Black SN770 500G M.2 NVMe PCIe Gen4</span></span></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">60 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">PSU</span></span></p>
			</td>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">ASUS TUF Gaming 1000W - 80 Plus Gold - Full Modular</span></span></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">120 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Case</span></span></p>
			</td>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">NZXT H7 Flow Black</span></span></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">24 Th&aacute;ng</span></span></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Cooling</span></span></p>
			</td>
			<td>
			<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">NZXT AIO Kraken X63 RGB</span></span></strong></p>
			</td>
			<td>
			<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">72 Th&aacute;ng</span></span></p>
			</td>
		</tr>
	</tbody>
</table>

<p><strong><span style="font-size:18.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Đ&aacute;nh gi&aacute; chi tiết GVN PHAMTOM Plus a4080</span></span></strong></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Mainboard ASUS TUF GAMING X670E-PLUS WIFI (DDR5)</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Để mở m&agrave;n cho nguồn sức mạnh khổng lồ tr&ecirc;n GVN PHANTOM Plus a4080, <strong>ASUS TUF GAMING X670E-PLUS WIFI</strong> ch&iacute;nh l&agrave; sự lựa chọn d&agrave;nh cho bộ PC của ch&uacute;ng ta. Chipset X670 c&ugrave;ng socket AM5 d&agrave;nh cho thế hệ vi xử l&yacute; mới nhất từ AMD, ASUS TUF GAMING X670E-PLUS WIFI sở hữu những c&ocirc;ng nghệ tối ưu nguồn năng lượng v&agrave; hiệu năng cho bộ PC AMD.</span></span></p>

<p><img alt="GEARVN - ASUS TUF GAMING X670E-PLUS WIFI (DDR5)" src="https://file.hstatic.net/1000026716/file/gearvn-asus-tuf-gaming-x670e-plus-wifi_a2195854b038437fbe5be6db2dab090d_grande.jpg" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">CPU AMD Ryzen 7 7700X</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Sử dụng cho m&igrave;nh bộ n&atilde;o trung t&acirc;m từ AMD thuộc về thế hệ Ryzen 7000 Series, <strong>AMD Ryzen 7 7700X</strong> ch&iacute;nh l&agrave; c&aacute;i t&ecirc;n được lựa chọn d&agrave;nh cho GVN PHANTOM Plus a4080. Với th&ocirc;ng số gồm 8 nh&acirc;n 16 luồng c&ugrave;ng tốc độ xung nhịp tối đa l&ecirc;n đến 5.4GHz cho ph&eacute;p chiếc CPU AMD thoải m&aacute;i ho&agrave;n th&agrave;nh mọi c&ocirc;ng việc được giao cho nhu cầu xử l&yacute; th&ocirc;ng tin. Được kết hợp c&ugrave;ng những linh kiện ti&ecirc;n tiến, tất cả mang lại hiệu năng mạnh mẽ nhất.</span></span></p>

<p><img alt="GEARVN - AMD Ryzen 7 7700X / 4.5GHz Boost 5.4GHz / 8 nhân 16 luồng / 40MB / AM5" src="https://file.hstatic.net/1000026716/file/gearvn-amd-ryzen-7-7700x_cf7ebb2f78954962ad3b895d9fb65b8f_grande.jpg" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">RAM Corsair Vengeance RGB 32GB (2x16GB) 5600 DDR5</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Trang bị cho khả năng đa t&aacute;c vụ với bộ đ&ocirc;i RAM <strong>Corsair Vengeance RGB 5600 DDR5</strong>. Sở hữu cho m&igrave;nh 2 thanh RAM cho dung lượng l&ecirc;n đến 32GB, kit RAM Corsair gi&uacute;p cho bạn thoải m&aacute;i trong khả năng đ&aacute;p ứng cho nhiều c&ocirc;ng việc c&ugrave;ng l&uacute;c với tốc độ cao. mượt m&agrave;. C&ugrave;ng với đ&oacute; l&agrave; một ngoại h&igrave;nh thanh tho&aacute;t, đẹp mắt c&ugrave;ng dải đ&egrave;n RGB nổi gi&uacute;p cho chiếc RAM DDR5 trở th&agrave;nh một phần cho buổi tiệc &aacute;nh s&aacute;ng từ GVN PHANTOM Plus a4080.</span></span></p>

<p><img alt="GEARVN - Corsair Vengeance RGB 32GB (2x16GB) 5600 DDR5" src="https://file.hstatic.net/1000026716/file/rvn-ram-corsair-vengeance-rgb-32gb-2x16gb-5600-ddr5-cmh32gx5m2b5600c36_c117d46c87c4410bbe43cddd007b15fd_grande.jpg" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">VGA ASUS TUF Gaming GeForce RTX 4080 OC Edition 16GB GDDR6X</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Xử l&yacute; đồ họa tr&ecirc;n GVN PHANTOM Plus a4080 được giao lại cho chiếc card m&agrave;n h&igrave;nh <strong>ASUS TUF Gaming GeForce RTX 4080 OC Edition 16GB</strong>. Kết hợp giữa sức mạnh khổng lồ từ RTX 4080 v&agrave; khả năng ho&agrave;n thiện sản phẩm tuyệt vời từ ASUS để tạo n&ecirc;n một chiếc VGA cao cấp. Trở th&agrave;nh một nh&acirc;n tố mạnh mẽ tạo n&ecirc;n bộ PC Gaming cao cấp từ GEARVN.</span></span></p>

<p><img alt="GEARVN - ASUS TUF Gaming GeForce RTX 4080 OC Edition 16GB GDDR6X" src="https://file.hstatic.net/1000026716/file/gearvn-asus-tuf-gaming-geforce-rtx-4080-oc-edition-16gb-gddr6x_b8af67f0f20a4bd6a1a1a74840a7fb46_grande.jpg" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">SSD WD Black SN770 500G M.2 NVMe PCIe Gen4</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Mọi dữ liệu được cất giữ v&agrave;o chiếc SSD <strong>WD Black SN770 500GB</strong> tr&ecirc;n GVN PHANTOM Plus a4080 . Kết nối với chuẩn M.2 NVMe ti&ecirc;n tiến, chiếc SSD WD hướng đến khả năng tương t&aacute;c dữ liệu tuyệt vời như mở/đ&oacute;ng, sao ch&eacute;p v&agrave; di chuyển dữ liệu giữa c&aacute;c thư mục. Độ bền c&ugrave;ng tuổi thọ cao sẽ cho bạn cảm gi&aacute;c y&ecirc;n t&acirc;m trong qu&aacute; tr&igrave;nh sử dụng c&ugrave;ng PC.</span></span></p>

<p><img alt="GEARVN - WD Black SN770 500G M.2 NVMe PCIe Gen4" src="https://file.hstatic.net/1000026716/file/gearvn-ssd-wd-black-sn770-500g-m-2-nvme-pcie-gen4_812a4ab62c764b019aec7be0aaad8f23_grande.jpg" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Nguồn ASUS TUF Gaming 1000W - 80 Plus Gold - Full Modular</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Năng lượng tr&ecirc;n GVN PHANTOM Plus a4080 sẽ được giao cho bộ nguồn <strong>ASUS TUF Gaming 1000W</strong>. Đ&aacute;p ứng tuyệt vời cho y&ecirc;u cầu hoạt động của mọi linh kiện m&aacute;y t&iacute;nh cao cấp tr&ecirc;n d&agrave;n PC với c&ocirc;ng suất l&ecirc;n đến 1000W, ASUS TUF Gaming 1000W c&ograve;n đảm bảo việc khai th&aacute;c hiệu suất tối ưu c&ugrave;ng chuẩn 80 Plus Gold. Với thiết kế Full Modular, chiếc PSU từ ASUS sẽ cho bạn thoải m&aacute;i trong khả năng kết nối với c&aacute;c th&agrave;nh phần.</span></span></p>

<p><img alt="GEARVN - ASUS TUF Gaming 1000W - 80 Plus Gold - Full Modular" src="https://file.hstatic.net/1000026716/file/gearvn-1000w-nguon-asus-tuf-gaming-1000w-80-plus-gold-full-modular_fd8e63dabc2b4134b7cfd63ba84d9837_grande.jpg" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Case NZXT H7 Flow Black</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Tất cả những linh kiện sẽ được đặt v&agrave;o chiếc case <strong>NZXT H7 Flow Black</strong>. Lớp vỏ đen b&ecirc;n ngo&agrave;i sẽ ẩn chứa cho k&iacute;ch thước lớn c&ugrave;ng thiết kế nội thất th&ocirc;ng minh gi&uacute;p cho người d&ugrave;ng dễ d&agrave;ng lắp đặt mọi linh kiện v&agrave;o trong b&ecirc;n v&agrave; build PC v&agrave;o trong chiếc case NZXT. Xung quanh NZXT H7 Flow Black sẽ những lỗ tho&aacute;t kh&iacute; gi&uacute;p tăng cường khả năng tản nhiệt d&agrave;nh cho bộ PC của ch&uacute;ng ta nhằm tối ưu năng suất hoạt động c&ugrave;ng hiệu năng.</span></span></p>

<p><img alt="GEARVN - NZXT H7 Flow Black" src="https://file.hstatic.net/1000026716/file/gearvn-case-nzxt-h7-flow-black_fd1476d5d88d4ea481eb3c901adee50c_grande.jpg" /></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Tản nhiệt nước NZXT AIO Kraken X63 RGB</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Nhắc đến hiệu quả tản nhiệt th&igrave; ch&uacute;ng ta kh&ocirc;ng thể bỏ qua những linh kiện phục vụ cho c&ocirc;ng việc một c&aacute;ch tối ưu nhất như tản nhiệt nước. Cho n&ecirc;n, GVN PHANTOM Plus a4080 sẽ cần đến chiếc tản nhiệt <strong>NZXT AIO Kraken X63 RGB</strong>. Lướt qua về ngoại h&igrave;nh, chiếc tản nhiệt AIO hội tủ đủ y&ecirc;u cầu về khả năng tỏa s&aacute;ng như mặt gương v&ocirc; cực th&ecirc;m v&agrave;o ch&uacute;t hiệu ứng RGB cho chiều s&acirc;u. Đến với hiệu quả tản nhiệt th&igrave; NZXT AIO Kraken X63 RGB lu&ocirc;n tự tin nằm trong top đầu về khả năng tối ưu nhiệt độ khi sở hữu m&aacute;y bơm c&ugrave;ng 2 chiếc fan tản nhiệt mạnh mẽ. Tất cả tạo n&ecirc;n một tổng thể tuyệt vời về ngoại h&igrave;nh v&agrave; chiều s&acirc;u hiệu năng cho GVN PHANTOM Plus a4080.</span></span></p>

<p><img alt="GEARVN - NZXT AIO Kraken X63 RGB" src="https://file.hstatic.net/1000026716/file/gearvn-tan-nhiet-nuoc-nzxt-aio-kraken-x63-rgb_cd3b66606e3b47d0a02d7e5ac8b5f3d7_grande.jpg" /></p>

<p>&nbsp;</p>
', CAST(49000000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10160, N'PC Gaming Intel i7-13700K/ VGA RTX 4080', N'pc-gaming-intel-i7-13700k-vga-rtx-4080', N'PC Gaming Intel i7-13700K/ VGA RTX 4080', N'/DataManagement/Images/PC-Gaming/phantom-plus-a3060/post-01_f1d18e216b9f4498b3e67964a6148969_1024x1024-fotor-20231022232245.jpg', CAST(79990000 AS Decimal(18, 0)), 10, CAST(71991000 AS Decimal(18, 0)), NULL, CAST(N'2024-05-17T15:12:07.933' AS DateTime), NULL, 1, 10146, N'<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<table class="Table" style="border:undefined">
				<tbody>
					<tr>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Mainboard </span></span></strong></p>
						</td>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">GIGABYTE Z790 AERO G DDR5</span></span></strong></p>
						</td>
						<td>
						<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">36 Th&aacute;ng</span></span></p>
						</td>
					</tr>
					<tr>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">CPU </span></span></strong></p>
						</td>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Intel Core i7 13700K / 3.4GHz Turbo 5.4GHz / 16 Nh&acirc;n 24 Luồng / 30MB / LGA 1700</span></span></strong></p>
						</td>
						<td>
						<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">36 Th&aacute;ng</span></span></p>
						</td>
					</tr>
					<tr>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">RAM </span></span></strong></p>
						</td>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Corsair Vengeance RGB 32GB (2x16GB) 5600 DDR5 White</span></span></strong></p>
						</td>
						<td>
						<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">36 Th&aacute;ng</span></span></p>
						</td>
					</tr>
					<tr>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">VGA </span></span></strong></p>
						</td>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">ASUS ROG Strix GeForce RTX 4080 OC Edition 16GB</span></span></strong></p>
						</td>
						<td>
						<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">36 Th&aacute;ng</span></span></p>
						</td>
					</tr>
					<tr>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">SSD</span></span></strong></p>
						</td>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">WD Black SN770 500G M.2 NVMe PCIe Gen4</span></span></strong></p>
						</td>
						<td>
						<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">60 Th&aacute;ng</span></span></p>
						</td>
					</tr>
					<tr>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">HDD</span></span></strong></p>
						</td>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">T&ugrave;y chọn n&acirc;ng cấp</span></span></strong></p>
						</td>
						<td>
						<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">24 Th&aacute;ng</span></span></p>
						</td>
					</tr>
					<tr>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">PSU </span></span></strong></p>
						</td>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Corsair RM1000e - 80 Plus Gold - Full Modular (1000W)</span></span></strong></p>
						</td>
						<td>
						<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">84 Th&aacute;ng</span></span></p>
						</td>
					</tr>
					<tr>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">CASE</span></span></strong></p>
						</td>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Corsair 5000D AIRFLOW Tempered Glass White </span></span></strong></p>
						</td>
						<td>
						<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">24 Th&aacute;ng</span></span></p>
						</td>
					</tr>
					<tr>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">TẢN NHIỆT</span></span></strong></p>
						</td>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Corsair H150i ELITE CAPELLIX WHITE</span></span></strong></p>
						</td>
						<td>
						<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">60 Th&aacute;ng</span></span></p>
						</td>
					</tr>
					<tr>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">FAN</span></span></strong></p>
						</td>
						<td>
						<p><strong><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Corsair LL120 RGB LED 120mm White &mdash; Triple Pack with Lighting Node PRO</span></span></strong></p>
						</td>
						<td>
						<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">24 Th&aacute;ng</span></span></p>
						</td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
	</tbody>
</table>

<p><strong><span style="font-size:18.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Đ&aacute;nh gi&aacute; chi tiết cấu h&igrave;nh GVN PHANTOM Plus i4080</span></span></strong></p>

<p><strong><span style="font-size:13.5pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Bo mạch chủ GIGABYTE Z790 AERO G DDR5</span></span></strong></p>

<p><span style="font-size:12.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">GIGABYTE Z790 AERO G DDR5 l&agrave; bo mạch chủ sử dụng chipset Z790 của Intel thuộc ph&acirc;n kh&uacute;c cao cấp của GIGABYTE. Tr&aacute;i tim của bộ PC PHANTOM Plus i4080 sử dụng socket LGA 1700 c&oacute; thể chạy được CPU Intel Core thế hệ 12, 13 hỗ trợ PCI-E Gen 5.0 mới nhất.</span></span></p>

<p><img src="https://product.hstatic.net/1000026716/product/z3762673288752_d7fa31b1fec7be16dada9690c4b8a2ca_8963ce8cad5e4402b3803b777ade80e8_grande.jpg" /></p>

<p>Sở hữu thiết kế mạnh mẽ với phần tản nhiệt cho VRM c&ugrave;ng&nbsp;k&iacute;ch thước ATX, đ&acirc;y được xem l&agrave; một trong những sự lựa chọn&nbsp;ở ph&acirc;n kh&uacute;c mainboard&nbsp;cao cấp c&oacute; gần như đầy đủ mọi t&iacute;nh năng thời thượng nhất d&agrave;nh cho những bộ&nbsp;PC Gaming&nbsp;c&oacute; thể c&acirc;n mọi tựa game ở chế độ chơi cao nhất.</p>

<h3><strong>CPU - Bộ vi xử l&yacute; Intel Core i7 13700K</strong></h3>

<p>CPU&nbsp;<strong>Intel Core i7&nbsp;13700K</strong>&nbsp;l&agrave; một trong những d&ograve;ng sản phẩm trong ph&acirc;n&nbsp;kh&uacute;c&nbsp;Raptor Lake-S sở hữu th&ocirc;ng số kỹ thuật vượt trội&nbsp;16 nh&acirc;n 24 luồng, xung nhịp 3.4GHz v&agrave; đạt mức tối đa l&agrave; 5.4GHz đ&aacute;p ứng tốt hầu hết nhu cầu sử dụng từ&nbsp;nhẹ nh&agrave;ng đến n&acirc;ng cao.</p>

<p><img src="https://product.hstatic.net/1000026716/product/gearvn-intel-core-i7-13700k-1_692ffc14d1b947fe9fda90be5e19e44c_grande.png" /></p>

<p>Để mang đến hiệu năng cho bộ m&aacute;y PC Gaming, d&ograve;ng ch&iacute;p xử l&yacute; đến từ nh&agrave; Intel dễ d&agrave;ng tương th&iacute;ch với sản phẩm bo mạch chủ thuộc series Z690, chuẩn RAM DDR5,..Ngo&agrave;i ra, điểm ấn tượng nhất tr&ecirc;n CPU Core i7-13700K&nbsp;l&agrave; được trang bị&nbsp;th&ecirc;m nh&acirc;n đồ họa Intel&nbsp;UHD Graphics 770 tăng cường khả năng xử l&yacute; h&igrave;nh ảnh, đồ họa cho bộ vi xử l&yacute;.</p>

<h3><strong>RAM Corsair Vengeance RGB 32GB (2x16GB) 5600 DDR5 White</strong></h3>

<p>Để&nbsp;m&aacute;y t&iacute;nh để b&agrave;n&nbsp;GVN PHANTOM Plus i4080 lưu trữ tốt hơn dễ d&agrave;ng truy xuất v&agrave; xử l&yacute; dữ liệu, đ&atilde; trang bị d&ograve;ng&nbsp;RAM&nbsp;với sức mạnh vượt trội đến từ PNY.&nbsp;</p>

<p>Corsair Vengeance RGB 32GB (2x16GB) DDR5 White với bus ram l&ecirc;n đến 5600&nbsp;mang lại hiệu suất cao nhất của DDR5. Cải thiện khả năng &eacute;p xung cho bộ m&aacute;y PC chơi game&nbsp;sử dụng c&ocirc;ng nghệ&nbsp;On-die ECC (ODECC) gi&uacute;p duy tr&igrave; dữ liệu một c&aacute;ch trọn vẹn, đảm bảo sự ổn định cho cả hệ thống.</p>

<p><img src="https://product.hstatic.net/1000026716/product/w1_f98b77de451b4c32b638c2328aaa355a_grande.png" /></p>

<p>Để c&oacute; những trải nghiệm game tuyệt đỉnh hay c&aacute;c ứng dụng n&acirc;ng cao với hiệu năng vượt trội trong mọi ho&agrave;n cảnh,&nbsp;RAM Corsair c&oacute; thời gian truyền tải dữ liệu h&agrave;ng&nbsp;loạt tăng gấp đ&ocirc;i 8 đến 16 v&agrave; 2 k&ecirc;nh phụ 32-bit.</p>

<h3><strong>Card đồ hoạ ASUS ROG Strix GeForce RTX 4080 OC Edition 16GB</strong></h3>

<p>Bộ m&aacute;y GVN PHANTOM Plus i4080 được trang bị&nbsp;card m&agrave;n h&igrave;nh&nbsp;ASUS ROG Strix GeForce RTX 4080 OC Edition 16GB&nbsp;l&agrave; một trong những sản phẩm cao cấp nhất của GIGABYTE&nbsp;phục vụ cho nhu cầu gaming xuất ra ở m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh&nbsp;ở độ ph&acirc;n giải 2K, 4K.</p>

<p><img alt=" Card màn hình ASUS ROG Strix GeForce RTX 4080 OC Edition 16GB (ROG-STRIX-RTX4080-O16G-GAMING) " src="https://product.hstatic.net/200000722513/product/rog-strix-rtx4080-o16g-01_0baf9d048c8349efa7f12021a117a0c0_7d2022a282994c9baaeb738e8b34f85e_master.jpg" /></p>

<p>Sử dụng kiến tr&uacute;c Ampare ho&agrave;n to&agrave;n mới c&ugrave;ng nh&acirc;n RT thế hệ 2, nh&acirc;n Tensor thế hệ 3, Nvidia RTX IO, VRAM GDDR6X v&agrave; sản xuất tr&ecirc;n tiến tr&igrave;nh 8nm. Dễ d&agrave;ng tinh chỉnh th&ocirc;ng qua phần mềm ASUS độc quyền&nbsp;gi&uacute;p bạn khai th&aacute;c tối đa hiệu năng nhằm n&acirc;ng cao hiệu suất hoạt động cho cả bộ m&aacute;y trong suốt qu&aacute; tr&igrave;nh chơi game giải tr&iacute;.</p>

<h3><strong>SSD WD Black SN770 500G M.2 NVMe PCIe Gen4</strong></h3>

<p>Được xem l&agrave; một trong những sự lựa chọn tốt nhất hiện nay d&agrave;nh cho game thủ cả về gi&aacute; th&agrave;nh&nbsp;lẫn&nbsp;hiệu năng,&nbsp;SSD&nbsp;WD Black SN770 500G M.2 NVMe PCIe Gen4 đ&aacute;p ứng mọi&nbsp;nhu cầu về tốc độ của bạn với chuẩn giao tiếp&nbsp;PCIe 4.0, sử dụng c&ocirc;ng nghệ HMB&nbsp;v&agrave; giao diện NVMe để đạt hiệu quả cao.&nbsp;</p>

<p><img src="https://product.hstatic.net/1000026716/product/z3453602902388_cd4d84551922555986ca587b4522f8f1_40f78090bec246f1a90f2f0da44aa691_grande.jpg" /></p>

<p>&nbsp;</p>

<ul>
	<li>Tốc độ đọc/ghi tuần tự l&ecirc;n đến 5.000/ 4.000 MB/s, gấp nhiều&nbsp;lần tốc độ của&nbsp;SSD SATA.</li>
	<li>Độ bền vượt trội nhờ v&agrave;o c&ocirc;ng nghệ V-NAND 128-Layers.</li>
	<li>Được hỗ trợ tản nhiệt, gi&uacute;p ổ cứng hoạt&nbsp;m&aacute;t mẻ v&agrave; ổn định trong suốt qu&aacute; tr&igrave;nh sử dụng.</li>
	<li>Dễ d&agrave;ng theo d&otilde;i, quản l&yacute; v&agrave; duy tr&igrave; hiệu năng SSD qua phần mềm.</li>
</ul>

<h3><strong>Nguồn Corsair RM1000e - 80 Plus Gold - Full Modular</strong></h3>

<p>Nguồn PC&nbsp;hỗ trợ d&agrave;nh cho những cổ m&aacute;y gaming đẳng cấp v&agrave; đắt tiền&nbsp;c&oacute; thể hỗ trợ GPU NVIDIA GeForce RTX&nbsp;30/20 series&nbsp;v&agrave; AMD.&nbsp;Được chuẩn bị cho c&aacute;c y&ecirc;u cầu cao nhất, hỗ trợ IO của bộ nguồn Corsair RM1000e - 80 Plus Gold - Full Modular&nbsp;c&oacute; thể hỗ trợ c&aacute;c c&aacute;ch kết nối kh&aacute;c nhau v&agrave; linh hoạt theo thiết kế của c&aacute;c card đồ họa&nbsp;kh&aacute;c nhau.</p>

<p><img src="https://product.hstatic.net/1000026716/product/-base-rme-series-psu-config-gallery-rm1000e-01_bfd263f251074add93735844d70f6aab_grande.png" /></p>

<p>Với c&ocirc;ng suất hoạt động tối đa l&ecirc;n đến 1000W mang đến hiệu quả&nbsp;trực tiếp đến hệ thống v&agrave; mức ti&ecirc;u thụ điện năng của bộ PC. Chứng nhận 80 PLUS Gold hứa hẹn ti&ecirc;u thụ năng lượng thấp hơn v&agrave; hiệu quả cao hơn.</p>

<h3><strong>Case Corsair 5000D AIRFLOW Tempered Glass White</strong></h3>

<p>Case m&aacute;y t&iacute;nh&nbsp;với k&iacute;ch thước Mid-Tower trung b&igrave;nh thoải m&aacute;i cho người d&ugrave;ng lắp r&aacute;p c&aacute;c&nbsp;linh kiện m&aacute;y t&iacute;nh&nbsp;ph&ugrave; hợp.&nbsp;Case Corsair 5000D AIRFLOW Tempered Glass White&nbsp;được thiết kế theo dạng hoa văn độc đ&aacute;o vừa mang lại t&iacute;nh thẩm mỹ cao vừa tạo c&aacute;c lỗ th&ocirc;ng gi&oacute; hiệu quả v&agrave; dễ d&agrave;ng th&aacute;o lắp.&nbsp;Điều n&agrave;y gi&uacute;p cho bộ m&aacute;y PC PHANTOM Plus i4080&nbsp;th&ecirc;m phần ấn tượng, tạo n&ecirc;n vẻ ngo&agrave;i độc đ&aacute;o.</p>

<p><img src="https://product.hstatic.net/1000026716/product/5000d_airflow_white_01_418a75b29ffb42c69884678773b9a48c_grande.png" /></p>

<h3><strong>Tản nhiệt Corsair H150i ELITE CAPELLIX WHITE</strong></h3>

<p>Corsair H150i ELITE CAPELLIX WHITE&nbsp;với thiết kế mới gi&uacute;p to&agrave;n bộ&nbsp;linh kiện PC&nbsp;tăng cường độ bền duy tr&igrave; hiệu suất hoạt động tốt. Đ&acirc;y được xem l&agrave; mảnh gh&eacute;p cuối c&ugrave;ng d&agrave;nh cho bộ m&aacute;y chơi game ho&agrave;n hảo.&nbsp;</p>

<p><img src="https://product.hstatic.net/1000026716/product/01_cee66b3d82184a3484fb466154a544b6_grande.png" /></p>

<p>D&ograve;ng linh kiện m&aacute;y t&iacute;nh thế hệ mới sở hữu thiết kế pump mới với c&aacute;c linh kiện nổi bật v&agrave; chất lượng để tăng cường độ bền duy tr&igrave; hiệu suất hoạt động. Nếu bạn lo lắng về t&igrave;nh trạng rỉ nước ở c&aacute;c d&ograve;ng sản phẩm&nbsp;tản nhiệt nước&nbsp;sẽ ảnh hưởng đến tuổi thọ của hệ thống, với&nbsp;Corsair H150i ELITE CAPELLIX WHITE bạn c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m v&igrave;&nbsp;đ&atilde; được đ&atilde; sử dụng chất liệu cao su EPDM theo ti&ecirc;u chuẩn ngăn ngừa rỉ nước.</p>
', CAST(3790000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10161, N'PC Gaming AMD R5-4500/ VGA GTX 1650', N'pc-gaming-amd-r5-4500-vga-gtx-1650', N'PC Gaming AMD R5-4500/ VGA GTX 1650', N'/DataManagement/Images/PC-Gaming/viper-a1650/gvn07935__1__99838c51466f450283fff3c8f12963e8_1024x1024.png', CAST(10690000 AS Decimal(18, 0)), 3, CAST(10369300 AS Decimal(18, 0)), NULL, CAST(N'2024-05-17T15:27:41.177' AS DateTime), NULL, 1, 10147, N'<h2><strong>Th&ocirc;ng số kỹ thuật</strong><strong>:</strong></h2>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Mainboard</strong></td>
			<td><strong>ASUS PRIME B450M-A II</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>CPU</strong></td>
			<td><strong>AMD Ryzen 5 4500 / 3.6GHz Boost 4.1GHz / 6 nh&acirc;n 12 luồng / 11MB / AM4</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>RAM</strong></td>
			<td><strong>PNY XLR8 Silver 1x8GB 3600 RGB&nbsp;</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>VGA</strong></td>
			<td><strong>ASUS Dual GeForce GTX 1650 V2 4GB GDDR6</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>HDD&nbsp;</strong></td>
			<td><strong>C&oacute; thể t&ugrave;y chọn&nbsp;N&acirc;ng cấp</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>SSD&nbsp;</strong></td>
			<td><strong>WD Blue SN570 250G M.2 NVMe PCIe Gen3</strong></td>
			<td>60 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>PSU&nbsp;</strong></td>
			<td><strong>FSP HV PRO 550W - 80 Plus Bronze</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Case</strong></td>
			<td><strong>ARES Anubis ATX</strong></td>
			<td>12 Th&aacute;ng</td>
		</tr>
	</tbody>
</table>

<h2><strong>Chi tiết về GVN VIPER a1650</strong></h2>

<h3><strong>Mainboard ASUS PRIME B450M-A II</strong></h3>

<p><img src="https://product.hstatic.net/200000722513/product/thiet_ke_chua_co_ten_41c06633f14a4869830fcb3e8a28203c_cdad4612462d489db831b0c13e1b6d55_grande.png" /></p>

<p>Đ&oacute;ng vai tr&ograve; l&agrave; bộ khung cho GVN VIPER i1650,&nbsp;bo mạch chủ&nbsp;<strong>ASUS PRIME B450M-A II&nbsp;</strong>được trang bị nhiều c&ocirc;ng nghệ ti&ecirc;n tiến c&ugrave;ng thiết kế ngầu l&ograve;i của d&ograve;ng PRIME. ASUS PRIME B450M-A II&nbsp;sẽ cung cấp khả năng khai th&aacute;c tối đa sức mạnh từ c&aacute;c linh kiện trong GVN VIPER i1650. Đ&acirc;y l&agrave; sự lựa chọn tuyệt vời d&agrave;nh cho kh&ocirc;ng chỉ&nbsp;PC văn ph&ograve;ng&nbsp;m&agrave; c&ograve;n l&agrave; những cỗ m&aacute;y&nbsp;PC Gaming&nbsp;mạnh mẽ.&nbsp;</p>

<h3><strong>CPU AMD Ryzen 5 4500</strong></h3>

<p>Đ&uacute;ng chuẩn với combo ph&acirc;n kh&uacute;c tầm trung từ AMD sẽ l&agrave; chiếc CPU&nbsp;<strong>AMD Ryzen 5 4500</strong>.&nbsp;L&agrave; đối thủ cạnh tranh trực tiếp với&nbsp;i5-11400F&nbsp;v&agrave;&nbsp;i5-12400F, Ryzen 5 4500 sở hữu 6 nh&acirc;n 12 luồng c&ugrave;ng xung nhịp tối đa đạt 4.1GHz v&agrave; ho&agrave;n thiện với tiến tr&igrave;nh 7nm, đem lại khả năng xử l&yacute; c&ocirc;ng việc v&agrave; h&igrave;nh ảnh mạnh mẽ đảm bảo hiệu năng tr&ecirc;n GVN VIPER a1650. Đ&acirc;y chắc chắn l&agrave; một sự lựa chọn đ&aacute;ng c&acirc;n nhắc trong ph&acirc;n kh&uacute;c tầm trung d&agrave;nh cho game thủ v&agrave; d&acirc;n đồ họa.&nbsp;</p>

<p><img src="https://product.hstatic.net/200000722513/product/amd1_8bb5a6a47c154c4f92f45770ba53eeb5_269ec8149b994f77abad19bc0e46b08a_grande.jpg" /></p>

<h3><strong>RAM PNY XLR8 Silver 1x8GB 3600 RGB</strong></h3>

<p>RAM&nbsp;<strong>PNY XLR8 Silver 1x8GB 3600 RGB</strong>&nbsp;g&oacute;p phần t&ocirc; điểm cho d&agrave;n PC của ch&uacute;ng ta. Dải đ&egrave;n&nbsp;LED RGB&nbsp;tr&ecirc;n RAM c&oacute; thể ph&aacute;t s&aacute;ng với g&oacute;c si&ecirc;u rộng l&ecirc;n đến 120 độ tạo n&ecirc;n trải nghiệm thị gi&aacute;c tuyệt vời, t&ocirc; điểm th&ecirc;m cho bữa tiệc &aacute;nh s&aacute;ng trong chiếc case m&aacute;y t&iacute;nh của bạn. PNY XLR8 Silver RGB xứng đ&aacute;ng c&oacute; mặt trosng danh s&aacute;ch những chiếc&nbsp;RAM LED RGB&nbsp;đ&aacute;ng mua nhất hiện nay.&nbsp;</p>

<p><img alt="GEARVN - RAM PNY XLR8 Silver 1x8GB 3600 RGB" src="https://file.hstatic.net/1000026716/file/gearvn-ram-pny-xlr8-silver-1-x-8gb-3600-rgb_61ba71e7059e45c0aedd1049ca9cf368_grande.jpg" /></p>

<p>Được trang bị bảng mạch JEDEC RC 2.0, PNY XLR8 Silver 1x8GB 3600 RGB đem lại tốc độ đọc, truyền tải nhanh hơn với những bảng mạch th&ocirc;ng thường tr&ecirc;n những chiếc RAM kh&aacute;c. Nhờ v&agrave;o điều n&agrave;y, tốc độ xử l&yacute; v&agrave; khả năng &eacute;p xung tr&ecirc;n PNY XLR8 Silver 1x8GB 3600 RGB sẽ ổn định hơn hẳn.</p>

<h3><strong>VGA&nbsp;ASUS Dual GeForce GTX 1650 V2 4GB GDDR6</strong></h3>

<p>Đảm nhiệm vị tr&iacute; VGA trong&nbsp;m&aacute;y t&iacute;nh để b&agrave;n&nbsp;GVN VIPER a1650 sẽ l&agrave;&nbsp;<strong>ASUS Dual GeForce GTX 1650 V2 4GB GDDR6</strong>. Với sức mạnh của&nbsp;GTX 1650, ASUS Dual GeForce GTX 1650 V2 4GB GDDR6&nbsp;cung cấp khả năng xử l&yacute; h&igrave;nh ảnh tuyệt vời tr&ecirc;n những tựa game Esport v&agrave; tr&ecirc;n những tựa game AAA với setting ph&ugrave; hợp.</p>

<p><img src="https://product.hstatic.net/200000722513/product/fwebp_962cba0438854b81a645b37a9f0dd675_9871381b804e424781445cae7c13c68e_grande.png" /></p>

<p>Thiết kế ASUS Dual GeForce GTX 1650 V2 4GB GDDR6 cho bạn dễ d&agrave;ng lắp đặt v&agrave; lựa chọn k&iacute;ch thước case ph&ugrave; hợp.</p>

<h3><strong>SSD WD Blue SN570 250G M.2 NVMe PCIe Gen3</strong></h3>

<p>Đ&oacute;ng vai tr&ograve; l&agrave; kh&ocirc;ng gian lưu trữ cho VIPER a1650, SSD WD Blue SN570 250G M.2 NVMe PCIe Gen3&nbsp;đem lại tốc độ xử l&yacute; dữ liệu mạnh mẽ. Sử dụng chuẩn&nbsp;M.2 NVMe&nbsp;mới nhất hiện nay, SSD WD Blue SN570 250G M.2 NVMe PCIe Gen3&nbsp;cung cấp khả năng tương th&iacute;ch với những bo mạch chủ hiện đại nhất hiện nay.</p>

<p><img src="https://product.hstatic.net/1000026716/product/wdc-wdblue-sn570_prod-img-straight-front-250gb_518068049acf41c0ae63a1cc1e30d129_grande.jpg" /></p>

<h3><strong>Nguồn FSP HV PRO 550W - 80 Plus Bronze</strong></h3>

<p>Với c&ocirc;ng suất 550W v&agrave; chuẩn 80Plus, khi&nbsp;build PC&nbsp;n&agrave;y, n<strong>guồn FSP HV PRO 550W - 80 Plus Bronze</strong>&nbsp;đem lại hiệu suất dồi d&agrave;o l&ecirc;n đến 85% cho mọi linh kiện, từ đ&oacute; gi&uacute;p mọi th&agrave;nh phần c&oacute; thể hoạt động trơn tru v&agrave; ổn định. Hỗ trợ th&ecirc;m khả năng cung cấp điện năng l&agrave; thiết kế mạch DC-DC, PFC tự động.&nbsp;<strong>Nguồn FSP HV PRO 550W - 80 Plus Bronze&nbsp;</strong>gia tăng th&ecirc;m sự an t&acirc;m v&agrave; an to&agrave;n khi sử dụng đến người d&ugrave;ng.</p>

<p>&nbsp;</p>

<h3><strong>Case ARES Anubis ATX</strong></h3>

<p>Case&nbsp;<strong>ARES Anubis ATX&nbsp;</strong>sẽ l&agrave; chiếc case được tin tưởng để mọi linh kiện c&agrave;i đặt v&agrave;o trong. Sở hữu một vẻ ngo&agrave;i chắc chắn, mạnh mẽ khi được ho&agrave;n thiện từ th&eacute;p, ARES Anubis ATX&nbsp;được trau chuốt với c&aacute;c đường n&eacute;t tinh tế ở mặt trước. B&ecirc;n tr&aacute;i của ARES Anubis ATX&nbsp;l&agrave; tấm k&iacute;nh cường lực trong suốt cho bạn thể hiện vẻ đẹp của mọi linh kiện b&ecirc;n trong c&ugrave;ng khả năng chống bụi bẩn.</p>

<p><img src="https://product.hstatic.net/200000722513/product/ac59ff_d0f91ce7aca944058a429bd06763e1d6_mv2_71ca7960e66c40f8a5b469b53e8494cb_grande.png" /></p>

<p>ARES Anubis ATX&nbsp;cho bạn thoải m&aacute;i n&acirc;ng cấp với diện t&iacute;ch đủ cho VGA d&agrave;i 320mm,&nbsp;tản nhiệt kh&iacute;&nbsp;cao 160mm v&agrave; PSU d&agrave;i 180mm. V&agrave; hỗ trợ những bo mạch chủ với k&iacute;ch thước ATX, M-ATX v&agrave; mini-ITX.&nbsp;Đồng thời, tr&ecirc;n vỏ case c&ograve;n được trang bị cổng kết nối th&ocirc;ng minh để người chơi c&oacute; thể dễ d&agrave;ng kết nối&nbsp;chuột m&aacute;y t&iacute;nh,&nbsp;b&agrave;n ph&iacute;m&nbsp;c&ugrave;ng nhiều thiết bị kh&aacute;c v&ocirc; c&ugrave;ng tiện lợi.&nbsp;</p>
', CAST(4900000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10162, N'PC Gaming Intel i5-12400F/ VGA GTX 1660 Super', N'pc-gaming-intel-i5-12400f-vga-gtx-1660-super', N'PC Gaming Intel i5-12400F/ VGA GTX 1660 Super', N'/DataManagement/Images/PC-Gaming/viper-i1660s/post-01_a2c23a6439d34097900bbbc58770422b_01ea5d724eaf45fcb9beb39b38c7a860_1024x1024-fotor-20231022234959.jpg', CAST(16490000 AS Decimal(18, 0)), 5, CAST(15665500 AS Decimal(18, 0)), NULL, CAST(N'2024-05-17T15:32:52.983' AS DateTime), NULL, 1, 10148, N'<h3><strong><u>Th&ocirc;ng số kỹ thuật:</u></strong></h3>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td><strong>Mainboard</strong></td>
			<td><strong>ASUS TUF GAMING B760M-PLUS WIFI DDR4</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>CPU</strong></td>
			<td><strong>Intel Core i5 12400F / 2.5GHz Turbo 4.4GHz / 6 Nh&acirc;n 12 Luồng / 18MB / LGA 1700</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>RAM</strong></td>
			<td><strong>PNY XLR8 Silver 1x8GB 3600 RGB</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>VGA&nbsp;- Card đồ họa</strong></td>
			<td><strong>ASUS TUF Gaming GeForce GTX 1660 Super OC Edition 6GB GDDR6 (TUF-GTX1660S-O6G-GAMING)</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>HDD</strong></td>
			<td><strong>C&oacute; thể t&ugrave;y chọn&nbsp;N&acirc;ng cấp</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>SSD</strong></td>
			<td><strong>WD Blue SN570 250G M.2 NVMe PCIe Gen3</strong></td>
			<td>60 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>PSU</strong></td>
			<td><strong>FSP HV PRO 550W - 80 Plus Bronze</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Case&nbsp;</strong></td>
			<td><strong>MSI MAG FORGE M100A</strong></td>
			<td>12 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Tản nhiệt</strong></td>
			<td><strong>DEEPCOOL AG400 ARGB</strong></td>
			<td>12 Th&aacute;ng</td>
		</tr>
	</tbody>
</table>

<h2><u><strong>Đ&aacute;nh gi&aacute; chi tiết :</strong></u></h2>

<p>&nbsp;</p>

<h3><strong>Bo mạch chủ&nbsp;ASUS TUF GAMING B760M-PLUS WIFI DDR4</strong></h3>

<p>ASUS TUF GAMING B760M-PLUS WIFI DDR4&nbsp;l&agrave; một trong những d&ograve;ng&nbsp;mainboard&nbsp;được&nbsp;chắt lọc c&aacute;c yếu tố thiết yếu của nền tảng Intel&nbsp;mới nhất v&agrave; kết hợp ch&uacute;ng để tạo th&agrave;nh một sản phẩm ho&agrave;n hảo trong ph&acirc;n kh&uacute;c tầm trung.&nbsp;</p>

<p><img src="https://product.hstatic.net/200000722513/product/-asus-tuf-gaming-b760m-plus-wifi-d4-1_d9c072631509461c8fd880c9e48b9344_3547fd3988ef4d41beb979299a72fad9_grande.png" /></p>

<p>Được thiết kế với c&aacute;c th&agrave;nh phần tốt nhất, chiếc bo mạch chủ cung cấp đầy đủ những kết nối cơ bản gi&uacute;p cuộc sống của bạn dễ d&agrave;ng hơn.&nbsp;Việc được bọc th&eacute;p sẽ l&agrave;m giảm thiểu hiện tượng gẫy hay vặn xoắn khe PCI-E khi bạn chọn lắp những VGA lớn. Qua đ&oacute; gi&uacute;p tăng độ bền của sản phẩm v&agrave; khả năng sang nhượng trong tương lai l&agrave; s&aacute;ng sủa hơn tr&ocirc;ng thấy.</p>

<h3><strong>Intel Core i5 12400F / 2.5GHz Turbo 4.4GHz / 6 Nh&acirc;n 12 Luồng / 18MB / LGA 1700</strong></h3>

<p>CPU Intel Core i5&nbsp;- 12400F&nbsp;đ&atilde; khiến thị trường d&ograve;ng chip tầm trung &quot;n&oacute;ng&quot; hơn rất nhiều. Với 6 nh&acirc;n 12 luồng, xung nhịp 2.5GHz v&agrave; turbo boost l&ecirc;n 4.4GHz, quả l&agrave; l&agrave; sự chọn tuyệt vời cho việc chơi game cho tới stream game, vượt xa người tiền nhiệm&nbsp;i5-11400F&nbsp;khi kh&ocirc;ng thể ho&agrave;n th&agrave;nh tốt việc stream game.&nbsp;</p>

<p><img src="https://product.hstatic.net/200000722513/product/12400f_cadecfed12d84fcf836b65ae7179a9e0_abe30b4a782c4e5899a6f9e6eda7e797_grande.png" /></p>

<p>6 nh&acirc;n 12 luồng chỉ c&ograve;n loanh quanh trong mức gi&aacute; khoảng 5 triệu, c&aacute;ch đ&acirc;y khoảng 2 năm đ&acirc;y c&ograve;n l&agrave; điều kh&ocirc;ng tưởng khi i7-8700 ra đời. Nhưng hiện taị mọi chuyện đ&atilde; thay đổi khi Intel đ&atilde; ch&iacute;nh thức bước v&agrave;o cuộc đua về th&ocirc;ng số v&agrave; gi&aacute; cả với đối thủ truyền kiếp AMD, cơ hội để bạn sở hữu một d&agrave;n m&aacute;y chất lượng ch&iacute;nh l&agrave; thời điểm hiện tại.</p>

<h3><strong>Ram PNY XLR8 Silver 1x8GB 3600 RGB</strong></h3>

<p>&nbsp;</p>

<p><img src="https://product.hstatic.net/1000026716/product/en_color_list_22d26_r9gc83djaz_3c686ea66ef2444a937c1fd51d008395__1__ae48a53002da4865b402c951dd663848_grande.jpg" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>RAM của hệ thống l&agrave; d&ograve;ng sản phẩm Ram PNY XLR8 Silver 1x8GB 3600 RGB của thương hiệu l&acirc;u đời v&agrave; danh tiếng - PNY&nbsp;c&oacute; khả năng&nbsp;tự &eacute;p xung&nbsp;để n&acirc;ng cao hiệu suất hoạt động tr&ecirc;n to&agrave;n hệ thống.</p>

<h3><strong>ASUS TUF Gaming GeForce GTX 1660 Super OC Edition 6GB GDDR6</strong></h3>

<p>M&aacute;y t&iacute;nh để b&agrave;n&nbsp;GVN VIPER i1660S sử dụng d&ograve;ng card m&agrave;n h&igrave;nh với nhiều t&iacute;nh năng nổi trội. Điểm đặc biệt nhất đ&oacute; ch&iacute;nh l&agrave; hệ thống l&agrave;m m&aacute;t, c&ugrave;ng một số cải tiến để mang lại hiệu quả cao hơn.</p>

<p><img src="https://product.hstatic.net/200000722513/product/tx-1660-super-oc-edition-6gb-gddr6-12_0ece8cc24de14255a4091cce3f5a8917_6b39980160ff45a88bf3871ff84f7592_grande.png" /></p>

<p>C&aacute;nh quạt của hệ thống l&agrave;m m&aacute;t quay lu&acirc;n phi&ecirc;n, giải quyết luồng kh&ocirc;ng kh&iacute; hỗn loạn của c&aacute;c quạt liền kề. Nếu như trước đ&acirc;y c&aacute;c d&ograve;ng quạt liền kề xe được thiết kế để quay c&ugrave;ng một chiều. Hiện tại c&aacute;c d&ograve;ng card m&agrave;n h&igrave;nh đ&atilde; cải tiến để c&aacute;c quạt quay ngược chiều nhau. L&agrave;m giảm t&igrave;nh trạng c&aacute;c luồng kh&iacute; hỗn loạn v&agrave; hạn chế card m&agrave;n h&igrave;nh n&oacute;ng l&ecirc;n trong l&uacute;c l&agrave;m việc.</p>

<h3><strong>SSD WD Blue SN570 250G M.2 NVMe PCIe Gen3</strong></h3>

<p>&nbsp;</p>

<p><img src="https://product.hstatic.net/200000722513/product/wd_blue_sn570_250gb_ww_adobe_front_hr_f744c65a15044372942307877fbf464a_5c4abd5d032745daaeb5b84bd4d7f17f_grande.jpg" /></p>

<p>Tất cả c&aacute;c sản phẩm của Kingston được sản xuất v&agrave; thử nghiệm nghi&ecirc;m ngặt trước khi xuất xưởng. SSD WD Blue SN570 250G M.2 NVMe PCIe Gen3&nbsp;chất lượng cao từ c&aacute;c nh&agrave; cung cấp h&agrave;ng đầu của ng&agrave;nh c&ocirc;ng nghiệp&nbsp;để đảm bảo chất lượng cực cao. Ổ cứng WD ho&agrave;n to&agrave;n tương th&iacute;ch tr&ecirc;n tất cả c&aacute;c ứng dụng v&agrave; m&ocirc;i trường để đảm bảo đ&aacute;p ứng c&aacute;c ti&ecirc;u chuẩn chất lượng, độ tin cậy v&agrave; độ bền cao nhất.</p>

<h3><strong>Nguồn FSP HV PRO 550W - 80 Plus Bronze</strong></h3>

<p>&nbsp;</p>

<p><img src="https://product.hstatic.net/1000026716/product/nguon_fsp_hv_pro_550w_-_10_e6bde4a463d241788c2580e22b496368_grande.jpg" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Chứng nhận 80 Plus đảm bảo hiệu suất hoạt động tốt hơn. &Iacute;t l&atilde;ng ph&iacute; điện năng, l&agrave;m giảm nhiệt v&agrave; tiếng ồn của quạt. Nguồn FSP HV PRO 550W - 80 Plus Bronze&nbsp;c&oacute; thể đạt hiệu suất l&ecirc;n tới 80%.&nbsp;Nguồn FSP HV PRO 550W - 80 Plus Bronze&nbsp;cung cấp giải ph&aacute;p tốt nhất cho việc x&acirc;y dựng hệ thống khi&nbsp;build PC.&nbsp;</p>

<ul>
	<li>C&aacute;p bện lưới l&agrave;m giảm sự lộn xộn v&agrave; cải thiện luồng kh&ocirc;ng kh&iacute; trong case.&nbsp;Tất cả c&aacute;c tụ điện l&agrave; tụ điện chất lượng cao, để tạo ra hiệu suất hiệu quả v&agrave; đảm bảo độ tin cậy l&acirc;u hơn.&nbsp;</li>
	<li>Đường Single rail + 12V cung cấp năng lượng tốt nhất, ổn định v&agrave; tương th&iacute;ch cho phần cứng. V&agrave; n&oacute; l&agrave; thiết kế tốt nhất để c&agrave;i đặt.&nbsp;</li>
	<li>Quạt v&ograve;ng bi thủy lực 120mm tối ưu h&oacute;a việc giảm tiếng ồn v&agrave; hiệu suất nhiệt. Tốc độ quạt được điều chỉnh tự động theo hoạt động của nguồn. Quạt&nbsp;thủy lực cho tuổi thọ d&agrave;i hơn v&agrave; ổn định hơn.</li>
</ul>

<h3><strong>Case MSI MAG FORGE M100A (4 fan RGB)</strong></h3>

<p>Tuy l&agrave; case kh&aacute; nhỏ gọn nhưng được hỗ trợ&nbsp;khả năng l&agrave;m m&aacute;t cực kỳ ấn tượng với bốn&nbsp;quạt LED đi c&ugrave;ng. C&ugrave;ng với đ&oacute; case được trang bị&nbsp;một tấm k&iacute;nh cường lực mặt b&ecirc;n để tăng th&ecirc;m t&iacute;nh thẩm mỹ của vỏ case.&nbsp;</p>

<p><img src="https://product.hstatic.net/200000722513/product/new_project_7becc32537b0470aad8fb87d49a3a95a_2913510b03ff4796a80ed2e2b80c4bf1_grande.png" /></p>

<p>Bốn&nbsp;quạt 120mm được c&agrave;i đặt sẵn trong MSI MAG FORGE M100A với 3&nbsp;quạt ở ph&iacute;a trước 1 quạt ở ph&iacute;a sau. Quạt được thắp s&aacute;ng nhờ tổ hợp đ&egrave;n LED ph&iacute;a trước case, bạn chỉ cần cắm điện v&agrave; tận hưởng trải nghiệm. C&aacute;c tấm lưới ph&iacute;a trước v&agrave; ph&iacute;a tr&ecirc;n cung cấp hệ thống th&ocirc;ng gi&oacute; tối ưu để di chuyển một lượng lớn kh&ocirc;ng kh&iacute; trong suốt vỏ m&aacute;y.</p>

<p>Kh&ocirc;ng dừng lại ở đ&oacute;, nhờ v&agrave;o việc t&iacute;ch hợp c&aacute;c cổng kết nối tr&ecirc;n n&oacute;c m&aacute;y hỗ trợ người d&ugrave;ng thuận tiện kết nối với c&aacute;c thiết bị ngoại vi như&nbsp;chuột m&aacute;y t&iacute;nh,&nbsp;b&agrave;n ph&iacute;m&nbsp;v&agrave; nhiều phụ kiện kh&aacute;c một c&aacute;c dễ d&agrave;ng.</p>

<h3><strong>Tản nhiệt DEEPCOOL AG400 ARGB</strong></h3>

<p>Để n&acirc;ng cấp hiệu năng cho bộ m&aacute;y,&nbsp;GVN VIPER i1660S được trang bị hệ thống Tản nhiệt DEEPCOOL AG400 ARGB. Sở hữu thiết kế c&aacute;nh quạt&nbsp;tối ưu luồng gi&oacute; v&agrave; &aacute;p suất gi&oacute; l&agrave;m m&aacute;t bộ m&aacute;y khi vận h&agrave;nh. Dễ d&agrave;ng kết nối với c&aacute;c bo mạch chủ c&oacute; tr&ecirc;n thị trường ở nhiều ph&acirc;n kh&uacute;c kh&aacute;c nhau. C&ugrave;ng với đ&oacute; l&agrave; 4 ống dẫn nhiệt&nbsp;sử dụng c&ocirc;ng nghệ Direct Contact đảm bảo bề mặt tiếp x&uacute;c tốt.</p>

<p><img src="https://product.hstatic.net/200000722513/product/01_a39d788b15f5476fa499fc95a3e76e9a_5e9d8e8518f34044b63104368b1aa4f1_grande.jpg" /></p>

<p>Ngo&agrave;i những hiệu năng đỉnh cao, d&ograve;ng sản phẩm&nbsp;tản nhiệt kh&iacute;&nbsp;đến từ Deepcool c&ograve;n gi&uacute;p bộ m&aacute;y ấn tượng hơn với hệ thống LED ARGB c&oacute; thể tinh chỉnh dễ d&agrave;ng.&nbsp;</p>
', CAST(8990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10163, N'PC Gaming Intel i5-12400F/ VGA RTX 3050', N'pc-gaming-intel-i5-12400f-vga-rtx-3050', N'PC Gaming Intel i5-12400F/ VGA RTX 3050', N'/DataManagement/Images/PC-Gaming/viper-i3050/post-01_d1f1c6515cb84b25b4d34acf6675c82a_1024x1024-fotor-20231022235220.jpg', CAST(17690000 AS Decimal(18, 0)), 5, CAST(16805500 AS Decimal(18, 0)), NULL, CAST(N'2024-05-17T15:42:26.903' AS DateTime), NULL, 1, 10149, N'<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Mainboard&nbsp;</strong></td>
			<td><strong>MSI MAG B760M MORTAR WIFI DDR4</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>CPU</strong></td>
			<td><strong>Intel Core i5 12400F / 2.5GHz Turbo 4.4GHz / 6 Nh&acirc;n 12 Luồng / 18MB / LGA 1700</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>RAM&nbsp;</strong></td>
			<td><strong>PNY XLR8 Silver 8GB 3200 RGB</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>VGA&nbsp;</strong></td>
			<td><strong>ASUS Dual GeForce RTX 3050 8GB V2</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>HDD&nbsp;</strong></td>
			<td><strong>C&oacute; thể t&ugrave;y chọn&nbsp;n&acirc;ng cấp</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>SSD&nbsp;</strong></td>
			<td><strong>WD Blue SN570 250G M.2 NVMe PCIe Gen3</strong></td>
			<td>60 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>PSU&nbsp;</strong></td>
			<td><strong>FSP HV PRO 650W - 80 Plus Bronze</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Case&nbsp;</strong></td>
			<td><strong>Cougar Archon 2 Mesh Black RGB</strong></td>
			<td>12 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Cooling</strong></td>
			<td><strong>DEEPCOOL AG400 ARGB</strong></td>
			<td>12 Th&aacute;ng</td>
		</tr>
	</tbody>
</table>

<h3><strong>Đ&aacute;nh gi&aacute;&nbsp;chi tiết&nbsp;GVN VIPER i3050</strong></h3>

<h3><strong>Bo mạch chủ&nbsp;MSI MAG B760M MORTAR WIFI DDR4</strong></h3>

<p>&nbsp;</p>

<p>MSI đem đến cho ch&uacute;ng ta một Mainboard chắc chắn, được bọc gi&aacute;p tản nhiệt tối ưu. IC nguồn th&ocirc;ng minh kỹ thuật số đảm bảo hệ thống vận h&agrave;nh ổn định, hiệu quả. PCB 6 lớp với đồng d&agrave;y 2oz mang lại hiệu suất cực k&igrave; cao v&agrave; ổn định hệ thống trong một thời gian d&agrave;i sử dụng. C&ugrave;ng gi&aacute;p th&eacute;p cổng mở rộng PCIe gi&uacute;p VGA của bạn chống bị bẻ cong v&agrave; c&oacute; EMI tốt hơn.</p>

<p><img src="https://product.hstatic.net/200000722513/product/j1_94498d70476f47478fe5bb280a9f8c5b_acc8dedcb0854fcc8162f50628415f6c_grande.jpg" /></p>

<h3><strong>Intel Core&nbsp;i5 12400F / 2.5GHz Turbo 4.4GHz / 6 Nh&acirc;n 12 Luồng / 18MB / LGA 1700</strong></h3>

<p>&nbsp;</p>

<p>CPU Intel Core i5&nbsp;12400F&nbsp;đ&atilde; khiến thị trường d&ograve;ng chip tầm trung &quot;n&oacute;ng&quot; hơn rất nhiều. Với 6 nh&acirc;n 12 luồng, xung nhịp 2.5GHz v&agrave; turbo boost l&ecirc;n 4.4GHz, quả l&agrave; l&agrave; sự chọn tuyệt vời cho việc chơi game cho tới stream game, vượt xa người tiền nhiệm&nbsp;i5-11400F&nbsp;khi kh&ocirc;ng thể ho&agrave;n th&agrave;nh tốt việc stream game.</p>

<p><img src="https://product.hstatic.net/1000026716/product/box_t4_i5f_12th_m35582_ang01_right_v01_1280x1280_0d8d3bea75e8441f855b246eba0b7b8a_grande.png" /></p>

<h3><strong>RAM PNY XLR8 Silver 8GB 3600 RGB</strong></h3>

<p>RAM của hệ thống l&agrave; PNY XLR8 Silver&nbsp;8GB 3600 RGB của thương hiệu l&acirc;u đời v&agrave; danh tiếng -&nbsp;<strong>PNY</strong>&nbsp;c&oacute; khả năng<strong>&nbsp;tự &eacute;p xung</strong>&nbsp;để n&acirc;ng cao hiệu suất hoạt động tr&ecirc;n to&agrave;n hệ thống.</p>

<p><img src="https://product.hstatic.net/1000026716/product/en_color_list_22d26_r9gc83djaz_3c686ea66ef2444a937c1fd51d008395_grande.jpg" /></p>

<p>&nbsp;</p>

<h3><strong>ASUS Dual GeForce RTX 3050 8GB V2</strong></h3>

<p>&nbsp;</p>

<p>L&agrave; d&ograve;ng card m&agrave;n h&igrave;nh được đ&aacute;nh gi&aacute; cực kỳ cao khi&nbsp;build PC&nbsp;tầm trung. Kiến tr&uacute;c NVIDIA Ampere ho&agrave;n to&agrave;n mới mang đến trải nghiệm chơi đỉnh cao, bao gồm c&aacute;c l&otilde;i RT thế hệ thứ 2 ti&ecirc;n tiến v&agrave; l&otilde;i Tensor thế hệ 3 với th&ocirc;ng lượng lớn hơn. Đ&aacute;nh dấu sự ra mắt của RTX thế hệ thứ 2, kết hợp với c&aacute;c l&otilde;i CUDA tăng gấp đ&ocirc;i băng th&ocirc;ng so với thế hệ trước. ASUS Dual GeForce RTX 3050 8GB V2 được đ&aacute;nh gi&aacute; l&agrave; một trong những d&ograve;ng&nbsp;card đồ họa&nbsp;được kh&aacute; cao ở vấn đề tản nhiệt. Hệ thống l&agrave;m m&aacute;t bao gồm 7 ống dẫn nhiệt bằng đồng tổng hợp, GPU cảm ứng trực tiếp tấm đồng lớn, quạt hoạt động 3D v&agrave; l&agrave;m m&aacute;t m&agrave;n h&igrave;nh, c&ugrave;ng nhau cung cấp khả năng tản nhiệt hiệu quả cao.</p>

<p><img src="https://product.hstatic.net/1000026716/product/asus_dual_geforce_rtx_3050_8gb__11__8d0f0351677f417887073d9608cc76fd.jpg" /></p>

<h3><strong>SSD WD Blue SN570 250G M.2 NVMe PCIe Gen3</strong></h3>

<p>M&aacute;y t&iacute;nh để b&agrave;n&nbsp;GVN VIPER i3050 sử dụng&nbsp;SSD WD Blue SN570 250G M.2 NVMe PCIe Gen3 l&agrave; chiếc M.2&nbsp;SSD&nbsp;cao cấp của thương hiệu WD. SSD WD Blue SN570 250G M.2 NVMe PCIe Gen3 c&oacute; tốc độ hoạt động kh&aacute; tốt, đạt tối đa 3300MB/s đối với tốc độ đọc v&agrave; 1200MB/s ở tốc độ ghi. Chắc chắn chiếc ổ cứng SSD&nbsp;n&agrave;y sẽ l&agrave;m h&agrave;i l&ograve;ng rất nhiều người sử dụng.</p>

<p>&nbsp;</p>

<p><img src="https://product.hstatic.net/1000026716/product/wdc-wdblue-sn570_prod-img-hero-250g_7b6bc6aebdf549da8246106a680835f7_grande.jpg" /></p>

<h3><strong>Nguồn&nbsp;FSP HV PRO 650W - 80 Plus Bronze</strong></h3>

<p>Sự hiểu biết về &yacute; nghĩa của hiệu suất v&agrave; chỉ số của n&oacute; l&agrave; rất quan trọng. Chỉ số hiệu suất định h&igrave;nh lượng c&ocirc;ng suất lưu trữ v&agrave;/hoặc mất đi khi chuyển n&oacute; đi từ tường đến linh kiện của bạn. N&oacute; kh&ocirc;ng phản &aacute;nh chất lượng tổng thể của nguồn m&aacute;y t&iacute;nh. V&agrave; sở hữu một bộ nguồn chuẩn 80 PLUS Bronze l&agrave; kh&ocirc;ng cần thiết khi bộ Nguồn FSP HV PRO 650W - 80 Plus Bronze&nbsp;đảm bảo hiệu suất hoạt động b&igrave;nh thường 85% nhưng vẫn đảm bảo t&iacute;nh an to&agrave;n v&agrave; tin cậy.</p>

<p>&nbsp;</p>

<p><img src="https://product.hstatic.net/1000026716/product/nguon_fsp_hv_pro_650w_-_1_e4c540f1ef8b4ca199431a017fa89efb_grande.png" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h3><strong>Case Cougar Archon 2 Mesh Black RGB</strong></h3>

<p>L&agrave; một case m&aacute;y t&iacute;nh mid-tower,&nbsp;<strong>Case Cougar Archon 2 Mesh Black RGB&nbsp;</strong>được trang bị kh&ocirc;ng gian rộng r&atilde;i hỗ trợ cả bo mạch chủ ATX.&nbsp;Với hai khe h&uacute;t gi&oacute; lớn v&agrave; ống xả kh&iacute;, luồng kh&iacute; được tối ưu h&oacute;a được đảm bảo để giữ cho c&aacute;c bộ phận của hệ thống m&aacute;t mẻ.&nbsp;<strong>Case Cougar Archon 2 Mesh Black RGB</strong>&nbsp;cung cấp cho bạn trải nghiệm x&acirc;y dựng v&agrave; sử dụng tuyệt vời.</p>

<p>&nbsp;</p>

<p><img src="https://product.hstatic.net/1000026716/product/z4143711078432_15fa6d273ecbacc495e7e2d82ba4a314_cfcba4ad6800492e94dd6439c3a295e3_grande.jpg" /></p>

<h3><strong>Tản nhiệt DEEPCOOL AG400 ARGB</strong></h3>

<p>Tản nhiệt DEEPCOOL AG400 ARGB đem tới cả hiệu năng v&agrave; vẻ đẹp tuyệt vời.&nbsp;Tản nhiệt DEEPCOOL AG400 ARGB đi k&egrave;m d&acirc;y dẫn t&iacute;n hiệu ARGB, c&aacute;c bạn ho&agrave;n to&agrave;n c&oacute; thể cắm trực tiếp v&agrave;o mainboard v&agrave; điều chỉnh m&agrave;u sắc.&nbsp;C&aacute;c g&ocirc;ng bắt đi k&egrave;m thuận tiện cho người sử dụng trong qu&aacute; tr&igrave;nh lắp đặt.&nbsp;Với c&aacute;i tiến mới, Tản nhiệt kh&iacute; DEEPCOOL AG400 ARGB sẽ đem lại khả năng truyền tải gi&oacute; mượt m&agrave; qua c&aacute;c phiến l&aacute; tản nhiệt do đ&oacute; sẽ tăng cường được hiệu năng.</p>

<p><img src="https://product.hstatic.net/1000026716/product/01_a39d788b15f5476fa499fc95a3e76e9a_grande.jpg" /></p>
', CAST(11900000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10164, N'PC Gaming Intel i5-12400F/ VGA RTX 4060', N'pc-gaming-intel-i5-12400f-vga-rtx-4060', N'PC Gaming Intel i5-12400F/ VGA RTX 4060', N'/DataManagement/Images/PC-Gaming/viper-i4060-i5/post-01_489904a596244b5fb2efd7dc7e8b9b2e_1024x1024-fotor-2023102223555.jpg', CAST(23190000 AS Decimal(18, 0)), 5, CAST(22030500 AS Decimal(18, 0)), NULL, CAST(N'2024-05-17T15:45:47.527' AS DateTime), NULL, 1, 10150, N'<p>Sở hữu chipset B760, ASUS TUF GAMING B760M-PLUS WIFI DDR4 sẽ mang đến cho bạn những khả năng tương th&iacute;ch đến tuyệt vời tr&ecirc;n những&nbsp;linh kiện m&aacute;y t&iacute;nh&nbsp;ti&ecirc;n tiến.</p>

<p><img src="https://product.hstatic.net/200000722513/product/-asus-tuf-gaming-b760m-plus-wifi-d4-1_d9c072631509461c8fd880c9e48b9344_3547fd3988ef4d41beb979299a72fad9_grande.png" /></p>

<p>V&agrave; cốt l&otilde;i b&ecirc;n trong của chiếc mainboard chế tạo từ bọc th&eacute;p sẽ l&agrave;m giảm thiểu hiện tượng g&atilde;y hay cong khe PCI-E khi bạn chọn lắp những VGA lớn, gi&uacute;p chịu tải trọng tốt hơn cho mainboard. Qua đ&oacute; gi&uacute;p tăng cường độ bền của sản phẩm v&agrave; cung cấp khả năng n&acirc;ng cấp trong tương lai cho người d&ugrave;ng.</p>

<h3><strong>VGA&nbsp;ASUS ROG Strix GeForce RTX 4060 OC Edition 8GB GDDR6</strong></h3>

<p><strong>ASUS ROG Strix GeForce RTX 4060 OC Edition 8GB GDDR6</strong>&nbsp;c&oacute; được vẻ ngo&agrave;i gaming trước đ&oacute;. Kho&aacute;c l&ecirc;n m&agrave;u đen mạnh mẽ c&ugrave;ng c&aacute;c g&oacute;c cạnh được ho&agrave;n thiện một c&aacute;ch bắt mắt, c&aacute;i t&ecirc;n từ ASUS sẽ l&agrave;m nổi bật chiếc case n&oacute;i ri&ecirc;ng v&agrave; g&oacute;c gaming n&oacute;i chung.</p>

<p>&nbsp;</p>

<p><img src="https://product.hstatic.net/200000722513/product/h732__10__c025e91af2e54f27a6e634463f0268f0_grande.png" /></p>

<p>GPU&nbsp;RTX 4060&nbsp;b&ecirc;n trong ASUS ROG Strix GeForce RTX 4060 OC Edition 8GB GDDR6&nbsp;sẽ khẳng định sức mạnh xử l&yacute; đồ họa với GPU được tạo bởi kiến tr&uacute;c Ada mới nhất&nbsp;c&ugrave;ng những c&ocirc;ng nghệ xử l&yacute; h&igrave;nh ảnh ti&ecirc;n tiến. Kết hợp c&ugrave;ng những đồng bộ h&oacute;a tuyệt vời, ASUS ROG Strix GeForce RTX 4060 OC Edition 8GB GDDR6&nbsp;sẽ đủ sức &ldquo;c&acirc;n&rdquo; những chiếc&nbsp;m&agrave;n h&igrave;nh gaming&nbsp;với tần số qu&eacute;t l&ecirc;n đến 144Hz.</p>

<h3><strong>RAM PNY XLR8 Silver 1x8GB 3600 RGB</strong></h3>

<p>RAM&nbsp;<strong>PNY XLR8 Silver 1x8GB 3600 RGB</strong>&nbsp;kho&aacute;c l&ecirc;n m&igrave;nh gi&aacute;p tản nhiệt nổi bật với m&agrave;u bạc sang trọng c&ugrave;ng dải đ&egrave;n&nbsp;LED RGB&nbsp;đầy đủ m&agrave;u sắc rực rỡ chiếu s&aacute;ng kết hợp với hiệu ứng rainbow khi&nbsp;build PC. C&aacute;c v&ugrave;ng đ&egrave;n s&aacute;ng tr&ecirc;n RAM c&oacute; thể ph&aacute;t s&aacute;ng với g&oacute;c si&ecirc;u rộng l&ecirc;n đến 120 độ tạo n&ecirc;n trải nghiệm thị gi&aacute;c tuyệt vời, t&ocirc; điểm th&ecirc;m cho bữa tiệc &aacute;nh s&aacute;ng cho GVN VIPER i4060.</p>

<p><img src="https://product.hstatic.net/1000026716/product/en_color_list_22d26_r9gc83djaz_3c686ea66ef2444a937c1fd51d008395__1__ae48a53002da4865b402c951dd663848_grande.jpg" /></p>

<p>Được trang bị bảng mạch JEDEC RC 2.0, PNY XLR8 Silver 1x8GB 3600 RGB đem lại tốc độ đọc, truyền tải nhanh hơn với những bảng mạch th&ocirc;ng thường tr&ecirc;n những chiếc&nbsp;RAM DDR4&nbsp;kh&aacute;c. Nhờ v&agrave;o điều n&agrave;y, việc &eacute;p xung tr&ecirc;n PNY XLR8 Silver 1x8GB 3600 RGB sẽ ổn định hơn v&agrave; y&ecirc;n t&acirc;m hơn.</p>

<h3><strong>SSD WD Blue SN570 250G M.2 NVMe PCIe Gen3</strong></h3>

<p>Nhằm tối ưu khả năng lưu v&agrave; l&agrave;m việc tr&ecirc;n&nbsp;m&aacute;y t&iacute;nh để b&agrave;n&nbsp;GVN VIPER i4060, GEARVN đ&atilde; trang bị th&ecirc;m cho bộ PC n&agrave;y bộ nhớ&nbsp;SSD M.2&nbsp;tốc độ cao với dung lượng&nbsp;250G M.2 NVMe PCIe Gen3 mang đến tốc độ khởi động m&aacute;y v&agrave; ứng dụng chỉ trong v&agrave;i gi&acirc;y cho trải nghiệm th&uacute; vị hơn rất nhiều.&nbsp;Trang bị tốc độ đọc/ghi l&ecirc;n đến 3300/1200 MB/s, WD mang lại khả năng truyền tải dữ liệu nhanh ch&oacute;ng gi&uacute;p đẩy nhanh hiệu quả c&ocirc;ng việc. C&ugrave;ng với đ&oacute;, SSD WD gi&uacute;p cho hệ thống khởi động Windows nhanh với chuẩn SSD ti&ecirc;n tiến n&agrave;y.</p>

<p><img src="https://product.hstatic.net/1000026716/product/wdc-wdblue-sn570_prod-img-hero-250g_7b6bc6aebdf549da8246106a680835f7_grande.jpg" /></p>

<h3><strong>Nguồn Corsair CV650 - 80 Plus Bronze</strong></h3>

<p>Chứng nhận 80 Plus Bronze đảm bảo hiệu suất hoạt động tốt hơn, &iacute;t l&atilde;ng ph&iacute; điện năng, tối ưu nhiệt v&agrave; tiếng ồn của quạt, l&agrave; tất cả những g&igrave;&nbsp;<strong>Nguồn Corsair CV650 - 80 Plus Bronze</strong>&nbsp;sẽ mang lại cho bạn. Đ&oacute;ng vai tr&ograve; l&agrave; nguồn năng lượng cho GVN VIPER i4060, Nguồn Corsair CV650 - 80 Plus Bronze cung cấp giải ph&aacute;p tốt nhất cho việc x&acirc;y dựng hệ thống PC. C&aacute;p bện lưới l&agrave;m giảm sự lộn xộn v&agrave; cải thiện luồng kh&ocirc;ng kh&iacute; trong case. Tất cả c&aacute;c tụ điện l&agrave; tụ điện chất lượng cao, để tạo ra hiệu suất hiệu quả v&agrave; đảm bảo độ tin cậy l&acirc;u hơn. Đường Single rail + 12V cung cấp năng lượng tốt nhất, ổn định v&agrave; tương th&iacute;ch cho phần cứng.&nbsp;</p>

<p><img src="https://product.hstatic.net/200000722513/product/01_a1762d7870344f8ab2a68554b454757a_a85e0ad366ee422099b17aa5a01b1e3a_grande.jpg" /></p>

<p>Quạt v&ograve;ng bi thủy lực 120mm tối ưu h&oacute;a việc giảm tiếng ồn v&agrave; hiệu suất nhiệt. Tốc độ quạt được điều chỉnh tự động theo hoạt động của nguồn. Quạt thủy lực b&ecirc;n trong cung cấp cho&nbsp;Nguồn Corsair CV650 - 80 Plus Bronze tuổi thọ d&agrave;i v&agrave; ổn định hơn.</p>

<h3><strong>Case Corsair 4000D Airflow TG Black (CC-9011200-WW)</strong></h3>

<p>Case Corsair 4000D Airflow TG Black (CC-9011200-WW) l&agrave; chiếc case được lựa chọn d&agrave;nh cho GVN VIPER i4060. Sở hữu k&iacute;ch thước đủ lớn d&agrave;nh cho 6 chiếc fan hay&nbsp;tản nhiệt AIO&nbsp;l&ecirc;n đến 360mm, Case Corsair 4000D Airflow TG Black (CC-9011200-WW) cho bạn thoải m&aacute;i trang bị hệ thống tản nhiệt d&agrave;nh cho d&agrave;n PC của m&igrave;nh.&nbsp;</p>

<p>Kh&ocirc;ng dừng lại ở đ&oacute;, để tăng th&ecirc;m khả năng tiện dụng h&atilde;ng c&ograve;n t&iacute;ch hợp cổng kết nối tr&ecirc;n n&oacute;c case thuận tiện cho c&aacute;c nhu cầu kết nối với&nbsp;chuột m&aacute;y t&iacute;nh,&nbsp;b&agrave;n ph&iacute;m&nbsp;v&agrave; v&ocirc; số phụ kiện kh&aacute;c hỗ trợ tối đa cho nhu cầu chơi game giải tr&iacute; v&agrave; l&agrave;m việc.</p>

<p><img src="https://product.hstatic.net/200000722513/product/4000d_ada23ada8af14c2ca67113d329eb116f_5cc568904dbf458786ab555e38b232fc_grande.png" /></p>
', CAST(12900000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10165, N'PC G-STUDIO 9 Plus i4090', N'pc-g-studio-9-plus-i4090', N'PC G-STUDIO 9 Plus i4090', N'/DataManagement/Images/PC-Congviec/Studio-9-plus-i4090/post-01_c0cbca98f4804984a90244740e216c03_1024x1024-fotor-20231022231416.jpg', CAST(105000000 AS Decimal(18, 0)), 3, CAST(101850000 AS Decimal(18, 0)), NULL, CAST(N'2024-05-17T15:54:47.450' AS DateTime), NULL, 1, 10151, N'<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Mainboard&nbsp;</strong></td>
			<td><strong>ASUS ProArt Z790 CREATOR WIFI DDR5</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>CPU</strong></td>
			<td><strong>Intel Core i9 14900K / 4.4GHz Turbo 6.0GHz / 24 Nh&acirc;n 32 Luồng / 36MB / LGA 1700</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>RAM</strong></td>
			<td><strong>Dominator Platinum 64GB (2x32GB) RGB 5600 DDR5</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>VGA&nbsp;</strong></td>
			<td><strong>ASUS TUF Gaming GeForce RTX 4090 OC Edition 24GB GDDR6X</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>SSD&nbsp;</strong></td>
			<td><strong>SamSung 980 PRO 1TB M.2 PCIe gen 4 NVMe</strong></td>
			<td>60 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>HDD&nbsp;</strong></td>
			<td><strong>Seagate Barracuda 2TB 7200rpm</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>PSU&nbsp;</strong></td>
			<td><strong>Corsair HX1200 - 80 Plus Platinum - Full Modular</strong></td>
			<td>120 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Case&nbsp;</strong></td>
			<td><strong>Corsair 5000D AIRFLOW Tempered Glass Black</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Tản</strong></td>
			<td><strong>NOCTUA NH - D15 Chromax Black</strong></td>
			<td>72 Th&aacute;ng</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/200000722513/file/pba_proart_2000x720px_d3cf0d67d7e84b85bda89c5443536fab.jpg" /></p>

<h2>&nbsp;</h2>

<h2><strong>Chi tiết về&nbsp;GVN G-Studio 9 Plus i4090</strong></h2>

<h3><strong>Mainboard ASUS ProArt Z790 CREATOR WIFI DDR5</strong></h3>

<p>Mọi bộ PC đồ họa đều c&oacute; những y&ecirc;u cầu về khai th&aacute;c sức mạnh, tất cả những điều ấy sẽ được&nbsp;<strong>ASUS ProArt Z790 CREATOR WIFI DDR5</strong>&nbsp;đ&aacute;p ứng. Ho&agrave;n thiện từ series mainboard ProArt chuy&ecirc;n phục vụ cho c&ocirc;ng việc s&aacute;ng tạo, chiếc&nbsp;mainboard ASUS&nbsp;trang bị chipset&nbsp;Z790&nbsp;mạnh mẽ nhằm đ&aacute;p ứng sức mạnh từ những CPU thế hệ mới nhất từ Intel như Intel Gen 13. Sở hữu những chuẩn kết nối ti&ecirc;n tiến nhất, ASUS ProArt Z790 CREATOR WIFI DDR5 sẽ khai th&aacute;c v&agrave; tr&igrave;nh b&agrave;y mọi tinh hoa của m&igrave;nh đến với người d&ugrave;ng s&aacute;ng tạo.</p>

<p><img alt="GEARVN - Mainboard ASUS ProArt Z790 CREATOR WIFI DDR5" src="https://file.hstatic.net/1000026716/file/gearvn-asus-proart-z790-creator-wifi-ddr5_7dd6e9efb73e438ab62e90847e26ab86_grande.jpg" /></p>

<p>K&egrave;m với đ&oacute; l&agrave; c&aacute;c c&ocirc;ng nghệ phục vụ cho c&ocirc;ng việc s&aacute;ng tạo từ audio đến h&igrave;nh ảnh, ASUS ProArt Z790 CREATOR WIFI DDR5 tự tin mang đến cho người d&ugrave;ng đầy đủ những t&ugrave;y chỉnh phục vụ cho c&ocirc;ng việc.&nbsp;</p>

<h3><strong>CPU Intel Core i9 14900K / 4.4GHz Turbo 6.0GHz / 24 Nh&acirc;n 32 Luồng / 36MB / LGA 1700</strong></h3>

<p>Xứng đ&aacute;ng với một nền tảng sức mạnh cao cấp ấy đ&oacute; l&agrave; chiếc CPU Intel Gen 14 cao cấp từ đội xanh,&nbsp;<strong>i9-14900K</strong>. Trang bị cho m&igrave;nh những th&ocirc;ng số tuyệt vời cho khả năng xử l&yacute;, từ số nh&acirc;n/luồng đến tốc độ xung nhịp, i9-14900K l&agrave; &ldquo;c&ocirc;ng cụ&rdquo; tuyệt vời cho mọi y&ecirc;u cầu c&ocirc;ng việc s&aacute;ng tạo. H&ograve;a nhịp c&ugrave;ng những linh kiện m&aacute;y cao cấp hiện nay, biến GVN G-Studio 9 Plus i4090 trở th&agrave;nh một trợ t&aacute; đ&iacute;ch thực cho nhu cầu xử l&yacute;.</p>

<p><img src="https://product.hstatic.net/200000722513/product/n22360_png_36691178908b435494f526d804c4b249_grande.png" /></p>

<h3><strong>RAM Corsair Dominator Platinum 64GB (2x32GB) RGB 6000 DDR5</strong></h3>

<p>Đảm bảo khả năng xử l&yacute; đa nhiệm cho GVN G-Studio 9 Plus i4090 sẽ l&agrave; kit RAM&nbsp;<strong>Corsair Dominator Platinum RGB 6000 DDR5</strong>. &ldquo;Kẻ hủy diệt&rdquo; đến từ Corsair sở hữu cho m&igrave;nh một vẻ ngo&agrave;i mạnh mẽ, khi sử dụng những dải đ&egrave;n LED với hiệu ứng tương tự như những tựa game pixel kết hợp c&ugrave;ng những đường n&eacute;t cứng c&aacute;p. Ẩn giấu b&ecirc;n trong chiếc RAM Corsair l&agrave; sức mạnh xử l&yacute; tuyệt vời từ thế hệ&nbsp;RAM DDR5&nbsp;cung cấp hiệu quả khi xử l&yacute; đa nhiệm c&ugrave;ng khả năng &eacute;p xung cực mạnh.</p>

<p><img alt="GEARVN - RAM Corsair Dominator Platinum 64GB (2x32GB) RGB 6000 DDR5" src="https://file.hstatic.net/1000026716/file/orsair-dominator-platinum-64gb-2x32gb-rgb-6000-ddr5-cmt64gx5m2b6000c40_8627e80e334548b9860d22276e22f1a2_grande.jpg" /></p>

<h3><strong>VGA ASUS TUF Gaming GeForce RTX 4090 OC Edition 24GB GDDR6X</strong></h3>

<p>Xứng đ&aacute;ng với cấu h&igrave;nh GVN G-Studio 9 Plus i4090 mạnh mẽ th&igrave; chiếc card m&agrave;n h&igrave;nh&nbsp;<strong>ASUS TUF Gaming GeForce RTX 4090 OC Edition 24GB GDDR6X</strong>. Sở hữu trong m&igrave;nh GPU cao cấp nhất hiện nay từ thế hệ RTX 40 Series -&nbsp;RTX 4090, chiếc card m&agrave;n h&igrave;nh từ ASUS chắc chắn sẽ mang đến khả năng xử l&yacute; đồ họa tuyệt vời cho những c&ocirc;ng việc như edit video, photoshop gi&uacute;p bạn tạo những tuyệt t&aacute;c đẹp mắt. Ho&agrave;n thiện từ d&ograve;ng sản phẩm TUF Gaming nổi tiếng, ASUS đ&atilde; trang bị những tinh t&uacute;y ho&agrave;n hảo nhất tr&ecirc;n chiếc card m&agrave;n h&igrave;nh để biến ASUS TUF Gaming GeForce RTX 4090 OC Edition 24GB GDDR6X trở th&agrave;nh một lựa chọn tuyệt vời d&agrave;nh cho mọi bộ&nbsp;PC đồ họa.</p>

<p><img alt="GEARVN - VGA ASUS TUF Gaming GeForce RTX 4090 OC Edition 24GB GDDR6X" src="https://file.hstatic.net/1000026716/file/gearvn-asus-tuf-gaming-geforce-rtx-4090-oc-edition-24gb-gddr6x_eb8d3921c94e43cdaf082d87666fef3b_grande.jpg" /></p>

<h3><strong>SSD SamSung 980 PRO 1TB M.2 PCIe gen 4 NVMe</strong></h3>

<p>Đ&oacute;ng vai tr&ograve; lưu trữ trong GVN G-Studio 9 Plus i4090 sẽ l&agrave; chiếc ổ cứng SSD&nbsp;<strong>Samsung 980 PRO 1TB</strong>. Dung lượng lưu trữ 1TB đ&atilde; đảm bảo cho một kh&ocirc;ng gian khổng lồ cho ph&eacute;p người d&ugrave;ng cất giữ mọi t&agrave;i liệu, dữ liệu của c&aacute; nh&acirc;n. Tốc độ đọc v&agrave; ghi lần lượt đạt con số 7000 MB/s v&agrave; 5000 MB/s như muốn khẳng định cho khả năng tương t&aacute;c với dữ liệu mạnh mẽ tr&ecirc;n chiếc&nbsp;SSD Samsung&nbsp;cao cấp n&agrave;y. Với thế hệ 980 PRO, SSD Samsung 980 PRO 1TB c&ograve;n tự động duy hiệu năng c&ugrave;ng thiết kế tản nhiệt th&ocirc;ng minh dưới sự quản l&yacute; của controller TLC VNAND.</p>

<p><img alt="GEARVN - SSD SamSung 980 PRO 1TB M.2 PCIe gen 4 NVMe" src="https://file.hstatic.net/1000026716/file/gearvn-ssd-samsung-980-pro-1tb-m-2-nvme-mz-v8p1t0bw_1e830de3475047268ad0688300fc69cc_grande.jpg" /></p>

<h3><strong>HDD Seagate Barracuda 2TB 7200rpm</strong></h3>

<p>Hỗ trợ th&ecirc;m cho khả năng lưu trữ tr&ecirc;n GVN G-Studio 9 Plus i4090 với ổ HDD&nbsp;<strong>Seagate Barracuda 2TB</strong>. Kh&ocirc;ng gian lưu trữ c&agrave;ng được n&acirc;ng cấp th&ecirc;m cho người d&ugrave;ng từ&nbsp;HDD Seagate&nbsp;tạo sự thoải m&aacute;i khi l&agrave;m việc v&agrave; lưu trữ dữ liệu tr&ecirc;n m&aacute;y.</p>

<p><img alt="GEARVN - HDD Seagate Barracuda 2TB 7200rpm" src="https://file.hstatic.net/1000026716/file/gearvn-hdd-seagate-barracuda-2tb-7200rpm_e90585591344400e93ff78d60f894ef5_grande.jpg" /></p>

<h3><strong>PSU Corsair HX1200 - 80 Plus Platinum - Full Modular</strong></h3>

<p>Mọi khả năng hoạt động sẽ dựa v&agrave;o nguồn năng lượng từ bộ nguồn&nbsp;<strong>Corsair HX1200</strong>. Sở hữu nhiều c&ocirc;ng nghệ bảo vệ v&agrave; hỗ trợ cho nguồn điện, tất cả những năng lượng đến với mọi linh kiện m&aacute;y trong&nbsp;d&agrave;n PC&nbsp;được đảm bảo về độ ổn định v&agrave; mạnh mẽ như 80 Plus Platinum. Kh&ocirc;ng dừng lại đ&oacute;, Corsair HX1200 vẫn c&oacute; thể hoạt động bền bỉ nhờ khả năng tản nhiệt từ chiếc quạt tản nhiệt đi k&egrave;m c&oacute; thể hoạt động ở chế độ Zero RPM. Tạo n&ecirc;n ph&acirc;n khu năng lượng l&yacute; tưởng với chiếc&nbsp;nguồn Corsair&nbsp;cho GVN G-Studio 9 Plus i4090.</p>

<p><img alt="GEARVN - PSU Corsair HX1200 - 80 Plus Platinum - Full Modular" src="https://file.hstatic.net/1000026716/file/gearvn-1200w-platinum-modular-corsair-hx1200-80-plus-platinum_00348b9da09745678f2d244b9abbcc3e_grande.jpg" /></p>

<h3><strong>Case Corsair 5000D AIRFLOW Tempered Glass Black</strong></h3>

<p>Tất cả sẽ được lắp đặt v&agrave;o chiếc case&nbsp;<strong>Corsair 5000D AIRFLOW Tempered Glass Black</strong>. Sở hữu vẻ ngo&agrave;i c&oacute; phần đơn giản, chiếc&nbsp;case Corsair&nbsp;đ&aacute;p ứng y&ecirc;u cầu cơ bản nhất cho khả năng build PC từ người d&ugrave;ng. Tuy nhi&ecirc;n, đ&oacute; lại l&agrave; sự cơ bản của những chiếc case cao cấp khi Corsair 5000D AIRFLOW Tempered Glass Black mang đến lối thiết kế d&agrave;nh cho việc tối ưu tản nhiệt. Tr&ecirc;n khắp Corsair 5000D AIRFLOW Tempered Glass Black l&agrave; những khu vực tản nhiệt đem lại luồng gi&oacute; dồi d&agrave;o, nhờ vậy l&agrave; n&acirc;ng cao hiệu năng v&agrave; tuổi cho to&agrave;n bộ d&agrave;n PC.</p>

<p><img alt="GEARVN - Case Corsair 5000D AIRFLOW Tempered Glass Black" src="https://file.hstatic.net/1000026716/file/gearvn-case-corsair-5000d-airflow-tempered-glass-black_82aafd5f08f4483c904c8834c3f9f0f1_grande.jpg" /></p>

<h3><strong>Tản nhiệt NOCTUA NH - D15 Chromax Black</strong></h3>

<p>Nhắc đến hiệu quả tản nhiệt th&igrave; GEARVN c&ograve;n mang tới cho GVN G-Studio 9 Plus i4090 chiếc&nbsp;tản nhiệt CPU&nbsp;từ Noctua -&nbsp;<strong>NOCTUA NH - D15 Chromax Black</strong>. Nổi bật với một m&agrave;u đen mạnh mẽ nhưng kh&ocirc;ng k&eacute;m phần b&oacute;ng bẩy l&agrave;m cho chiếc tản nhiệt cực k&igrave; huyền b&iacute; với vẻ ngo&agrave;i độc đ&aacute;o ấy. Sở hữu cho m&igrave;nh khả năng tản nhiệt mạnh mẽ đi c&ugrave;ng việc tương th&iacute;ch với những chiếc CPU cao cấp, NOCTUA NH - D15 Chromax Black xứng đ&aacute;ng c&oacute; mặt trong wishlist của những cấu h&igrave;nh PC cao cấp.&nbsp;</p>

<p><img alt="GEARVN - Tản nhiệt NOCTUA NH - D15 Chromax Black" src="https://file.hstatic.net/1000026716/file/gearvn-tan-nhiet-khi-noctua-nh-d15-chromax-black_6aa6df04d744433fb54655fef2be66eb_grande.jpg" /></p>
', CAST(68900000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10166, N'PC G-STUDIO 7 Plus a4070Ti', N'pc-g-studio-7-plus-a4070ti', N'PC G-STUDIO 7 Plus a4070Ti', N'/DataManagement/Images/PC-Congviec/Studio-7-plus-a4070ti/post-06_82f9ebb7432f4227966ed15617e71855_1024x1024-fotor-2023102223928.jpg', CAST(75390000 AS Decimal(18, 0)), 5, CAST(71620500 AS Decimal(18, 0)), NULL, CAST(N'2024-05-17T15:57:42.623' AS DateTime), NULL, 1, 10152, N'<h2>M&ocirc; tả sản phẩm</h2>

<p>&nbsp;</p>

<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Mainboard&nbsp;</strong></td>
			<td><strong>ASUS ProArt X670E-CREATOR WIFI (DDR5)</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>CPU</strong></td>
			<td><strong>AMD Ryzen 7 7700X / 4.5GHz Boost 5.4GHz / 8 nh&acirc;n 16 luồng / 40MB / AM5</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>RAM</strong></td>
			<td><strong>Corsair Vengeance RGB 32GB (2x16GB) 5600 DDR5&nbsp;</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>VGA&nbsp;</strong></td>
			<td><strong>ASUS TUF Gaming GeForce RTX 4070 Ti OC Edition 12GB GDDR6X</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>SSD&nbsp;</strong></td>
			<td><strong>SSD WD Black SN770 1TB M.2 NVMe PCIe Gen4</strong></td>
			<td>60 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>HDD&nbsp;</strong></td>
			<td><strong>HDD WD Blue 2TB 7200rpm</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>PSU&nbsp;</strong></td>
			<td><strong>ASUS TUF Gaming 1000W - 80 Plus Gold - Full Modular</strong></td>
			<td>120 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Case&nbsp;</strong></td>
			<td><strong>Asus TUF Gaming GT502 Black</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Tản</strong></td>
			<td><strong>ASUS ROG RYUO III 360 ARGB</strong></td>
			<td>72 Th&aacute;ng</td>
		</tr>
	</tbody>
</table>

<p><img src="https://file.hstatic.net/200000722513/file/pba_proart_2000x720px_d3cf0d67d7e84b85bda89c5443536fab.jpg" /></p>

<h2>&nbsp;</h2>

<h2><strong>Chi tiết về&nbsp;GVN G-Studio 7 Plus a4070Ti</strong></h2>

<h3><strong>Mainboard ASUS ProArt X670E-CREATOR WIFI (DDR5)</strong></h3>

<p>Nổi tiếng về độ hiệu quả, d&ograve;ng mainboard ProArt từ ASUS đ&atilde; khẳng định t&ecirc;n tuổi của m&igrave;nh trong giới s&aacute;ng tạo v&agrave; GVN G-Studio 7 Plus a4070Ti h&oacute;a m&igrave;nh th&agrave;nh cấu h&igrave;nh&nbsp;PC đồ họa&nbsp;cao cấp c&ugrave;ng model&nbsp;<strong>ASUS ProArt X670E-CREATOR WIFI (DDR5)</strong>. Chipset&nbsp;X670&nbsp;mang tới th&ocirc;ng điệp về sự tương th&iacute;ch với những thế hệ vi xử l&yacute; AMD cao cấp ở thế hệ Ryzen 7000 Series. Chưa dừng lại, mainboard ASUS đ&atilde; trang bị những c&ocirc;ng nghệ tinh t&uacute;y v&agrave; ti&ecirc;n tiến nhất để phục vụ cho mọi nhu cầu t&aacute;c vụ từ l&agrave;m việc đến giải tr&iacute; cho ch&uacute;ng ta. Tất cả nhằm mang đến một chiếc PC đồ họa ho&agrave;n thiện nhất cho mọi creator.</p>

<p><img alt="GEARVN - Mainboard ASUS ProArt X670E-CREATOR WIFI (DDR5)" src="https://file.hstatic.net/1000026716/file/gearvn-asus-proart-x670e-creator-wifi-ddr5_d7239452e4ca49d9a83fa70d75e8464a_grande.jpg" /></p>

<h3><strong>CPU AMD Ryzen 7 7700X</strong></h3>

<p>Sử dụng cho m&igrave;nh bộ n&atilde;o trung t&acirc;m từ AMD thuộc về thế hệ&nbsp;Ryzen 7000 Series,&nbsp;<strong>AMD Ryzen 7 7700X</strong>&nbsp;ch&iacute;nh l&agrave; c&aacute;i t&ecirc;n được lựa chọn d&agrave;nh cho GVN G-Studio 7 Plus a4070Ti. Với th&ocirc;ng số gồm 8 nh&acirc;n 16 luồng c&ugrave;ng tốc độ xung nhịp tối đa l&ecirc;n đến 5.4GHz cho ph&eacute;p chiếc&nbsp;CPU AMD&nbsp;thoải m&aacute;i ho&agrave;n th&agrave;nh mọi c&ocirc;ng việc được giao cho nhu cầu xử l&yacute; th&ocirc;ng tin. Được kết hợp c&ugrave;ng những linh kiện ti&ecirc;n tiến, tất cả mang lại hiệu năng mạnh mẽ nhất.</p>

<p><img alt="GEARVN - CPU AMD Ryzen 7 7700X" src="https://file.hstatic.net/1000026716/file/gearvn-amd-ryzen-7-7700x_f9616cec330342ec92393bbe4e9ee814_grande.jpg" /></p>

<h3><strong>RAM Corsair Vengeance RGB 5600 DDR5&nbsp;</strong></h3>

<p>Trang bị cho khả năng đa t&aacute;c vụ với bộ đ&ocirc;i RAM&nbsp;<strong>Corsair Vengeance RGB 5600 DDR5</strong>. Sở hữu cho m&igrave;nh 2 thanh RAM cho dung lượng l&ecirc;n đến 32GB, kit&nbsp;RAM Corsair&nbsp;gi&uacute;p cho bạn thoải m&aacute;i trong khả năng đ&aacute;p ứng cho nhiều c&ocirc;ng việc c&ugrave;ng l&uacute;c với tốc độ cao. mượt m&agrave;. C&ugrave;ng với đ&oacute; l&agrave; một ngoại h&igrave;nh thanh tho&aacute;t, đẹp mắt c&ugrave;ng dải đ&egrave;n RGB nổi gi&uacute;p cho chiếc&nbsp;RAM DDR5&nbsp;trở th&agrave;nh một phần cho buổi tiệc &aacute;nh s&aacute;ng từ GVN G-Studio 7 Plus a4070Ti.</p>

<p><img alt="GEARVN - RAM Corsair Vengeance RGB 32GB (2x16GB) 5600 DDR5" src="https://file.hstatic.net/1000026716/file/rvn-ram-corsair-vengeance-rgb-32gb-2x16gb-5600-ddr5-cmh32gx5m2b5600c36_08af3f91dad9401e807c8ccff0bc41b8_grande.jpg" /></p>

<h3><strong>VGA ASUS TUF Gaming GeForce RTX 4070 Ti OC Edition 12GB GDDR6X</strong></h3>

<p>Thức tỉnh khả năng xử l&yacute; đồ họa tr&ecirc;n GVN G-Studio 7 Plus a4070Ti với chiếc card m&agrave;n h&igrave;nh&nbsp;<strong>ASUS TUF Gaming GeForce RTX 4070 Ti OC Edition 12GB GDDR6X</strong>. Mọi c&ocirc;ng việc li&ecirc;n quan đến đồ họa sẽ được GPU thế hệ RTX 40 Series cao cấp đảm nhiệm -&nbsp;RTX 4070 Ti. Sức mạnh ấy được tối ưu với lối ho&agrave;n thiện từ TUF Gaming g&oacute;p phần tạo n&ecirc;n sự y&ecirc;n t&acirc;m cả về mặt hiệu năng v&agrave; độ bền. Tạo n&ecirc;n phi&ecirc;n bản VGA tốt nhất cho mọi c&ocirc;ng việc xử l&yacute; h&igrave;nh ảnh, video v&agrave; gaming tr&ecirc;n những cấu h&igrave;nh PC cao cấp.</p>

<p><img alt="GEARVN - VGA ASUS TUF Gaming GeForce RTX 4070 Ti OC Edition 12GB GDDR6X" src="https://file.hstatic.net/1000026716/file/gearvn-asus-tuf-gaming-geforce-rtx-4070-ti-oc-edition-12gb-gddr6x_3cae2b7c8ff64c3a9a5fd9a6da7ec139_grande.jpg" /></p>

<h3><strong>SSD WD Black SN770 500G M.2 NVMe PCIe Gen4</strong></h3>

<p>Mọi dữ liệu sẽ được lưu trữ tr&ecirc;n chiếc ổ cứng SSD WD Black SN770 500G M.2 NVMe PCIe Gen4. Ho&agrave;n thiện bởi một trong những c&ocirc;ng ty đứng đầu trong ng&agrave;nh sản xuất ổ cứng lưu trữ, WD Black SN770 mang đến cho người d&ugrave;ng một chiếc&nbsp;SSD M.2 PCIe&nbsp;sở hữu cho m&igrave;nh tốc độ vượt trội cho với những chuẩn tiền nhiệm. Khả năng xử l&yacute; của chiếc SSD WD&nbsp;c&ograve;n được đảm bảo nhờ v&agrave;o thiết kế những lớp tản nhiệt từ nh&ocirc;m graphene, đảm bảo hiệu năng mạnh mẽ v&agrave; bền bỉ cho ch&uacute;ng ta.</p>

<p><img src="https://product.hstatic.net/1000026716/product/z3453602902388_cd4d84551922555986ca587b4522f8f1_40f78090bec246f1a90f2f0da44aa691_grande.jpg" /></p>

<h3><strong>HDD WD Blue 2TB 7200rpm</strong></h3>

<p>Tăng cường lưu trữ c&ugrave;ng chiếc ổ cứng HDD&nbsp;<strong>WD Blue 2TB 7200rpm</strong>. Dung lượng khổng lồ l&ecirc;n tới 2TB gi&uacute;p cho bạn thoải m&aacute;i lưu trữ mọi file l&agrave;m việc, t&aacute;c phẩm s&aacute;ng của ch&iacute;nh m&igrave;nh c&ugrave;ng tốc độ quay cực cao để xử l&yacute; mọi dữ liệu một c&aacute;ch nhanh ch&oacute;ng.</p>

<p><img src="https://product.hstatic.net/1000026716/product/gearvn-hdd-wd-blue-2tb-7200rpm-1_fa7b6220ded04738a7fca1ff18185232.png" /></p>

<h3><strong>Nguồn ASUS TUF Gaming 1000W - 80 Plus Gold - Full Modular</strong></h3>

<p>Nhiệm vụ cung cấp năng lượng sẽ được giao cho chiếc nguồn&nbsp;<strong>ASUS TUF Gaming 1000W</strong>. C&ocirc;ng suất khổng lồ 1000W c&ugrave;ng những chuẩn bảo vệ ti&ecirc;n tiến như 80 Plus Gold đ&atilde; khẳng định cho sự hiệu quả trong nhiệm vụ cấp điện v&agrave; sự an to&agrave;n trong qu&aacute; tr&igrave;nh sử dụng. Thuộc về series TUF Gaming,&nbsp;nguồn ASUS&nbsp;lại c&agrave;ng n&acirc;ng cao độ uy t&iacute;n của m&igrave;nh đối với người d&ugrave;ng v&agrave; biến th&agrave;nh một lựa chọn năng lượng tuyệt vời cho mọi chiếc&nbsp;PC Gaming.</p>

<p><img alt="GEARVN - Nguồn ASUS TUF Gaming 1000W - 80 Plus Gold - Full Modular" src="https://file.hstatic.net/1000026716/file/gearvn-1000w-nguon-asus-tuf-gaming-1000w-80-plus-gold-full-modular_0b6f8322dca34731b30512cc4f78ad2e_grande.jpg" /></p>

<h3><strong>Case Asus TUF Gaming GT502 Black</strong></h3>

<p>Giữ nguy&ecirc;n vẹn mọi đặc điểm v&agrave; yếu tố mạnh mẽ từ TUF Gaming, chiếc case&nbsp;<strong>Asus TUF Gaming GT502 Black</strong>&nbsp;đ&atilde; mang tới vẻ ngo&agrave;i đặc biệt. Với lối thiết kế mạnh mẽ v&agrave; một form d&aacute;ng tr&ocirc;ng cực k&igrave; kh&aacute;c biệt ấy lại ẩn chứa b&ecirc;n trong m&igrave;nh kh&ocirc;ng gian rộng r&atilde;i cho khả năng lắp đặt&nbsp;linh kiện m&aacute;y t&iacute;nh&nbsp;của chiếc&nbsp;case ASUS. Vẻ đẹp từ những th&agrave;nh phần trong cấu h&igrave;nh của GVN G-Studio 7 Plus a4070Ti sẽ được n&acirc;ng cấp to&agrave;n diện v&agrave; mang tới cho ch&uacute;ng ta một g&oacute;c l&agrave;m việc v&ocirc; c&ugrave;ng bắt mắt.</p>

<p><img alt="GEARVN - Case Asus TUF Gaming GT502 Black" src="https://file.hstatic.net/1000026716/file/gearvn-case-asus-tuf-gaming-gt502-black_7dc75dab56c445d7b421b70ddf1cc713_grande.jpg" /></p>

<h3><strong>Tản nhiệt ASUS ROG RYUO III 360 ARGB</strong></h3>

<p>N&acirc;ng cao hiệu quả hoạt động c&ugrave;ng chiếc tản nhiệt nước&nbsp;<strong>ASUS ROG RYUO III 360 ARGB</strong>. Trang bị sức mạnh từ những linh kiện tản nhiệt cao cấp nhất, ASUS đ&atilde; ho&agrave;n thiện chiếc&nbsp;tản nhiệt AIO&nbsp;cho một hiệu quả l&agrave;m m&aacute;t tối ưu nhất. C&ugrave;ng với đ&oacute; l&agrave; vẻ đẹp từ thiết kế đẹp mắt từ những chiếc&nbsp;fan tản nhiệt&nbsp;RGB v&agrave; m&agrave;n h&igrave;nh LCD độc đ&aacute;o của ASUS ROG RYUO III 360 ARG. H&ograve;a quyện lại v&agrave; tạo n&ecirc;n GVN G-Studio 7 Plus a4070Ti mạnh mẽ, rực rỡ.</p>

<p><img alt="GEARVN - Tản nhiệt ASUS ROG RYUO III 360 ARGB" src="https://file.hstatic.net/1000026716/file/gearvn-tan-nhiet-nuoc-asus-rog-ryuo-iii-360-argb_6779df2abeb1454f9c74e671decd7bd2_grande.jpg" /></p>
', CAST(45000000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10167, N'PC G-STUDIO 5 i1660S', N'pc-g-studio-5-i1660s', N'PC G-STUDIO 5 i1660S', N'/DataManagement/Images/PC-Congviec/Studio-5-i1660s/post-03_a187865d2cad47af8ff9302e0c8fa058_1024x1024-fotor-2023102223323.jpg', CAST(24490000 AS Decimal(18, 0)), 3, CAST(23755300 AS Decimal(18, 0)), NULL, CAST(N'2024-05-17T16:01:02.667' AS DateTime), NULL, 1, 10153, N'<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Mainboard&nbsp;</strong></td>
			<td><strong>MSI MAG B760M MORTAR WIFI DDR4</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>CPU</strong></td>
			<td><strong>Intel Core i5 13400 / 2.5GHz Turbo 4.6GHz / 10 Nh&acirc;n 16 Luồng / 20MB / LGA 1700</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>RAM</strong></td>
			<td><strong>2 x&nbsp;PNY XLR8 Silver 8GB 3600 RGB&nbsp;</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>VGA&nbsp;</strong></td>
			<td><strong>Gigabyte GeForce GTX 1660 SUPER OC 6GB GDDR6</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>SSD&nbsp;</strong></td>
			<td><strong>WD Black SN770 500G M.2 NVMe PCIe Gen4</strong></td>
			<td>60 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>HDD&nbsp;</strong></td>
			<td><strong>HDD WD Blue 2TB 7200rpm</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>PSU&nbsp;</strong></td>
			<td><strong>Corsair CV650 - 80 Plus Bronze</strong></td>
			<td>36 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Case&nbsp;</strong></td>
			<td><strong>Corsair 4000D AIRFLOW Black</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Tản</strong></td>
			<td><strong>ARCTIC Freezer 34 eSports DUO Grey</strong></td>
			<td>72 Th&aacute;ng</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết GVN G-Studio 5 i1660S</strong></h2>

<p>GVN G-Studio 5 i1660S d&ograve;ng sản phẩm&nbsp;PC đồ họa&nbsp;gi&aacute; rẻ được cấu tạo từ nhiều linh kiện PC chất lượng mang đến giải ph&aacute;p xử l&yacute; đồ họa &amp; dựng phim chuy&ecirc;n nghiệp một c&aacute;ch mượt m&agrave;, ổn định.</p>

<h3><strong>Mainboard MSI MAG B760M MORTAR WIFI DDR4</strong></h3>

<p>Sử dụng d&ograve;ng mainboard cao cấp chuy&ecirc;n&nbsp;Build PC&nbsp;đồ họa, render h&igrave;nh ảnh 3D v&agrave; chỉnh sửa video 4K/8K. MSI MAG B760M MORTAR WIFI DDR4 được t&iacute;ch hợp nhiều t&iacute;nh năng để tối ưu sức mạnh của những d&ograve;ng CPU mới nhất. Đồng thời, nhờ v&agrave;o t&iacute;nh năng l&agrave;m m&aacute;t to&agrave;n diện gi&uacute;p c&acirc;n bằng v&agrave; duy tr&igrave; sự ổn định của hệ thống khi phải c&acirc;n c&aacute;c t&aacute;c vụ nặng như hoạt ảnh 3D v&agrave; chỉnh sửa video.</p>

<p><img src="https://product.hstatic.net/200000722513/product/j1_94498d70476f47478fe5bb280a9f8c5b_acc8dedcb0854fcc8162f50628415f6c_grande.jpg" /></p>

<p>Kh&ocirc;ng dừng lại ở đ&oacute;, với việc t&iacute;ch hợp cổng kết nối th&ocirc;ng minh v&agrave; duy tr&igrave; đường truyền t&iacute;n hiệu ổn định, người d&ugrave;ng c&oacute; thể kết nối c&ugrave;ng nhiều thiết bị ngoại vi kh&aacute;c như b&agrave;n ph&iacute;m,&nbsp;chuột m&aacute;y t&iacute;nh,...để quy tr&igrave;nh l&agrave;m việc trơn tru hơn.</p>

<h3><strong>Bộ vi xử l&yacute; Intel Core i5 13400</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-gvn-g-studio-5-i1660s_db842f819fc94b768f9d6e14cdf7862b_grande.png" /></p>

<p>&nbsp;</p>

<p>Sở hữu nhiều cải tiến mạnh mẽ mang đến tốc độ xử l&yacute; mọi t&aacute;c vụ từ người ti&ecirc;u d&ugrave;ng một c&aacute;ch nhanh ch&oacute;ng bộ vi xử l&yacute; Intel Core i5 13400 sẽ gi&uacute;p bộ m&aacute;y GVN G-Studio 5 i1660S c&oacute; thể c&acirc;n mọi t&aacute;c vụ đồ họa chuy&ecirc;n nghiệp. Ngo&agrave;i ra, n&oacute; c&ograve;n hỗ trợ PCI-E Gen 5 mới nhất để tối ưu sức mạnh cho bộ m&aacute;y PC. Người d&ugrave;ng c&oacute; thể kết hợp&nbsp;RAM DDR5&nbsp;với CPU Intel Core i5 13400F để bộ m&aacute;y của m&igrave;nh đạt đến hiệu suất tuyệt vời ngo&agrave;i mong đợi.</p>

<h3><strong>RAM PNY XLR8 Silver 1x8GB 3600 RGB</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-gvn-g-studio-5-i1660s-3_adaf4687d3334133ba034d8168710624_grande.png" /></p>

<p>&nbsp;</p>

<p>PNY XLR8 Silver 8GB RGB l&agrave; d&ograve;ng RAM đạt chuẩn DDR4 sở hữu thiết kế đẹp, mới lạ bắt mắt với &aacute;nh s&aacute;ng RGB phần tản nhiệt được n&acirc;ng cấp, khả năng chịu tải cao ph&eacute;p qu&aacute; tr&igrave;nh &eacute;p xung diễn ra mạnh mẽ trong suốt qu&aacute; tr&igrave;nh xử l&yacute; đa t&aacute;c vụ.</p>

<h3><strong>GIGABYTE GTX 1660 Super 6GB GDDR6 OC</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-gvn-g-studio-5-i1660s-4_48d65b92005a4b78aec382cb0bdeeb46_grande.png" /></p>

<p>&nbsp;</p>

<p>Sử dụng b&ocirc;̣ xử lý đ&ocirc;̀ họa GTX 1660 Super mạnh mẽ, hi&ecirc;̣u năng vượt tr&ocirc;̣i với mức c&ocirc;ng su&acirc;́t ti&ecirc;u thụ và nhi&ecirc;̣t đ&ocirc;̣ hoạt đ&ocirc;̣ng th&acirc;́p. M&aacute;y t&iacute;nh đồ họa GVN G-Studio 5 i1660S sẽ được cung cấp sức mạnh v&agrave; khả năng l&agrave;m m&aacute;t mạnh mẽ nhờ v&agrave;o thiết k&ecirc;́ quạt tản nhi&ecirc;̣t đặc bi&ecirc;̣t.</p>

<h3><strong>SSD WD Black SN770 500G M.2 NVMe PCIe Gen4</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-gvn-g-studio-5-i1660s-5_de7f859b1bdb4fb3898aa5aedb9bb064_grande.png" /></p>

<p>&nbsp;</p>

<p>Chuẩn kết nối PCI3 Gen 4 hiện đại, kh&ocirc;ng gian lưu trữ đủ lớn 500GB gi&uacute;p cải thiện khả năng phản hồi, n&acirc;ng cao hiệu quả khi xử l&yacute; c&aacute;c t&aacute;c vụ chỉnh sửa h&igrave;nh ảnh, l&agrave;m việc văn ph&ograve;ng.</p>

<h3><strong>HDD WD Blue 2TB 7200rpm</strong></h3>

<p>&nbsp;</p>

<p><img src="https://product.hstatic.net/1000026716/product/gearvn-hdd-wd-blue-2tb-7200rpm-1_fa7b6220ded04738a7fca1ff18185232.png" /></p>

<p>&nbsp;</p>

<p>Hỗ trợ người d&ugrave;ng lưu trữ h&igrave;nh ảnh, video m&agrave; đội ngũ kỹ thuật GEARVN lựa chọn cho bộ m&aacute;y GVN G-Studio 5 i1660S d&ograve;ng&nbsp;HDD Seagate&nbsp;c&oacute; kh&ocirc;ng gian lưu trữ l&ecirc;n đến 2TB, đ&aacute;p ứng được mọi nhu cầu xử l&yacute; đa t&aacute;c vụ v&agrave; đồ họa y&ecirc;u cầu dung lượng bộ nhớ v&agrave; tốc độ xử l&yacute; cao.</p>

<h3><strong>Nguồn Corsair CV650 80 Plus Bronze</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-gvn-g-studio-5-i1660s-7_6271b52c313a4cd4abeaf2226b8a93e5_grande.png" /></p>

<p>&nbsp;</p>

<p>Bộ nguồn CORSAIR CV650 l&agrave; sự lựa chọn để cung cấp năng lượng cho PC đồ họa chuy&ecirc;n nghiệp, với hiệu suất 80 PLUS Bronze cung cấp nguồn điện ổn định cho hệ thống của bạn.</p>

<h3><strong>Case Corsair 4000D AIRFLOW Black</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-gvn-g-studio-5-i1660s-8_d3328a54880148ce99bda0ce708bc3be_grande.png" /></p>

<p>&nbsp;</p>

<p>B&ecirc;n cạnh sở hữu thiết kế lưới đẹp mắt&nbsp;Case Corsair 4000D AIRFLOW Black c&ograve;n mang đến giải ph&aacute;p l&agrave;m m&aacute;t hiệu quả v&agrave; lọc bụi. Đảm bảo hệ thống sẽ lu&ocirc;n hoạt động ổn định khi xử l&yacute; c&ocirc;ng việc chuy&ecirc;n nghiệp. Ngo&agrave;i ra, bộ case Corsair c&ograve;n được trang bị cổng kết nối th&ocirc;ng minh, tiện lợi để người d&ugrave;ng dễ d&agrave;ng kết nối c&aacute;c thiết bị như&nbsp;b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh, tai nghe gaming v&agrave; chuột c&ugrave;ng nhiều thiết bị kh&aacute;c.</p>

<h3><strong>Tản nhiệt ARCTIC Freezer 34 eSports DUO Grey</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-gvn-g-studio-5-i1660s-10_999d0367f9ce46fab4276bcb75c0dd88_grande.png" /></p>

<p>&nbsp;</p>

<p>Duy tr&igrave; bộ m&aacute;y hoạt động mượt m&agrave;,&nbsp;tản nhiệt kh&iacute;&nbsp;ARCTIC Freezer 34 eSports DUO Grey sở hữu những ưu điểm vượt trội về lượng gi&oacute;, nguồn điện ti&ecirc;u thụ, khả năng hoạt động &ecirc;m &aacute;i gi&uacute;p bộ m&aacute;y GVN G-Studio 5 i1660S n&acirc;ng cao v&agrave; duy tr&igrave; hiệu suất tốt nhất.</p>
', CAST(11000000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10168, N'PC Homework R3', N'pc-homework-r3', N'PC Homework R3', N'/DataManagement/Images/PC-Congviec/homeworkR3/homework_r3_1024x1024-fotor-202310222312.jpg', CAST(5290000 AS Decimal(18, 0)), 2, CAST(5184200 AS Decimal(18, 0)), NULL, CAST(N'2024-05-17T16:02:59.567' AS DateTime), NULL, 1, 10154, N'<p><strong>Chi tiết cấu h&igrave;nh</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>&nbsp;</td>
			<td><strong>T&ecirc;n Sản phẩm</strong></td>
			<td><strong>Bảo h&agrave;nh</strong></td>
		</tr>
		<tr>
			<td>Mainboard</td>
			<td>ASUS Prime A320M-K&nbsp;</td>
			<td>36 th&aacute;ng</td>
		</tr>
		<tr>
			<td>CPU</td>
			<td>AMD Ryzen 3 4300G / 3.8GHz Boost 4.0GHz / 4 nh&acirc;n 8 luồng / 6MB / AM4</td>
			<td>36 th&aacute;ng</td>
		</tr>
		<tr>
			<td>RAM</td>
			<td>PNY XLR8 Low Profile 1x8GB 3200 DDR4</td>
			<td>36 th&aacute;ng</td>
		</tr>
		<tr>
			<td>HDD</td>
			<td>C&oacute; thể t&ugrave;y chọn&nbsp;N&acirc;ng cấp</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>SSD</td>
			<td>PNY CS900 250GB Sata3</td>
			<td>36 th&aacute;ng</td>
		</tr>
		<tr>
			<td>PSU</td>
			<td>Jetek 350W Elite V2</td>
			<td>36 th&aacute;ng</td>
		</tr>
		<tr>
			<td>Case</td>
			<td>Jetek EM4</td>
			<td>12 th&aacute;ng</td>
		</tr>
	</tbody>
</table>

<h2><u><strong>Đ&aacute;nh gi&aacute; chi tiết:&nbsp;</strong></u></h2>

<p>&nbsp;</p>

<h3><strong>Bo mạch chủ ASUS Prime A320M-K</strong></h3>

<p>Main m&aacute;y t&iacute;nh&nbsp;<strong>PRIME A320M</strong>&nbsp;series sở hữu C&ocirc;ng nghệ 5X Protection II đầu ng&agrave;nh, sử dụng những linh kiện tốt nhất, thiết kế mạch ho&agrave;n hảo v&agrave; tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn khắt khe để bảo đảm chất lượng v&agrave; độ bền l&acirc;u d&agrave;i cho bo mạch chủ của bạn.</p>

<p><img src="https://product.hstatic.net/1000026716/product/gearvn-mainboard-asus-prime-a320m-k-1_5aa6fbb595ab4d3e98bee0d8b970c31e_grande.jpg" /></p>

<p>&nbsp;</p>

<h3><strong>Bộ vi xử l&yacute; mạnh mẽ từ Intel tr&ecirc;n GVN Homework R3</strong></h3>

<p>GVN Homework&nbsp;R3&nbsp;sở hữu hiệu suất cao với&nbsp;CPU&nbsp;đến từ AMD. Với sức mạnh &aacute;p đảo về số nh&acirc;n lẫn số luồng, bạn ho&agrave;n to&agrave;n c&oacute; thể tin tưởng v&agrave;o khả năng xử l&yacute; đa t&aacute;c vụ lẫn chơi c&aacute;c tựa game đ&ograve;i hỏi t&agrave;i nguy&ecirc;n CPU lớn m&agrave; kh&ocirc;ng sợ gặp t&igrave;nh trạng vi xử l&yacute; hoạt động qu&aacute; mức. Với mức hiệu năng n&agrave;y, ngo&agrave;i chuyện c&acirc;n card để chơi game ra, bạn sẽ c&ograve;n c&oacute; thể xử l&yacute; nhiều t&aacute;c vụ kh&aacute;c nữa. Bởi vậy m&agrave; đ&acirc;y thật sự l&agrave; mẫu CPU kh&ocirc;ng thể ph&ugrave; hợp hơn khi&nbsp;build PC&nbsp;GVN Homework R3.</p>

<p><img src="https://product.hstatic.net/200000722513/product/-4300g-processor-with-radeon-graphics_f334518704cc40e19a7198cee54d14f7_781e7f3301cd49a9b6180ae3d1bf0a97_grande.png" /></p>

<p>&nbsp;</p>

<h3><strong>Dung lượng lưu trữ của GVN Homework R3</strong></h3>

<p>Về mặt lưu trữ th&igrave; c&aacute;c bạn sẽ c&oacute; một ổ cứng SSD 240GB đảm bảo tốc độ khởi động m&aacute;y, tắt m&aacute;y hay c&aacute;c thao t&aacute;c mở game, ứng dụng nhanh hơn rất nhiều so với c&aacute;c ổ HDD th&ocirc;ng thường. V&igrave; để tối ưu trong việc giữ gi&aacute; tiền thấp nhất c&oacute; thể trong khi vẫn đảm bảo hiệu năng,&nbsp;m&aacute;y t&iacute;nh để b&agrave;n&nbsp;GVN Homework&nbsp;i3&nbsp;sẽ kh&ocirc;ng c&oacute; sẵn ổ cứng HDD, tuy nhi&ecirc;n bạn ho&agrave;n to&agrave;n c&oacute; thể mua th&ecirc;m nếu nhu cầu của bạn cần lưu trữ nhiều.&nbsp;</p>

<p><img src="https://product.hstatic.net/200000722513/product/ssd_pny_cs900_gearvn3_14ab715fd7834e858a04950540e166b3_grande.jpg" /></p>
', CAST(3390000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10169, N'Tai nghe Asus ROG Cetra True Wireless', N'tai-nghe-asus-rog-cetra-true-wireless', N'Tai nghe Asus ROG Cetra True Wireless
', N'/DataManagement/Images/Tai%20Nghe/Asus/cetra-true-wireless/asus-rog-cetra-true-wireless-01_c97c35507af946e7b74500e89dd6565f_1024x1024.jpg', CAST(2690000 AS Decimal(18, 0)), 22, CAST(2098200 AS Decimal(18, 0)), 44, CAST(N'2024-05-17T16:08:43.643' AS DateTime), NULL, 1, 10155, N'<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<p><strong>Thương hiệu</strong></p>
			</td>
			<td>
			<p>Asus</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Model</strong></p>
			</td>
			<td>Tai nghe gaming kh&ocirc;ng d&acirc;y ROG CETRA TRUE Wireless, chống nước IPX4, c&ocirc;ng nghệ khử ồn chủ động ANC, hộp sạc wireless, l&ecirc;n đến 27-H sử dụng</td>
		</tr>
		<tr>
			<td>
			<p><strong>Bảo h&agrave;nh</strong></p>
			</td>
			<td>
			<p>24 th&aacute;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kiểu</strong></p>
			</td>
			<td>
			<p>In-ear</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Sử dụng</strong></p>
			</td>
			<td>
			<p>Chơi Game</p>

			<p>Multimedia</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kết nối</strong></p>
			</td>
			<td>
			<p>Kh&ocirc;ng d&acirc;y, Bluetooth</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Nền tảng hỗ trợ</strong></p>
			</td>
			<td>
			<p>&nbsp;</p>

			<p>PC</p>

			<p>MAC</p>

			<p>M&aacute;y chơi game Nintendo Switch</p>

			<p>iOS</p>

			<p>Android</p>

			<p>Bluetooth device</p>

			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Chất liệu tr&igrave;nh điều khiển</strong></p>
			</td>
			<td>
			<p>Nam ch&acirc;m neođim</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch thước tr&igrave;nh điều khiển</strong></p>
			</td>
			<td>
			<p>10 mm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trở kh&aacute;ng của tai nghe</strong></p>
			</td>
			<td>
			<p>32 ohm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Đ&aacute;p ứng tần số tai nghe</strong></p>
			</td>
			<td>
			<p>20Hz - 20KHz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kiểu pick-up của microphone</strong></p>
			</td>
			<td>
			<p>Đa hướng (Omnidirectional)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ nhạy của microphone</strong></p>
			</td>
			<td>
			<p>-38 dB</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Đ&aacute;p ứng tần số microphone</strong></p>
			</td>
			<td>
			<p>100Hz - 10KHz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Microphone khử tiếng ồn AI</strong></p>
			</td>
			<td>
			<p>Kh&ocirc;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khử tiếng ồn chủ động</strong></p>
			</td>
			<td>
			<p>C&oacute;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&ecirc;nh</strong></p>
			</td>
			<td>
			<p>Stereo</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Aura Sync</strong></p>
			</td>
			<td>
			<p>Kh&ocirc;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Pin</strong></p>
			</td>
			<td>
			<p>4.8 + 17 giờ (Bật ANC)<br />
			5.5 + 21.5 giờ (Tắt ANC)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>C&oacute; thể gấp</strong></p>
			</td>
			<td>
			<p>Kh&ocirc;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trọng lượng</strong></p>
			</td>
			<td>
			<p>Tai nghe (mỗi b&ecirc;n) nặng 5g<br />
			Hộp đựng nặng 42g</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Đệm tai bổ sung</strong></p>
			</td>
			<td>
			<p>Kh&ocirc;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>M&agrave;u sắc</strong></p>
			</td>
			<td>
			<p>Đen</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phụ kiện</strong></p>
			</td>
			<td>
			<p>2 đ&ocirc;i n&uacute;t tai<br />
			C&aacute;p sạc (60cm)<br />
			Hướng dẫn nhanh</p>
			</td>
		</tr>
	</tbody>
</table>

<p><img src="https://file.hstatic.net/200000722513/file/rog-cetra-true-wireless-image-01_9cbd8c4bfb944ccebe518d55247f50b1.jpg" /></p>

<h2>&nbsp;</h2>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết tai nghe Tai nghe gaming kh&ocirc;ng d&acirc;y ROG CETRA TRUE Wireless, chống nước IPX4, c&ocirc;ng nghệ khử ồn chủ động ANC, hộp sạc wireless, l&ecirc;n đến 27-H sử dụng</strong></h2>

<p>Tai nghe Asus&nbsp;ROG Cetra True Wireless l&agrave; kiểu&nbsp;tai nghe in-ear&nbsp;mới vừa ra mắt của nh&agrave; Asus. Kh&ocirc;ng giống như những d&ograve;ng tai nghe true wireless kh&aacute;c tr&ecirc;n thị trường, thiết kế bắt mắt v&agrave; chất lượng &acirc;m thanh tuyệt hảo đ&atilde; khiến Asus ROG Cetra nổi bật hơn cả. Game, vui chơi, giải tr&iacute;,...tất cả mọi nhu cầu của bạn đều được đ&aacute;p ứng.</p>

<p><img alt="GEARVN - Tai nghe Asus ROG Cetra True Wireless" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-cetra-true-wireless-1_b7392cf89e584c46adfda0b47d695151.png" /></p>

<h3><strong>Thiết kế Asus ROG Cetra đẹp mắt</strong></h3>

<p>Thiết kế tai nghe Asus ROG Cetra True Wireless v&ocirc; c&ugrave;ng hiện đại. Với t&ocirc;ng m&agrave;u đen chủ đạo, logo c&ugrave;ng với d&ograve;ng chữ ROG nổi bần bật tạo n&ecirc;n n&eacute;t đặc trưng cho&nbsp;tai nghe m&aacute;y t&iacute;nh&nbsp;nh&agrave; Asus. Hệ thống EQ c&ugrave;ng m&agrave;ng loa 10mm Asus Essence độc quyền được tinh chỉnh tỉ mỉ để mang đến cho người dừng một trải nghiệm &acirc;m thanh phong ph&uacute;, trong trẻo v&agrave; ch&acirc;n thật.</p>

<p><img alt="GEARVN - Tai nghe Asus ROG Cetra True Wireless" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-cetra-true-wireless-3_aa5c74a2c1e74edaaff4d6944349916e.png" /></p>

<h3><strong>C&ocirc;ng nghệ &acirc;m thanh hiện đại</strong></h3>

<p>Asus ROG Cetra True Wireless được trang bị c&ocirc;ng nghệ Hybrid ANC hiện đại gi&uacute;p n&acirc;ng cao trải nghiệm &acirc;m thanh, bạn sẽ ho&agrave;n to&agrave;n đắm ch&igrave;m v&agrave;o những thanh &acirc;m trầm bổng du dương. Khả năng kết nối v&agrave; sạc kh&ocirc;ng d&acirc;y hiện đại, bạn c&oacute; thể sử dụng tai nghe li&ecirc;n tục 27 giờ đống hồ, đồng h&agrave;nh c&ugrave;ng bạn mọi l&uacute;c.</p>

<p><img alt="GEARVN - Tai nghe Asus ROG Cetra True Wireless" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-cetra-true-wireless-7_e7b0b8689ee04a66b9b2f5beb6ab4b82.png" /></p>

<p>Nếu những chiếc tai nghe th&ocirc;ng thường g&acirc;y kh&oacute; chịu cho người d&ugrave;ng bởi độ trễ cao th&igrave; ROG Cetra loại bỏ ho&agrave;n to&agrave;n khả năng n&agrave;y tr&ecirc;n sản phẩm của m&igrave;nh.&nbsp;</p>

<p>Với c&aacute;c tựa game như PUBG th&igrave; một tai nghe với độ trễ thấp vẫn l&agrave; một sự lựa chọn ho&agrave;n hảo cho game thủ. Chỉ cần một c&uacute; chạm tai nghe đơn giản hay th&ocirc;ng qua phần mềm điều chỉnh trực quan Armory Crate, bạn đ&atilde; c&oacute; thể k&iacute;ch hoạt chế độ chơi game, một chất lượng &acirc;m thanh si&ecirc;u cấp với độ trễ cực kỳ thấp, gần như đồng bộ ho&agrave;n to&agrave;n với mọi h&agrave;nh động trong game. Một trong những d&ograve;ng&nbsp;tai nghe bluetooth chơi game&nbsp;kh&ocirc;ng n&ecirc;n bỏ qua đến từ ASUS.</p>

<p><img alt="GEARVN - Tai nghe Asus ROG Cetra True Wireless" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-cetra-true-wireless-5_f335d896d7e54483960842b5f8ad63e4.png" /></p>

<h3><strong>Khử ồn chủ động</strong></h3>

<p>Ngo&agrave;i ra, c&ocirc;ng nghệ Hybrid Active Noise Cancelation (ANC) cũng được t&iacute;ch hợp tr&ecirc;n si&ecirc;u phẩm tai nghe Asus ROG Cetra True Wireless. N&oacute; chủ động ph&aacute;t hiện v&agrave; lọc tiếng ồn từ cả b&ecirc;n trong lẫn b&ecirc;n ngo&agrave;i mang đến một trải nghiệm &acirc;m thanh sống động, thoải m&aacute;i đắm ch&igrave;m v&agrave;o những gi&acirc;y ph&uacute;t chiến game kịch liệt hay trong những b&agrave;i nhạc y&ecirc;u th&iacute;ch.</p>

<p><img alt="GEARVN - Tai nghe Asus ROG Cetra True Wireless" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-cetra-true-wireless-6_5563be777cbe4fd3837c368fd9e2d420.png" /></p>

<h3><strong>Bền bỉ v&agrave; chất lượng</strong></h3>

<p>Hiểu được thị hiếu người d&ugrave;ng, Asus ROG Cetra c&oacute; khả năng kh&aacute;ng bụi v&agrave; kh&aacute;ng nước được ti&ecirc;u chuẩn IPX4, gi&uacute;p tăng khả năng bảo vệ cũng như độ bền cho tai nghe. Điều n&agrave;y hẳn sẽ l&agrave; một điểm cộng lớn v&igrave; bạn kh&ocirc;ng sợ tai nghe bị hỏng khi chẳng may gặp mưa tr&ecirc;n đường hoặc đeo tai nghe khi hoạt động thể thao.</p>

<p><img alt="GEARVN - Tai nghe Asus ROG Cetra True Wireless" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-cetra-true-wireless-2_52d88149c6704f819f3db0f37e5cf75e.png" /></p>
', CAST(990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10170, N'Tai Nghe Asus ROG Delta S Core', N'tai-nghe-asus-rog-delta-s-core', N'Tai Nghe Asus ROG Delta S Core
', N'/DataManagement/Images/Tai%20Nghe/Asus/delta-s-core/h732__1__d1a0bcc8d93f4db88d15bb47e4201ff5_b0f0cbb1025d4de4aaffe138c36e1dcb_1024x1024.png', CAST(1990000 AS Decimal(18, 0)), 0, CAST(1990000 AS Decimal(18, 0)), 44, CAST(N'2024-05-17T16:10:35.903' AS DateTime), NULL, 1, 10156, N'<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<p><strong>Thương hiệu</strong></p>
			</td>
			<td>
			<p>Asus</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Model</strong></p>
			</td>
			<td>
			<p>Asus ROG Delta S Core</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>M&agrave;u sắc</strong></p>
			</td>
			<td>
			<p>Đỏ đen</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kết nối</strong></p>
			</td>
			<td>
			<p>C&oacute; d&acirc;y&nbsp;chuẩn 3.5mm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kiểu tai nghe</strong></p>
			</td>
			<td>
			<p>Over-ear</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Driver</strong></p>
			</td>
			<td>
			<p>50mm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ nhạy</strong></p>
			</td>
			<td>
			<p>-40 dB</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trọng lượng</strong></p>
			</td>
			<td>
			<p>270 g</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Đệm tai bổ sung</strong></p>
			</td>
			<td>
			<p>C&oacute;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>C&aacute;p</strong></p>
			</td>
			<td>
			<p>C&aacute;p 3.5mm: 1.5m<br />
			C&aacute;p bộ chia audio/mic 3,5mm: 1m</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trở kh&aacute;ng</strong></p>
			</td>
			<td>
			<p>32 Ohm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tần số</strong></p>
			</td>
			<td>
			<p>Tai nghe: 20 ~ 40000 Hz<br />
			Microphone:&nbsp;100 ~ 10000 Hz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phụ kiện đi k&egrave;m</strong></p>
			</td>
			<td>
			<p>Microphone th&aacute;o rời được<br />
			Hướng dẫn người d&ugrave;ng<br />
			Đệm tai ROG Hybrid<br />
			C&aacute;p bộ chia audio/mic 3,5mm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tương th&iacute;ch</strong></p>
			</td>
			<td>
			<p>PC</p>

			<p>MAC</p>

			<p>PlayStation<sup>&reg;</sup>&nbsp;4</p>

			<p>PlayStation<sup>&reg;</sup>&nbsp;5</p>

			<p>M&aacute;y chơi game Nintendo Switch</p>

			<p>Xbox one</p>

			<p>Xbox Series X</p>

			<p>Xbox Series S</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>T&iacute;nh năng</strong></p>
			</td>
			<td>
			<p>Hệ thống &acirc;m thanh v&ograve;m ảo 7.1 được hỗ trợ bởi Windows Sonic</p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết tai nghe Asus ROG Delta S Core</strong></h2>

<h3><strong>Thiết kế hiện đại</strong></h3>

<p>Tai nghe Asus&nbsp;ROG Delta S Core l&agrave; mẫu&nbsp;tai nghe gaming&nbsp;nhẹ nhất hiện nay trong series Delta của nh&agrave; Asus với trọng lượng chỉ 270gram. Được thiết kế để mang lại hiệu suất v&agrave; sự thoải m&aacute;i v&ocirc; song, Delta S Core c&oacute; chụp tai h&igrave;nh chữ D tiện lợi v&agrave; hiện đại. N&oacute; ph&ugrave; hợp ho&agrave;n hảo với h&igrave;nh dạng tai của hầu hết người d&ugrave;ng, giảm diện t&iacute;ch tiếp x&uacute;c kh&ocirc;ng mong muốn tới 20% để mang lại cảm gi&aacute;c vừa vặn v&agrave; thoải m&aacute;i hơn. m&agrave;ng loa ASUS Essence 50mm độc quyền với &acirc;m thanh v&ograve;m 7.1 ảo v&agrave; micro boom để mang đến trải nghiệm chơi game đỉnh cao đ&atilde; được chứng nhận hẳn hoi từ Discord v&agrave; TeamSpeak.</p>

<p><img alt="GEARVN - Tai Nghe Asus ROG Delta S Core" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-delta-s-core-1_ec7e204b4a0f48adb654339786aaede5.png" /></p>

<h3><strong>Chất lượng &acirc;m thanh ấn tượng</strong></h3>

<p>Asus ROG Delta S Core sử dụng tr&igrave;nh điều khiển ASUS Essence 50mm độc quyền trong một buồng k&iacute;n để mang lại &acirc;m thanh c&oacute; độ ph&acirc;n giải cao. Tr&igrave;nh điều khiển c&oacute; dải tần đ&aacute;p ứng rộng 20Hz&ndash;40Hz cho &acirc;m cao r&otilde; r&agrave;ng v&agrave; &acirc;m trầm cực kỳ mạnh mẽ, đồng thời mỗi chụp tai được thiết kế với độ nghi&ecirc;ng khoảng 12&deg; để truyền &acirc;m thanh trực tiếp v&agrave;o ống tai.</p>

<p><img alt="GEARVN - Tai Nghe Asus ROG Delta S Core" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-delta-s-core-2_e333e30700d64eee894d313971eccaaf.png" /></p>

<h3><strong>Khả năng thu &acirc;m tốt</strong></h3>

<p>Với&nbsp;microphone&nbsp;định hướng b&ugrave;ng nổ c&oacute; thể th&aacute;o rời được TeamSpeak v&agrave; Discord chứng nhận, Asus ROG Delta S Core đảm bảo bạn c&oacute; được giao tiếp bằng giọng n&oacute;i r&otilde; r&agrave;ng nhất, &acirc;m thanh tốt nhất trong tr&ograve; chơi. N&uacute;t điều chỉnh &acirc;m lượng v&agrave; micro tr&ecirc;n chụp tai gi&uacute;p bạn dễ d&agrave;ng điều chỉnh &acirc;m lượng hoặc tắt tiếng khi chơi game.</p>

<p><img alt="GEARVN - Tai Nghe Asus ROG Delta S Core" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-delta-s-core-4_b37d932e974a4c5aa0231ab179853fbb.png" /></p>

<h3><strong>Khả năng tương th&iacute;ch tốt</strong></h3>

<p>Asus ROG Delta S Core sử dụng kết nối 3,5mm, cho ph&eacute;p bạn sử dụng tai nghe với hầu hết mọi nền tảng chơi tr&ograve; chơi, bao gồm&nbsp;PC,&nbsp;Macbook,&nbsp;PlayStation&reg; 4 v&agrave; 5, Nintendo Switch&trade;, Xbox One&trade; v&agrave; Series X|S cũng như c&aacute;c thiết bị di động.</p>
', CAST(990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10171, N'Tai nghe Asus ROG Delta S Animate', N'tai-nghe-asus-rog-delta-s-animate', N'Tai nghe Asus ROG Delta S Animate
', N'/DataManagement/Images/Tai%20Nghe/Asus/rog-delta-s-animate/h732__2__46d3cb8ea64749379d6357f6d4316199_dae399921c2343de97cd91a919396e8f_1024x1024.png', CAST(5690000 AS Decimal(18, 0)), 4, CAST(5462400 AS Decimal(18, 0)), 44, CAST(N'2024-05-17T16:13:14.507' AS DateTime), NULL, 1, 10157, N'<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<p><strong>Thương hiệu</strong></p>
			</td>
			<td>
			<p>Asus</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Model</strong></p>
			</td>
			<td>
			<p>ROG Delta S Animate</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>M&agrave;u sắc</strong></p>
			</td>
			<td>
			<p>Đen</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kết nối</strong></p>
			</td>
			<td>
			<p>C&oacute; d&acirc;y</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Đầu nối</strong></p>
			</td>
			<td>
			<p>USB 2.0</p>

			<p>Type-C</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Chất liệu tr&igrave;nh điều khiển</strong></p>
			</td>
			<td>
			<p>Nam ch&acirc;m neođim</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch thước tr&igrave;nh điều khiển</strong></p>
			</td>
			<td>
			<p>50mm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kiểu tai nghe</strong></p>
			</td>
			<td>
			<p>Over-ear</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trọng lượng</strong></p>
			</td>
			<td>
			<p>310 g</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trở kh&aacute;ng</strong></p>
			</td>
			<td>
			<p>32 Ohm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tần số</strong></p>
			</td>
			<td>
			<p>20 ~ 40000 Hz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khả năng c&aacute;ch &acirc;m</strong></p>
			</td>
			<td>
			<p>C&oacute;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ nhạy của microphone</strong></p>
			</td>
			<td>
			<p>-40 dB</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Đ&aacute;p ứng tần số microphone</strong></p>
			</td>
			<td>
			<p>100 ~ 10000 Hz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Microphone khử tiếng ồn AI</strong></p>
			</td>
			<td>
			<p>C&oacute;</p>
			</td>
		</tr>
		<tr>
			<td><strong>Kiểu pick-up của microphone</strong></td>
			<td>Định hướng</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tương th&iacute;ch</strong></p>
			</td>
			<td>
			<p>PC</p>

			<p>MAC</p>

			<p>PlayStation&nbsp;4</p>

			<p>PlayStation&nbsp;5</p>

			<p>M&aacute;y chơi game Nintendo Switch</p>

			<p>Hỗ trợ PC, PS4, PS5 th&ocirc;ng qua sử dụng bộ chuyển đổi adapter USB-C sang USB-A đi k&egrave;m&nbsp;</p>

			<p>**Support iPad Pro by USB-C connection (Audio Only)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Hi-Fi DAC</strong></p>
			</td>
			<td>
			<p>ESS 9281 Pro</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Hi-Fi Amp</strong></p>
			</td>
			<td>
			<p>ESS 9281 Pro</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khử tiếng ồn chủ động</strong></p>
			</td>
			<td>
			<p>Kh&ocirc;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&ecirc;nh</strong></p>
			</td>
			<td>
			<p>Virtual 7.1</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Hệ thống đ&egrave;n</strong></p>
			</td>
			<td>
			<p>Đ&egrave;n LED một m&agrave;u</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Aura Sync</strong></p>
			</td>
			<td>
			<p>Kh&ocirc;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>C&oacute; thể gấp</strong></p>
			</td>
			<td>
			<p>C&oacute;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Đệm tai bổ sung</strong></p>
			</td>
			<td>
			<p>C&oacute;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>C&aacute;p</strong></p>
			</td>
			<td>
			<p>C&aacute;p USB-C: 1.5m<br />
			C&aacute;p USB-A: 1m</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p><strong>Phụ kiện</strong></p>
			</td>
			<td>
			<p>Microphone th&aacute;o rời được<br />
			Hướng dẫn người d&ugrave;ng<br />
			Đệm tai ROG Hybrid<br />
			Adapter chuyển đổi USB USB-C sang USB-A</p>
			</td>
		</tr>
	</tbody>
</table>

<p><img src="https://file.hstatic.net/200000722513/file/rog_delta_s_animate._pt01_14350f743d1d4df681d9ca1b7f5cfc11.jpg" /></p>

<h2>&nbsp;</h2>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết tai nghe Asus ROG Delta S Animate</strong></h2>

<p>Tai nghe Asus&nbsp;ROG Delta S Animate l&agrave; một trong những si&ecirc;u phẩm&nbsp;tai nghe m&aacute;y t&iacute;nh&nbsp;đ&igrave;nh đ&aacute;m của &ocirc;ng ho&agrave;ng Asus. Thiết kế tai nghe chụp tai đẹp mắt, chất lượng &acirc;m thanh sống động c&ugrave;ng hệ thống đ&egrave;n LED hiện đại đ&atilde; tạo n&ecirc;n một Asus ROG Delta S Animate v&ocirc; c&ugrave;ng ấn tượng v&agrave; l&agrave; một&nbsp;gaming gear&nbsp;đ&aacute;ng sở hữu.</p>

<p><img alt="GEARVN - Tai nghe Asus ROG Delta S Animate" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-delta-s-animate-1_918d0814bd134d1bb302856421c6ddd9.png" /></p>

<h3><strong>Hệ thống đ&egrave;n LED tr&ecirc;n Asus ROG Delta S Animate</strong></h3>

<p>Nếu bạn cảm thấy hệ thống đ&egrave;n LED RGB qu&aacute; b&igrave;nh thường v&agrave; c&oacute; phần nh&agrave;m ch&aacute;n th&igrave; Asus đ&atilde; thổi một l&agrave;n gi&oacute; mới cho sản phẩm của m&igrave;nh. Vẫn l&agrave; hệ thống đ&egrave;n LED t&iacute;ch hợp nhưng giờ đ&acirc;y Asus ROG Delta S Animate đ&atilde; kết hợp 247 đ&egrave;n LED tạo n&ecirc;n một ma trận đ&egrave;n m&agrave; người d&ugrave;ng c&oacute; thể tự do điều chỉnh. Chữ viết, ảnh tĩnh hay ảnh động,...bạn c&oacute; thể đặt bất kỳ nội dung n&agrave;o l&ecirc;n ear cup. Th&ecirc;m v&agrave;o đ&oacute;, phần mềm trực quan Armory Crate hỗ trợ đi k&egrave;m l&agrave;m cho việc điều chỉnh trở n&ecirc;n dễ d&agrave;ng v&agrave; tiện lợi hơn.</p>

<p><img alt="GEARVN - Tai nghe Asus ROG Delta S Animate" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-delta-s-animate-2_397fcbf328f04962a5dc64f2eb0ac7bc.png" /></p>

<h3><strong>Chất lượng &acirc;m thanh tuyệt vời</strong></h3>

<p>Asus ROG Delta S Animate được trang bị bộ chuyển đổi ESS 9281 Quad DAC cung cấp khả năng xử l&yacute; &acirc;m thanh kh&ocirc;ng mất dữ liệu. Mỗi dải đều c&oacute; DAC - thấp, trung, cao, cho &acirc;m thanh r&otilde; r&agrave;ng hơn v&agrave; tỷ lệ t&iacute;n hiệu tr&ecirc;n nhiễu (SNR) 130 dB v&ocirc; song. Với ROG Delta S Animate, bạn c&oacute; thể nghe r&otilde; từng chi tiết v&agrave; tận hưởng &acirc;m thanh r&otilde; r&agrave;ng, sắc n&eacute;t để c&oacute; trải nghiệm &acirc;m thanh sống động như thật.</p>

<p><img alt="GEARVN - Tai nghe Asus ROG Delta S Animate" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-delta-s-animate-3_8f268a79177449398feaae28ff446a28.png" /></p>

<h3><strong>&Acirc;m thanh trong trẻo v&agrave; mạnh mẽ</strong></h3>

<p>C&aacute;c tr&igrave;nh điều khiển ASUS Essence độc ​​quyền được lắp đặt tỉ mỉ nhằm mang đến &acirc;m thanh r&otilde; r&agrave;ng v&agrave; phong ph&uacute; hơn. Với đ&aacute;p tuyến tần số rộng 20&ndash;40 kHz, c&aacute;c tr&igrave;nh điều khiển độ ph&acirc;n giải cao n&agrave;y mang đến &acirc;m trầm cực kỳ mạnh mẽ, &acirc;m thanh chơi game được tối ưu h&oacute;a để bạn c&oacute; thể nghe r&otilde; từng chi tiết v&agrave; trải nghiệm &acirc;m thanh tốt hơn.</p>

<p><img alt="GEARVN - Tai nghe Asus ROG Delta S Animate" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-rog-delta-s-animate-5_fb7da76db8fc4b9288b953bdf4676af9.png" /></p>
', CAST(3990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10172, N'Tai nghe không dây Asus ROG STRIX GO 2.4', N'tai-nghe-khong-day-asus-rog-strix-go-2-4', N'Tai nghe không dây Asus ROG STRIX GO 2.4
', N'/DataManagement/Images/Tai%20Nghe/Asus/rog-strix-go-2-4/rog1.png', CAST(2190000 AS Decimal(18, 0)), 3, CAST(2124300 AS Decimal(18, 0)), 44, CAST(N'2024-05-17T16:15:34.000' AS DateTime), NULL, 1, 10158, N'<h2>Th&ocirc;ng tin sản phẩm</h2>

<p>&nbsp;</p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<p><strong>Thương hiệu</strong></p>
			</td>
			<td>
			<p>ASUS</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Đầu cắm</strong></p>
			</td>
			<td>
			<p>USB&nbsp;Type C (kh&ocirc;ng d&acirc;y 2.4GHz)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Hỗ trợ</strong></p>
			</td>
			<td>
			<p>Hỗ trợ tất cả c&aacute;c thiết bị c&oacute; USB Type C, bao gồm cả smartphone v&agrave; Nintendo switch</p>

			<p>Kết nối với c&aacute;c thiết bị kh&aacute;c qua d&acirc;y 3.5mm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Đường k&iacute;nh loa</strong></p>
			</td>
			<td>
			<p>40 mm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khử tiếng ồn</strong></p>
			</td>
			<td>
			<p>AI</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Thời lượng pin</strong></p>
			</td>
			<td>
			<p>Tối đa 25 giờ li&ecirc;n tục</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>D&acirc;y c&aacute;p</strong></p>
			</td>
			<td>
			<p>C&aacute;p sạc USB-C: 1m;<br />
			C&aacute;p &acirc;m thanh 3,5 mm: 1,2 m</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phụ kiện</strong></p>
			</td>
			<td>
			<p>Hộp đựng<br />
			C&aacute;p sạc<br />
			Micr&ocirc; c&oacute; thể th&aacute;o rời<br />
			Hướng dẫn sử dụng<br />
			C&aacute;p 3,5 mm<br />
			Bộ chuyển đổi USB-C sang USB 2.0 (Loại A)</p>
			</td>
		</tr>
	</tbody>
	<tbody>
	</tbody>
</table>

<p>&nbsp;</p>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;tai nghe kh&ocirc;ng d&acirc;y Asus ROG STRIX GO 2.4</strong></h2>

<p>Một chiếc&nbsp;tai nghe kh&ocirc;ng d&acirc;y&nbsp;gọn g&agrave;ng chỉ 290g,&nbsp;<strong>Asus ROG STRIX GO 2.4</strong>&nbsp;mang đến cho người d&ugrave;ng cảm gi&aacute;c ho&agrave; m&igrave;nh v&agrave;o trong những trận chiến căng thẳng nhưng vẫn lu&ocirc;n thoải m&aacute;i với sự nhẹ nh&agrave;ng m&agrave; tai nghe mang lại.&nbsp;</p>

<p><img alt="Tai nghe không dây Asus ROG STRIX GO 2.4" src="https://file.hstatic.net/200000722513/file/gearvn-tai-nghe-khong-day-asus-rog-strix-go-2-4-1_c6eb37112d7c44caad5d722e0a9cb9c8_grande.png" /></p>

<h3><strong>Kết nối đa thiết bị với cổng USB</strong></h3>

<p>Chỉ cần l&agrave; c&aacute;c thiết bị c&oacute; USB Type C th&igrave; đều c&oacute; thể trải nghiệm Asus ROG STRIX GO 2.4 bao gồm cả c&aacute;c smartphone v&agrave; Nintendo switch. B&ecirc;n cạnh đ&oacute;, tai nghe hỗ trợ th&ecirc;m d&acirc;y 3.5mm để bạn c&oacute; thể li&ecirc;n kết với nhiều thiết bị kh&aacute;c v&iacute; dụ như Xbox. Chỉ cần đem theo b&ecirc;n người chiếc tai nghe Asus ROG STRIX GO 2.4 bạn c&oacute; thể đắm ch&igrave;m trong thế giới ri&ecirc;ng mọi l&uacute;c mọi nơi.&nbsp;</p>

<p><img alt="Tai nghe không dây Asus ROG STRIX GO 2.4" src="https://file.hstatic.net/200000722513/file/gearvn-tai-nghe-khong-day-asus-rog-strix-go-2-4-9_10ceea92503040e19232fc467afe611f_grande.png" /></p>

<p><strong>Trải nghiệm r&otilde; r&agrave;ng từng &acirc;m thanh sống động</strong></p>

<p>Tai nghe được thiết kế với đường k&iacute;nh loa 40mm bao trọn đ&ocirc;i tai của bạn c&ugrave;ng với buồng k&iacute;n kh&iacute; gi&uacute;p bạn cảm nhận được từng chuyển động l&ecirc;n xuống của &acirc;m thanh một c&aacute;ch r&otilde; r&agrave;ng v&agrave; ch&acirc;n thực nhất. Tai nghe kh&ocirc;ng d&acirc;y Asus ROG STRIX GO 2.4 lọc được ho&agrave;n to&agrave;n &acirc;m thanh b&ecirc;n ngo&agrave;i khi được trang bị hệ thống c&aacute;ch &acirc;m AI Noise Cancelling kết hợp c&ugrave;ng&nbsp;b&agrave;n ph&iacute;m gaming&nbsp;v&agrave;&nbsp;chuột gaming&nbsp;việc nhận biết được kẻ địch chỉ c&ograve;n trong tầm tay.&nbsp;</p>

<p><img alt="Tai nghe không dây Asus ROG STRIX GO 2.4" src="https://file.hstatic.net/200000722513/file/gearvn-tai-nghe-khong-day-asus-rog-strix-go-2-4-4_1e17e7f9a23246518cbfb2be9fe31855_grande.png" /></p>

<h3><strong>Tr&ograve; chuyện thoải m&aacute;i&nbsp;kh&ocirc;ng cần Mic boom</strong></h3>

<p>Với cơ chế c&oacute; thể th&aacute;o lắp linh hoạt,&nbsp;microphone&nbsp;sẽ được tuỳ chỉnh theo t&iacute;nh c&aacute;ch ri&ecirc;ng của bạn để thuận tiện nhất cho việc sử dụng của m&igrave;nh. Tuy c&oacute; thể th&aacute;o rời nhưng mic lại được trang bị t&iacute;ch hợp ẩn trong tai nghe để bạn c&oacute; thể li&ecirc;n lạc dễ d&agrave;ng m&agrave; kh&ocirc;ng cần gắn th&ecirc;m mic boom cho m&igrave;nh.&nbsp;</p>

<p>Mic cũng được trang bị th&ecirc;m khả năng lọc &acirc;m thanh to&agrave;n diện gi&uacute;p cho việc trao đổi c&ugrave;ng đồng đội được diễn ra một c&aacute;ch trơn tru m&agrave; kh&ocirc;ng sợ ảnh hưởng tạp &acirc;m b&ecirc;n ngo&agrave;i.&nbsp;</p>

<p><img alt="Tai nghe không dây Asus ROG STRIX GO 2.4" src="https://file.hstatic.net/200000722513/file/gearvn-tai-nghe-khong-day-asus-rog-strix-go-2-4-3_ebdd0f6a60534f4baa9afbc3cff0e15f_grande.png" /></p>

<h3><strong>Pin tr&acirc;u cho cả ng&agrave;y d&agrave;i&nbsp;</strong></h3>

<p>Tai nghe kh&ocirc;ng d&acirc;y Asus ROG STRIX GO 2.4 c&oacute; cho m&igrave;nh dung lượng pin v&ocirc; c&ugrave;ng khủng cho bạn thoải m&aacute;i sử dụng li&ecirc;n tục l&ecirc;n tới 25 tiếng đồng hồ. B&ecirc;n cạnh đ&oacute;, t&iacute;nh năng sạc nhanh của tai nghe cũng l&agrave; một điểm s&aacute;ng cho anh bạn n&agrave;y.&nbsp; Asus ROG STRIX GO 2.4 c&oacute; thể nạp lại 3 tiếng sử dụng tai nghe chỉ trong v&ograve;ng 15p, tiết kiệm rất nhiều thời gian của bạn cho việc sử dụng.&nbsp;</p>
', CAST(1190000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10173, N'Tai nghe Corsair HS65 Surround Carbon', N'tai-nghe-corsair-hs65-surround-carbon', N'Tai nghe Corsair HS65 Surround Carbon
', N'/DataManagement/Images/Tai%20Nghe/Corsair/hs65-surround-carbon/i-nghe-corsair-hs65-surround-carbon-2_bf1fc8db88ce4ab68d4fcae598b5e1d5_53cec837048f43b1b4188d25ecc92635_1024x1024.jpg', CAST(1890000 AS Decimal(18, 0)), 3, CAST(1833300 AS Decimal(18, 0)), 45, CAST(N'2024-05-17T16:19:46.163' AS DateTime), NULL, 1, 10159, N'<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu:</strong></td>
			<td>Corsair</td>
		</tr>
		<tr>
			<td><strong>Bảo h&agrave;nh:</strong></td>
			<td>24 Th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Model:</strong></td>
			<td>Tai nghe Corsair HS65 Surround Carbon</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc:</strong></td>
			<td>Đen</td>
		</tr>
		<tr>
			<td><strong>Kiểu tai nghe</strong></td>
			<td>Over-ear</td>
		</tr>
		<tr>
			<td><strong>Kiểu kết nối:</strong></td>
			<td>C&oacute; d&acirc;y</td>
		</tr>
		<tr>
			<td><strong>Microphone:</strong></td>
			<td>C&oacute; (kh&ocirc;ng thể th&aacute;o rời)</td>
		</tr>
		<tr>
			<td><strong>&Acirc;m thanh:</strong></td>
			<td>Dolby Audio</td>
		</tr>
		<tr>
			<td><strong>&Acirc;m thanh v&ograve;m:</strong></td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng:</strong></td>
			<td>282g</td>
		</tr>
		<tr>
			<td><strong>Tần số :</strong></td>
			<td>20Hz - 20 kHz</td>
		</tr>
		<tr>
			<td><strong>Trở kh&aacute;ng:</strong></td>
			<td>32k Ohms @ 1 kHz</td>
		</tr>
		<tr>
			<td><strong>Độ nhạy:</strong></td>
			<td>114dB (+/-3dB)</td>
		</tr>
		<tr>
			<td><strong>Drivers:</strong></td>
			<td>50mm</td>
		</tr>
		<tr>
			<td><strong>Phần mềm:</strong></td>
			<td>Audio CUE</td>
		</tr>
		<tr>
			<td><strong>Chiều d&agrave;i c&aacute;p:</strong></td>
			<td>1.8m</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch:</strong></td>
			<td>PC, Mac, PlayStation 4/5, Xbox One / Series X<br />
			S, Nintendo Switch, Mobile devices</td>
		</tr>
		<tr>
			<td><strong>Khả năng c&aacute;ch &acirc;m:</strong></td>
			<td>C&oacute;</td>
		</tr>
	</tbody>
</table>
', CAST(1050000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10174, N'Tai nghe Corsair HS70 Pro Wireless Carbon (CA-9011211-AP)', N'tai-nghe-corsair-hs70-pro-wireless-carbon-ca-9011211-ap-', N'Tai nghe Corsair HS70 Pro Wireless Carbon (CA-9011211-AP)
', N'/DataManagement/Images/Tai%20Nghe/Corsair/hs70-pro-wireless-carbon/hp-corsair-hs70-pro-carbon-wireless_2ef327f7a5154ffd8a01dce1367a7964_a508127c09544cd984dabcc87fcbaf11_1024x1024.gif', CAST(1790000 AS Decimal(18, 0)), 3, CAST(1736300 AS Decimal(18, 0)), 45, CAST(N'2024-05-17T16:21:55.653' AS DateTime), NULL, 1, 10160, N'<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu:</strong></td>
			<td>Corsair</td>
		</tr>
		<tr>
			<td><strong>Bảo h&agrave;nh:</strong></td>
			<td>24 th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>Model:</strong></td>
			<td>Corsair HS70 Pro Wireless Carbon</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc:</strong></td>
			<td>Đen&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Kiểu tai nghe:</strong></td>
			<td>Over-ear</td>
		</tr>
		<tr>
			<td><strong>Kiểu kết nối:</strong></td>
			<td>Kh&ocirc;ng d&acirc;y (USB Wireless Receiver)</td>
		</tr>
		<tr>
			<td><strong>Thời lượng Pin:</strong></td>
			<td>16 giờ</td>
		</tr>
		<tr>
			<td><strong>Phạm vi tai nghe kh&ocirc;ng d&acirc;y:</strong></td>
			<td>40ft ( 12.2m)</td>
		</tr>
		<tr>
			<td><strong>Loại d&acirc;y:</strong></td>
			<td>USB charging cable 1.8m</td>
		</tr>
		<tr>
			<td><strong>Microphone:</strong></td>
			<td>C&oacute; (khử tiếng ồn một chiều)</td>
		</tr>
		<tr>
			<td><strong>Chất liệu khung:</strong></td>
			<td>Khung kim loại, đệm tai xốp Foam</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch:</strong></td>
			<td>PC, PlayStation 4 (&acirc;m thanh v&ograve;m 7.1 chỉ khả dụng tr&ecirc;n PC)</td>
		</tr>
		<tr>
			<td><strong>Trở kh&aacute;ng:</strong></td>
			<td>Tai nghe: 32000 Ohms<br />
			Micro:&nbsp;2200 Ohms</td>
		</tr>
		<tr>
			<td><strong>Tần số:</strong></td>
			<td>Tai nghe:&nbsp;20Hz - 20000Hz<br />
			Micro:&nbsp;100Hz - 10000Hz</td>
		</tr>
		<tr>
			<td><strong>Độ nhạy:</strong></td>
			<td>Tai nghe:&nbsp;111dB (+/- 3dB)<br />
			Micro:&nbsp;-40dB (+/- 3dB)</td>
		</tr>
		<tr>
			<td><strong>Chất lượng &acirc;m thanh:</strong></td>
			<td>7.1 Surround</td>
		</tr>
		<tr>
			<td><strong>&Acirc;m thanh v&ograve;m:</strong></td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td><strong>Khả năng c&aacute;ch &acirc;m:</strong></td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td><strong>Tr&igrave;nh điều khiển tai nghe:</strong></td>
			<td>50mm</td>
		</tr>
		<tr>
			<td><strong>Phần mềm:</strong></td>
			<td>Audio iCUE</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước (mm):</strong></td>
			<td>160mm x100mm x 205mm</td>
		</tr>
	</tbody>
</table>

<h3><strong>Đ&aacute;nh gi&aacute; chi tiết tai nghe Corsair HS70 Pro Wireless Carbon</strong></h3>

<h3><strong>Chất liệu cao cấp đem lại cảm gi&aacute;c sang trọng thoải m&aacute;i.</strong></h3>

<p>&nbsp;</p>

<p>Corsair HS70 Pro Wireless Carbon l&agrave; d&ograve;ng&nbsp;tai nghe m&aacute;y t&iacute;nh&nbsp;c&oacute;&nbsp;phần đệm tai mềm mại, d&agrave;y dặn, độ s&acirc;u lớn, tr&ugrave;m k&iacute;n tai hạn chế &acirc;m thanh từ b&ecirc;n ngo&agrave;i lọt v&agrave;o, c&ugrave;ng với&nbsp;độ bền cao, độ đ&agrave;n hồi lớn &iacute;t bị biến dạng v&agrave; kh&oacute; r&aacute;ch.&nbsp;</p>

<p>Phần khung giữ hai củ tai l&agrave;m bằng th&eacute;p chắc chắn hạn chế va đập, phần khung ph&iacute;a tr&ecirc;n được l&agrave;m bằng chất liệu da m&agrave;u đen c&oacute; chỉ đan ch&eacute;o &ocirc; vu&ocirc;ng đem lại cảm gi&aacute;c sang trọng v&agrave; rất thoải m&aacute;i khi sử dụng.</p>

<h3><strong>Chất lượng &acirc;m thanh tuyệt vời với c&ocirc;ng nghệ&nbsp;&acirc;m thanh v&ograve;m 7.1</strong></h3>

<p>Tr&igrave;nh điều khiển &acirc;m thanh neodymium 50mm chất lượng cao, &acirc;m bass chắc, sử dụng cho nghe nhạc hoặc chơi game đều rất ổn.&nbsp;Đắm ch&igrave;m trong &acirc;m thanh v&ograve;m 7.1 c&ugrave;ng&nbsp;tai nghe Bluetooth&nbsp;mang lại trải nghiệm &acirc;m thanh đa k&ecirc;nh gi&uacute;p bạn tận hưởng trọn vẹn&nbsp;tr&ograve; chơi của m&igrave;nh.</p>

<p>&nbsp;</p>

<h3><strong>Microphone t&ugrave;y chỉnh th&aacute;o rời c&oacute; chức năng khử tạp &acirc;m</strong></h3>

<p>D&ograve;ng&nbsp;tai nghe chụp tai&nbsp;được t&iacute;ch hợp Microphone t&ugrave;y chỉnh th&aacute;o rời c&oacute; chức năng khử tạp &acirc;m đem lai &acirc;m thanh chất lượng cao hơn, gi&uacute;p bạn dễ d&agrave;ng giao tiếp&nbsp;với đồng đội ngay cả trong điều kiện tạp &acirc;m lớn.</p>

<p>&nbsp;</p>

<h3><strong>Phạm vi sử dụng lớn, thời lượng pin khủng</strong></h3>

<p>Phạm vi kết&nbsp;nối l&ecirc;n đến hơn 12m cho bạn tự do di chuyển trong ph&ograve;ng m&agrave; vẫn kh&ocirc;ng bị ngắt qu&atilde;ng, thời lượng pin khủng l&ecirc;n đến 16h sử dụng li&ecirc;n tục, tương th&iacute;ch với PC v&agrave; PS4 (&acirc;m thanh v&ograve;m 7.1 chỉ khả dụng tr&ecirc;n PC).</p>
', CAST(990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10175, N'Tai nghe Corsair HS80 White RGB Wireless', N'tai-nghe-corsair-hs80-white-rgb-wireless', N'Tai nghe Corsair HS80 White RGB Wireless
', N'/DataManagement/Images/Tai%20Nghe/Corsair/hs80-white-rgb-wireless/0185_84a1a6f1918e7cdcc449486a9c9cf6a3_1001d0e919e049c6a0766bdac4c4da26_a6c62ca4e7f7471fa11a7b6221f110ef_1024x1024.jpg', CAST(3450000 AS Decimal(18, 0)), 3, CAST(3346500 AS Decimal(18, 0)), 45, CAST(N'2024-05-17T16:24:26.297' AS DateTime), NULL, 1, 10161, N'<h2><strong>TH&Ocirc;NG SỐ KĨ THUẬT :&nbsp;</strong></h2>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Thương hiệu</strong></td>
			<td>Corsair</td>
		</tr>
		<tr>
			<td><strong>Tần số</strong></td>
			<td>Tai nghe: 20Hz - 40 kHz<br />
			Micro:&nbsp;100Hz - 10kHz</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>Thời lượng l&ecirc;n đến 20 tiếng</td>
		</tr>
		<tr>
			<td><strong>Độ nhạy</strong></td>
			<td>Tai nghe: 116dB (+/-3dB)<br />
			Micro: -40dB (+/-3dB)</td>
		</tr>
		<tr>
			<td><strong>Kết nối</strong></td>
			<td>Kh&ocirc;ng d&acirc;y&nbsp;Wireless</td>
		</tr>
		<tr>
			<td><strong>Trở kh&aacute;ng</strong></td>
			<td>Tai nghe: 32k Ohms @ 1 kHz<br />
			Micro: 2.2k Ohms</td>
		</tr>
		<tr>
			<td><strong>Led</strong></td>
			<td>RGB</td>
		</tr>
		<tr>
			<td><strong>Drivers</strong></td>
			<td>50mm</td>
		</tr>
		<tr>
			<td><strong>C&ocirc;ng nghệ &acirc;m thanh</strong></td>
			<td>Dolby Atmos</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch</strong></td>
			<td>PC, Mac, PlayStation 4/5</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;tai nghe Corsair HS80 White RGB Wireless</strong></h2>

<p>Nổi danh trong l&agrave;ng gaming gear với những sản phẩm v&ocirc; c&ugrave;ng chất lượng, Corsair lu&ocirc;n ghi điểm trong mắt người d&ugrave;ng của m&igrave;nh nhờ độ trau chuốt với thiết kế đẹp mắt. Giữ vững phong độ đ&oacute;, Corsair tiếp tục ra mắt model tai nghe kh&ocirc;ng d&acirc;y d&agrave;nh game thủ,&nbsp;<strong>HS80 White RGB Wireless</strong>. Vậy th&igrave; chiếc tai nghe Corsair sẽ mang lại g&igrave; cho ch&uacute;ng ta? C&ugrave;ng GEARVN xem nh&eacute; !</p>

<h3><strong>N&acirc;ng cấp chất lượng &acirc;m thanh&nbsp;</strong></h3>

<p>Hướng tới trải nghiệm &acirc;m thanh tuyệt đỉnh, Corsair HS80 White RGB Wireless đ&atilde; được trang bị cho m&igrave;nh cặp driver neodymium 50mm. Với khả năng bắt trọn mọi &acirc;m thanh ở tần số từ 20Hz đến 40kHz, Corsair HS80 White RGB Wireless cho bạn cảm nhận đầy đủ về &acirc;m thanh: từ những tiếng bước ch&acirc;n nhỏ nhẹ đến những vụ nổ ho&agrave;nh tr&aacute;ng. Tất cả sẽ được chiếc&nbsp;tai nghe Corsair&nbsp;mang đến một c&aacute;ch đầy đủ v&agrave; ch&acirc;n thực nhất.</p>

<p><img alt="GEARVN - Tai nghe Corsair HS80 White RGB Wireless" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-corsair-hs80-white-rgb-wireless-8_51ed100c583d4d6e9b319e57352b4f60_grande.png" /></p>

<h3><strong>Thiết kế đem lại sự thoải m&aacute;i tuyệt đối</strong></h3>

<p>Sở hữu cho m&igrave;nh m&agrave;u trắng tinh kh&ocirc;i, Corsair HS80 White RGB Wireless mang lại vẻ ngo&agrave;i thanh tho&aacute;t ph&ugrave; hợp cho mọi ph&acirc;n kh&uacute;c người d&ugrave;ng&nbsp;tai nghe kh&ocirc;ng d&acirc;y. Kết hợp với hiệu ứng LED RGB ở phần logo v&agrave; micro của tai nghe, ngoại h&igrave;nh của Corsair HS80 White RGB Wireless đ&atilde; n&acirc;ng cấp l&ecirc;n vẻ ngo&agrave;i bắt mắt hơn. Hai miếng đệm tai được bọc ngo&agrave;i bằng lớp vải tho&aacute;ng kh&iacute; gi&uacute;p bạn c&oacute; thể sử dụng trong thời gian d&agrave;i m&agrave; kh&ocirc;ng lo sợ về t&igrave;nh trạng chảy mồ h&ocirc;i v&agrave; độ bền trong qu&aacute; tr&igrave;nh sử dụng.</p>

<p><img alt="GEARVN - Tai nghe Corsair HS80 White RGB Wireless" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-corsair-hs80-white-rgb-wireless-9_ab3454673c5c459ebd65299df2ec063b_grande.jpg" /></p>

<p>Thiết kế băng đ&ocirc; của Corsair HS80 White RGB Wireless với khả năng t&ugrave;y chỉnh theo k&iacute;ch thước đầu của mỗi người, đem lại cảm gi&aacute;c thoải m&aacute;i nhất v&agrave; giảm thiểu t&igrave;nh trạng đau đầu khi sử dụng trong thời gian d&agrave;i.</p>

<h3><strong>Trải nghiệm &acirc;m thanh chuy&ecirc;n nghiệp với Dolby Atmos</strong></h3>

<p>C&ocirc;ng nghệ &acirc;m thanh chuy&ecirc;n nghiệp Dolby Atmos đem đến khả năng thể hiện r&otilde; &acirc;m thanh từ 3 chiều. Từ đ&oacute;, Corsair HS80 White RGB Wireless sẽ cho bạn lợi thế trong những trận chiến khi sở hữu cho m&igrave;nh khả năng cảm quan về vị tr&iacute; đối thủ tối hơn.</p>

<p><img alt="GEARVN - Tai nghe Corsair HS80 White RGB Wireless" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-corsair-hs80-white-rgb-wireless-10_b94e0532b76e4c82b82ca1fabba04245_1024x1024.jpg" /></p>

<h3><strong>Kết nối kh&ocirc;ng d&acirc;y mạnh mẽ</strong></h3>

<p>Corsair mang tới cho sản phẩm của m&igrave;nh c&ocirc;ng nghệ kết nối kh&ocirc;ng d&acirc;y SLIPSTREAM WIRELESS. Trang bị tr&ecirc;n Corsair HS80 White RGB Wireless, đem lại độ trễ cực k&igrave; thấp v&agrave; chất lượng cao về &acirc;m thanh để bạn c&oacute; thể tận hưởng trong mọi cuộc vui từ gaming đến xem phim, nghe nhạc.</p>

<p><img alt="GEARVN - Tai nghe Corsair HS80 White RGB Wireless" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-corsair-hs80-white-rgb-wireless-11_09416d46695b44078a0a0536032f089b_1024x1024.jpg" /></p>

<h3><strong>Microphone đa hướng, đa dụng</strong></h3>

<p>Microphone&nbsp;của Corsair HS80 White RGB Wireless cho bạn khả năng thu &acirc;m r&otilde; r&agrave;ng, gi&uacute;p n&acirc;ng cao chất lượng của những cuộc hội thoại. Chiếc microphone trang bị th&ecirc;m chức năng bật/tắt bằng c&aacute;ch k&eacute;o l&ecirc;n/xuống v&agrave; b&aacute;o hiệu cho người d&ugrave;ng bằng đ&egrave;n LED t&iacute;ch hợp.</p>

<p><img alt="GEARVN - Tai nghe Corsair HS80 White RGB Wireless" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-corsair-hs80-white-rgb-wireless-12_3a2f281cd7fc479da11044491054fb53_1024x1024.png" /></p>

<h3><strong>Hỗ trợ đa năng</strong></h3>

<p>Tai nghe kh&ocirc;ng d&acirc;y Corsair HS80 White RGB Wireless hỗ trợ những chức năng nhằm tối ưu trải nghiệm sử dụng tốt nhất cho người d&ugrave;ng, bao gồm:</p>

<ul>
	<li>
	<p>Điều chỉnh &acirc;m lượng dễ d&agrave;ng m&agrave; kh&ocirc;ng cần phải tho&aacute;t ứng dụng.</p>
	</li>
	<li>
	<p>SLIPSTREAM WIRELESS hỗ trợ cho tai nghe kết nối với 3 thiết bị c&ugrave;ng l&uacute;c.</p>
	</li>
	<li>
	<p>T&ugrave;y chỉnh hiệu ứng&nbsp;LED RGB&nbsp;của tai nghe dễ d&agrave;ng với phần mềm iCUE.</p>
	</li>
	<li>
	<p>Tương th&iacute;ch với những&nbsp;m&aacute;y chơi game console&nbsp;hiện nay như&nbsp;PS5&nbsp;v&agrave;&nbsp;PS4&nbsp;th&ocirc;ng qua kết nối kh&ocirc;ng d&acirc;y với USB receiver.</p>
	</li>
</ul>

<p>&nbsp;</p>

<p><img alt="GEARVN - Tai nghe Corsair HS80 White RGB Wireless" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-corsair-hs80-white-rgb-wireless-13_bf0a8cc8f0a24525a0054c59f326fd32_1024x1024.jpg" /></p>
', CAST(2250000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10176, N'Tai nghe Corsair Virtuoso RGB Wireless Pearl', N'tai-nghe-corsair-virtuoso-rgb-wireless-pearl', N'Tai nghe Corsair Virtuoso RGB Wireless Pearl
', N'/DataManagement/Images/Tai%20Nghe/Corsair/virtuoso-rgb-wireless-pearl/-rgb-config-gallery-virtuoso-pearl-01_0f6ede8325c14c34a37e1a23f8ccef67_353e158e839445f38e8fefc42097f71b_1024x1024.png', CAST(3500000 AS Decimal(18, 0)), 3, CAST(3395000 AS Decimal(18, 0)), 45, CAST(N'2024-05-17T16:26:47.160' AS DateTime), NULL, 1, 10162, N'<p><strong>TH&Ocirc;NG SỐ KĨ THUẬT :&nbsp;</strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>Thương hiệu</td>
			<td>Corsair</td>
		</tr>
		<tr>
			<td>T&ecirc;n sản phẩm&nbsp;</td>
			<td>Tai nghe Corsair Virtuoso RGB Wireless Pearl</td>
		</tr>
		<tr>
			<td>Model</td>
			<td>Virtuoso Wireless</td>
		</tr>
		<tr>
			<td colspan="2">TH&Ocirc;NG SỐ TAI NGHE</td>
		</tr>
		<tr>
			<td>Loại tai nghe</td>
			<td>&nbsp;Wireless</td>
		</tr>
		<tr>
			<td>Chất liệu</td>
			<td>Khung kim loại, đệm tai xốp Foam</td>
		</tr>
		<tr>
			<td>M&agrave;u sắc</td>
			<td>Ngọc trai (Pearl)</td>
		</tr>
		<tr>
			<td>LED</td>
			<td>RGB</td>
		</tr>
		<tr>
			<td>Kết nối</td>
			<td>Wireless</td>
		</tr>
		<tr>
			<td>Chất lượng &acirc;m thanh</td>
			<td>7.1 Surround</td>
		</tr>
		<tr>
			<td>&Acirc;m thanh v&ograve;m</td>
			<td>Yes</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước m&agrave;ng loa</td>
			<td>50 mm</td>
		</tr>
		<tr>
			<td>Tần số đ&aacute;p ứng</td>
			<td>20Hz - 40kHz</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>32 Ohms @ 2.5 kHz</td>
		</tr>
		<tr>
			<td>Độ nhạy tai nghe</td>
			<td>109dB (+/-3dB)</td>
		</tr>
		<tr>
			<td>Tương th&iacute;ch</td>
			<td>PC, PS5, PS4</td>
		</tr>
		<tr>
			<td>Phần mềm</td>
			<td>Audio CUE</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước (mm)</td>
			<td>160 x 100 x 205</td>
		</tr>
		<tr>
			<td colspan="2">TH&Ocirc;NG SỐ MICROPHONE</td>
		</tr>
		<tr>
			<td>Loại microphone</td>
			<td>Khử ồn 1 chiều</td>
		</tr>
		<tr>
			<td>Kết nối&nbsp;</td>
			<td>Rời</td>
		</tr>
		<tr>
			<td>Tần số đ&aacute;p ứng&nbsp;</td>
			<td>100Hz đến 10kHz</td>
		</tr>
		<tr>
			<td>Độ nhạy</td>
			<td>-40dB (+/-3dB)</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>2.0k Ohms</td>
		</tr>
		<tr>
			<td>Khử tiếng ồn</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>Kh&aacute;c</td>
			<td>S&aacute;ch HDSD</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết tai nghe Corsair Virtuoso RGB Wireless Pearl</strong></h2>

<p>Tai nghe Corsair&nbsp;Virtuoso RGB Wireless Pearl l&agrave; chiếc tai nghe mới nhất của Corsair, đ&acirc;y chắc chắn l&agrave; một trong những chiếc&nbsp;tai nghe kh&ocirc;ng d&acirc;y&nbsp;High-End mới nhất cho tới thời điểm hiện tại sở hữu tất cả những điểm mạnh nhất từ nh&agrave; Corsair: từ chất lượng thiết kế, &acirc;m thanh, thiết kế đều mang n&eacute;t đột ph&aacute; cao cấp.&nbsp;</p>

<h3>Thiết kế cao cấp đi c&ugrave;ng sự ho&agrave;n hảo</h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-tai-nghe-corsair-virtuoso-rgb-wireless-pearl" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-corsair-virtuoso-rgb-wireless-pearl_07e87229eadb472bb490428b55801d37_grande.png" /></p>

<p>&nbsp;</p>

<p>Tai nghe Corsair Virtuoso RGB Wireless Pearl kho&aacute;c l&ecirc;n gam m&agrave;u Pearl sang trọng đi c&ugrave;ng cấu tr&uacute;c ho&agrave;n hảo gia c&ocirc;ng từ nh&ocirc;m đem lại sự thoải m&aacute;i, gọn nhẹ cho chiếc tai nghe.&nbsp;</p>

<p>Chất lượng &acirc;m thanh tuyệt đỉnh</p>

<p>Tai nghe Corsair Virtuoso RGB Wireless Pearl được trang bị bộ driver neodymium 50mm với mật độ c&ugrave;ng dải tần số&nbsp; 20Hz - 40kHz cho bạn cảm nhận &acirc;m thanh từ b&eacute; nhất như tiếng bước ch&acirc;n trong c&aacute;c tựa game FPS đến &acirc;m bass, treble của những bản nhạc.</p>

<h3>Sự thoải m&aacute;i khi sử dụng</h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-tai-nghe-corsair-virtuoso-rgb-wireless-pearl" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-corsair-virtuoso-rgb-wireless-pearl-2_626194617faa4ba3a70a25409809bbea_grande.png" /></p>

<p>&nbsp;</p>

<p>Miếng đệm tai của tai nghe Corsair Virtuoso RGB Wireless Pearl được l&agrave;m từ xốp cao cấp c&ugrave;ng với phần headband si&ecirc;u nhẹ cho người d&ugrave;ng thoải m&aacute;i ngay cả khi phải sử dụng tai nghe trong thời gian d&agrave;i, đem lại cảm gi&aacute;c như tựa đầu l&ecirc;n chiếc gối mềm mại.</p>

<p>Phần micro của tai nghe Corsair Virtuoso RGB Wireless Pearl c&oacute; thể th&aacute;o rời, gi&uacute;p bạn thoải m&aacute;i gắn hoặc th&aacute;o ra khi kh&ocirc;ng sử dụng, đem lại sự gọn g&agrave;ng hơn những chiếc&nbsp;tai nghe wireless.</p>

<h3>Kết nối của tai nghe Corsair Virtuoso RGB Wireless Pearl</h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-tai-nghe-corsair-virtuoso-rgb-wireless-pearl" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-corsair-virtuoso-rgb-wireless-pearl-1_eb8c3982cf544e37b3b32aff0989e90f_grande.png" /></p>

<p>&nbsp;</p>

<p>Đối với tai nghe Corsair Virtuoso RGB Wireless Pearl th&igrave; việc kết nối kh&ocirc;ng phải l&agrave; điều bận t&acirc;m ở đ&acirc;y, &ldquo;nhạc n&agrave;o cũng nhảy&rdquo;. Corsair đem đến cho đứa con của m&igrave;nh cả 3 kiểu kết nối với: Kết nối USB mang đến chất lượng trung thực nhất, kết nối 3.5mm cho ph&eacute;p chiếc tai nghe c&oacute; thể kết nối dễ d&agrave;ng với c&aacute;c thiết bị di động v&agrave; cuối c&ugrave;ng đ&oacute; l&agrave; c&ocirc;ng nghệ Slipstream Wireless gi&uacute;p cho việc kết nối kh&ocirc;ng d&acirc;y với khoảng c&aacute;ch l&ecirc;n tới 60ft vẫn đem lại chất lượng tuyệt vời nhất.</p>

<p>Ngo&agrave;i ra c&ocirc;ng nghệ Slipstream của Corsair c&ograve;n gi&uacute;p cho việc thu &acirc;m tốt hơn bao giờ hết cho giọng n&oacute;i của bạn truyền đi được ch&iacute;nh x&aacute;c v&agrave; tự nhi&ecirc;n hơn trong cuộc gọi trực tuyến hoặc trong tr&ograve; chơi.</p>
', CAST(1500000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10177, N'Tai nghe Logitech G PRO X 2 LIGHTSPEED Black', N'tai-nghe-logitech-g-pro-x-2-lightspeed-black', N'Tai nghe Logitech G PRO X 2 LIGHTSPEED Black
', N'/DataManagement/Images/Tai%20Nghe/Logitech/g-pro-x-2-lightspeed-black/gallery-4-pro-x-2-lightspeed-gaming-headset-black_0c7500efe9e04dd9a415c13f3892a8d9_1024x1024.png', CAST(4590000 AS Decimal(18, 0)), 2, CAST(4498200 AS Decimal(18, 0)), 10042, CAST(N'2024-05-17T16:30:23.723' AS DateTime), NULL, 1, 10163, N'<p><u><strong>Th&ocirc;ng số sản phẩm :</strong></u></p>

<table border="1" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td><strong>Kiểu tai nghe</strong></td>
			<td>Over-ear</td>
		</tr>
		<tr>
			<td><strong>Loại kết nối</strong></td>
			<td>LIGHTSPEED 2.4GHz</td>
		</tr>
		<tr>
			<td><strong>M&agrave;ng loa</strong></td>
			<td>Graphene 50 mm</td>
		</tr>
		<tr>
			<td><strong>Nam ch&acirc;m</strong></td>
			<td>Neodymium</td>
		</tr>
		<tr>
			<td><strong>Độ nhạy tần số</strong></td>
			<td>Tai nghe:&nbsp;20 Hz-20 KHz<br />
			Micro:&nbsp;100 Hz-10 KHz</td>
		</tr>
		<tr>
			<td><strong>Trở kh&aacute;ng</strong></td>
			<td>38 &ocirc;m (thụ động): 38 Ohms</td>
		</tr>
		<tr>
			<td><strong>Độ nhạy</strong></td>
			<td>87.8 dB SPL @ 1 mW &amp; 1 cm</td>
		</tr>
		<tr>
			<td><strong>Chất liệu</strong></td>
			<td>Khớp: Nh&ocirc;m<br />
			Quai đeo: Th&eacute;p<br />
			Miếng đệm tai nghe v&agrave; quai đeo: Giả da bằng cao su non<br />
			Miếng đệm tai tặng th&ecirc;m: Vải bọc cao su non</td>
		</tr>
		<tr>
			<td><strong>Kiểu thu &acirc;m micr&ocirc;</strong></td>
			<td>Cardioid (đơn hướng)</td>
		</tr>
		<tr>
			<td><strong>Tuổi thọ pin (c&oacute; thể sạc lại)</strong></td>
			<td>up to 50h</td>
		</tr>
		<tr>
			<td><strong>Phạm vi kh&ocirc;ng d&acirc;y</strong></td>
			<td>up to 30 m</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>176 x&nbsp;95 x&nbsp;189 mm<br />
			Chiều d&agrave;i c&aacute;p nguồn: 1,8 m</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>345 g</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện đi k&egrave;m</strong></td>
			<td>Tai nghe chơi game PRO X 2 LIGHTSPEED<br />
			Miếng đệm giả da bọc cao su non<br />
			Miếng đệm dự ph&ograve;ng bằng cao su non bọc vải<br />
			Bộ chuyển đổi kh&ocirc;ng d&acirc;y USB-A LIGHTSPEED với cổng 3,5 mm<br />
			Mic c&oacute; thể th&aacute;o rời với m&uacute;t chắn gi&oacute;<br />
			D&acirc;y USB-A tới USB-C<br />
			D&acirc;y 3,5 mm<br />
			t&uacute;i cất trữ mềm<br />
			T&agrave;i liệu hướng dẫn sử dụng</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch</strong></td>
			<td>PC COMPATIBLE<br />
			M&aacute;y t&iacute;nh c&oacute; Windows&reg; 10 trở l&ecirc;n v&agrave; cổng USB 2.0. Kết nối Internet để tải về Phần mềm Logitech G HUB.<br />
			CONSOLE COMPATIBLE<br />
			PlayStationⓇ 5 v&agrave; PlayStation 4 (chỉ &acirc;m thanh nổi kh&ocirc;ng d&acirc;y USB), Nintendo Switch (&acirc;m thanh nổi kh&ocirc;ng d&acirc;y khi gắn v&agrave;o dock).</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết tai nghe Logitech G PRO X 2 LIGHTSPEED Black</strong></h2>

<p>Logitech G PRO X 2 LIGHTSPEED Black d&ograve;ng&nbsp;tai nghe chụp tai&nbsp;(Over-ear) sở hữu thiết kết v&ocirc; c&ugrave;ng nhẹ nh&agrave;ng, sang trọng. Đặc biệt, PRO X 2 LIGHTSPEED c&ograve;n mang lại &acirc;m thanh vượt trội v&agrave; v&ocirc; c&ugrave;ng chuy&ecirc;n nghiệp gi&uacute;p người chơi đắm ch&igrave;m trong kh&ocirc;ng gian đa sắc m&agrave;u khi chơi game v&agrave; nghe nhạc giải tr&iacute;.</p>

<h3><strong>Thiết kế độc đ&aacute;o, phối m&agrave;u ấn tượng</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-tai-nghe-logitech-g-pro-x-2-lightspeed-black" src="https://file.hstatic.net/200000722513/file/gearvn-tai-nghe-logitech-g-pro-x-2-lightspeed-black_990aadbc1c594127a1948f8c7e551e61_grande.png" /></p>

<p>&nbsp;</p>

<p>Logitech lu&ocirc;n mang đến thị trường&nbsp;Gaming Gear&nbsp;những thiết bị v&ocirc; c&ugrave;ng chất lượng v&agrave; đẳng cấp về cả hiệu năng lẫn thiết kế. Trong đ&oacute;, Logitech G PRO X 2 LIGHTSPEED Black sẽ l&agrave; d&ograve;ng&nbsp;tai nghe gaming&nbsp;mang đến cho bạn những trải nghiệm v&ocirc; c&ugrave;ng tuyệt vời đấy nh&eacute;!</p>

<p><img alt="GEARVN-tai-nghe-logitech-g-pro-x-2-lightspeed-black" src="https://file.hstatic.net/200000722513/file/gearvn-tai-nghe-logitech-g-pro-x-2-lightspeed-black-1_5e50269205ae42eb96127aab565d7b11_grande.png" /></p>

<p>Lấy t&ocirc;ng m&agrave;u đen đầy huyền b&iacute; l&agrave;m chủ đạo kết hợp c&ugrave;ng c&aacute;c chi tiết được gia c&ocirc;ng tinh xảo tất cả tạo n&ecirc;n tổng thể v&ocirc; c&ugrave;ng đẹp mắt v&agrave; sang trọng. Người chơi ho&agrave;n to&agrave;n c&oacute; thể đặt c&ugrave;ng c&aacute;c thiết bị kh&aacute;c như&nbsp;b&agrave;n ph&iacute;m cơ,&nbsp;chuột m&aacute;y t&iacute;nh,...để tạo n&ecirc;n kh&ocirc;ng gian l&agrave;m việc v&ocirc; c&ugrave;ng tối giản.</p>

<h3><strong>Trang bị m&agrave;ng loa Graphene 50MM</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-tai-nghe-logitech-g-pro-x-2-lightspeed-black" src="https://file.hstatic.net/200000722513/file/gearvn-tai-nghe-logitech-g-pro-x-2-lightspeed-black-3_5b4d34f34b524d0cad421ec23182bd33_grande.png" /></p>

<p>&nbsp;</p>

<p>&Acirc;m thanh tinh tế, ch&acirc;n thực v&agrave; sống động ch&iacute;nh l&agrave; những g&igrave; bạn c&oacute; thể cảm nhận được khi sử dụng tai nghe m&aacute;y t&iacute;nh đến từ&nbsp;Logitech. D&ograve;ng sản phẩm Logitech G PRO X 2 LIGHTSPEED Black sử dụng m&agrave;ng loa Graphene 50MM gi&uacute;p t&aacute;i tạo &acirc;m thanh v&ocirc; c&ugrave;ng ch&acirc;n thực để người chơi c&oacute; thể &ldquo;đắm ch&igrave;m&rdquo; trong kh&ocirc;ng gian gaming của ch&iacute;nh m&igrave;nh.&nbsp;</p>

<p>Ngo&agrave;i ra, nhờ v&agrave;o việc trang bị m&agrave;ng loa Graphene sẽ gi&uacute;p bạn loại bỏ tiếng ồn, giảm độ m&eacute;o tiếng v&agrave; cho ra &acirc;m thanh vượt trội để bạn chơi game th&ecirc;m phần nhập vai m&agrave; kh&ocirc;ng bị l&agrave;m phiền bởi tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>

<h3><strong>C&ocirc;ng nghệ kết nối kh&ocirc;ng d&acirc;y Lightspeed</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-tai-nghe-logitech-g-pro-x-2-lightspeed-black" src="https://file.hstatic.net/200000722513/file/gearvn-tai-nghe-logitech-g-pro-x-2-lightspeed-black-2_4f905317a6cf45368a3d6aecb011c484_grande.png" /></p>

<p>&nbsp;</p>

<p>Lightspeed được biết đến l&agrave; c&ocirc;ng nghệ kh&ocirc;ng d&acirc;y ti&ecirc;n tiến được t&iacute;ch hợp tr&ecirc;n những d&ograve;ng thiết bị chơi game cao cấp c&oacute; thể kể đến như&nbsp;b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh, chuột gaming,...trong &ldquo;hệ sinh th&aacute;i Logitech&rdquo;. Nhờ v&agrave;o c&ocirc;ng nghệ kết nối kh&ocirc;ng d&acirc;y Lightspeed, người chơi c&oacute; thể y&ecirc;n t&acirc;m &acirc;m thanh trong mọi trận chiến sẽ được truyền tải một c&aacute;ch nhanh ch&oacute;ng, tr&aacute;nh l&agrave;m gi&aacute;n đoạn cảm x&uacute;c thăng hoa với c&aacute;c tựa game y&ecirc;u th&iacute;ch.</p>

<h3><strong>Khả năng tương th&iacute;ch cao qua nhiều chế độ kết nối</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-tai-nghe-logitech-g-pro-x-2-lightspeed-black" src="https://file.hstatic.net/200000722513/file/gearvn-tai-nghe-logitech-g-pro-x-2-lightspeed-black-4_9366916cea554160ae7c6ecd1368bfcb_grande.png" /></p>

<p>&nbsp;</p>

<p>Sở hữu khả năng tương th&iacute;ch cao với nhiều thiết bị ph&aacute;t từ&nbsp;Laptop,&nbsp;m&aacute;y t&iacute;nh b&agrave;n&nbsp;cho đến c&aacute;c thiết bị th&ocirc;ng minh. Ngo&agrave;i việc sử dụng như chiếc tai nghe kh&ocirc;ng d&acirc;y qua chế độ Wireless bạn ho&agrave;n to&agrave;n c&oacute; thể gh&eacute;p nối th&ocirc;ng qua jack 3.5 hoặc ở chế độ&nbsp;tai nghe Bluetooth.</p>

<h3><strong>Loại bỏ tiếng ồn chuy&ecirc;n nghiệp</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-tai-nghe-logitech-g-pro-x-2-lightspeed-black" src="https://file.hstatic.net/200000722513/file/gearvn-tai-nghe-logitech-g-pro-x-2-lightspeed-black-5_78eeec7238734cd6b2c40ed728b899d3_grande.png" /></p>

<p>&nbsp;</p>

<p>Đặc biệt, phần&nbsp;Microphone&nbsp;cardioid 6 mm tr&ecirc;n tai nghe Logitech G PRO X 2 LIGHTSPEED Black c&ograve;n gi&uacute;p loại bỏ tiếng ồn mang lại chất lượng giọng n&oacute;i r&otilde; r&agrave;ng như ph&ograve;ng thu v&agrave; loại bỏ tiếng ồn xung quanh hỗ trợ đ&agrave;m thoại chất lượng, hạn chế tạp &acirc;m để bạn dễ d&agrave;ng giao tiếp, hội thoại.</p>
', CAST(1590000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10178, N'Tai nghe Logitech G435 Lightspeed Wireless - Black', N'tai-nghe-logitech-g435-lightspeed-wireless-black', N'Tai nghe Logitech G435 Lightspeed Wireless - Black
', N'/DataManagement/Images/Tai%20Nghe/Logitech/g435-lightspeed-wireless-black/62591_tai_nghe_logitech_g435_lightspeed_wireless_black_0000_1.jpg', CAST(1400000 AS Decimal(18, 0)), 5, CAST(1330000 AS Decimal(18, 0)), 10042, CAST(N'2024-05-17T16:32:32.557' AS DateTime), NULL, 1, 10164, N'<h2><strong><strong>Th&ocirc;ng số sản phẩm&nbsp;</strong></strong></h2>

<table border="1" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<p><strong>Thương hiệu</strong></p>
			</td>
			<td>
			<p>Logitech</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Model</strong></p>
			</td>
			<td>
			<p>G435</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trọng lượng</strong></p>
			</td>
			<td>
			<p>165g</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch thước</strong></p>
			</td>
			<td>
			<p>163&times;170&times;71 mm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Driver</strong></p>
			</td>
			<td>
			<p>40mm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kết nối</strong></p>
			</td>
			<td>
			<ul>
				<li>
				<p>LIGHTSPEED kh&ocirc;ng d&acirc;y: Cổng USB 2.0 (cổng loại A).</p>
				</li>
				<li>
				<p>Bluetooth: C&aacute;c thiết bị c&oacute; kết nối &acirc;m thanh Bluetooth</p>
				</li>
				<li>
				<p>Tương th&iacute;ch với Dolby Atmos, Tempest 3D AudioTech v&agrave; Windows Sonic Spatial Sound</p>
				</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phạm vi kết nối</strong></p>
			</td>
			<td>
			<p>10m</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Pin</strong></p>
			</td>
			<td>
			<ul>
				<li>
				<p>Thời lượng : 18h</p>
				</li>
				<li>
				<p>Cổng sạc : USB-C</p>
				</li>
				<li>
				<p>D&acirc;y sạc: USB-A tới USB-C</p>
				</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phụ kiện đi k&egrave;m</strong></p>
			</td>
			<td>
			<ul>
				<li>
				<p>Tai nghe G435</p>
				</li>
				<li>
				<p>USB-A LIGHTSPEED</p>
				</li>
				<li>
				<p>D&acirc;y c&aacute;p sạc USB-C tới USB-A</p>
				</li>
				<li>
				<p>T&agrave;i liệu hướng dẫn sử dụng</p>
				</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ nhạy tần số</strong></p>
			</td>
			<td>
			<p>20 Hz-20 KHz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trở kh&aacute;ng</strong></p>
			</td>
			<td>
			<p>45 &ocirc;m (bị động)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ nhạy</strong></p>
			</td>
			<td>
			<p>83,1 dB SPL/mW</p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết sản phẩm t</strong><strong>ai nghe Logitech G435 Lightspeed Wireless White</strong></h2>

<h3><strong>Thiết kế mạnh mẽ đầy ấn tượng</strong></h3>

<p>Nếu bạn đang t&igrave;m kiếm một&nbsp;d&ograve;ng&nbsp;tai nghe m&aacute;y t&iacute;nh&nbsp;mang phong c&aacute;ch mạnh mẽ v&agrave; cung cấp đầy đủ t&iacute;nh năng hỗ trợ cho những trận chiến đầy t&iacute;nh rực lửa th&igrave; kh&ocirc;ng thể kh&ocirc;ng nhắc đến tai nghe Logitech G435 Lightspeed Wireless Black đến từ nh&agrave; Logitech.&nbsp;</p>

<p>Chiếc tai nghe phủ đen&nbsp;n&agrave;y đem lại &acirc;m thanh mạnh mẽ v&agrave; trong trẻo, đồng thời c&aacute;c mic tạo ch&ugrave;m gi&uacute;p giảm tạp &acirc;m nền.&nbsp;Với trọng lượng chỉ 165g, G435 đủ nhẹ v&agrave; thoải m&aacute;i để đeo suốt ng&agrave;y. G435 c&oacute; thể ph&ugrave; hợp với rất nhiều người nhưng sẽ ph&ugrave; hợp hơn với những người c&oacute; k&iacute;ch cỡ đầu khi&ecirc;m tốn.</p>

<p><img alt="GEARVN Tai nghe Logitech G435 Lightspeed Wireless - Black" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g435-lightspeed-wireless-black-1_0f13fcc5c3824abfaa0e9c8c7db27763_grande.jpg" /></p>

<h3><strong>C&ocirc;ng nghệ kh&ocirc;ng d&acirc;y LIGHTSPEED cao cấp</strong></h3>

<p>Chuẩn kết nối kh&ocirc;ng d&acirc;y LIGHTSPEED đem đến cho bạn một trải nghiệm về độ nhạy cũng như hiệu suất &acirc;m thanh cực cao. Bạn sẽ kh&ocirc;ng lo về vấn đề ngắt kết nối&nbsp;PC&nbsp;giữa chừng v&igrave; phạm vi kết nối l&ecirc;n tới 10m c&ugrave;ng với thời lượng pin sử dụng 18 tiếng. Bạn c&oacute; thể sử dụng LIGHTSPEED tr&ecirc;n PC, Mac, PlayStation<sup>&reg;</sup>&nbsp;4 v&agrave; PlayStation 5</p>

<h3><strong>Kết nối kh&ocirc;ng d&acirc;y BLUETOOTH</strong></h3>

<p>Ngo&agrave;i LIGHTSPEED th&igrave; bạn c&oacute; thể kết nối với c&aacute;c thiết bị hỗ trợ bluetooth, bạn vẫn c&oacute; thể chơi ở tốc độ cao với&nbsp;<em>Bluetooth</em>&nbsp;c&oacute; độ trễ thấp. V&agrave; tất nhi&ecirc;n, bạn cũng c&oacute; thể nghe nhạc v&agrave; tr&ograve; chuyện với bạn b&egrave;.</p>

<p><img alt="GEARVN Tai nghe Logitech G435 Lightspeed Wireless - Black" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g435-lightspeed-wireless-black-2_a386685703bf4bdbb046f9623da6307d_grande.jpg" /></p>

<p>Chỉ với một lần sạc duy nhất l&agrave; người d&ugrave;ng c&oacute; thể sử dụng l&ecirc;n đến 18 giờ đồng hồ, thoải m&aacute;i thực hiện cả trăm việc từ chơi game, nghe nhạc, xem phim,... m&agrave; kh&ocirc;ng cần phải lo lắng về vấn đề sạc. Logitech rất ch&uacute; trọng đến việc hiệu suất sử dụng l&acirc;u cho c&aacute;c d&ograve;ng&nbsp;tai nghe gaming kh&ocirc;ng d&acirc;y&nbsp;của m&igrave;nh để tiện lợi nhất cho nhu cầu sử dụng của kh&aacute;ch h&agrave;ng.</p>

<h3><strong>Cao su non t&aacute;ch tiếng ồn</strong></h3>

<p>C&aacute;c chụp tai tr&ecirc;n G435 được bao phủ bởi lớp vải tho&aacute;ng kh&iacute;, giữ cho tai bạn được m&aacute;t mẻ trong những giờ chơi d&agrave;i. Lớp đệm bằng cao su non kh&ocirc;ng chỉ thoải m&aacute;i, m&agrave; n&oacute; c&ograve;n gi&uacute;p hấp thụ s&oacute;ng &acirc;m để cải thiện &acirc;m thanh m&agrave; bạn nghe thấy.</p>

<p><img alt="GEARVN Tai nghe Logitech G435 Lightspeed Wireless - Black" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g435-lightspeed-wireless-black-3_0b929ea2ca0143f89b29eb89c1d25461_grande.jpg" /></p>

<h3><strong>Mic chống ồn chuy&ecirc;n nghiệp</strong></h3>

<p>Sở hữu khả năng loại bỏ cần mic gi&uacute;p tai nghe gọn g&agrave;ng trong khi đ&oacute; vẫn đảm bảo giảm tạp &acirc;m nền v&agrave; đảm bảo &acirc;m thanh bạn ph&aacute;t ra ch&acirc;n thực như đang n&oacute;i chuyện trực tiếp.&nbsp;Thuộc d&ograve;ng&nbsp;tai nghe Logitech&nbsp;trang bị microphone ấn tượng hơn so với c&aacute;c sản phẩm c&ugrave;ng ph&acirc;n kh&uacute;c.</p>

<h3><strong>&Acirc;m thanh sống động từng gi&acirc;y</strong></h3>

<p>D&ograve;ng&nbsp;tai nghe gaming&nbsp;từ 1 đến 2 triệu&nbsp;n&agrave;y của nh&agrave; Logitech đem đến trải nghiệm &acirc;m thanh cho người d&ugrave;ng v&ocirc; c&ugrave;ng trong trẻo.</p>

<p>Chất lượng của &acirc;m vang cực tốt khiến cho bạn như đang ở trong studio thực thụ. Được chứng nhận Discord, G435 c&oacute; c&aacute;c m&agrave;ng loa &acirc;m thanh 40 mm v&agrave; tương th&iacute;ch với Dolby Atmos&trade;, Tempest 3D AudioTech v&agrave; Windows Sonic&trade;.</p>

<p><img alt="GEARVN Tai nghe Logitech G435 Lightspeed Wireless - Black" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g435-lightspeed-wireless-black-4_b9068218506f4604abcbcc82e9f480f7_grande.jpg" /></p>
', CAST(890000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10179, N'Tai nghe Logitech G535 LIGHTSPEED Wireless Black', N'tai-nghe-logitech-g535-lightspeed-wireless-black', N'Tai nghe Logitech G535 LIGHTSPEED Wireless Black
', N'/DataManagement/Images/Tai%20Nghe/Logitech/g535-lightspeed-wireless-black/tech-g535-lightspeed-wireless-black-6_c496d5b1b4f04d35af356137bb6e6fea_6278fb4b750e475d9b76b63aaf3c5576_1024x1024.jpg', CAST(2550000 AS Decimal(18, 0)), 3, CAST(2473500 AS Decimal(18, 0)), 10042, CAST(N'2024-05-17T16:38:59.410' AS DateTime), NULL, 1, 10165, N'<h2><strong><strong>Th&ocirc;ng số kỹ thuật:</strong></strong></h2>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<p><strong>Thương hiệu</strong></p>
			</td>
			<td>
			<p>Logitech</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Bảo h&agrave;nh</strong></p>
			</td>
			<td>
			<p>24 Th&aacute;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Series/Model</strong></p>
			</td>
			<td>
			<p>G535&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>M&agrave;u sắc</strong></p>
			</td>
			<td>
			<p>Đen</p>
			</td>
		</tr>
		<tr>
			<td><strong>Thời lượng pin</strong></td>
			<td>C&oacute; thể l&ecirc;n đến 33 giờ</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kiểu tai nghe</strong></p>
			</td>
			<td>
			<p>Over-ear</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trọng lượng</strong></p>
			</td>
			<td>
			<p>236g</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Drivers</strong></p>
			</td>
			<td>
			<p>40 mm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kết nối</strong></p>
			</td>
			<td>
			<p>Kh&ocirc;ng d&acirc;y</p>

			<p>&nbsp;</p>

			<ul>
				<li>LIGHTSPEED USB receiver</li>
			</ul>

			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ nhạy</strong></p>
			</td>
			<td>
			<p>87.5 dB SPL/mW</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Microphone</strong></p>
			</td>
			<td>
			<p>C&oacute;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trở kh&aacute;ng</strong></p>
			</td>
			<td>
			<p>36 Ohms</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tần số</strong></p>
			</td>
			<td>
			<p>20Hz-20KHz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phạm vi kết nối kh&ocirc;ng d&acirc;y</strong></p>
			</td>
			<td>
			<p>39.37 ft (12 m)</p>
			</td>
		</tr>
		<tr>
			<td><strong>Tương th&iacute;ch</strong></td>
			<td>Windows 10 v&agrave;&nbsp;macOS X 10.14</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết tai nghe Logitech G535 LIGHTSPEED Wireless Black</strong></h2>

<p>Tai nghe Logitech G535 LIGHTSPEED Wireless Black sở hữu thiết kế kh&ocirc;ng d&acirc;y tiện lợi, hiệu suất hoạt động tốt với độ trễ thấp. Hứa hẹn sẽ l&agrave; một trong những chiếc&nbsp;tai nghe gaming&nbsp;tuyệt vời đồng h&agrave;nh c&ugrave;ng bạn trong những lần tham chiến căng thẳng.&nbsp;</p>

<h3><strong>Thiết kế kh&ocirc;ng d&acirc;y linh hoạt&nbsp;</strong></h3>

<p>Tai nghe Logitech G535 mang đến kết nối chuy&ecirc;n nghiệp cho những gamer thực thụ sử dụng. Loại bỏ vướng v&iacute;u m&agrave; những chiếc&nbsp;tai nghe c&oacute; d&acirc;y&nbsp;kh&ocirc;ng l&agrave;m được. C&ocirc;ng nghệ Lightspeed hiện đại cung cấp hiệu suất hoạt động cao, độ trễ thấp. Điều n&agrave;y l&agrave; v&ocirc; c&ugrave;ng quan trọng với người chơi game trong những lần tập trung cao độ chinh phục tựa game kh&oacute;.&nbsp;</p>

<p><img alt="GEARVN Tai nghe Logitech G535 LIGHTSPEED Wireless Black" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g535-lightspeed-wireless-black-1_26d3eeb790734f0dbed0b11ce1bade20.png" /></p>

<h3><strong>Nhẹ hơn, nghe l&acirc;u hơn</strong></h3>

<p>D&ograve;ng&nbsp;tai nghe chụp tai&nbsp;Logitech G535 chỉ nặng khoảng 236 gram với k&iacute;ch thước nhỏ gọn. Đầu tư v&agrave;o thiết kế kiểu d&aacute;ng tai nghe c&ugrave;ng m&uacute;t đệm tai mềm từ chất lưới thể thao đảm bảo to&agrave;n vẹn sự thoải m&aacute;i. Từ đ&oacute; giảm được &aacute;p lực l&ecirc;n người đeo hơn trong khoảng thời gian sử dụng li&ecirc;n tục nhiều giờ.&nbsp;</p>

<p><img alt="GEARVN Tai nghe Logitech G535 LIGHTSPEED Wireless Black" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g535-lightspeed-wireless-black-3_62ae4250ee294c45a64977fa91a349e8.png" /></p>

<p>Ngo&agrave;i ra c&aacute;c phi&ecirc;n chơi game k&eacute;o d&agrave;i cũng kh&ocirc;ng lo cạn kiệt năng lượng pin từ chiếc&nbsp;tai nghe Logitech&nbsp;G535. Thời gian sử dụng c&oacute; thể k&eacute;o d&agrave;i l&ecirc;n đến 33 giờ, đ&acirc;y quả thật l&agrave; một con số ấn tượng v&agrave; đủ để l&agrave;m h&agrave;i l&ograve;ng c&aacute;c game thủ chinh chiến game cả ng&agrave;y.&nbsp;</p>

<h3><strong>Vừa vặn hơn</strong></h3>

<p>Được thiết kế theo kiểu d&aacute;ng như một chiếc băng đ&ocirc; với độ đ&agrave;n hồi linh hoạt, Logitech G535 tạo điều kiện để người d&ugrave;ng điều chỉnh dễ d&agrave;ng. Chỉ cần v&agrave;i thao t&aacute;c đơn giản đ&atilde; c&oacute; thể biến chiếc&nbsp;tai nghe Bluetooth&nbsp;vừa vặn với đ&ocirc;i tai. Phần băng đ&ocirc; cũng c&oacute; thể th&aacute;o rời v&agrave; vệ sinh được.&nbsp;</p>

<p><img alt="GEARVN Tai nghe Logitech G535 LIGHTSPEED Wireless Black" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g535-lightspeed-wireless-black-2_fe7c986531664374a9a4f26421e77ce3.png" /></p>

<h3><strong>Giao tiếp r&otilde; r&agrave;ng</strong></h3>

<p>Logitech G535 d&ograve;ng tai nghe Wireless&nbsp;đ&atilde; được chứng nhận Discord với khả năng trao đổi r&otilde; r&agrave;ng v&agrave; ch&iacute;nh x&aacute;c. C&aacute;c game thủ c&oacute; thể giao tiếp c&ugrave;ng đồng đội một c&aacute;ch tốt hơn với chất &acirc;m to v&agrave; r&otilde;.&nbsp;&nbsp;</p>

<h3><strong>Dễ d&agrave;ng điều chỉnh</strong></h3>

<p>Tr&ecirc;n tai nghe Logitech G535 trang bị sẵn con lăn điều chỉnh nhanh gọn trong việc thiết lập &acirc;m lượng, k&iacute;ch hoạt tr&ograve; chơi. Phần micro sẽ được tắt tiếng ngay khi người d&ugrave;ng thao t&aacute;c di chuyển ra xa hoặc lật micro l&ecirc;n.</p>

<p><img alt="GEARVN Tai nghe Logitech G535 LIGHTSPEED Wireless Black" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g535-lightspeed-wireless-black-4_3fea7c86563540ebaf82aac41366443f.png" /></p>
', CAST(1300000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [MetaTitle], [Description], [Image], [Price], [Promotion], [PromotionPrice], [CategoryId], [CreatedDate], [ModifiedDate], [Status], [GalleryId], [Details], [OriginalPrice]) VALUES (10180, N'Tai nghe Logitech G733 LIGHTSPEED Wireless White', N'tai-nghe-logitech-g733-lightspeed-wireless-white', N'Tai nghe Logitech G733 LIGHTSPEED Wireless White
', N'/DataManagement/Images/Tai%20Nghe/Logitech/g733-lightspeed-wireless-white/ech-g733-lightspeed-wireless-white-11_b76d45f28f904783b17c794a8bbdcdca_e796d4e40313463c8f928e8e524ee92d_1024x1024%20(1).jpg', CAST(2390000 AS Decimal(18, 0)), 5, CAST(2270500 AS Decimal(18, 0)), 10042, CAST(N'2024-05-17T16:41:14.900' AS DateTime), NULL, 1, 10166, N'<p><strong><strong>Th&ocirc;ng số kỹ thuật:</strong></strong></p>

<table border="1" cellpadding="3" cellspacing="0" id="tblGeneralAttribute">
	<tbody>
		<tr>
			<td>
			<p><strong>Thương hiệu:</strong></p>
			</td>
			<td>
			<p>Logitech</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Bảo h&agrave;nh:</strong></p>
			</td>
			<td>
			<p>24 th&aacute;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Series/Model:</strong></p>
			</td>
			<td>
			<p>G733 LightSpeed Wireless&nbsp;White</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>M&agrave;u sắc:</strong></p>
			</td>
			<td>
			<p>Trắng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kiểu tai nghe:</strong></p>
			</td>
			<td>
			<p>Over-ear</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kiểu kết nối:</strong></p>
			</td>
			<td>
			<p>Kh&ocirc;ng d&acirc;y</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>LED:</strong></p>
			</td>
			<td>
			<p>C&oacute; LED RGB&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Chuẩn kết nối:</strong></p>
			</td>
			<td>
			<p>Reciever USB type A</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Microphone:</strong></p>
			</td>
			<td>
			<p>C&oacute; thể th&aacute;o rời</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trở kh&aacute;ng:</strong></p>
			</td>
			<td>
			<p>1kHz 32Ohm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tần số:</strong></p>
			</td>
			<td>
			<p>20Hz - 20KHz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khả năng c&aacute;ch &acirc;m:</strong></p>
			</td>
			<td>
			<p>C&oacute;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Chất liệu khung:</strong></p>
			</td>
			<td>
			<p>Nhựa</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Chất liệu đệm tai nghe:</strong></p>
			</td>
			<td>
			<p>Vải tho&aacute;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phụ kiện đi k&egrave;m:</strong></p>
			</td>
			<td>
			<p>Hướng dẫn sử dụng</p>

			<p>USB Reciever</p>

			<p>C&aacute;p sạc USB type A to USB type C</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tương th&iacute;ch:</strong></p>
			</td>
			<td>
			<p>Windows 7 trở l&ecirc;n&nbsp;/ MacOS X 10.12 trở l&ecirc;n / PlayStation 4</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Chức năng đặc biệt:&nbsp;</strong></p>
			</td>
			<td>
			<p>C&ocirc;ng nghệ kết nối kh&ocirc;ng d&acirc;y Lighspeed độc quyền Logitech</p>
			</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết tai nghe gaming kh&ocirc;ng d&acirc;y Logitech G733 LIGHTSPEED Wireless White</strong></h2>

<p><strong>Logitech G733 LIGHTSPEED Wireless White</strong>&nbsp;d&ograve;ng&nbsp;tai nghe m&aacute;y t&iacute;nh&nbsp;được thiết kế mang đến sự thoải m&aacute;i cho game thủ. Đ&acirc;y l&agrave; mẫu tai nghe&nbsp;kh&ocirc;ng d&acirc;y được trang bị &acirc;m thanh lập thể, c&aacute;c bộ lọc &acirc;m thanh v&agrave; t&iacute;nh năng chiếu s&aacute;ng ti&ecirc;n tiến bạn cần để nh&igrave;n, n&oacute;i v&agrave; chơi phong c&aacute;ch hơn bao giờ hết.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g733-lightspeed-wireless-white-4_7e43fb773810437c827e439ca3983f11_grande.jpg" /></p>

<p><strong>Thiết kế bắt mắt, trọng lượng si&ecirc;u nhẹ</strong></p>

<p>Được thiết kế với h&igrave;nh d&aacute;ng một chiếc tai nghe Over-ear&nbsp;với trọng lượng chỉ 278 gram, nặng hơn nửa pound (250g) một ch&uacute;t. N&oacute; rất nhẹ v&agrave; d&acirc;y co d&atilde;n được thiết kế để l&agrave;m giảm v&agrave; ph&acirc;n phối trọng lượng.</p>

<p><strong>Logitech G733 LIGHTSPEED Wireless White</strong><strong>&nbsp;</strong>với bộ đệm tai được l&agrave;m từ cao su non hai lớp nhẹ nh&agrave;ng &ocirc;m lấy đầu bạn v&agrave; lượn v&ograve;ng quanh khu&ocirc;n mặt bạn. N&oacute; l&agrave;m giảm c&aacute;c điểm &aacute;p lực v&agrave; đem lại sự thoải m&aacute;i d&agrave;i l&acirc;u. D&acirc;y đeo quanh đầu co d&atilde;n mềm mại v&agrave; c&oacute; thể điều chỉnh khiến cho&nbsp;vừa vặn nhất với bạn.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g733-lightspeed-wireless-white-5_903b0c1c7db049a594d854a4c6463bfd_grande.png" /></p>

<p><strong>Trang bị c&ocirc;ng nghệ Lightspeed</strong></p>

<p>C&ocirc;ng nghệ LIGHTSPEED kh&ocirc;ng d&acirc;y đem đến cho bạn thời gian sử dụng pin tr&ecirc;n 29 giờ v&agrave; sự tự do kh&ocirc;ng d&acirc;y đ&aacute;ng tin cậy l&ecirc;n tới 20 m&eacute;t.&nbsp;Chơi m&agrave; kh&ocirc;ng bị rối d&acirc;y. Mở ra khả năng v&agrave; đắm ch&igrave;m v&agrave;o tr&ograve; chơi, &acirc;m nhạc, phim ảnh.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g733-lightspeed-wireless-white-6_d2cef084e62a4e568de6e24f84a93dd2_grande.png" /></p>

<p>Ngo&agrave;i ra&nbsp;<strong>Logitech G733 LIGHTSPEED Wireless White&nbsp;</strong>c&ograve;n c&oacute; bộ phụ kiện d&acirc;y băng đ&ocirc;, vỏ bọc mic,... nhiều m&agrave;u sắc để bạn c&oacute; thể thay đổi ngoại h&igrave;nh chiếc tai nghe của m&igrave;nh. Lưu &yacute; l&agrave; trong hộp sản phẩm mới chỉ c&oacute; sẵn 1 bộ phụ kiện mặc định nh&eacute;.</p>

<h3><strong>Hỗ trợ đ&egrave;n LED&nbsp;RGB 16,8 triệu m&agrave;u</strong></h3>

<p>Tai nghe&nbsp;<strong>Logitech G733 LIGHTSPEED Wireless White</strong>&nbsp;được trang bị&nbsp;hai v&ugrave;ng LED để t&ugrave;y chỉnh &aacute;nh s&aacute;ng để biến th&agrave;nh của ri&ecirc;ng bạn. C&aacute; nh&acirc;n h&oacute;a m&agrave;u sắc, h&igrave;nh ảnh h&oacute;a &acirc;m thanh, đưa bạn v&agrave;o thế giới tr&ograve; chơi&nbsp;với c&aacute;c h&igrave;nh động t&ugrave;y chỉnh v&agrave; thiết lập trước th&ocirc;ng qua hệ sinh th&aacute;i Logitech G Hub của h&atilde;ng.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g733-lightspeed-wireless-white-7_71e27115928d4304b0ac1cd57093d716_grande.png" /></p>

<p><strong>&Acirc;m thanh sống động với m&agrave;ng loa PRO-G</strong></p>

<p>Đắm ch&igrave;m v&agrave;o tr&ograve; chơi hơn bao giờ hết với &acirc;m thanh v&ograve;m DTS Headphone X 2.0 thế hệ mới. Ngo&agrave;i ra&nbsp;<strong>Logitech G733 LIGHTSPEED Wireless White</strong>&nbsp;c&ograve;n được trang bị c&aacute;c t&iacute;nh năng n&acirc;ng cao như:&nbsp;DTS Headphone:X 2.0, Blue VO!CE,&nbsp;LIGHTSYNC RGB,...</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g733-lightspeed-wireless-white-8_9b784cc5460c4da79ab44fbe900b77f3_grande.png" /></p>

<p>Tai nghe bluetooth kh&ocirc;ng d&acirc;y&nbsp;được trang bị c&ocirc;ng nghệ&nbsp;&acirc;m thanh v&ograve;m thế hệ mới đem thế giới tr&ograve; chơi của bạn đến thế giới thật xung quanh bạn. Tận hưởng tất cả c&aacute;c t&iacute;n hiệu &acirc;m thanh tuyệt vời từ m&ocirc;i trường xung quanh m&agrave; c&aacute;c tr&ograve; chơi y&ecirc;u th&iacute;ch của bạn đem lại - từ mọi hướng. C&ocirc;ng nghệ DTS Headphone:X 2.0 mới nhất l&agrave; &acirc;m thanh v&ograve;m vượt qua 7.1 k&ecirc;nh.</p>

<p>&nbsp;</p>
', CAST(1190000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (1, N'PC Gaming', NULL, NULL, 2, NULL, CAST(N'2024-05-08T23:54:32.087' AS DateTime), 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (2, N'PC Làm việc', NULL, NULL, 3, CAST(N'2023-10-25T23:57:26.550' AS DateTime), CAST(N'2024-05-08T23:54:42.610' AS DateTime), 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (10, N'Xem tất cả', N'xem-tat-ca', NULL, 1, CAST(N'2023-11-02T20:57:34.757' AS DateTime), NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (38, N'Màn hình', N'man-hinh', NULL, 4, CAST(N'2024-05-08T23:54:57.537' AS DateTime), NULL, 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (39, N'Bàn phím', N'ban-phim', NULL, 5, CAST(N'2024-05-08T23:55:16.703' AS DateTime), NULL, 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (40, N'Linh kiện máy tính', N'linh-kien-may-tinh', NULL, 6, CAST(N'2024-05-08T23:55:34.627' AS DateTime), NULL, 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (41, N'Akko', NULL, 39, 5, CAST(N'2024-05-09T08:36:41.620' AS DateTime), CAST(N'2024-05-17T14:21:27.223' AS DateTime), 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (42, N'Corsair', NULL, 39, 5, CAST(N'2024-05-09T08:36:56.163' AS DateTime), CAST(N'2024-05-17T14:21:35.930' AS DateTime), 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (43, N'Tai nghe', NULL, NULL, 7, CAST(N'2024-05-09T08:38:24.140' AS DateTime), CAST(N'2024-05-17T14:23:24.330' AS DateTime), 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (44, N'Asus', NULL, 43, 7, CAST(N'2024-05-09T08:38:35.703' AS DateTime), CAST(N'2024-05-17T14:23:39.090' AS DateTime), 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (45, N'Corsair', NULL, 43, 7, CAST(N'2024-05-09T08:38:57.470' AS DateTime), CAST(N'2024-05-17T14:23:31.547' AS DateTime), 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (10038, N'Dareu', NULL, 39, 5, CAST(N'2024-05-15T16:14:43.697' AS DateTime), CAST(N'2024-05-17T14:21:57.887' AS DateTime), 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (10039, N'Dell', NULL, 38, 4, CAST(N'2024-05-15T16:29:32.937' AS DateTime), CAST(N'2024-05-17T14:21:06.390' AS DateTime), 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (10040, N'ViewSonic', NULL, 38, 4, CAST(N'2024-05-15T16:29:49.750' AS DateTime), CAST(N'2024-05-17T14:22:37.587' AS DateTime), 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (10041, N'Mainboard', NULL, 40, 6, CAST(N'2024-05-17T14:26:37.127' AS DateTime), CAST(N'2024-05-17T14:26:48.057' AS DateTime), 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status]) VALUES (10042, N'Logitech', N'logitech', 43, 7, CAST(N'2024-05-17T16:27:14.640' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10109, 3, 28)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10109, 4, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10110, 1, 236)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10110, 2, 162)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10110, 3, 16)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10110, 4, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10111, 1, 261)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10111, 2, 272)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10111, 3, 235)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10111, 4, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10112, 1, 63)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10112, 2, 167)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10112, 3, 28)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10112, 4, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10113, 1, 251)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10113, 2, 153)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10113, 3, 45)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10113, 4, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10114, 1, 62)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10114, 2, 162)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10114, 3, 73)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10114, 4, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10115, 1, 26)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10115, 2, 72)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10115, 3, 28)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10115, 4, 10)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10116, 1, 26)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10116, 2, 61)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10116, 3, 21)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10116, 4, 10)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10117, 1, 75)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10117, 2, 250)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10117, 3, 51)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10117, 4, 24)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10118, 1, 73)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10118, 2, 163)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10118, 3, 51)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10118, 4, 28)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10119, 1, 61)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10119, 2, 212)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10119, 3, 86)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10119, 4, 19)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10120, 1, 62)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10120, 2, 174)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10120, 3, 65)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10120, 4, 18)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10121, 1, 73)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10121, 2, 162)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10121, 3, 34)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10121, 4, 19)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10122, 1, 61)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10122, 2, 173)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10122, 3, 24)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10122, 4, 10)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10123, 1, 37)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10123, 2, 52)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10123, 3, 18)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10123, 4, 8)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10124, 1, 27)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10124, 2, 81)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10124, 3, 18)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10124, 4, 6)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10125, 1, 27)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10125, 2, 71)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10125, 3, 30)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10125, 4, 14)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10126, 1, 38)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10126, 2, 11)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10126, 3, 19)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10126, 4, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10127, 1, 5)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10127, 2, 17)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10127, 3, 8)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10127, 4, 2)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10129, 1, 15)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10129, 2, 20)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10129, 3, 30)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10129, 4, 39)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10130, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10130, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10130, 3, 20)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10130, 4, 40)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10131, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10131, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10131, 3, 20)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10131, 4, 40)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10132, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10132, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10132, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10132, 4, 30)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10133, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10133, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10133, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10133, 4, 40)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10134, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10134, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10134, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10134, 4, 40)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10135, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10135, 2, 0)
GO
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10135, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10135, 4, 40)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10136, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10136, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10136, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10136, 4, 35)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10137, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10137, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10137, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10137, 4, 30)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10138, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10138, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10138, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10138, 4, 30)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10139, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10139, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10139, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10139, 4, 40)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10140, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10140, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10140, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10140, 4, 50)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10141, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10141, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10141, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10141, 4, 30)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10142, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10142, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10142, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10142, 4, 50)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10143, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10143, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10143, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10143, 4, 50)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10144, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10144, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10144, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10144, 4, 45)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10145, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10145, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10145, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10145, 4, 40)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10146, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10146, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10146, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10146, 4, 50)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10147, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10147, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10147, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10147, 4, 44)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10148, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10148, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10148, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10148, 4, 30)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10149, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10149, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10149, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10149, 4, 40)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10150, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10150, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10150, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10150, 4, 35)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10151, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10151, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10151, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10151, 4, 50)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10152, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10152, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10152, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10152, 4, 45)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10153, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10153, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10153, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10153, 4, 44)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10154, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10154, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10154, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10154, 4, 40)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10155, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10155, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10155, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10155, 4, 40)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10156, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10156, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10156, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10156, 4, 40)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10157, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10157, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10157, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10157, 4, 15)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10158, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10158, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10158, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10158, 4, 45)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10159, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10159, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10159, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10159, 4, 15)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10160, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10160, 2, 0)
GO
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10160, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10160, 4, 10)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10161, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10161, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10161, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10161, 4, 20)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10162, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10162, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10162, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10162, 4, 20)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10163, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10163, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10163, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10163, 4, 10)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10164, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10164, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10164, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10164, 4, 10)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10165, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10165, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10165, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10165, 4, 5)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10166, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10166, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10166, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10166, 4, 7)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10167, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10167, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10167, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10167, 4, 8)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10168, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10168, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10168, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10168, 4, 5)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10169, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10169, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10169, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10169, 4, 15)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10170, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10170, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10170, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10170, 4, 10)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10171, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10171, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10171, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10171, 4, 15)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10172, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10172, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10172, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10172, 4, 10)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10173, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10173, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10173, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10173, 4, 10)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10174, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10174, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10174, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10174, 4, 10)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10175, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10175, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10175, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10175, 4, 10)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10176, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10176, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10176, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10176, 4, 20)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10177, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10177, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10177, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10177, 4, 25)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10178, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10178, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10178, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10178, 4, 20)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10179, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10179, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10179, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10179, 4, 19)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10180, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10180, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10180, 3, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Stock]) VALUES (10180, 4, 20)
GO
SET IDENTITY_INSERT [dbo].[Rate] ON 

INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Sản phẩm tuyệt vời, đáng mua', 5, CAST(N'2023-12-18T14:37:42.033' AS DateTime), 9, 54, 1)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Giá siêu tốt, có tiền chắc chắn sẽ mua', 0, CAST(N'2023-12-18T14:39:07.307' AS DateTime), 9, 54, 2)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Mặt hàng này còn không
', 0, CAST(N'2023-12-18T14:46:01.853' AS DateTime), 9, 54, 3)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Sao hong ai bình luận hết zậy', 0, CAST(N'2023-12-18T14:47:32.393' AS DateTime), 9, 54, 4)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Bình luận cùng tôi đi nào please', 0, CAST(N'2023-12-18T14:47:48.670' AS DateTime), 9, 54, 5)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'tesst', 5, CAST(N'2023-12-18T14:55:05.560' AS DateTime), 1, 54, 6)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Có nên mua cái này không anh em', 0, CAST(N'2023-12-18T15:14:42.983' AS DateTime), 10, 54, 7)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Tôi muốn mua sản phẩm này, có ai tư vấn cho tôi với', 0, CAST(N'2023-12-18T17:52:28.340' AS DateTime), 1, 54, 8)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Inbox trực tiếp fanpage để biết thêm chi tiết nha', 0, CAST(N'2023-12-18T17:52:51.203' AS DateTime), 1, 54, 9)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Abc', 4, CAST(N'2023-12-30T16:16:24.597' AS DateTime), 1, 32, 10)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'sản phẩm rất tốt, đáng để mua
', 5, CAST(N'2024-01-02T21:15:25.957' AS DateTime), 11, 10122, 11)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Có ai mua sản phẩm này chưa?', 0, CAST(N'2024-01-02T21:16:49.250' AS DateTime), 11, 10122, 12)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Sản phẩm chất lượng tốt, nên mua', 5, CAST(N'2024-01-04T08:07:04.453' AS DateTime), 1, 40, 13)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Sản phẩm tốt, nên mua', 5, CAST(N'2024-01-04T15:41:09.607' AS DateTime), 1, 38, 14)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Sản phẩm rất tốt, rất đáng mua', 4, CAST(N'2024-01-09T09:56:58.947' AS DateTime), 11, 37, 10010)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Sản phẩm đáng mua', 4, CAST(N'2024-01-09T15:16:20.897' AS DateTime), 11, 38, 10011)
INSERT [dbo].[Rate] ([Content], [Star], [CreatedDate], [UserId], [ProductId], [Id]) VALUES (N'Sản phẩm tốt, nên mua', 5, CAST(N'2024-01-09T15:25:16.730' AS DateTime), 11, 59, 10012)
SET IDENTITY_INSERT [dbo].[Rate] OFF
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_USER', N'Xóa thành viên')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'EDIT_USER', N'Sửa thành viên')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_USER', N'Xem danh sách thành viên')
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([Id], [Name], [Description]) VALUES (1, N'Cũ ', N'Hàng cũ, đã qua sử dụng')
INSERT [dbo].[Size] ([Id], [Name], [Description]) VALUES (2, N'Cũ đẹp', N'Hàng cũ, đã qua sử dụng. Nhưng hình thức sản phẩm đẹp')
INSERT [dbo].[Size] ([Id], [Name], [Description]) VALUES (3, N'Như mới', N'Hàng cũ, đã qua sử dụng. Nhưng nhìn như mới bóc hộp')
INSERT [dbo].[Size] ([Id], [Name], [Description]) VALUES (4, N'Mới', N'Hàng mới, chưa qua sử dụng')
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([Id], [Image], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status], [Link], [Description]) VALUES (5, N'/DataManagement/Images/Slider/slide-05.jpg', 1, CAST(N'2023-12-21T09:51:17.230' AS DateTime), NULL, 0, N'/', NULL)
INSERT [dbo].[Slide] ([Id], [Image], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status], [Link], [Description]) VALUES (6, N'/DataManagement/Images/Slider/08_Apreaf483a8539af4cf8e1fe2dee0033394.jpg', 2, CAST(N'2023-12-21T10:46:53.943' AS DateTime), CAST(N'2024-05-09T08:13:28.773' AS DateTime), 1, N'/', NULL)
INSERT [dbo].[Slide] ([Id], [Image], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status], [Link], [Description]) VALUES (7, N'/DataManagement/Images/Slider/03_May62cf6ac7d0b774e4b9e7088f3142656c.jpg', 3, CAST(N'2023-12-21T10:49:45.593' AS DateTime), CAST(N'2024-05-09T08:13:36.553' AS DateTime), 1, N'/', NULL)
INSERT [dbo].[Slide] ([Id], [Image], [DisplayOrder], [CreatedDate], [ModifiedDate], [Status], [Link], [Description]) VALUES (9, N'/DataManagement/Images/Slider/19_Apreaf483a8539af4cf8e1fe2dee0033394.jpg', 1, CAST(N'2024-01-03T23:33:01.267' AS DateTime), CAST(N'2024-05-09T08:13:17.747' AS DateTime), 1, N'/', NULL)
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (N'dat-ten', N'đặt tên')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (N'freestyle', N' freestyle')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (N'hai-huoc', N' hài hước')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (N'meme', N'meme')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (N'so-sanh', N'so-sanh')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (N'thiet-ke-do-hoa', N'thiet-ke-do-hoa')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [UserName], [Password], [Name], [Address], [Email], [Phone], [Status], [CreatedDate], [ModifiedDate], [ResetPasswordCode], [GroupId]) VALUES (10, N'tuna', N'e10adc3949ba59abbe56e057f20f883e', N'Nguyễn Khánh Huyền', N'Vu Thuong', N'khanhhuyen2k1@gmail.com', N'8329283823', 1, NULL, CAST(N'2023-12-03T09:15:20.020' AS DateTime), NULL, N'MEMBER')
INSERT [dbo].[User] ([Id], [UserName], [Password], [Name], [Address], [Email], [Phone], [Status], [CreatedDate], [ModifiedDate], [ResetPasswordCode], [GroupId]) VALUES (19, N'Trần Trung Quân', N'e10adc3949ba59abbe56e057f20f883e', N'Trần Trung Quân', N'Bắc Giang', N'trungquan@gmail.com', N'0383829382', 1, CAST(N'2023-11-21T12:28:51.870' AS DateTime), CAST(N'2023-12-03T09:07:27.883' AS DateTime), NULL, N'MEMBER')
INSERT [dbo].[User] ([Id], [UserName], [Password], [Name], [Address], [Email], [Phone], [Status], [CreatedDate], [ModifiedDate], [ResetPasswordCode], [GroupId]) VALUES (20, N'Phạm Ðình Khoa', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Ðình Khoa', N'Hà Nội', N'dinhkhoa@gmail.com', N'023938438243', 1, CAST(N'2023-11-21T12:37:25.637' AS DateTime), CAST(N'2023-12-03T09:07:40.240' AS DateTime), NULL, N'MEMBER')
INSERT [dbo].[User] ([Id], [UserName], [Password], [Name], [Address], [Email], [Phone], [Status], [CreatedDate], [ModifiedDate], [ResetPasswordCode], [GroupId]) VALUES (21, N'Quản trị viên', N'e10adc3949ba59abbe56e057f20f883e', N'Quản trị viên', N'Hải Dương', N'admin@gmail.com', N'0369280523', 1, CAST(N'2023-11-24T12:16:43.230' AS DateTime), CAST(N'2023-12-03T09:07:51.510' AS DateTime), NULL, N'ADMIN')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserGroup] ([Id], [Name]) VALUES (N'ADMIN', N'Quản trị viên')
INSERT [dbo].[UserGroup] ([Id], [Name]) VALUES (N'MEMBER', N'Thành viên')
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_OrderDate]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductSize] ADD  CONSTRAINT [DF_ProductSize_Stock]  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[Rate] ADD  CONSTRAINT [DF_Rate_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_GroupId]  DEFAULT ('MEMBER') FOR [GroupId]
GO
