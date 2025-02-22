USE [sso]
GO
/****** Object:  Table [dbo].[AppGroupRole]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppGroupRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[Status] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_APP_GROUP_ROLE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Applications]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](250) NULL,
	[Token] [nvarchar](300) NULL,
	[Description] [nvarchar](500) NULL,
	[Url] [nvarchar](500) NULL,
	[Icon] [nvarchar](50) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Status] [int] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_SSO_APPLICATION] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppParam]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppParam](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Name] [nvarchar](200) NULL,
	[Position] [int] NULL,
	[Description] [nvarchar](300) NULL,
	[IsLock] [bit] NULL,
	[IsDelete] [bit] NULL,
	[Status] [int] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_APP_PARAM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppId] [int] NOT NULL,
	[ParentId] [int] NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[Status] [int] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedDate] [datetime] NULL,
	[MaxUpload] [int] NULL,
	[MaxDownload] [int] NULL,
 CONSTRAINT [PK_GROUPS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logs]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppId] [int] NULL,
	[UserId] [int] NULL,
	[UserName] [nvarchar](50) NULL,
	[ActionLog] [nvarchar](1000) NULL,
	[ActionDate] [datetime] NULL,
	[RemoteIP] [nvarchar](50) NULL,
	[ActionResult] [nvarchar](500) NULL,
 CONSTRAINT [PK_LOGIN_LOG] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ManageResource]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManageResource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[AppID] [int] NULL,
	[GroupID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ResourceName] [nvarchar](255) NULL,
	[ResourceValue] [bigint] NULL,
 CONSTRAINT [PK_ManageResource] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppId] [int] NOT NULL,
	[PaprentId] [int] NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[IsLock] [bit] NULL,
	[IsDelete] [bit] NULL,
	[Status] [int] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ROLES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_USER_GROUP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[FullName] [nvarchar](300) NULL,
	[Code] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](100) NULL,
	[Salt] [nvarchar](100) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[IsOnline] [bit] NULL,
	[IsActive] [bit] NULL,
	[LastLoginDate] [datetime] NULL,
	[IsDelete] [bit] NULL,
	[Address] [nvarchar](255) NULL,
	[Avatar] [varchar](255) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedDate] [datetime] NULL,
	[CountLoginFail] [int] NULL,
	[Gender] [int] NULL,
	[BirthDay] [datetime] NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Applications] ON 

INSERT [dbo].[Applications] ([Id], [Code], [Name], [Token], [Description], [Url], [Icon], [FromDate], [ToDate], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'APP0001', N'Application1', NULL, N'App quản trị sso', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Applications] ([Id], [Code], [Name], [Token], [Description], [Url], [Icon], [FromDate], [ToDate], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'APP0002', N'Application2', NULL, N'App Blog', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Applications] OFF
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Id], [AppId], [ParentId], [Code], [Name], [Description], [IsActive], [IsDelete], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [MaxUpload], [MaxDownload]) VALUES (1, 1, 0, N'SuperAdmin', N'SuperAdminGroup App 1', N'SuperAdminGroup', 1, 0, 1, N'haihm', CAST(N'2019-04-22 00:00:00.000' AS DateTime), N'haihm', CAST(N'2019-04-22 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Groups] ([Id], [AppId], [ParentId], [Code], [Name], [Description], [IsActive], [IsDelete], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [MaxUpload], [MaxDownload]) VALUES (2, 1, 0, N'Admin', N'Admin App 1', N'Admin', 1, 0, 1, N'haihm', CAST(N'2019-04-22 00:00:00.000' AS DateTime), N'haihm', CAST(N'2019-04-22 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Groups] ([Id], [AppId], [ParentId], [Code], [Name], [Description], [IsActive], [IsDelete], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [MaxUpload], [MaxDownload]) VALUES (3, 1, 0, N'Member', N'Member App 1', N'Member', 1, 0, 1, N'haihm', CAST(N'2019-04-22 00:00:00.000' AS DateTime), N'haihm', CAST(N'2019-04-22 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Groups] ([Id], [AppId], [ParentId], [Code], [Name], [Description], [IsActive], [IsDelete], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [MaxUpload], [MaxDownload]) VALUES (4, 2, 0, N'SuperAdmin', N'Super Admin Group App 2', N'SuperAdminGroup', 1, 0, 1, N'haihm', CAST(N'2019-04-22 00:00:00.000' AS DateTime), N'haihm', CAST(N'2019-04-22 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Groups] ([Id], [AppId], [ParentId], [Code], [Name], [Description], [IsActive], [IsDelete], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [MaxUpload], [MaxDownload]) VALUES (5, 2, 0, N'Admin', N'Admin App 2', N'Admin', 1, 0, 1, N'haihm', CAST(N'2019-04-22 00:00:00.000' AS DateTime), N'haihm', CAST(N'2019-04-22 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Groups] ([Id], [AppId], [ParentId], [Code], [Name], [Description], [IsActive], [IsDelete], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [MaxUpload], [MaxDownload]) VALUES (6, 2, 0, N'Member', N'Member App 2', N'Member', 1, 0, 1, N'haihm', CAST(N'2019-04-22 00:00:00.000' AS DateTime), N'haihm', CAST(N'2019-04-22 00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Groups] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [AppId], [PaprentId], [Code], [Name], [Description], [IsLock], [IsDelete], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, 0, N'ManagerUser', N'Quản lý người dùng', N'Quản lý người dùng', NULL, NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [FullName], [Code], [PhoneNumber], [Email], [Password], [Salt], [FromDate], [ToDate], [IsOnline], [IsActive], [LastLoginDate], [IsDelete], [Address], [Avatar], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CountLoginFail], [Gender], [BirthDay]) VALUES (1, N'superAdmin', N'Super Admin', N'SuperAdmin', N'0365238230', N'haihm1@gmail.com', N'$2a$12$fEEV4s.4Dx1g9DD8WKT4Y.rr266kDG/4iVQQFm0iYJsDFsWhKrAlC', N'a', NULL, NULL, 1, 1, NULL, 0, N'Hà Nội', NULL, N'haihm', NULL, N'haihm', NULL, NULL, 1, CAST(N'1996-11-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Users] ([Id], [Username], [FullName], [Code], [PhoneNumber], [Email], [Password], [Salt], [FromDate], [ToDate], [IsOnline], [IsActive], [LastLoginDate], [IsDelete], [Address], [Avatar], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CountLoginFail], [Gender], [BirthDay]) VALUES (2, N'admin', N'Admin', N'Admin', N'0375238231', N'haihm2@gmail.com', N'$2a$12$fEEV4s.4Dx1g9DD8WKT4Y.rr266kDG/4iVQQFm0iYJsDFsWhKrAlC', N'a', NULL, NULL, 1, 1, NULL, 0, N'Sài Gòn', NULL, N'haihm', NULL, N'haihm', NULL, NULL, 0, CAST(N'1996-11-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Users] ([Id], [Username], [FullName], [Code], [PhoneNumber], [Email], [Password], [Salt], [FromDate], [ToDate], [IsOnline], [IsActive], [LastLoginDate], [IsDelete], [Address], [Avatar], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CountLoginFail], [Gender], [BirthDay]) VALUES (3, N'memberRed', N'member Red ', N'Member', N'0385238232', N'haihm3@gmail.com', N'$2a$12$q2VaCJD5k38YnMUOwKaTjutg94XE7yK/rKcOLGmK00eQvFHn9fxF6', N'a', NULL, NULL, 1, 1, NULL, 0, N'Hà Nội', NULL, N'haihm', NULL, N'haihm', NULL, NULL, 1, CAST(N'1996-11-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Users] ([Id], [Username], [FullName], [Code], [PhoneNumber], [Email], [Password], [Salt], [FromDate], [ToDate], [IsOnline], [IsActive], [LastLoginDate], [IsDelete], [Address], [Avatar], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CountLoginFail], [Gender], [BirthDay]) VALUES (4, N'memberBlue', N'Member', N'Member', N'0385238236', N'haihm4@gmail.com', N'$2a$12$q2VaCJD5k38YnMUOwKaTjutg94XE7yK/rKcOLGmK00eQvFHn9fxF6', N'a', NULL, NULL, 1, 1, NULL, 0, N'Ninh Bình', NULL, N'haihm', NULL, N'haihm', NULL, NULL, 0, CAST(N'1996-11-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Users] ([Id], [Username], [FullName], [Code], [PhoneNumber], [Email], [Password], [Salt], [FromDate], [ToDate], [IsOnline], [IsActive], [LastLoginDate], [IsDelete], [Address], [Avatar], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CountLoginFail], [Gender], [BirthDay]) VALUES (5, N'haihm', N'Member', N'Member', N'0385238235', N'haihm5@gmail.com', N'$2a$12$q2VaCJD5k38YnMUOwKaTjutg94XE7yK/rKcOLGmK00eQvFHn9fxF6', N'Salt', NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  StoredProcedure [dbo].[prc_asd_Delete_AppGroupRole]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prc_asd_Delete_AppGroupRole]
	
	@ID bigint
	
AS

DELETE FROM [APP_GROUP_ROLE]

WHERE
	
	[ID] = @ID
	

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Delete_AppParam]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prc_asd_Delete_AppParam]
	
	@ID bigint
	
AS

DELETE FROM [APP_PARAM]

WHERE
	
	[ID] = @ID
	

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Delete_Group]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prc_asd_Delete_Group]
	
	@ID bigint
	
AS

DELETE FROM [GROUPS]

WHERE
	
	[ID] = @ID
	

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Delete_LoginLog]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prc_asd_Delete_LoginLog]
	
	@ID bigint
	
AS

DELETE FROM [LOGIN_LOG]

WHERE
	
	[ID] = @ID
	

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Delete_Role]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prc_asd_Delete_Role]
	
	@ID bigint
	
AS

DELETE FROM [ROLES]

WHERE
	
	[ID] = @ID
	

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Delete_SsoApplication]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prc_asd_Delete_SsoApplication]
	
	@ID bigint
	
AS

DELETE FROM [SSO_APPLICATION]

WHERE
	
	[ID] = @ID
	

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Delete_User]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prc_asd_Delete_User]
	
	@ID bigint
	
AS

DELETE FROM [USERS]

WHERE
	
	[ID] = @ID
	

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Delete_UserGroup]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prc_asd_Delete_UserGroup]
	
	@ID bigint
	
AS

DELETE FROM [USER_GROUP]

WHERE
	
	[ID] = @ID
	

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_All_AppGroupRole]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_All_AppGroupRole]
AS

SELECT
	[ID],
	[APP_ID],
	[GROUP_ID],
	[ROLE_ID],
	[STATUS],
	[DESCRIPTION],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
FROM
	[APP_GROUP_ROLE]


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_All_AppParam]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_All_AppParam]
AS

SELECT
	[ID],
	[TYPE],
	[CODE],
	[NAME],
	[VALUE],
	[ORDER_NO],
	[DESCRIPTION],
	[STATUS],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
FROM
	[APP_PARAM]


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_All_Group]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_All_Group]
AS

SELECT
	[ID],
	[APP_ID],
	[PARENT_ID],
	[CODE],
	[NAME],
	[DESCRIPTION],
	[STATUS],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
FROM
	[GROUPS]


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_All_LoginLog]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_All_LoginLog]
AS

SELECT
	[ID],
	[APP_ID],
	[USER_ID],
	[USER_NAME],
	[ACTION_LOG],
	[ACTION_DATE],
	[REMOTE_IP],
	[ACTION_RESULT]
FROM
	[LOGIN_LOG]


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_All_Role]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_All_Role]
AS

SELECT
	[ID],
	[APP_ID],
	[PARENT_ID],
	[CODE],
	[NAME],
	[DESCRIPTION],
	[FROM_DATE],
	[TO_DATE],
	[STATUS],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
FROM
	[ROLES]


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_All_SsoApplication]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_All_SsoApplication]
AS

SELECT
	[ID],
	[PARENT_ID],
	[CODE],
	[NAME],
	[TOKEN],
	[DESCRIPTION],
	[URL],
	[ICON],
	[FROM_DATE],
	[TO_DATE],
	[STATUS],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
FROM
	[SSO_APPLICATION]


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_All_User]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_All_User]
AS

SELECT
	[ID],
	[GUID_ID],
	[NAME],
	[FULL_NAME],
	[CODE],
	[MOBILE],
	[EMAIL],
	[PASSWORD],
	[SALT],
	[FROM_DATE],
	[TO_DATE],
	[IS_ONLINE],
	[IS_LOCKED],
	[LAST_LOGIN_DATE],
	[LAST_LOGOUT_DATE],
	[STATUS],
	[TYPE],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE],
	[LAST_PASSWORD_CHANGED_DATE],
	[IS_ADMIN],
	[LAST_LOCKOUT_DATE],
	[FAILED_PASSWORD_ATTEMPT_COUNT]
FROM
	[USERS]


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_All_UserGroup]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_All_UserGroup]
AS

SELECT
	[ID],
	[USER_ID],
	[GROUP_ID],
	[DESCRIPTION],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
FROM
	[USER_GROUP]


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_ByID_AppGroupRole]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_ByID_AppGroupRole]
	@ID bigint
AS

SELECT
	[ID],
	[APP_ID],
	[GROUP_ID],
	[ROLE_ID],
	[STATUS],
	[DESCRIPTION],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
FROM
	[APP_GROUP_ROLE]
WHERE
	[ID] = @ID


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_ByID_AppParam]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_ByID_AppParam]
	@ID bigint
AS

SELECT
	[ID],
	[TYPE],
	[CODE],
	[NAME],
	[VALUE],
	[ORDER_NO],
	[DESCRIPTION],
	[STATUS],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
FROM
	[APP_PARAM]
WHERE
	[ID] = @ID


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_ByID_Group]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_ByID_Group]
	@ID bigint
AS

SELECT
	[ID],
	[APP_ID],
	[PARENT_ID],
	[CODE],
	[NAME],
	[DESCRIPTION],
	[STATUS],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
FROM
	[GROUPS]
WHERE
	[ID] = @ID


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_ByID_LoginLog]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_ByID_LoginLog]
	@ID bigint
AS

SELECT
	[ID],
	[APP_ID],
	[USER_ID],
	[USER_NAME],
	[ACTION_LOG],
	[ACTION_DATE],
	[REMOTE_IP],
	[ACTION_RESULT]
FROM
	[LOGIN_LOG]
WHERE
	[ID] = @ID


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_ByID_Role]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_ByID_Role]
	@ID bigint
AS

SELECT
	[ID],
	[APP_ID],
	[PARENT_ID],
	[CODE],
	[NAME],
	[DESCRIPTION],
	[FROM_DATE],
	[TO_DATE],
	[STATUS],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
FROM
	[ROLES]
WHERE
	[ID] = @ID


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_ByID_SsoApplication]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_ByID_SsoApplication]
	@ID bigint
AS

SELECT
	[ID],
	[PARENT_ID],
	[CODE],
	[NAME],
	[TOKEN],
	[DESCRIPTION],
	[URL],
	[ICON],
	[FROM_DATE],
	[TO_DATE],
	[STATUS],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
FROM
	[SSO_APPLICATION]
WHERE
	[ID] = @ID


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_ByID_User]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_ByID_User]
	@ID bigint
AS

SELECT
	[ID],
	[GUID_ID],
	[NAME],
	[FULL_NAME],
	[CODE],
	[MOBILE],
	[EMAIL],
	[PASSWORD],
	[SALT],
	[FROM_DATE],
	[TO_DATE],
	[IS_ONLINE],
	[IS_LOCKED],
	[LAST_LOGIN_DATE],
	[LAST_LOGOUT_DATE],
	[STATUS],
	[TYPE],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE],
	[LAST_PASSWORD_CHANGED_DATE],
	[IS_ADMIN],
	[LAST_LOCKOUT_DATE],
	[FAILED_PASSWORD_ATTEMPT_COUNT]
FROM
	[USERS]
WHERE
	[ID] = @ID


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_ByID_UserGroup]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_ByID_UserGroup]
	@ID bigint
AS

SELECT
	[ID],
	[USER_ID],
	[GROUP_ID],
	[DESCRIPTION],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
FROM
	[USER_GROUP]
WHERE
	[ID] = @ID


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_PagingData_AppGroupRole]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_PagingData_AppGroupRole]
	@pageIndex int = 1,
	@pageSize int = 12,	
	@orderby varchar(100) = NULL,
	@directionSort varchar(10) = 'DESC',
	@totalRows int out
AS

SET NOCOUNT ON

IF @directionSort is null begin
	set @directionSort = 'DESC'
end

DECLARE @sqlStr nvarchar(4000)
	
	SELECT @sqlStr='SELECT TOP '+convert(nvarchar, @pageSize)+' RowID,		
		[ID],		
		[APP_ID],		
		[GROUP_ID],		
		[ROLE_ID],		
		[STATUS],		
		[DESCRIPTION],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],
		TotalRows 
	FROM	(

		SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'),		
		[ID],		
		[APP_ID],		
		[GROUP_ID],		
		[ROLE_ID],		
		[STATUS],		
		[DESCRIPTION],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],
		TotalRows = COUNT(*) OVER()
	
		FROM [APP_GROUP_ROLE]
	)

	A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
	EXECUTE (@sqlStr)
	
	SET NOCOUNT OFF

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_PagingData_AppParam]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_PagingData_AppParam]
	@pageIndex int = 1,
	@pageSize int = 12,	
	@orderby varchar(100) = NULL,
	@directionSort varchar(10) = 'DESC',
	@totalRows int out
AS

SET NOCOUNT ON

IF @directionSort is null begin
	set @directionSort = 'DESC'
end

DECLARE @sqlStr nvarchar(4000)
	
	SELECT @sqlStr='SELECT TOP '+convert(nvarchar, @pageSize)+' RowID,		
		[ID],		
		[TYPE],		
		[CODE],		
		[NAME],		
		[VALUE],		
		[ORDER_NO],		
		[DESCRIPTION],		
		[STATUS],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],
		TotalRows 
	FROM	(

		SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'),		
		[ID],		
		[TYPE],		
		[CODE],		
		[NAME],		
		[VALUE],		
		[ORDER_NO],		
		[DESCRIPTION],		
		[STATUS],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],
		TotalRows = COUNT(*) OVER()
	
		FROM [APP_PARAM]
	)

	A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
	EXECUTE (@sqlStr)
	
	SET NOCOUNT OFF

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_PagingData_Group]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_PagingData_Group]
	@pageIndex int = 1,
	@pageSize int = 12,	
	@orderby varchar(100) = NULL,
	@directionSort varchar(10) = 'DESC',
	@totalRows int out
AS

SET NOCOUNT ON

IF @directionSort is null begin
	set @directionSort = 'DESC'
end

DECLARE @sqlStr nvarchar(4000)
	
	SELECT @sqlStr='SELECT TOP '+convert(nvarchar, @pageSize)+' RowID,		
		[ID],		
		[APP_ID],		
		[PARENT_ID],		
		[CODE],		
		[NAME],		
		[DESCRIPTION],		
		[STATUS],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],
		TotalRows 
	FROM	(

		SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'),		
		[ID],		
		[APP_ID],		
		[PARENT_ID],		
		[CODE],		
		[NAME],		
		[DESCRIPTION],		
		[STATUS],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],
		TotalRows = COUNT(*) OVER()
	
		FROM [GROUPS]
	)

	A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
	EXECUTE (@sqlStr)
	
	SET NOCOUNT OFF

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_PagingData_LoginLog]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_PagingData_LoginLog]
	@pageIndex int = 1,
	@pageSize int = 12,	
	@orderby varchar(100) = NULL,
	@directionSort varchar(10) = 'DESC',
	@totalRows int out
AS

SET NOCOUNT ON

IF @directionSort is null begin
	set @directionSort = 'DESC'
end

DECLARE @sqlStr nvarchar(4000)
	
	SELECT @sqlStr='SELECT TOP '+convert(nvarchar, @pageSize)+' RowID,		
		[ID],		
		[APP_ID],		
		[USER_ID],		
		[USER_NAME],		
		[ACTION_LOG],		
		[ACTION_DATE],		
		[REMOTE_IP],		
		[ACTION_RESULT],
		TotalRows 
	FROM	(

		SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'),		
		[ID],		
		[APP_ID],		
		[USER_ID],		
		[USER_NAME],		
		[ACTION_LOG],		
		[ACTION_DATE],		
		[REMOTE_IP],		
		[ACTION_RESULT],
		TotalRows = COUNT(*) OVER()
	
		FROM [LOGIN_LOG]
	)

	A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
	EXECUTE (@sqlStr)
	
	SET NOCOUNT OFF

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_PagingData_Role]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_PagingData_Role]
	@pageIndex int = 1,
	@pageSize int = 12,	
	@orderby varchar(100) = NULL,
	@directionSort varchar(10) = 'DESC',
	@totalRows int out
AS

SET NOCOUNT ON

IF @directionSort is null begin
	set @directionSort = 'DESC'
end

DECLARE @sqlStr nvarchar(4000)
	
	SELECT @sqlStr='SELECT TOP '+convert(nvarchar, @pageSize)+' RowID,		
		[ID],		
		[APP_ID],		
		[PARENT_ID],		
		[CODE],		
		[NAME],		
		[DESCRIPTION],		
		[FROM_DATE],		
		[TO_DATE],		
		[STATUS],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],
		TotalRows 
	FROM	(

		SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'),		
		[ID],		
		[APP_ID],		
		[PARENT_ID],		
		[CODE],		
		[NAME],		
		[DESCRIPTION],		
		[FROM_DATE],		
		[TO_DATE],		
		[STATUS],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],
		TotalRows = COUNT(*) OVER()
	
		FROM [ROLES]
	)

	A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
	EXECUTE (@sqlStr)
	
	SET NOCOUNT OFF

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_PagingData_SsoApplication]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_PagingData_SsoApplication]
	@pageIndex int = 1,
	@pageSize int = 12,	
	@orderby varchar(100) = NULL,
	@directionSort varchar(10) = 'DESC',
	@totalRows int out
AS

SET NOCOUNT ON

IF @directionSort is null begin
	set @directionSort = 'DESC'
end

IF @orderby is null
	Begin Set @orderby = 'ID'
END

DECLARE @sqlStr nvarchar(4000)
	
	SELECT @sqlStr='SELECT TOP '+convert(nvarchar, @pageSize)+' RowID,		
		[ID],		
		[PARENT_ID],		
		[CODE],		
		[NAME],		
		[TOKEN],		
		[DESCRIPTION],		
		[URL],		
		[ICON],		
		[FROM_DATE],		
		[TO_DATE],		
		[STATUS],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],
		TotalRows 
	FROM	(

		SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'),		
		[ID],		
		[PARENT_ID],		
		[CODE],		
		[NAME],		
		[TOKEN],		
		[DESCRIPTION],		
		[URL],		
		[ICON],		
		[FROM_DATE],		
		[TO_DATE],		
		[STATUS],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],
		TotalRows = COUNT(*) OVER()
	
		FROM [SSO_APPLICATION]
	)

	A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
	EXECUTE (@sqlStr)
	
	SET @totalRows = (Select COUNT(*) from SSO_APPLICATION)

	SET NOCOUNT OFF

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_PagingData_User]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_PagingData_User]
	@pageIndex int = 1,
	@pageSize int = 12,	
	@orderby varchar(100) = NULL,
	@directionSort varchar(10) = 'DESC',
	@totalRows int out
AS

SET NOCOUNT ON

IF @directionSort is null begin
	set @directionSort = 'DESC'
end

DECLARE @sqlStr nvarchar(4000)
	
	SELECT @sqlStr='SELECT TOP '+convert(nvarchar, @pageSize)+' RowID,		
		[ID],		
		[GUID_ID],		
		[NAME],		
		[FULL_NAME],		
		[CODE],		
		[MOBILE],		
		[EMAIL],		
		[PASSWORD],		
		[SALT],		
		[FROM_DATE],		
		[TO_DATE],		
		[IS_ONLINE],		
		[IS_LOCKED],		
		[LAST_LOGIN_DATE],		
		[LAST_LOGOUT_DATE],		
		[STATUS],		
		[TYPE],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],		
		[LAST_PASSWORD_CHANGED_DATE],		
		[IS_ADMIN],		
		[LAST_LOCKOUT_DATE],		
		[FAILED_PASSWORD_ATTEMPT_COUNT],
		TotalRows 
	FROM	(

		SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'),		
		[ID],		
		[GUID_ID],		
		[NAME],		
		[FULL_NAME],		
		[CODE],		
		[MOBILE],		
		[EMAIL],		
		[PASSWORD],		
		[SALT],		
		[FROM_DATE],		
		[TO_DATE],		
		[IS_ONLINE],		
		[IS_LOCKED],		
		[LAST_LOGIN_DATE],		
		[LAST_LOGOUT_DATE],		
		[STATUS],		
		[TYPE],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],		
		[LAST_PASSWORD_CHANGED_DATE],		
		[IS_ADMIN],		
		[LAST_LOCKOUT_DATE],		
		[FAILED_PASSWORD_ATTEMPT_COUNT],
		TotalRows = COUNT(*) OVER()
	
		FROM [USERS]
	)

	A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
	EXECUTE (@sqlStr)
	
	SET NOCOUNT OFF

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Get_PagingData_UserGroup]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Get_PagingData_UserGroup]
	@pageIndex int = 1,
	@pageSize int = 12,	
	@orderby varchar(100) = NULL,
	@directionSort varchar(10) = 'DESC',
	@totalRows int out
AS

SET NOCOUNT ON

IF @directionSort is null begin
	set @directionSort = 'DESC'
end

DECLARE @sqlStr nvarchar(4000)
	
	SELECT @sqlStr='SELECT TOP '+convert(nvarchar, @pageSize)+' RowID,		
		[ID],		
		[USER_ID],		
		[GROUP_ID],		
		[DESCRIPTION],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],
		TotalRows 
	FROM	(

		SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'),		
		[ID],		
		[USER_ID],		
		[GROUP_ID],		
		[DESCRIPTION],		
		[CREATED_BY],		
		[CREATED_DATE],		
		[UPDATED_BY],		
		[UPDATED_DATE],
		TotalRows = COUNT(*) OVER()
	
		FROM [USER_GROUP]
	)

	A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
	EXECUTE (@sqlStr)
	
	SET NOCOUNT OFF

GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Insert_AppGroupRole]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[prc_asd_Insert_AppGroupRole]
	@ID bigint  = NULL,
	@APP_ID bigint  = NULL,
	@GROUP_ID bigint  = NULL,
	@ROLE_ID bigint  = NULL,
	@STATUS smallint  = NULL,
	@DESCRIPTION nvarchar(250)  = NULL,
	@CREATED_BY nvarchar(250)  = NULL,
	@CREATED_DATE datetime  = NULL,
	@UPDATED_BY nvarchar(250)  = NULL,
	@UPDATED_DATE datetime  = NULL
AS


INSERT INTO [APP_GROUP_ROLE] (
	[ID],
	[APP_ID],
	[GROUP_ID],
	[ROLE_ID],
	[STATUS],
	[DESCRIPTION],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
) VALUES (
	@ID,
	@APP_ID,
	@GROUP_ID,
	@ROLE_ID,
	@STATUS,
	@DESCRIPTION,
	@CREATED_BY,
	@CREATED_DATE,
	@UPDATED_BY,
	@UPDATED_DATE
)


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Insert_AppParam]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[prc_asd_Insert_AppParam]
	@ID bigint  = NULL,
	@TYPE varchar(50)  = NULL,
	@CODE varchar(50)  = NULL,
	@NAME nvarchar(200)  = NULL,
	@VALUE nvarchar(200)  = NULL,
	@ORDER_NO smallint  = NULL,
	@DESCRIPTION nvarchar(300)  = NULL,
	@STATUS smallint  = NULL,
	@CREATED_BY nvarchar(250)  = NULL,
	@CREATED_DATE datetime  = NULL,
	@UPDATED_BY nvarchar(250)  = NULL,
	@UPDATED_DATE datetime  = NULL
AS


INSERT INTO [APP_PARAM] (
	[ID],
	[TYPE],
	[CODE],
	[NAME],
	[VALUE],
	[ORDER_NO],
	[DESCRIPTION],
	[STATUS],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
) VALUES (
	@ID,
	@TYPE,
	@CODE,
	@NAME,
	@VALUE,
	@ORDER_NO,
	@DESCRIPTION,
	@STATUS,
	@CREATED_BY,
	@CREATED_DATE,
	@UPDATED_BY,
	@UPDATED_DATE
)


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Insert_Group]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[prc_asd_Insert_Group]
	@ID bigint  = NULL,
	@APP_ID bigint  = NULL,
	@PARENT_ID bigint  = NULL,
	@CODE nvarchar(50)  = NULL,
	@NAME nvarchar(250)  = NULL,
	@DESCRIPTION nvarchar(500)  = NULL,
	@STATUS smallint  = NULL,
	@CREATED_BY nvarchar(255)  = NULL,
	@CREATED_DATE datetime  = NULL,
	@UPDATED_BY nvarchar(255)  = NULL,
	@UPDATED_DATE datetime  = NULL
AS


INSERT INTO [GROUPS] (
	[ID],
	[APP_ID],
	[PARENT_ID],
	[CODE],
	[NAME],
	[DESCRIPTION],
	[STATUS],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
) VALUES (
	@ID,
	@APP_ID,
	@PARENT_ID,
	@CODE,
	@NAME,
	@DESCRIPTION,
	@STATUS,
	@CREATED_BY,
	@CREATED_DATE,
	@UPDATED_BY,
	@UPDATED_DATE
)


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Insert_LoginLog]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[prc_asd_Insert_LoginLog]
	@ID bigint  = NULL,
	@APP_ID bigint  = NULL,
	@USER_ID bigint  = NULL,
	@USER_NAME nvarchar(50)  = NULL,
	@ACTION_LOG nvarchar(1000)  = NULL,
	@ACTION_DATE datetime  = NULL,
	@REMOTE_IP nvarchar(50)  = NULL,
	@ACTION_RESULT nvarchar(500)  = NULL
AS


INSERT INTO [LOGIN_LOG] (
	[ID],
	[APP_ID],
	[USER_ID],
	[USER_NAME],
	[ACTION_LOG],
	[ACTION_DATE],
	[REMOTE_IP],
	[ACTION_RESULT]
) VALUES (
	@ID,
	@APP_ID,
	@USER_ID,
	@USER_NAME,
	@ACTION_LOG,
	@ACTION_DATE,
	@REMOTE_IP,
	@ACTION_RESULT
)


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Insert_Role]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[prc_asd_Insert_Role]
	@ID bigint  = NULL,
	@APP_ID bigint  = NULL,
	@PARENT_ID bigint  = NULL,
	@CODE nvarchar(50)  = NULL,
	@NAME nvarchar(250)  = NULL,
	@DESCRIPTION nvarchar(500)  = NULL,
	@FROM_DATE datetime  = NULL,
	@TO_DATE datetime  = NULL,
	@STATUS smallint  = NULL,
	@CREATED_BY nvarchar(255)  = NULL,
	@CREATED_DATE datetime  = NULL,
	@UPDATED_BY nvarchar(255)  = NULL,
	@UPDATED_DATE datetime  = NULL
AS


INSERT INTO [ROLES] (
	[ID],
	[APP_ID],
	[PARENT_ID],
	[CODE],
	[NAME],
	[DESCRIPTION],
	[FROM_DATE],
	[TO_DATE],
	[STATUS],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
) VALUES (
	@ID,
	@APP_ID,
	@PARENT_ID,
	@CODE,
	@NAME,
	@DESCRIPTION,
	@FROM_DATE,
	@TO_DATE,
	@STATUS,
	@CREATED_BY,
	@CREATED_DATE,
	@UPDATED_BY,
	@UPDATED_DATE
)


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Insert_SsoApplication]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[prc_asd_Insert_SsoApplication]
	@ID bigint  = NULL,
	@PARENT_ID bigint  = NULL,
	@CODE nvarchar(50)  = NULL,
	@NAME nvarchar(250)  = NULL,
	@TOKEN nvarchar(300)  = NULL,
	@DESCRIPTION nvarchar(500)  = NULL,
	@URL nvarchar(500)  = NULL,
	@ICON nvarchar(50)  = NULL,
	@FROM_DATE datetime  = NULL,
	@TO_DATE datetime  = NULL,
	@STATUS smallint  = NULL,
	@CREATED_BY nvarchar(255)  = NULL,
	@CREATED_DATE datetime  = NULL,
	@UPDATED_BY nvarchar(255)  = NULL,
	@UPDATED_DATE datetime  = NULL
AS


INSERT INTO [SSO_APPLICATION] (
	[ID],
	[PARENT_ID],
	[CODE],
	[NAME],
	[TOKEN],
	[DESCRIPTION],
	[URL],
	[ICON],
	[FROM_DATE],
	[TO_DATE],
	[STATUS],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
) VALUES (
	@ID,
	@PARENT_ID,
	@CODE,
	@NAME,
	@TOKEN,
	@DESCRIPTION,
	@URL,
	@ICON,
	@FROM_DATE,
	@TO_DATE,
	@STATUS,
	@CREATED_BY,
	@CREATED_DATE,
	@UPDATED_BY,
	@UPDATED_DATE
)


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Insert_User]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[prc_asd_Insert_User]
	@ID bigint  = NULL,
	@GUID_ID nvarchar(50)  = NULL,
	@NAME nvarchar(50)  = NULL,
	@FULL_NAME nvarchar(300)  = NULL,
	@CODE nvarchar(50)  = NULL,
	@MOBILE nvarchar(50)  = NULL,
	@EMAIL nvarchar(50)  = NULL,
	@PASSWORD nvarchar(100)  = NULL,
	@SALT nvarchar(100)  = NULL,
	@FROM_DATE datetime  = NULL,
	@TO_DATE datetime  = NULL,
	@IS_ONLINE smallint  = NULL,
	@IS_LOCKED smallint  = NULL,
	@LAST_LOGIN_DATE datetime  = NULL,
	@LAST_LOGOUT_DATE datetime  = NULL,
	@STATUS smallint  = NULL,
	@TYPE varchar(255)  = NULL,
	@CREATED_BY nvarchar(255)  = NULL,
	@CREATED_DATE datetime  = NULL,
	@UPDATED_BY nvarchar(255)  = NULL,
	@UPDATED_DATE datetime  = NULL,
	@LAST_PASSWORD_CHANGED_DATE datetime  = NULL,
	@IS_ADMIN smallint  = NULL,
	@LAST_LOCKOUT_DATE datetime  = NULL,
	@FAILED_PASSWORD_ATTEMPT_COUNT float  = NULL
AS


INSERT INTO [USERS] (
	[ID],
	[GUID_ID],
	[NAME],
	[FULL_NAME],
	[CODE],
	[MOBILE],
	[EMAIL],
	[PASSWORD],
	[SALT],
	[FROM_DATE],
	[TO_DATE],
	[IS_ONLINE],
	[IS_LOCKED],
	[LAST_LOGIN_DATE],
	[LAST_LOGOUT_DATE],
	[STATUS],
	[TYPE],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE],
	[LAST_PASSWORD_CHANGED_DATE],
	[IS_ADMIN],
	[LAST_LOCKOUT_DATE],
	[FAILED_PASSWORD_ATTEMPT_COUNT]
) VALUES (
	@ID,
	@GUID_ID,
	@NAME,
	@FULL_NAME,
	@CODE,
	@MOBILE,
	@EMAIL,
	@PASSWORD,
	@SALT,
	@FROM_DATE,
	@TO_DATE,
	@IS_ONLINE,
	@IS_LOCKED,
	@LAST_LOGIN_DATE,
	@LAST_LOGOUT_DATE,
	@STATUS,
	@TYPE,
	@CREATED_BY,
	@CREATED_DATE,
	@UPDATED_BY,
	@UPDATED_DATE,
	@LAST_PASSWORD_CHANGED_DATE,
	@IS_ADMIN,
	@LAST_LOCKOUT_DATE,
	@FAILED_PASSWORD_ATTEMPT_COUNT
)


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Insert_UserGroup]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[prc_asd_Insert_UserGroup]
	@ID bigint  = NULL,
	@USER_ID bigint  = NULL,
	@GROUP_ID bigint  = NULL,
	@DESCRIPTION nvarchar(250)  = NULL,
	@CREATED_BY nvarchar(250)  = NULL,
	@CREATED_DATE datetime  = NULL,
	@UPDATED_BY nvarchar(250)  = NULL,
	@UPDATED_DATE datetime  = NULL
AS


INSERT INTO [USER_GROUP] (
	[ID],
	[USER_ID],
	[GROUP_ID],
	[DESCRIPTION],
	[CREATED_BY],
	[CREATED_DATE],
	[UPDATED_BY],
	[UPDATED_DATE]
) VALUES (
	@ID,
	@USER_ID,
	@GROUP_ID,
	@DESCRIPTION,
	@CREATED_BY,
	@CREATED_DATE,
	@UPDATED_BY,
	@UPDATED_DATE
)


GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Search_AppGroupRole]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[prc_asd_Search_AppGroupRole]
	@ID bigint = NULL,
	@APP_ID bigint = NULL,
	@GROUP_ID bigint = NULL,
	@ROLE_ID bigint = NULL,
	@STATUS smallint = NULL,
	@DESCRIPTION nvarchar(250) = NULL,
	@CREATED_BY nvarchar(250) = NULL,
	@CREATED_DATE datetime = NULL,
	@UPDATED_BY nvarchar(250) = NULL,
	@UPDATED_DATE datetime = NULL,
    @orderBy nvarchar(400),
	@directionSort nvarchar(10) = 'DESC',
    @pageIndex int = 1,
    @pageSize int = 20,
    @totalRows int = 0 out
AS
	SET NOCOUNT ON
	
	IF(@orderby IS NULL)
	BEGIN
		SET @orderby = 'ID';
	END

	DECLARE  @STMT nvarchar(max)         -- SQL to execute  
    SET @STMT =  'SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'), A.*
	FROM     [APP_GROUP_ROLE] A ' 
    + ' WHERE   1=1 ' 
    IF  @ID IS NOT NULL AND @ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ID] = ' + CAST(@ID as nvarchar)
    END
 
    IF  @APP_ID IS NOT NULL AND @APP_ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [APP_ID] = ' + CAST(@APP_ID as nvarchar)
    END
 
    IF  @GROUP_ID IS NOT NULL AND @GROUP_ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [GROUP_ID] = ' + CAST(@GROUP_ID as nvarchar)
    END
 
    IF  @ROLE_ID IS NOT NULL AND @ROLE_ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ROLE_ID] = ' + CAST(@ROLE_ID as nvarchar)
    END
 
    IF  @STATUS IS NOT NULL AND @STATUS > 0 BEGIN 
     SET @STMT = @STMT + ' AND [STATUS] = ' + CAST(@STATUS as nvarchar)
    END
 
    IF  @DESCRIPTION IS NOT NULL AND LEN(@DESCRIPTION) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [DESCRIPTION] LIKE' + ' N''%'+ @DESCRIPTION+'%'''
    END
 
    IF  @CREATED_BY IS NOT NULL AND LEN(@CREATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_BY] LIKE' + ' N''%'+ @CREATED_BY+'%'''
    END
 
    IF  @CREATED_DATE IS NOT NULL AND LEN(@CREATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_DATE] = ' + CONVERT(nvarchar(50), @CREATED_DATE)
    END
 
    IF  @UPDATED_BY IS NOT NULL AND LEN(@UPDATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_BY] LIKE' + ' N''%'+ @UPDATED_BY+'%'''
    END
 
    IF  @UPDATED_DATE IS NOT NULL AND LEN(@UPDATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_DATE] = ' + CONVERT(nvarchar(50), @UPDATED_DATE)
    END
 
    
	set @STMT = 'SELECT TOP '+convert(nvarchar, @pageSize) + ' A.* ' +
	'FROM	(' + @STMT + ') A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
    DECLARE @tmpSql NVARCHAR(MAX)
	DECLARE @ParmDefinition NVARCHAR(255)
	
	SET @tmpSql = 'SELECT @totalRows1 = COUNT(1) FROM (' + @STMT + ') T';	
	
	SET @ParmDefinition = N'@totalRows1 float OUTPUT';
	EXECUTE sp_executesql @tmpSql, @ParmDefinition, @totalRows1=@totalRows OUTPUT;
    
    EXEC (@STMT)  
	
	SET NOCOUNT OFF



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Search_AppParam]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[prc_asd_Search_AppParam]
	@ID bigint = NULL,
	@TYPE varchar(50) = NULL,
	@CODE varchar(50) = NULL,
	@NAME nvarchar(200) = NULL,
	@VALUE nvarchar(200) = NULL,
	@ORDER_NO smallint = NULL,
	@DESCRIPTION nvarchar(300) = NULL,
	@STATUS smallint = NULL,
	@CREATED_BY nvarchar(250) = NULL,
	@CREATED_DATE datetime = NULL,
	@UPDATED_BY nvarchar(250) = NULL,
	@UPDATED_DATE datetime = NULL,
    @orderBy nvarchar(400),
	@directionSort nvarchar(10) = 'DESC',
    @pageIndex int = 1,
    @pageSize int = 20,
    @totalRows int = 0 out
AS
	SET NOCOUNT ON
	
	IF(@orderby IS NULL)
	BEGIN
		SET @orderby = 'ID';
	END

	DECLARE  @STMT nvarchar(max)         -- SQL to execute  
    SET @STMT =  'SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'), A.*
	FROM     [APP_PARAM] A ' 
    + ' WHERE   1=1 ' 
    IF  @ID IS NOT NULL AND @ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ID] = ' + CAST(@ID as nvarchar)
    END
 
    IF  @TYPE IS NOT NULL AND LEN(@TYPE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [TYPE] LIKE' + ' N''%'+ @TYPE+'%'''
    END
 
    IF  @CODE IS NOT NULL AND LEN(@CODE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CODE] LIKE' + ' N''%'+ @CODE+'%'''
    END
 
    IF  @NAME IS NOT NULL AND LEN(@NAME) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [NAME] LIKE' + ' N''%'+ @NAME+'%'''
    END
 
    IF  @VALUE IS NOT NULL AND LEN(@VALUE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [VALUE] LIKE' + ' N''%'+ @VALUE+'%'''
    END
 
    IF  @ORDER_NO IS NOT NULL AND @ORDER_NO > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ORDER_NO] = ' + CAST(@ORDER_NO as nvarchar)
    END
 
    IF  @DESCRIPTION IS NOT NULL AND LEN(@DESCRIPTION) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [DESCRIPTION] LIKE' + ' N''%'+ @DESCRIPTION+'%'''
    END
 
    IF  @STATUS IS NOT NULL AND @STATUS > 0 BEGIN 
     SET @STMT = @STMT + ' AND [STATUS] = ' + CAST(@STATUS as nvarchar)
    END
 
    IF  @CREATED_BY IS NOT NULL AND LEN(@CREATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_BY] LIKE' + ' N''%'+ @CREATED_BY+'%'''
    END
 
    IF  @CREATED_DATE IS NOT NULL AND LEN(@CREATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_DATE] = ' + CONVERT(nvarchar(50), @CREATED_DATE)
    END
 
    IF  @UPDATED_BY IS NOT NULL AND LEN(@UPDATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_BY] LIKE' + ' N''%'+ @UPDATED_BY+'%'''
    END
 
    IF  @UPDATED_DATE IS NOT NULL AND LEN(@UPDATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_DATE] = ' + CONVERT(nvarchar(50), @UPDATED_DATE)
    END
 
    
	set @STMT = 'SELECT TOP '+convert(nvarchar, @pageSize) + ' A.* ' +
	'FROM	(' + @STMT + ') A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
    DECLARE @tmpSql NVARCHAR(MAX)
	DECLARE @ParmDefinition NVARCHAR(255)
	
	SET @tmpSql = 'SELECT @totalRows1 = COUNT(1) FROM (' + @STMT + ') T';	
	
	SET @ParmDefinition = N'@totalRows1 float OUTPUT';
	EXECUTE sp_executesql @tmpSql, @ParmDefinition, @totalRows1=@totalRows OUTPUT;
    
    EXEC (@STMT)  
	
	SET NOCOUNT OFF



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Search_Group]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[prc_asd_Search_Group]
	@ID bigint = NULL,
	@APP_ID bigint = NULL,
	@PARENT_ID bigint = NULL,
	@CODE nvarchar(50) = NULL,
	@NAME nvarchar(250) = NULL,
	@DESCRIPTION nvarchar(500) = NULL,
	@STATUS smallint = NULL,
	@CREATED_BY nvarchar(255) = NULL,
	@CREATED_DATE datetime = NULL,
	@UPDATED_BY nvarchar(255) = NULL,
	@UPDATED_DATE datetime = NULL,
    @orderBy nvarchar(400),
	@directionSort nvarchar(10) = 'DESC',
    @pageIndex int = 1,
    @pageSize int = 20,
    @totalRows int = 0 out
AS
	SET NOCOUNT ON
	
	IF(@orderby IS NULL)
	BEGIN
		SET @orderby = 'ID';
	END

	DECLARE  @STMT nvarchar(max)         -- SQL to execute  
    SET @STMT =  'SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'), A.*
	FROM     [GROUPS] A ' 
    + ' WHERE   1=1 ' 
    IF  @ID IS NOT NULL AND @ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ID] = ' + CAST(@ID as nvarchar)
    END
 
    IF  @APP_ID IS NOT NULL AND @APP_ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [APP_ID] = ' + CAST(@APP_ID as nvarchar)
    END
 
    IF  @PARENT_ID IS NOT NULL AND @PARENT_ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [PARENT_ID] = ' + CAST(@PARENT_ID as nvarchar)
    END
 
    IF  @CODE IS NOT NULL AND LEN(@CODE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CODE] LIKE' + ' N''%'+ @CODE+'%'''
    END
 
    IF  @NAME IS NOT NULL AND LEN(@NAME) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [NAME] LIKE' + ' N''%'+ @NAME+'%'''
    END
 
    IF  @DESCRIPTION IS NOT NULL AND LEN(@DESCRIPTION) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [DESCRIPTION] LIKE' + ' N''%'+ @DESCRIPTION+'%'''
    END
 
    IF  @STATUS IS NOT NULL AND @STATUS > 0 BEGIN 
     SET @STMT = @STMT + ' AND [STATUS] = ' + CAST(@STATUS as nvarchar)
    END
 
    IF  @CREATED_BY IS NOT NULL AND LEN(@CREATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_BY] LIKE' + ' N''%'+ @CREATED_BY+'%'''
    END
 
    IF  @CREATED_DATE IS NOT NULL AND LEN(@CREATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_DATE] = ' + CONVERT(nvarchar(50), @CREATED_DATE)
    END
 
    IF  @UPDATED_BY IS NOT NULL AND LEN(@UPDATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_BY] LIKE' + ' N''%'+ @UPDATED_BY+'%'''
    END
 
    IF  @UPDATED_DATE IS NOT NULL AND LEN(@UPDATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_DATE] = ' + CONVERT(nvarchar(50), @UPDATED_DATE)
    END
 
    
	set @STMT = 'SELECT TOP '+convert(nvarchar, @pageSize) + ' A.* ' +
	'FROM	(' + @STMT + ') A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
    DECLARE @tmpSql NVARCHAR(MAX)
	DECLARE @ParmDefinition NVARCHAR(255)
	
	SET @tmpSql = 'SELECT @totalRows1 = COUNT(1) FROM (' + @STMT + ') T';	
	
	SET @ParmDefinition = N'@totalRows1 float OUTPUT';
	EXECUTE sp_executesql @tmpSql, @ParmDefinition, @totalRows1=@totalRows OUTPUT;
    
    EXEC (@STMT)  
	
	SET NOCOUNT OFF



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Search_LoginLog]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[prc_asd_Search_LoginLog]
	@ID bigint = NULL,
	@APP_ID bigint = NULL,
	@USER_ID bigint = NULL,
	@USER_NAME nvarchar(50) = NULL,
	@ACTION_LOG nvarchar(1000) = NULL,
	@ACTION_DATE datetime = NULL,
	@REMOTE_IP nvarchar(50) = NULL,
	@ACTION_RESULT nvarchar(500) = NULL,
    @orderBy nvarchar(400),
	@directionSort nvarchar(10) = 'DESC',
    @pageIndex int = 1,
    @pageSize int = 20,
    @totalRows int = 0 out
AS
	SET NOCOUNT ON
	
	IF(@orderby IS NULL)
	BEGIN
		SET @orderby = 'ID';
	END

	DECLARE  @STMT nvarchar(max)         -- SQL to execute  
    SET @STMT =  'SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'), A.*
	FROM     [LOGIN_LOG] A ' 
    + ' WHERE   1=1 ' 
    IF  @ID IS NOT NULL AND @ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ID] = ' + CAST(@ID as nvarchar)
    END
 
    IF  @APP_ID IS NOT NULL AND @APP_ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [APP_ID] = ' + CAST(@APP_ID as nvarchar)
    END
 
    IF  @USER_ID IS NOT NULL AND @USER_ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [USER_ID] = ' + CAST(@USER_ID as nvarchar)
    END
 
    IF  @USER_NAME IS NOT NULL AND LEN(@USER_NAME) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [USER_NAME] LIKE' + ' N''%'+ @USER_NAME+'%'''
    END
 
    IF  @ACTION_LOG IS NOT NULL AND LEN(@ACTION_LOG) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ACTION_LOG] LIKE' + ' N''%'+ @ACTION_LOG+'%'''
    END
 
    IF  @ACTION_DATE IS NOT NULL AND LEN(@ACTION_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ACTION_DATE] = ' + CONVERT(nvarchar(50), @ACTION_DATE)
    END
 
    IF  @REMOTE_IP IS NOT NULL AND LEN(@REMOTE_IP) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [REMOTE_IP] LIKE' + ' N''%'+ @REMOTE_IP+'%'''
    END
 
    IF  @ACTION_RESULT IS NOT NULL AND LEN(@ACTION_RESULT) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ACTION_RESULT] LIKE' + ' N''%'+ @ACTION_RESULT+'%'''
    END
 
    
	set @STMT = 'SELECT TOP '+convert(nvarchar, @pageSize) + ' A.* ' +
	'FROM	(' + @STMT + ') A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
    DECLARE @tmpSql NVARCHAR(MAX)
	DECLARE @ParmDefinition NVARCHAR(255)
	
	SET @tmpSql = 'SELECT @totalRows1 = COUNT(1) FROM (' + @STMT + ') T';	
	
	SET @ParmDefinition = N'@totalRows1 float OUTPUT';
	EXECUTE sp_executesql @tmpSql, @ParmDefinition, @totalRows1=@totalRows OUTPUT;
    
    EXEC (@STMT)  
	
	SET NOCOUNT OFF



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Search_Role]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[prc_asd_Search_Role]
	@ID bigint = NULL,
	@APP_ID bigint = NULL,
	@PARENT_ID bigint = NULL,
	@CODE nvarchar(50) = NULL,
	@NAME nvarchar(250) = NULL,
	@DESCRIPTION nvarchar(500) = NULL,
	@FROM_DATE datetime = NULL,
	@TO_DATE datetime = NULL,
	@STATUS smallint = NULL,
	@CREATED_BY nvarchar(255) = NULL,
	@CREATED_DATE datetime = NULL,
	@UPDATED_BY nvarchar(255) = NULL,
	@UPDATED_DATE datetime = NULL,
    @orderBy nvarchar(400),
	@directionSort nvarchar(10) = 'DESC',
    @pageIndex int = 1,
    @pageSize int = 20,
    @totalRows int = 0 out
AS
	SET NOCOUNT ON
	
	IF(@orderby IS NULL)
	BEGIN
		SET @orderby = 'ID';
	END

	DECLARE  @STMT nvarchar(max)         -- SQL to execute  
    SET @STMT =  'SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'), A.*
	FROM     [ROLES] A ' 
    + ' WHERE   1=1 ' 
    IF  @ID IS NOT NULL AND @ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ID] = ' + CAST(@ID as nvarchar)
    END
 
    IF  @APP_ID IS NOT NULL AND @APP_ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [APP_ID] = ' + CAST(@APP_ID as nvarchar)
    END
 
    IF  @PARENT_ID IS NOT NULL AND @PARENT_ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [PARENT_ID] = ' + CAST(@PARENT_ID as nvarchar)
    END
 
    IF  @CODE IS NOT NULL AND LEN(@CODE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CODE] LIKE' + ' N''%'+ @CODE+'%'''
    END
 
    IF  @NAME IS NOT NULL AND LEN(@NAME) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [NAME] LIKE' + ' N''%'+ @NAME+'%'''
    END
 
    IF  @DESCRIPTION IS NOT NULL AND LEN(@DESCRIPTION) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [DESCRIPTION] LIKE' + ' N''%'+ @DESCRIPTION+'%'''
    END
 
    IF  @FROM_DATE IS NOT NULL AND LEN(@FROM_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [FROM_DATE] = ' + CONVERT(nvarchar(50), @FROM_DATE)
    END
 
    IF  @TO_DATE IS NOT NULL AND LEN(@TO_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [TO_DATE] = ' + CONVERT(nvarchar(50), @TO_DATE)
    END
 
    IF  @STATUS IS NOT NULL AND @STATUS > 0 BEGIN 
     SET @STMT = @STMT + ' AND [STATUS] = ' + CAST(@STATUS as nvarchar)
    END
 
    IF  @CREATED_BY IS NOT NULL AND LEN(@CREATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_BY] LIKE' + ' N''%'+ @CREATED_BY+'%'''
    END
 
    IF  @CREATED_DATE IS NOT NULL AND LEN(@CREATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_DATE] = ' + CONVERT(nvarchar(50), @CREATED_DATE)
    END
 
    IF  @UPDATED_BY IS NOT NULL AND LEN(@UPDATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_BY] LIKE' + ' N''%'+ @UPDATED_BY+'%'''
    END
 
    IF  @UPDATED_DATE IS NOT NULL AND LEN(@UPDATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_DATE] = ' + CONVERT(nvarchar(50), @UPDATED_DATE)
    END
 
    
	set @STMT = 'SELECT TOP '+convert(nvarchar, @pageSize) + ' A.* ' +
	'FROM	(' + @STMT + ') A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
    DECLARE @tmpSql NVARCHAR(MAX)
	DECLARE @ParmDefinition NVARCHAR(255)
	
	SET @tmpSql = 'SELECT @totalRows1 = COUNT(1) FROM (' + @STMT + ') T';	
	
	SET @ParmDefinition = N'@totalRows1 float OUTPUT';
	EXECUTE sp_executesql @tmpSql, @ParmDefinition, @totalRows1=@totalRows OUTPUT;
    
    EXEC (@STMT)  
	
	SET NOCOUNT OFF



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Search_SsoApplication]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[prc_asd_Search_SsoApplication]
	@ID bigint = NULL,
	@PARENT_ID bigint = NULL,
	@CODE nvarchar(50) = NULL,
	@NAME nvarchar(250) = NULL,
	@TOKEN nvarchar(300) = NULL,
	@DESCRIPTION nvarchar(500) = NULL,
	@URL nvarchar(500) = NULL,
	@ICON nvarchar(50) = NULL,
	@FROM_DATE datetime = NULL,
	@TO_DATE datetime = NULL,
	@STATUS smallint = NULL,
	@CREATED_BY nvarchar(255) = NULL,
	@CREATED_DATE datetime = NULL,
	@UPDATED_BY nvarchar(255) = NULL,
	@UPDATED_DATE datetime = NULL,
    @orderBy nvarchar(400),
	@directionSort nvarchar(10) = 'DESC',
    @pageIndex int = 1,
    @pageSize int = 20,
    @totalRows int = 0 out
AS
	SET NOCOUNT ON
	
	IF(@orderby IS NULL)
	BEGIN
		SET @orderby = 'ID';
	END

	DECLARE  @STMT nvarchar(max)         -- SQL to execute  
    SET @STMT =  'SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'), A.*
	FROM     [SSO_APPLICATION] A ' 
    + ' WHERE   1=1 ' 
    IF  @ID IS NOT NULL AND @ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ID] = ' + CAST(@ID as nvarchar)
    END
 
    IF  @PARENT_ID IS NOT NULL AND @PARENT_ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [PARENT_ID] = ' + CAST(@PARENT_ID as nvarchar)
    END
 
    IF  @CODE IS NOT NULL AND LEN(@CODE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CODE] LIKE' + ' N''%'+ @CODE+'%'''
    END
 
    IF  @NAME IS NOT NULL AND LEN(@NAME) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [NAME] LIKE' + ' N''%'+ @NAME+'%'''
    END
 
    IF  @TOKEN IS NOT NULL AND LEN(@TOKEN) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [TOKEN] LIKE' + ' N''%'+ @TOKEN+'%'''
    END
 
    IF  @DESCRIPTION IS NOT NULL AND LEN(@DESCRIPTION) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [DESCRIPTION] LIKE' + ' N''%'+ @DESCRIPTION+'%'''
    END
 
    IF  @URL IS NOT NULL AND LEN(@URL) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [URL] LIKE' + ' N''%'+ @URL+'%'''
    END
 
    IF  @ICON IS NOT NULL AND LEN(@ICON) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ICON] LIKE' + ' N''%'+ @ICON+'%'''
    END
 
    IF  @FROM_DATE IS NOT NULL AND LEN(@FROM_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [FROM_DATE] = ' + CONVERT(nvarchar(50), @FROM_DATE)
    END
 
    IF  @TO_DATE IS NOT NULL AND LEN(@TO_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [TO_DATE] = ' + CONVERT(nvarchar(50), @TO_DATE)
    END
 
    IF  @STATUS IS NOT NULL AND @STATUS > 0 BEGIN 
     SET @STMT = @STMT + ' AND [STATUS] = ' + CAST(@STATUS as nvarchar)
    END
 
    IF  @CREATED_BY IS NOT NULL AND LEN(@CREATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_BY] LIKE' + ' N''%'+ @CREATED_BY+'%'''
    END
 
    IF  @CREATED_DATE IS NOT NULL AND LEN(@CREATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_DATE] = ' + CONVERT(nvarchar(50), @CREATED_DATE)
    END
 
    IF  @UPDATED_BY IS NOT NULL AND LEN(@UPDATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_BY] LIKE' + ' N''%'+ @UPDATED_BY+'%'''
    END
 
    IF  @UPDATED_DATE IS NOT NULL AND LEN(@UPDATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_DATE] = ' + CONVERT(nvarchar(50), @UPDATED_DATE)
    END
 
    
	set @STMT = 'SELECT TOP '+convert(nvarchar, @pageSize) + ' A.* ' +
	'FROM	(' + @STMT + ') A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
    DECLARE @tmpSql NVARCHAR(MAX)
	DECLARE @ParmDefinition NVARCHAR(255)
	
	SET @tmpSql = 'SELECT @totalRows1 = COUNT(1) FROM (' + @STMT + ') T';	
	
	SET @ParmDefinition = N'@totalRows1 float OUTPUT';
	EXECUTE sp_executesql @tmpSql, @ParmDefinition, @totalRows1=@totalRows OUTPUT;
    
    EXEC (@STMT)  
	
	SET NOCOUNT OFF



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Search_User]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[prc_asd_Search_User]
	@ID bigint = NULL,
	@GUID_ID nvarchar(50) = NULL,
	@NAME nvarchar(50) = NULL,
	@FULL_NAME nvarchar(300) = NULL,
	@CODE nvarchar(50) = NULL,
	@MOBILE nvarchar(50) = NULL,
	@EMAIL nvarchar(50) = NULL,
	@PASSWORD nvarchar(100) = NULL,
	@SALT nvarchar(100) = NULL,
	@FROM_DATE datetime = NULL,
	@TO_DATE datetime = NULL,
	@IS_ONLINE smallint = NULL,
	@IS_LOCKED smallint = NULL,
	@LAST_LOGIN_DATE datetime = NULL,
	@LAST_LOGOUT_DATE datetime = NULL,
	@STATUS smallint = NULL,
	@TYPE varchar(255) = NULL,
	@CREATED_BY nvarchar(255) = NULL,
	@CREATED_DATE datetime = NULL,
	@UPDATED_BY nvarchar(255) = NULL,
	@UPDATED_DATE datetime = NULL,
	@LAST_PASSWORD_CHANGED_DATE datetime = NULL,
	@IS_ADMIN smallint = NULL,
	@LAST_LOCKOUT_DATE datetime = NULL,
	@FAILED_PASSWORD_ATTEMPT_COUNT float = NULL,
    @orderBy nvarchar(400),
	@directionSort nvarchar(10) = 'DESC',
    @pageIndex int = 1,
    @pageSize int = 20,
    @totalRows int = 0 out
AS
	SET NOCOUNT ON
	
	IF(@orderby IS NULL)
	BEGIN
		SET @orderby = 'ID';
	END

	DECLARE  @STMT nvarchar(max)         -- SQL to execute  
    SET @STMT =  'SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'), A.*
	FROM     [USERS] A ' 
    + ' WHERE   1=1 ' 
    IF  @ID IS NOT NULL AND @ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ID] = ' + CAST(@ID as nvarchar)
    END
 
    IF  @GUID_ID IS NOT NULL AND LEN(@GUID_ID) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [GUID_ID] LIKE' + ' N''%'+ @GUID_ID+'%'''
    END
 
    IF  @NAME IS NOT NULL AND LEN(@NAME) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [NAME] LIKE' + ' N''%'+ @NAME+'%'''
    END
 
    IF  @FULL_NAME IS NOT NULL AND LEN(@FULL_NAME) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [FULL_NAME] LIKE' + ' N''%'+ @FULL_NAME+'%'''
    END
 
    IF  @CODE IS NOT NULL AND LEN(@CODE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CODE] LIKE' + ' N''%'+ @CODE+'%'''
    END
 
    IF  @MOBILE IS NOT NULL AND LEN(@MOBILE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [MOBILE] LIKE' + ' N''%'+ @MOBILE+'%'''
    END
 
    IF  @EMAIL IS NOT NULL AND LEN(@EMAIL) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [EMAIL] LIKE' + ' N''%'+ @EMAIL+'%'''
    END
 
    IF  @PASSWORD IS NOT NULL AND LEN(@PASSWORD) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [PASSWORD] LIKE' + ' N''%'+ @PASSWORD+'%'''
    END
 
    IF  @SALT IS NOT NULL AND LEN(@SALT) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [SALT] LIKE' + ' N''%'+ @SALT+'%'''
    END
 
    IF  @FROM_DATE IS NOT NULL AND LEN(@FROM_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [FROM_DATE] = ' + CONVERT(nvarchar(50), @FROM_DATE)
    END
 
    IF  @TO_DATE IS NOT NULL AND LEN(@TO_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [TO_DATE] = ' + CONVERT(nvarchar(50), @TO_DATE)
    END
 
    IF  @IS_ONLINE IS NOT NULL AND @IS_ONLINE > 0 BEGIN 
     SET @STMT = @STMT + ' AND [IS_ONLINE] = ' + CAST(@IS_ONLINE as nvarchar)
    END
 
    IF  @IS_LOCKED IS NOT NULL AND @IS_LOCKED > 0 BEGIN 
     SET @STMT = @STMT + ' AND [IS_LOCKED] = ' + CAST(@IS_LOCKED as nvarchar)
    END
 
    IF  @LAST_LOGIN_DATE IS NOT NULL AND LEN(@LAST_LOGIN_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [LAST_LOGIN_DATE] = ' + CONVERT(nvarchar(50), @LAST_LOGIN_DATE)
    END
 
    IF  @LAST_LOGOUT_DATE IS NOT NULL AND LEN(@LAST_LOGOUT_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [LAST_LOGOUT_DATE] = ' + CONVERT(nvarchar(50), @LAST_LOGOUT_DATE)
    END
 
    IF  @STATUS IS NOT NULL AND @STATUS > 0 BEGIN 
     SET @STMT = @STMT + ' AND [STATUS] = ' + CAST(@STATUS as nvarchar)
    END
 
    IF  @TYPE IS NOT NULL AND LEN(@TYPE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [TYPE] LIKE' + ' N''%'+ @TYPE+'%'''
    END
 
    IF  @CREATED_BY IS NOT NULL AND LEN(@CREATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_BY] LIKE' + ' N''%'+ @CREATED_BY+'%'''
    END
 
    IF  @CREATED_DATE IS NOT NULL AND LEN(@CREATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_DATE] = ' + CONVERT(nvarchar(50), @CREATED_DATE)
    END
 
    IF  @UPDATED_BY IS NOT NULL AND LEN(@UPDATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_BY] LIKE' + ' N''%'+ @UPDATED_BY+'%'''
    END
 
    IF  @UPDATED_DATE IS NOT NULL AND LEN(@UPDATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_DATE] = ' + CONVERT(nvarchar(50), @UPDATED_DATE)
    END
 
    IF  @LAST_PASSWORD_CHANGED_DATE IS NOT NULL AND LEN(@LAST_PASSWORD_CHANGED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [LAST_PASSWORD_CHANGED_DATE] = ' + CONVERT(nvarchar(50), @LAST_PASSWORD_CHANGED_DATE)
    END
 
    IF  @IS_ADMIN IS NOT NULL AND @IS_ADMIN > 0 BEGIN 
     SET @STMT = @STMT + ' AND [IS_ADMIN] = ' + CAST(@IS_ADMIN as nvarchar)
    END
 
    IF  @LAST_LOCKOUT_DATE IS NOT NULL AND LEN(@LAST_LOCKOUT_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [LAST_LOCKOUT_DATE] = ' + CONVERT(nvarchar(50), @LAST_LOCKOUT_DATE)
    END
 
    IF  @FAILED_PASSWORD_ATTEMPT_COUNT IS NOT NULL AND @FAILED_PASSWORD_ATTEMPT_COUNT > 0 BEGIN 
     SET @STMT = @STMT + ' AND [FAILED_PASSWORD_ATTEMPT_COUNT] = ' + CAST(@FAILED_PASSWORD_ATTEMPT_COUNT as nvarchar)
    END
 
    
	set @STMT = 'SELECT TOP '+convert(nvarchar, @pageSize) + ' A.* ' +
	'FROM	(' + @STMT + ') A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
    DECLARE @tmpSql NVARCHAR(MAX)
	DECLARE @ParmDefinition NVARCHAR(255)
	
	SET @tmpSql = 'SELECT @totalRows1 = COUNT(1) FROM (' + @STMT + ') T';	
	
	SET @ParmDefinition = N'@totalRows1 float OUTPUT';
	EXECUTE sp_executesql @tmpSql, @ParmDefinition, @totalRows1=@totalRows OUTPUT;
    
    EXEC (@STMT)  
	
	SET NOCOUNT OFF



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Search_UserGroup]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[prc_asd_Search_UserGroup]
	@ID bigint = NULL,
	@USER_ID bigint = NULL,
	@GROUP_ID bigint = NULL,
	@DESCRIPTION nvarchar(250) = NULL,
	@CREATED_BY nvarchar(250) = NULL,
	@CREATED_DATE datetime = NULL,
	@UPDATED_BY nvarchar(250) = NULL,
	@UPDATED_DATE datetime = NULL,
    @orderBy nvarchar(400),
	@directionSort nvarchar(10) = 'DESC',
    @pageIndex int = 1,
    @pageSize int = 20,
    @totalRows int = 0 out
AS
	SET NOCOUNT ON
	
	IF(@orderby IS NULL)
	BEGIN
		SET @orderby = 'ID';
	END

	DECLARE  @STMT nvarchar(max)         -- SQL to execute  
    SET @STMT =  'SELECT RowID = ROW_NUMBER() OVER (ORDER BY '+@orderby+' '+@directionSort+'), A.*
	FROM     [USER_GROUP] A ' 
    + ' WHERE   1=1 ' 
    IF  @ID IS NOT NULL AND @ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [ID] = ' + CAST(@ID as nvarchar)
    END
 
    IF  @USER_ID IS NOT NULL AND @USER_ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [USER_ID] = ' + CAST(@USER_ID as nvarchar)
    END
 
    IF  @GROUP_ID IS NOT NULL AND @GROUP_ID > 0 BEGIN 
     SET @STMT = @STMT + ' AND [GROUP_ID] = ' + CAST(@GROUP_ID as nvarchar)
    END
 
    IF  @DESCRIPTION IS NOT NULL AND LEN(@DESCRIPTION) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [DESCRIPTION] LIKE' + ' N''%'+ @DESCRIPTION+'%'''
    END
 
    IF  @CREATED_BY IS NOT NULL AND LEN(@CREATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_BY] LIKE' + ' N''%'+ @CREATED_BY+'%'''
    END
 
    IF  @CREATED_DATE IS NOT NULL AND LEN(@CREATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [CREATED_DATE] = ' + CONVERT(nvarchar(50), @CREATED_DATE)
    END
 
    IF  @UPDATED_BY IS NOT NULL AND LEN(@UPDATED_BY) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_BY] LIKE' + ' N''%'+ @UPDATED_BY+'%'''
    END
 
    IF  @UPDATED_DATE IS NOT NULL AND LEN(@UPDATED_DATE) > 0 BEGIN 
     SET @STMT = @STMT + ' AND [UPDATED_DATE] = ' + CONVERT(nvarchar(50), @UPDATED_DATE)
    END
 
    
	set @STMT = 'SELECT TOP '+convert(nvarchar, @pageSize) + ' A.* ' +
	'FROM	(' + @STMT + ') A WHERE A.RowID > ('+convert(nvarchar, (@pageIndex-1)*@PageSize)+')'
	
    DECLARE @tmpSql NVARCHAR(MAX)
	DECLARE @ParmDefinition NVARCHAR(255)
	
	SET @tmpSql = 'SELECT @totalRows1 = COUNT(1) FROM (' + @STMT + ') T';	
	
	SET @ParmDefinition = N'@totalRows1 float OUTPUT';
	EXECUTE sp_executesql @tmpSql, @ParmDefinition, @totalRows1=@totalRows OUTPUT;
    
    EXEC (@STMT)  
	
	SET NOCOUNT OFF



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Update_AppGroupRole]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Update_AppGroupRole]
	@ID bigint = NULL, 
	@APP_ID bigint = NULL, 
	@GROUP_ID bigint = NULL, 
	@ROLE_ID bigint = NULL, 
	@STATUS smallint = NULL, 
	@DESCRIPTION nvarchar(250) = NULL, 
	@CREATED_BY nvarchar(250) = NULL, 
	@CREATED_DATE datetime = NULL, 
	@UPDATED_BY nvarchar(250) = NULL, 
	@UPDATED_DATE datetime = NULL 
AS

UPDATE [APP_GROUP_ROLE] SET
	[APP_ID] = @APP_ID,
	[GROUP_ID] = @GROUP_ID,
	[ROLE_ID] = @ROLE_ID,
	[STATUS] = @STATUS,
	[DESCRIPTION] = @DESCRIPTION,
	[CREATED_BY] = @CREATED_BY,
	[CREATED_DATE] = @CREATED_DATE,
	[UPDATED_BY] = @UPDATED_BY,
	[UPDATED_DATE] = @UPDATED_DATE
	
WHERE
	[ID] = @ID



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Update_AppParam]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Update_AppParam]
	@ID bigint = NULL, 
	@TYPE varchar(50) = NULL, 
	@CODE varchar(50) = NULL, 
	@NAME nvarchar(200) = NULL, 
	@VALUE nvarchar(200) = NULL, 
	@ORDER_NO smallint = NULL, 
	@DESCRIPTION nvarchar(300) = NULL, 
	@STATUS smallint = NULL, 
	@CREATED_BY nvarchar(250) = NULL, 
	@CREATED_DATE datetime = NULL, 
	@UPDATED_BY nvarchar(250) = NULL, 
	@UPDATED_DATE datetime = NULL 
AS

UPDATE [APP_PARAM] SET
	[TYPE] = @TYPE,
	[CODE] = @CODE,
	[NAME] = @NAME,
	[VALUE] = @VALUE,
	[ORDER_NO] = @ORDER_NO,
	[DESCRIPTION] = @DESCRIPTION,
	[STATUS] = @STATUS,
	[CREATED_BY] = @CREATED_BY,
	[CREATED_DATE] = @CREATED_DATE,
	[UPDATED_BY] = @UPDATED_BY,
	[UPDATED_DATE] = @UPDATED_DATE
	
WHERE
	[ID] = @ID



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Update_Group]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Update_Group]
	@ID bigint = NULL, 
	@APP_ID bigint = NULL, 
	@PARENT_ID bigint = NULL, 
	@CODE nvarchar(50) = NULL, 
	@NAME nvarchar(250) = NULL, 
	@DESCRIPTION nvarchar(500) = NULL, 
	@STATUS smallint = NULL, 
	@CREATED_BY nvarchar(255) = NULL, 
	@CREATED_DATE datetime = NULL, 
	@UPDATED_BY nvarchar(255) = NULL, 
	@UPDATED_DATE datetime = NULL 
AS

UPDATE [GROUPS] SET
	[APP_ID] = @APP_ID,
	[PARENT_ID] = @PARENT_ID,
	[CODE] = @CODE,
	[NAME] = @NAME,
	[DESCRIPTION] = @DESCRIPTION,
	[STATUS] = @STATUS,
	[CREATED_BY] = @CREATED_BY,
	[CREATED_DATE] = @CREATED_DATE,
	[UPDATED_BY] = @UPDATED_BY,
	[UPDATED_DATE] = @UPDATED_DATE
	
WHERE
	[ID] = @ID



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Update_LoginLog]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Update_LoginLog]
	@ID bigint = NULL, 
	@APP_ID bigint = NULL, 
	@USER_ID bigint = NULL, 
	@USER_NAME nvarchar(50) = NULL, 
	@ACTION_LOG nvarchar(1000) = NULL, 
	@ACTION_DATE datetime = NULL, 
	@REMOTE_IP nvarchar(50) = NULL, 
	@ACTION_RESULT nvarchar(500) = NULL 
AS

UPDATE [LOGIN_LOG] SET
	[APP_ID] = @APP_ID,
	[USER_ID] = @USER_ID,
	[USER_NAME] = @USER_NAME,
	[ACTION_LOG] = @ACTION_LOG,
	[ACTION_DATE] = @ACTION_DATE,
	[REMOTE_IP] = @REMOTE_IP,
	[ACTION_RESULT] = @ACTION_RESULT
	
WHERE
	[ID] = @ID



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Update_Role]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Update_Role]
	@ID bigint = NULL, 
	@APP_ID bigint = NULL, 
	@PARENT_ID bigint = NULL, 
	@CODE nvarchar(50) = NULL, 
	@NAME nvarchar(250) = NULL, 
	@DESCRIPTION nvarchar(500) = NULL, 
	@FROM_DATE datetime = NULL, 
	@TO_DATE datetime = NULL, 
	@STATUS smallint = NULL, 
	@CREATED_BY nvarchar(255) = NULL, 
	@CREATED_DATE datetime = NULL, 
	@UPDATED_BY nvarchar(255) = NULL, 
	@UPDATED_DATE datetime = NULL 
AS

UPDATE [ROLES] SET
	[APP_ID] = @APP_ID,
	[PARENT_ID] = @PARENT_ID,
	[CODE] = @CODE,
	[NAME] = @NAME,
	[DESCRIPTION] = @DESCRIPTION,
	[FROM_DATE] = @FROM_DATE,
	[TO_DATE] = @TO_DATE,
	[STATUS] = @STATUS,
	[CREATED_BY] = @CREATED_BY,
	[CREATED_DATE] = @CREATED_DATE,
	[UPDATED_BY] = @UPDATED_BY,
	[UPDATED_DATE] = @UPDATED_DATE
	
WHERE
	[ID] = @ID



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Update_SsoApplication]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Update_SsoApplication]
	@ID bigint = NULL, 
	@PARENT_ID bigint = NULL, 
	@CODE nvarchar(50) = NULL, 
	@NAME nvarchar(250) = NULL, 
	@TOKEN nvarchar(300) = NULL, 
	@DESCRIPTION nvarchar(500) = NULL, 
	@URL nvarchar(500) = NULL, 
	@ICON nvarchar(50) = NULL, 
	@FROM_DATE datetime = NULL, 
	@TO_DATE datetime = NULL, 
	@STATUS smallint = NULL, 
	@CREATED_BY nvarchar(255) = NULL, 
	@CREATED_DATE datetime = NULL, 
	@UPDATED_BY nvarchar(255) = NULL, 
	@UPDATED_DATE datetime = NULL 
AS

UPDATE [SSO_APPLICATION] SET
	[PARENT_ID] = @PARENT_ID,
	[CODE] = @CODE,
	[NAME] = @NAME,
	[TOKEN] = @TOKEN,
	[DESCRIPTION] = @DESCRIPTION,
	[URL] = @URL,
	[ICON] = @ICON,
	[FROM_DATE] = @FROM_DATE,
	[TO_DATE] = @TO_DATE,
	[STATUS] = @STATUS,
	[CREATED_BY] = @CREATED_BY,
	[CREATED_DATE] = @CREATED_DATE,
	[UPDATED_BY] = @UPDATED_BY,
	[UPDATED_DATE] = @UPDATED_DATE
	
WHERE
	[ID] = @ID



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Update_User]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Update_User]
	@ID bigint = NULL, 
	@GUID_ID nvarchar(50) = NULL, 
	@NAME nvarchar(50) = NULL, 
	@FULL_NAME nvarchar(300) = NULL, 
	@CODE nvarchar(50) = NULL, 
	@MOBILE nvarchar(50) = NULL, 
	@EMAIL nvarchar(50) = NULL, 
	@PASSWORD nvarchar(100) = NULL, 
	@SALT nvarchar(100) = NULL, 
	@FROM_DATE datetime = NULL, 
	@TO_DATE datetime = NULL, 
	@IS_ONLINE smallint = NULL, 
	@IS_LOCKED smallint = NULL, 
	@LAST_LOGIN_DATE datetime = NULL, 
	@LAST_LOGOUT_DATE datetime = NULL, 
	@STATUS smallint = NULL, 
	@TYPE varchar(255) = NULL, 
	@CREATED_BY nvarchar(255) = NULL, 
	@CREATED_DATE datetime = NULL, 
	@UPDATED_BY nvarchar(255) = NULL, 
	@UPDATED_DATE datetime = NULL, 
	@LAST_PASSWORD_CHANGED_DATE datetime = NULL, 
	@IS_ADMIN smallint = NULL, 
	@LAST_LOCKOUT_DATE datetime = NULL, 
	@FAILED_PASSWORD_ATTEMPT_COUNT float = NULL 
AS

UPDATE [USERS] SET
	[GUID_ID] = @GUID_ID,
	[NAME] = @NAME,
	[FULL_NAME] = @FULL_NAME,
	[CODE] = @CODE,
	[MOBILE] = @MOBILE,
	[EMAIL] = @EMAIL,
	[PASSWORD] = @PASSWORD,
	[SALT] = @SALT,
	[FROM_DATE] = @FROM_DATE,
	[TO_DATE] = @TO_DATE,
	[IS_ONLINE] = @IS_ONLINE,
	[IS_LOCKED] = @IS_LOCKED,
	[LAST_LOGIN_DATE] = @LAST_LOGIN_DATE,
	[LAST_LOGOUT_DATE] = @LAST_LOGOUT_DATE,
	[STATUS] = @STATUS,
	[TYPE] = @TYPE,
	[CREATED_BY] = @CREATED_BY,
	[CREATED_DATE] = @CREATED_DATE,
	[UPDATED_BY] = @UPDATED_BY,
	[UPDATED_DATE] = @UPDATED_DATE,
	[LAST_PASSWORD_CHANGED_DATE] = @LAST_PASSWORD_CHANGED_DATE,
	[IS_ADMIN] = @IS_ADMIN,
	[LAST_LOCKOUT_DATE] = @LAST_LOCKOUT_DATE,
	[FAILED_PASSWORD_ATTEMPT_COUNT] = @FAILED_PASSWORD_ATTEMPT_COUNT
	
WHERE
	[ID] = @ID



GO
/****** Object:  StoredProcedure [dbo].[prc_asd_Update_UserGroup]    Script Date: 11/8/2019 9:57:39 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prc_asd_Update_UserGroup]
	@ID bigint = NULL, 
	@USER_ID bigint = NULL, 
	@GROUP_ID bigint = NULL, 
	@DESCRIPTION nvarchar(250) = NULL, 
	@CREATED_BY nvarchar(250) = NULL, 
	@CREATED_DATE datetime = NULL, 
	@UPDATED_BY nvarchar(250) = NULL, 
	@UPDATED_DATE datetime = NULL 
AS

UPDATE [USER_GROUP] SET
	[USER_ID] = @USER_ID,
	[GROUP_ID] = @GROUP_ID,
	[DESCRIPTION] = @DESCRIPTION,
	[CREATED_BY] = @CREATED_BY,
	[CREATED_DATE] = @CREATED_DATE,
	[UPDATED_BY] = @UPDATED_BY,
	[UPDATED_DATE] = @UPDATED_DATE
	
WHERE
	[ID] = @ID



GO
