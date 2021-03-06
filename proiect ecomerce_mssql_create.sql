USE [master]
GO
/****** Object:  Database [Ecommerce]    Script Date: 10/13/2020 6:54:51 PM ******/
CREATE DATABASE [Ecommerce]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ecommerce', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Ecommerce.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ecommerce_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Ecommerce_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Ecommerce] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ecommerce].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ecommerce] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ecommerce] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ecommerce] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ecommerce] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ecommerce] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ecommerce] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ecommerce] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ecommerce] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ecommerce] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ecommerce] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ecommerce] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ecommerce] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ecommerce] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ecommerce] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ecommerce] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ecommerce] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ecommerce] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ecommerce] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ecommerce] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ecommerce] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ecommerce] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ecommerce] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ecommerce] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Ecommerce] SET  MULTI_USER 
GO
ALTER DATABASE [Ecommerce] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ecommerce] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ecommerce] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ecommerce] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ecommerce] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Ecommerce] SET QUERY_STORE = OFF
GO
USE [Ecommerce]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/13/2020 6:54:51 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[ConcurrencyStamp] [varchar](255) NULL,
	[NormalizedName] [varchar](255) NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [varchar](255) NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[ConcurrencyStamp] [varchar](255) NULL,
	[LockoutEnd] [datetime] NULL,
	[NormalizedEmail] [varchar](255) NULL,
	[NormalizedUserName] [varchar](255) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [nvarchar](200) NOT NULL,
	[category_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [nvarchar](200) NOT NULL,
	[has_been_placed] [int] NOT NULL,
	[client_id] [nvarchar](200) NOT NULL,
	[has_been_confirmed] [nchar](10) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [nvarchar](200) NOT NULL,
	[product_name] [varchar](50) NOT NULL,
	[product_description] [varchar](150) NOT NULL,
	[product_picture] [varchar](150) NOT NULL,
	[price] [decimal](18, 0) NULL,
	[sales] [decimal](18, 0) NULL,
	[nprice] [decimal](18, 0) NULL,
	[specification_file] [varchar](200) NULL,
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_category]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_category](
	[product_id] [nvarchar](200) NOT NULL,
	[category_id] [nvarchar](200) NOT NULL,
	[IdProductCategory] [nvarchar](200) NOT NULL,
 CONSTRAINT [pk_IdProduct_Category] PRIMARY KEY CLUSTERED 
(
	[IdProductCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOrder]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOrder](
	[OrderIdFK] [nvarchar](200) NOT NULL,
	[ProductIdFK] [nvarchar](200) NOT NULL,
	[IdProductOrder] [nvarchar](200) NOT NULL,
 CONSTRAINT [pk_IdProductOrder] PRIMARY KEY CLUSTERED 
(
	[IdProductOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] NOT NULL,
	[role] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ROLE] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock_Entry]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock_Entry](
	[stock_id] [nvarchar](200) NOT NULL,
	[product_id] [nvarchar](200) NOT NULL,
	[remaining_stock] [int] NULL,
 CONSTRAINT [PK_STOCK] PRIMARY KEY CLUSTERED 
(
	[stock_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/13/2020 6:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [nvarchar](200) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](150) NOT NULL,
	[Card_Number] [varchar](19) NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [ConcurrencyStamp], [NormalizedName]) VALUES (N'1', N'Admin', NULL, NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [ConcurrencyStamp], [NormalizedName]) VALUES (N'2', N'User', NULL, NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a6140de6-734e-4f79-b5f0-3e1dcddc7397', N'2')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [ConcurrencyStamp], [LockoutEnd], [NormalizedEmail], [NormalizedUserName]) VALUES (N'1d0666a9-01e9-4045-b8bb-e1b9fdd8d424', N'a@a.com', 0, N'AQAAAAEAACcQAAAAELzoqKgEAX8azlOb68AapZ05Iyk1my/dI+Y1UOh9fY2o3I0LjSQfqJyrynpK40Cbhw==', N'SQYNYFH2ZW6DBAOBTQC6GTCOUA65JB6M', NULL, 0, 0, NULL, 1, 0, N'a@a.com', N'83a35e3a-aa4b-4d0a-87b1-060eb4db212a', NULL, N'A@A.COM', N'A@A.COM')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [ConcurrencyStamp], [LockoutEnd], [NormalizedEmail], [NormalizedUserName]) VALUES (N'a6140de6-734e-4f79-b5f0-3e1dcddc7397', N'gdinu93dg@gmail.com', 0, N'AQAAAAEAACcQAAAAEM0Ep0H7ezHUWXswRZmSDz4HMyVHdimN9fw1RrrEB6wNRrF52C1YgrLZHY2RD097Qw==', N'CHXZYRHWPMOVEXA33A3FVHVF3ILCU6QM', NULL, 0, 0, NULL, 1, 0, N'gdinu93dg@gmail.com', N'48add1e8-5a77-4d03-abde-d82e66e720ad', NULL, N'GDINU93DG@GMAIL.COM', N'GDINU93DG@GMAIL.COM')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [ConcurrencyStamp], [LockoutEnd], [NormalizedEmail], [NormalizedUserName]) VALUES (N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'gdinu93@yahoo.com', 0, N'AQAAAAEAACcQAAAAEPCXU1kUpf/nTMqj2Sz5mygviGfCg2+CeCe1iW5gcDZs1E2dwPTrexU3avCKTBc3Gw==', N'J2W3VVG7N3TOPGLAHRHHHYY4BJ27KUNW', NULL, 0, 0, NULL, 1, 0, N'gdinu93@yahoo.com', N'ed375eaa-84bf-4fe5-be7e-0050f4998956', NULL, N'GDINU93@YAHOO.COM', N'GDINU93@YAHOO.COM')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (N'5bae6f46-2b22-4431-8f86-54cdec05bca5', N'SF')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (N'e86312c1-30c9-45f3-8668-ac68a5773681', N'Horror')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (N'e86312c1-30c9-45f3-8668-ac68a5773682', N'Fantasy')
INSERT [dbo].[Order] ([order_id], [has_been_placed], [client_id], [has_been_confirmed], [quantity]) VALUES (N'172b9e67-d638-487f-9983-2a4ca6fe0e1a', 1, N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'1         ', 0)
INSERT [dbo].[Order] ([order_id], [has_been_placed], [client_id], [has_been_confirmed], [quantity]) VALUES (N'25744d6c-7ffb-4ae1-b62e-55e61cd09286', 1, N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'1         ', 1)
INSERT [dbo].[Order] ([order_id], [has_been_placed], [client_id], [has_been_confirmed], [quantity]) VALUES (N'3527d8ac-347b-481c-a592-249ac537acd9', 1, N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'1         ', 2)
INSERT [dbo].[Order] ([order_id], [has_been_placed], [client_id], [has_been_confirmed], [quantity]) VALUES (N'4e415e44-3011-4e40-8ee0-c3573f9af173', 1, N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'1         ', 0)
INSERT [dbo].[Order] ([order_id], [has_been_placed], [client_id], [has_been_confirmed], [quantity]) VALUES (N'60b0c10f-9a25-47d1-a915-0a123f752d9e', 1, N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'1         ', 1)
INSERT [dbo].[Order] ([order_id], [has_been_placed], [client_id], [has_been_confirmed], [quantity]) VALUES (N'7f5a63f2-4261-4428-af97-2ef19b9c1092', 1, N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'1         ', 5)
INSERT [dbo].[Order] ([order_id], [has_been_placed], [client_id], [has_been_confirmed], [quantity]) VALUES (N'8f42c314-faf8-4fac-918b-42aa047d9e70', 1, N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'0         ', 2)
INSERT [dbo].[Order] ([order_id], [has_been_placed], [client_id], [has_been_confirmed], [quantity]) VALUES (N'9e570927-17bb-4729-88ce-521a7d3bc268', 1, N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'1         ', 1)
INSERT [dbo].[Order] ([order_id], [has_been_placed], [client_id], [has_been_confirmed], [quantity]) VALUES (N'cf1f81c2-66e3-4735-a7b3-999a9cdf6894', 1, N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'1         ', 0)
INSERT [dbo].[Order] ([order_id], [has_been_placed], [client_id], [has_been_confirmed], [quantity]) VALUES (N'e6b8be89-203a-4ca7-8472-a1d91cf72d49', 1, N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'1         ', 0)
INSERT [dbo].[Order] ([order_id], [has_been_placed], [client_id], [has_been_confirmed], [quantity]) VALUES (N'f84a65c9-d548-491c-8185-e031bd48c6cd', 1, N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'1         ', 1)
INSERT [dbo].[Product] ([product_id], [product_name], [product_description], [product_picture], [price], [sales], [nprice], [specification_file]) VALUES (N'0a586ab1-1630-4923-a500-7a5d07498e5e', N'Harry Potter and the Goblet of Fire', N'Forth book from the Harry Potter series.', N'https://prodimage.images-bn.com/pimages/9780439139601_p0_v1_s550x406.jpg', CAST(34 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)), CAST(29 AS Decimal(18, 0)), N'HP_Pocal_Foc.pdf')
INSERT [dbo].[Product] ([product_id], [product_name], [product_description], [product_picture], [price], [sales], [nprice], [specification_file]) VALUES (N'bd5ce344-e88f-460a-9ca5-87d9ca83bb20', N'Harry Potter and the Order of the Phoenix', N'Fifth book from the Harry Potter series.', N'https://images-na.ssl-images-amazon.com/images/I/51NqXftM9vL._SX326_BO1,204,203,200_.jpg', CAST(40 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)), N'HP_Ordin_Phoenix.pdf')
INSERT [dbo].[Product] ([product_id], [product_name], [product_description], [product_picture], [price], [sales], [nprice], [specification_file]) VALUES (N'c08dc3c5-6b84-4e11-a272-40512e2e11c0', N'Harry Potter and the Half-Blood Prince', N'Sixth book from the Harry Potter series.', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYuzvx_UKmzToZ2BEg1kBT8DWx8KYLeM-6nGJ5V6s_BTetjSyb-A&s', CAST(20 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(17 AS Decimal(18, 0)), N'HP_Piatra_Filozofala.pdf')
INSERT [dbo].[Product] ([product_id], [product_name], [product_description], [product_picture], [price], [sales], [nprice], [specification_file]) VALUES (N'c47d9ef1-50bf-4dfd-9eae-56f8e44a0a74', N'Harry Potter and the Prisoner of Azkaban', N'Third book from the Harry Potter series.', N'https://images-na.ssl-images-amazon.com/images/I/81lAPl9Fl0L.jpg', CAST(21 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(21 AS Decimal(18, 0)), N'HP_Prizonier_Azkaban.pdf')
INSERT [dbo].[Product] ([product_id], [product_name], [product_description], [product_picture], [price], [sales], [nprice], [specification_file]) VALUES (N'cdbafde3-e30a-4aac-b70f-85a6f52ab626', N'Lord of the rings: The Fellowship of the Ring', N'First book from the Lord of the Rings series.', N'https://cdn11.bigcommerce.com/s-nfxi2m/images/stencil/1280x1280/products/652/955/BK_424__07890.1390506020.jpg?c=2&imbypass=on', CAST(6 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), N'HP_Piatra_Filozofala.pdf')
INSERT [dbo].[Product] ([product_id], [product_name], [product_description], [product_picture], [price], [sales], [nprice], [specification_file]) VALUES (N'e4abd229-1d8e-4d9b-83bd-dfdb0fe10268', N'Harry Potter and the Chamber of Secrets', N'Second book from the Harry Potter series.', N'http://prodimage.images-bn.com/pimages/9780439064873_p0_v1_s1200x630.jpg', CAST(20 AS Decimal(18, 0)), CAST(17 AS Decimal(18, 0)), CAST(17 AS Decimal(18, 0)), N'HP_Camera_Secretelor.pdf')
INSERT [dbo].[Product] ([product_id], [product_name], [product_description], [product_picture], [price], [sales], [nprice], [specification_file]) VALUES (N'ff3866a9-c585-4ac5-b2e4-09692505cebe', N'Harry Potter and the Deadly Hallows', N'Seventh book from the Harry Potter series.', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEP6HQL2DLYuUeIXjoOf5Ggbkugeb7OK75Nxi_0iKpHQvdbbjCSQ&s', CAST(21 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(18 AS Decimal(18, 0)), N'HP_Piatra_Filozofala.pdf')
INSERT [dbo].[Product] ([product_id], [product_name], [product_description], [product_picture], [price], [sales], [nprice], [specification_file]) VALUES (N'ffe55a88-5881-4f8a-8693-4f1449a79425', N'Harry Potter and the Sorcerrer''s Stone', N'First book from the Harry Potter series.', N'https://images-na.ssl-images-amazon.com/images/I/51DF6ZR8G7L._SX329_BO1,204,203,200_.jpg', CAST(20 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), N'HP_Piatra_Filozofala.pdf')
INSERT [dbo].[product_category] ([product_id], [category_id], [IdProductCategory]) VALUES (N'0a586ab1-1630-4923-a500-7a5d07498e5e', N'e86312c1-30c9-45f3-8668-ac68a5773682', N'1')
INSERT [dbo].[product_category] ([product_id], [category_id], [IdProductCategory]) VALUES (N'bd5ce344-e88f-460a-9ca5-87d9ca83bb20', N'e86312c1-30c9-45f3-8668-ac68a5773682', N'2')
INSERT [dbo].[product_category] ([product_id], [category_id], [IdProductCategory]) VALUES (N'ff3866a9-c585-4ac5-b2e4-09692505cebe', N'5bae6f46-2b22-4431-8f86-54cdec05bca5', N'3')
INSERT [dbo].[product_category] ([product_id], [category_id], [IdProductCategory]) VALUES (N'e4abd229-1d8e-4d9b-83bd-dfdb0fe10268', N'e86312c1-30c9-45f3-8668-ac68a5773681', N'4')
INSERT [dbo].[ProductOrder] ([OrderIdFK], [ProductIdFK], [IdProductOrder]) VALUES (N'25744d6c-7ffb-4ae1-b62e-55e61cd09286', N'0a586ab1-1630-4923-a500-7a5d07498e5e', N'11c10d06-8097-4998-b1cb-5f3f30293459')
INSERT [dbo].[ProductOrder] ([OrderIdFK], [ProductIdFK], [IdProductOrder]) VALUES (N'3527d8ac-347b-481c-a592-249ac537acd9', N'ff3866a9-c585-4ac5-b2e4-09692505cebe', N'445ee2b1-0adc-4037-ab86-20ea1eabe7ea')
INSERT [dbo].[ProductOrder] ([OrderIdFK], [ProductIdFK], [IdProductOrder]) VALUES (N'8f42c314-faf8-4fac-918b-42aa047d9e70', N'e4abd229-1d8e-4d9b-83bd-dfdb0fe10268', N'5f2dbe66-367a-49e7-b861-ee1cbb6ce380')
INSERT [dbo].[ProductOrder] ([OrderIdFK], [ProductIdFK], [IdProductOrder]) VALUES (N'e6b8be89-203a-4ca7-8472-a1d91cf72d49', N'e4abd229-1d8e-4d9b-83bd-dfdb0fe10268', N'77157ac8-0413-4f59-9b32-72aba7962cc1')
INSERT [dbo].[ProductOrder] ([OrderIdFK], [ProductIdFK], [IdProductOrder]) VALUES (N'60b0c10f-9a25-47d1-a915-0a123f752d9e', N'ff3866a9-c585-4ac5-b2e4-09692505cebe', N'7d226e63-b26a-4baf-aad7-720a73fcf67f')
INSERT [dbo].[ProductOrder] ([OrderIdFK], [ProductIdFK], [IdProductOrder]) VALUES (N'172b9e67-d638-487f-9983-2a4ca6fe0e1a', N'e4abd229-1d8e-4d9b-83bd-dfdb0fe10268', N'95569185-48c0-4135-903b-4280a7c1dc71')
INSERT [dbo].[ProductOrder] ([OrderIdFK], [ProductIdFK], [IdProductOrder]) VALUES (N'cf1f81c2-66e3-4735-a7b3-999a9cdf6894', N'ff3866a9-c585-4ac5-b2e4-09692505cebe', N'ac196390-9323-4a39-8fde-3d415fde16d3')
INSERT [dbo].[ProductOrder] ([OrderIdFK], [ProductIdFK], [IdProductOrder]) VALUES (N'9e570927-17bb-4729-88ce-521a7d3bc268', N'e4abd229-1d8e-4d9b-83bd-dfdb0fe10268', N'c015543e-ce6f-4aff-b5ff-cf022f0e4999')
INSERT [dbo].[ProductOrder] ([OrderIdFK], [ProductIdFK], [IdProductOrder]) VALUES (N'f84a65c9-d548-491c-8185-e031bd48c6cd', N'c08dc3c5-6b84-4e11-a272-40512e2e11c0', N'd4baf281-2e6b-49a9-8778-ed8c2c7de08e')
INSERT [dbo].[ProductOrder] ([OrderIdFK], [ProductIdFK], [IdProductOrder]) VALUES (N'7f5a63f2-4261-4428-af97-2ef19b9c1092', N'e4abd229-1d8e-4d9b-83bd-dfdb0fe10268', N'e7967e1a-eb66-4b9d-a729-269f23e89138')
INSERT [dbo].[ProductOrder] ([OrderIdFK], [ProductIdFK], [IdProductOrder]) VALUES (N'4e415e44-3011-4e40-8ee0-c3573f9af173', N'e4abd229-1d8e-4d9b-83bd-dfdb0fe10268', N'fd84aac3-b3b8-4d50-8029-fcbb8166c000')
INSERT [dbo].[Role] ([role_id], [role]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([role_id], [role]) VALUES (2, N'user')
INSERT [dbo].[Stock_Entry] ([stock_id], [product_id], [remaining_stock]) VALUES (N'7ce4ed89-05bc-4181-b930-83ff32c940c7', N'cdbafde3-e30a-4aac-b70f-85a6f52ab626', 3)
INSERT [dbo].[Stock_Entry] ([stock_id], [product_id], [remaining_stock]) VALUES (N'bd5ce344-e88f-460a-9ca5-87d9ca83bb20', N'bd5ce344-e88f-460a-9ca5-87d9ca83bb20', 1)
INSERT [dbo].[Stock_Entry] ([stock_id], [product_id], [remaining_stock]) VALUES (N'c47d9ef1-50bf-4dfd-9eae-56f8e44a0a74', N'c47d9ef1-50bf-4dfd-9eae-56f8e44a0a74', 5)
INSERT [dbo].[Stock_Entry] ([stock_id], [product_id], [remaining_stock]) VALUES (N'c5edfdc4-207a-48de-ad5d-3cf556f4dcc4', N'0a586ab1-1630-4923-a500-7a5d07498e5e', 2)
INSERT [dbo].[Stock_Entry] ([stock_id], [product_id], [remaining_stock]) VALUES (N'cf0b608a-98ab-4fee-9820-4b335844e679', N'c08dc3c5-6b84-4e11-a272-40512e2e11c0', 21)
INSERT [dbo].[Stock_Entry] ([stock_id], [product_id], [remaining_stock]) VALUES (N'e4abd229-1d8e-4d9b-83bd-dfdb0fe10268', N'e4abd229-1d8e-4d9b-83bd-dfdb0fe10268', 0)
INSERT [dbo].[Stock_Entry] ([stock_id], [product_id], [remaining_stock]) VALUES (N'ff3866a9-c585-4ac5-b2e4-09692505cebe', N'ff3866a9-c585-4ac5-b2e4-09692505cebe', 0)
INSERT [dbo].[Stock_Entry] ([stock_id], [product_id], [remaining_stock]) VALUES (N'ffe55a88-5881-4f8a-8693-4f1449a79425', N'ffe55a88-5881-4f8a-8693-4f1449a79425', 200)
INSERT [dbo].[User] ([id], [Name], [Address], [Card_Number], [role_id]) VALUES (N'1d0666a9-01e9-4045-b8bb-e1b9fdd8d424', N'a@a.com', N'-', N'-', 2)
INSERT [dbo].[User] ([id], [Name], [Address], [Card_Number], [role_id]) VALUES (N'a6140de6-734e-4f79-b5f0-3e1dcddc7397', N'gdinu93dg@gmail.com', N'-', N'-', 2)
INSERT [dbo].[User] ([id], [Name], [Address], [Card_Number], [role_id]) VALUES (N'dbf7e7ff-3bea-4c5d-a9b3-753542e17d4f', N'gdinu93@yahoo.com', N'-', N'-', 2)
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 10/13/2020 6:54:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/13/2020 6:54:53 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 10/13/2020 6:54:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 10/13/2020 6:54:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 10/13/2020 6:54:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 10/13/2020 6:54:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/13/2020 6:54:53 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [Order_fk0] FOREIGN KEY([client_id])
REFERENCES [dbo].[User] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [Order_fk0]
GO
ALTER TABLE [dbo].[product_category]  WITH CHECK ADD  CONSTRAINT [product_category_fk0] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[product_category] CHECK CONSTRAINT [product_category_fk0]
GO
ALTER TABLE [dbo].[product_category]  WITH CHECK ADD  CONSTRAINT [product_category_fk1] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[product_category] CHECK CONSTRAINT [product_category_fk1]
GO
ALTER TABLE [dbo].[ProductOrder]  WITH CHECK ADD  CONSTRAINT [order_product_fk0] FOREIGN KEY([OrderIdFK])
REFERENCES [dbo].[Order] ([order_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ProductOrder] CHECK CONSTRAINT [order_product_fk0]
GO
ALTER TABLE [dbo].[ProductOrder]  WITH CHECK ADD  CONSTRAINT [order_product_fk1] FOREIGN KEY([ProductIdFK])
REFERENCES [dbo].[Product] ([product_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ProductOrder] CHECK CONSTRAINT [order_product_fk1]
GO
ALTER TABLE [dbo].[Stock_Entry]  WITH CHECK ADD  CONSTRAINT [stock_entry_fk0] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Stock_Entry] CHECK CONSTRAINT [stock_entry_fk0]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [User_fk0] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [User_fk0]
GO
USE [master]
GO
ALTER DATABASE [Ecommerce] SET  READ_WRITE 
GO
