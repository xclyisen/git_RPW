USE [Persons]
GO
/****** Object:  Table [dbo].[T_AdministorOperationLogs]    Script Date: 2015/8/14 10:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_AdministorOperationLogs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OperateDate] [datetime] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Description] [varchar](max) NOT NULL,
 CONSTRAINT [PK_T_AdministorOperationLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[T_AdministorOperationLogs] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[T_AdminUserRoles]    Script Date: 2015/8/14 10:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AdminUserRoles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AdminUserId] [bigint] NOT NULL,
	[RoleId] [bigint] NOT NULL,
 CONSTRAINT [PK_T_AdminUserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[T_AdminUserRoles] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[T_AdminUsers]    Script Date: 2015/8/14 10:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AdminUsers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_T_AdminUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[T_AdminUsers] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[T_KeyWords]    Script Date: 2015/8/14 10:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_KeyWords](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[KeyWord] [varchar](100) NOT NULL,
 CONSTRAINT [PK_T_KeyWords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[T_KeyWords] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[T_Powers]    Script Date: 2015/8/14 10:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Powers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_T_Powers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[T_Powers] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[T_RolePowes]    Script Date: 2015/8/14 10:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_RolePowes](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleId] [bigint] NOT NULL,
	[PowerId] [bigint] NOT NULL,
 CONSTRAINT [PK_T_RolePowes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[T_RolePowes] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[T_Roles]    Script Date: 2015/8/14 10:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Roles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_T_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[T_Roles] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[T_AdministorOperationLogs] ON 

INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (22, CAST(0x0000A4EE0107B5EA AS DateTime), 89, N'“xcl00”，新增用户:“xcl08”,该用户具有的角色: admin  root  学生  教师  网站编辑 ')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (72, CAST(0x0000A4F3001C6C34 AS DateTime), 84, N'“xcl03”，批量删除角色： root  cat  dog ')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (73, CAST(0x0000A4F3001FED7E AS DateTime), 84, N'“xcl03”，修改角色：admin名称为：班主任并且重新分配权限为： 新增前台用户  删除前台用户 ')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (74, CAST(0x0000A4F300201BFE AS DateTime), 84, N'“xcl03”，新增角色：网站管理员')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (75, CAST(0x0000A4F300203C1B AS DateTime), 84, N'“xcl03”，新增角色：网站逻辑')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (76, CAST(0x0000A4F300204965 AS DateTime), 84, N'“xcl03”，修改角色：班主任名称为：班主任并且重新分配权限为： 新增前台用户  删除前台用户 ')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (77, CAST(0x0000A4F30020837B AS DateTime), 84, N'“xcl03”，修改用户:“xcl03”,重新选择了的角色: 网站逻辑 ')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (78, CAST(0x0000A4F300208F91 AS DateTime), 84, N'“xcl03”，修改用户:“xcl04”,重新选择了的角色: 网站逻辑 ')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (79, CAST(0x0000A4F30020ECE8 AS DateTime), 84, N'“xcl03”，新增用户:“xcl”,该用户具有的角色: 网站管理员 ')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (80, CAST(0x0000A4F3016B6B5B AS DateTime), 84, N'“xcl03”，修改用户:“xcl”,重新选择了的角色: 网站管理员 ')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (81, CAST(0x0000A4F3016B8F6B AS DateTime), 84, N'“xcl03”，修改用户:“xcl04”,重新选择了的角色: 教学总监 ')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (82, CAST(0x0000A4F30170AF27 AS DateTime), 85, N'“xcl04”，新增权限：编辑管理用户')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (83, CAST(0x0000A4F30172A351 AS DateTime), 85, N'“xcl04”，新增权限：批量重置管理用户密码')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (84, CAST(0x0000A4F301732040 AS DateTime), 85, N'“xcl04”，修改角色：“教学总监”，名称为：“教学总监”，并且重新分配权限为： 新增课程  删除课程 ')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (85, CAST(0x0000A4F30173292B AS DateTime), 85, N'“xcl04”，修改角色：“教学总监”，名称为：“教学总监”，并且重新分配权限为： 新增课程  删除课程 ')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (86, CAST(0x0000A4F301774C2F AS DateTime), 93, N'“xcl”，禁用用户:“xcl03”')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (87, CAST(0x0000A4F3017774A2 AS DateTime), 93, N'“xcl”，禁用用户:“xcl”')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (88, CAST(0x0000A4F4000B3720 AS DateTime), 85, N'“xcl04”，新增权限：批量删除管理用户')
INSERT [dbo].[T_AdministorOperationLogs] ([Id], [OperateDate], [UserId], [Description]) VALUES (89, CAST(0x0000A4F4000B44D8 AS DateTime), 85, N'“xcl04”，新增权限：批量禁用管理用户')
SET IDENTITY_INSERT [dbo].[T_AdministorOperationLogs] OFF
SET IDENTITY_INSERT [dbo].[T_AdminUserRoles] ON 

INSERT [dbo].[T_AdminUserRoles] ([Id], [AdminUserId], [RoleId]) VALUES (100, 84, 24)
INSERT [dbo].[T_AdminUserRoles] ([Id], [AdminUserId], [RoleId]) VALUES (103, 93, 23)
INSERT [dbo].[T_AdminUserRoles] ([Id], [AdminUserId], [RoleId]) VALUES (104, 85, 1)
SET IDENTITY_INSERT [dbo].[T_AdminUserRoles] OFF
SET IDENTITY_INSERT [dbo].[T_AdminUsers] ON 

INSERT [dbo].[T_AdminUsers] ([Id], [UserName], [PassWord], [IsEnabled]) VALUES (84, N'xcl03', N'202cb962ac59075b964b07152d234b70', 0)
INSERT [dbo].[T_AdminUsers] ([Id], [UserName], [PassWord], [IsEnabled]) VALUES (85, N'xcl04', N'202cb962ac59075b964b07152d234b70', 1)
INSERT [dbo].[T_AdminUsers] ([Id], [UserName], [PassWord], [IsEnabled]) VALUES (88, N'xcl07', N'e10adc3949ba59abbe56e057f20f883e', 1)
INSERT [dbo].[T_AdminUsers] ([Id], [UserName], [PassWord], [IsEnabled]) VALUES (89, N'xcl00', N'202cb962ac59075b964b07152d234b70', 0)
INSERT [dbo].[T_AdminUsers] ([Id], [UserName], [PassWord], [IsEnabled]) VALUES (93, N'xcl', N'202cb962ac59075b964b07152d234b70', 0)
SET IDENTITY_INSERT [dbo].[T_AdminUsers] OFF
SET IDENTITY_INSERT [dbo].[T_KeyWords] ON 

INSERT [dbo].[T_KeyWords] ([Id], [KeyWord]) VALUES (1, N'请选择关键词')
INSERT [dbo].[T_KeyWords] ([Id], [KeyWord]) VALUES (2, N'批量')
INSERT [dbo].[T_KeyWords] ([Id], [KeyWord]) VALUES (3, N'批量修改')
INSERT [dbo].[T_KeyWords] ([Id], [KeyWord]) VALUES (4, N'修改')
INSERT [dbo].[T_KeyWords] ([Id], [KeyWord]) VALUES (5, N'禁用')
INSERT [dbo].[T_KeyWords] ([Id], [KeyWord]) VALUES (6, N'批量禁用')
INSERT [dbo].[T_KeyWords] ([Id], [KeyWord]) VALUES (7, N'删除')
INSERT [dbo].[T_KeyWords] ([Id], [KeyWord]) VALUES (8, N'批量删除')
INSERT [dbo].[T_KeyWords] ([Id], [KeyWord]) VALUES (9, N'新增')
SET IDENTITY_INSERT [dbo].[T_KeyWords] OFF
SET IDENTITY_INSERT [dbo].[T_Powers] ON 

INSERT [dbo].[T_Powers] ([Id], [Name]) VALUES (3, N'新增管理用户')
INSERT [dbo].[T_Powers] ([Id], [Name]) VALUES (7, N'删除管理用户')
INSERT [dbo].[T_Powers] ([Id], [Name]) VALUES (8, N'禁用管理用户')
INSERT [dbo].[T_Powers] ([Id], [Name]) VALUES (9, N'查询系统操作日志')
INSERT [dbo].[T_Powers] ([Id], [Name]) VALUES (11, N'新增课程')
INSERT [dbo].[T_Powers] ([Id], [Name]) VALUES (12, N'删除课程')
INSERT [dbo].[T_Powers] ([Id], [Name]) VALUES (13, N'新增前台用户')
INSERT [dbo].[T_Powers] ([Id], [Name]) VALUES (14, N'删除前台用户')
INSERT [dbo].[T_Powers] ([Id], [Name]) VALUES (15, N'编辑管理用户')
INSERT [dbo].[T_Powers] ([Id], [Name]) VALUES (16, N'批量重置管理用户密码')
INSERT [dbo].[T_Powers] ([Id], [Name]) VALUES (17, N'批量删除管理用户')
INSERT [dbo].[T_Powers] ([Id], [Name]) VALUES (18, N'批量禁用管理用户')
SET IDENTITY_INSERT [dbo].[T_Powers] OFF
SET IDENTITY_INSERT [dbo].[T_RolePowes] ON 

INSERT [dbo].[T_RolePowes] ([Id], [RoleId], [PowerId]) VALUES (82, 23, 3)
INSERT [dbo].[T_RolePowes] ([Id], [RoleId], [PowerId]) VALUES (83, 23, 8)
INSERT [dbo].[T_RolePowes] ([Id], [RoleId], [PowerId]) VALUES (84, 23, 9)
INSERT [dbo].[T_RolePowes] ([Id], [RoleId], [PowerId]) VALUES (85, 24, 3)
INSERT [dbo].[T_RolePowes] ([Id], [RoleId], [PowerId]) VALUES (86, 24, 7)
INSERT [dbo].[T_RolePowes] ([Id], [RoleId], [PowerId]) VALUES (87, 24, 8)
INSERT [dbo].[T_RolePowes] ([Id], [RoleId], [PowerId]) VALUES (88, 19, 13)
INSERT [dbo].[T_RolePowes] ([Id], [RoleId], [PowerId]) VALUES (89, 19, 14)
INSERT [dbo].[T_RolePowes] ([Id], [RoleId], [PowerId]) VALUES (92, 1, 11)
INSERT [dbo].[T_RolePowes] ([Id], [RoleId], [PowerId]) VALUES (93, 1, 12)
INSERT [dbo].[T_RolePowes] ([Id], [RoleId], [PowerId]) VALUES (94, 24, 15)
SET IDENTITY_INSERT [dbo].[T_RolePowes] OFF
SET IDENTITY_INSERT [dbo].[T_Roles] ON 

INSERT [dbo].[T_Roles] ([Id], [Name]) VALUES (1, N'教学总监')
INSERT [dbo].[T_Roles] ([Id], [Name]) VALUES (19, N'班主任')
INSERT [dbo].[T_Roles] ([Id], [Name]) VALUES (23, N'网站管理员')
INSERT [dbo].[T_Roles] ([Id], [Name]) VALUES (24, N'网站逻辑')
SET IDENTITY_INSERT [dbo].[T_Roles] OFF
ALTER TABLE [dbo].[T_AdministorOperationLogs]  WITH CHECK ADD  CONSTRAINT [FK_T_AdministorOperationLogs_T_AdminUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[T_AdminUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[T_AdministorOperationLogs] CHECK CONSTRAINT [FK_T_AdministorOperationLogs_T_AdminUsers]
GO
ALTER TABLE [dbo].[T_AdminUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_T_AdminUserRoles_T_AdminUsers] FOREIGN KEY([AdminUserId])
REFERENCES [dbo].[T_AdminUsers] ([Id])
GO
ALTER TABLE [dbo].[T_AdminUserRoles] CHECK CONSTRAINT [FK_T_AdminUserRoles_T_AdminUsers]
GO
ALTER TABLE [dbo].[T_AdminUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_T_AdminUserRoles_T_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[T_Roles] ([Id])
GO
ALTER TABLE [dbo].[T_AdminUserRoles] CHECK CONSTRAINT [FK_T_AdminUserRoles_T_Roles]
GO
ALTER TABLE [dbo].[T_RolePowes]  WITH CHECK ADD  CONSTRAINT [FK_T_RolePowes_T_Powers] FOREIGN KEY([PowerId])
REFERENCES [dbo].[T_Powers] ([Id])
GO
ALTER TABLE [dbo].[T_RolePowes] CHECK CONSTRAINT [FK_T_RolePowes_T_Powers]
GO
ALTER TABLE [dbo].[T_RolePowes]  WITH CHECK ADD  CONSTRAINT [FK_T_RolePowes_T_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[T_Roles] ([Id])
GO
ALTER TABLE [dbo].[T_RolePowes] CHECK CONSTRAINT [FK_T_RolePowes_T_Roles]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'后台系统用户拥有的角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_AdminUserRoles', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码的MD5值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_AdminUsers', @level2type=N'COLUMN',@level2name=N'PassWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_AdminUsers', @level2type=N'COLUMN',@level2name=N'IsEnabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Powers', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Roles', @level2type=N'COLUMN',@level2name=N'Name'
GO
