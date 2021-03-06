/****** 物件:  資料庫 3PDM    指令碼日期: 2007/4/23 下午 03:52:58 ******/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'3PDM')
	DROP DATABASE [3PDM]
GO

CREATE DATABASE [3PDM]  ON (NAME = N'VPDM_Data', FILENAME = N'D:\Microsoft SQL Server\MSSQL\Data1\3PDM.mdf' , SIZE = 21, FILEGROWTH = 10%) LOG ON (NAME = N'VPDM_Log', FILENAME = N'D:\Microsoft SQL Server\MSSQL\Data1\3PDM_log.ldf' , SIZE = 99, FILEGROWTH = 10%)
GO

exec sp_dboption N'3PDM', N'autoclose', N'false'
GO

exec sp_dboption N'3PDM', N'bulkcopy', N'false'
GO

exec sp_dboption N'3PDM', N'trunc. log', N'false'
GO

exec sp_dboption N'3PDM', N'torn page detection', N'true'
GO

exec sp_dboption N'3PDM', N'read only', N'false'
GO

exec sp_dboption N'3PDM', N'dbo use', N'false'
GO

exec sp_dboption N'3PDM', N'single', N'false'
GO

exec sp_dboption N'3PDM', N'autoshrink', N'false'
GO

exec sp_dboption N'3PDM', N'ANSI null default', N'false'
GO

exec sp_dboption N'3PDM', N'recursive triggers', N'false'
GO

exec sp_dboption N'3PDM', N'ANSI nulls', N'false'
GO

exec sp_dboption N'3PDM', N'concat null yields null', N'false'
GO

exec sp_dboption N'3PDM', N'cursor close on commit', N'false'
GO

exec sp_dboption N'3PDM', N'default to local cursor', N'false'
GO

exec sp_dboption N'3PDM', N'quoted identifier', N'false'
GO

exec sp_dboption N'3PDM', N'ANSI warnings', N'false'
GO

exec sp_dboption N'3PDM', N'auto create statistics', N'true'
GO

exec sp_dboption N'3PDM', N'auto update statistics', N'true'
GO

if( (@@microsoftversion / power(2, 24) = 8) and (@@microsoftversion & 0xffff >= 724) )
	exec sp_dboption N'3PDM', N'db chaining', N'false'
GO

use [3PDM]
GO

/****** 物件:  資料表 [dbo].[PDM_Part]    指令碼日期: 2007/4/23 下午 03:53:05 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDM_Part]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PDM_Part]
GO

/****** 物件:  登入 MIN    指令碼日期: 2007/4/23 下午 03:52:59 ******/
if not exists (select * from master.dbo.syslogins where loginname = N'MIN')
BEGIN
	declare @logindb nvarchar(132), @loginlang nvarchar(132) select @logindb = N'vmfg', @loginlang = N'繁體中文'
	if @logindb is null or not exists (select * from master.dbo.sysdatabases where name = @logindb)
		select @logindb = N'master'
	if @loginlang is null or (not exists (select * from master.dbo.syslanguages where name = @loginlang) and @loginlang <> N'us_english')
		select @loginlang = @@language
	exec sp_addlogin N'MIN', null, @logindb, @loginlang
END
GO

/****** 物件:  登入 MIN#    指令碼日期: 2007/4/23 下午 03:52:59 ******/
if not exists (select * from master.dbo.syslogins where loginname = N'MIN#')
BEGIN
	declare @logindb nvarchar(132), @loginlang nvarchar(132) select @logindb = N'vmfg', @loginlang = N'繁體中文'
	if @logindb is null or not exists (select * from master.dbo.sysdatabases where name = @logindb)
		select @logindb = N'master'
	if @loginlang is null or (not exists (select * from master.dbo.syslanguages where name = @loginlang) and @loginlang <> N'us_english')
		select @loginlang = @@language
	exec sp_addlogin N'MIN#', null, @logindb, @loginlang
END
GO

/****** 物件:  登入 SYSADM    指令碼日期: 2007/4/23 下午 03:52:59 ******/
if not exists (select * from master.dbo.syslogins where loginname = N'SYSADM')
BEGIN
	declare @logindb nvarchar(132), @loginlang nvarchar(132) select @logindb = N'vmfg', @loginlang = N'繁體中文'
	if @logindb is null or not exists (select * from master.dbo.sysdatabases where name = @logindb)
		select @logindb = N'master'
	if @loginlang is null or (not exists (select * from master.dbo.syslanguages where name = @loginlang) and @loginlang <> N'us_english')
		select @loginlang = @@language
	exec sp_addlogin N'SYSADM', null, @logindb, @loginlang
END
GO

/****** 物件:  登入 vanis    指令碼日期: 2007/4/23 下午 03:52:59 ******/
if not exists (select * from master.dbo.syslogins where loginname = N'vanis')
BEGIN
	declare @logindb nvarchar(132), @loginlang nvarchar(132) select @logindb = N'master', @loginlang = N'繁體中文'
	if @logindb is null or not exists (select * from master.dbo.sysdatabases where name = @logindb)
		select @logindb = N'master'
	if @loginlang is null or (not exists (select * from master.dbo.syslanguages where name = @loginlang) and @loginlang <> N'us_english')
		select @loginlang = @@language
	exec sp_addlogin N'vanis', null, @logindb, @loginlang
END
GO

/****** 物件:  使用者 dbo    指令碼日期: 2007/4/23 下午 03:53:02 ******/
/****** 物件:  使用者 JOAN    指令碼日期: 2007/4/23 下午 03:53:02 ******/
if not exists (select * from dbo.sysusers where name = N'JOAN' and uid < 16382)
	EXEC sp_grantdbaccess N'JOAN'
GO

/****** 物件:  使用者 sysadm    指令碼日期: 2007/4/23 下午 03:53:02 ******/
if not exists (select * from dbo.sysusers where name = N'sysadm' and uid < 16382)
	EXEC sp_grantdbaccess N'sysadm'
GO

/****** 物件:  使用者 vanis    指令碼日期: 2007/4/23 下午 03:53:02 ******/
if not exists (select * from dbo.sysusers where name = N'vanis' and uid < 16382)
	EXEC sp_grantdbaccess N'vanis', N'vanis'
GO

/****** 物件:  使用者 JOAN    指令碼日期: 2007/4/23 下午 03:53:02 ******/
exec sp_addrolemember N'db_owner', N'JOAN'
GO

/****** 物件:  使用者 sysadm    指令碼日期: 2007/4/23 下午 03:53:02 ******/
exec sp_addrolemember N'db_owner', N'sysadm'
GO

/****** 物件:  資料表 [dbo].[PDM_Part]    指令碼日期: 2007/4/23 下午 03:53:07 ******/
CREATE TABLE [dbo].[PDM_Part] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[Type] [char] (1) NULL ,
	[Status] [char] (1) NULL ,
	[Name] [varchar] (50) NULL ,
	[EnglishName] [varchar] (80) NULL ,
	[Category] [varchar] (50) NULL ,
	[GroupProp] [varchar] (40) NULL ,
	[RawMaterial] [varchar] (40) NULL ,
	[Material] [varchar] (40) NULL ,
	[HeatTreatment] [varchar] (50) NULL ,
	[SurfaceTreatment] [varchar] (50) NULL ,
	[ChiUnit] [varchar] (20) NULL ,
	[EngUnit] [varchar] (20) NULL ,
	[Sop] [varchar] (100) NULL ,
	[Spec] [varchar] (100) NULL ,
	[Description] [varchar] (2048) NULL ,
	[ProductCode] [varchar] (20) NULL ,
	[CommodityCode] [varchar] (20) NULL ,
	[User_1] [varchar] (45) NULL ,
	[User_2] [varchar] (45) NULL ,
	[User_3] [varchar] (45) NULL ,
	[User_4] [varchar] (45) NULL ,
	[User_5] [varchar] (45) NULL ,
	[User_6] [varchar] (45) NULL ,
	[User_7] [varchar] (45) NULL ,
	[User_8] [varchar] (45) NULL ,
	[User_9] [varchar] (80) NULL ,
	[User_10] [varchar] (80) NULL ,
	[User_11] [varchar] (45) NULL ,
	[User_12] [varchar] (45) NULL ,
	[User_13] [varchar] (45) NULL ,
	[User_14] [varchar] (45) NULL ,
	[User_15] [varchar] (45) NULL ,
	[User_16] [varchar] (45) NULL ,
	[AttID] [varchar] (15) NULL ,
	[Att_1] [varchar] (45) NULL ,
	[Att_2] [varchar] (45) NULL ,
	[Att_3] [varchar] (45) NULL ,
	[Att_4] [varchar] (45) NULL ,
	[Att_5] [varchar] (45) NULL ,
	[Att_6] [varchar] (45) NULL ,
	[Att_7] [varchar] (45) NULL ,
	[Att_8] [varchar] (45) NULL ,
	[Att_9] [varchar] (80) NULL ,
	[Att_10] [varchar] (80) NULL ,
	[Att_11] [varchar] (45) NULL ,
	[Att_12] [varchar] (45) NULL ,
	[Att_13] [varchar] (45) NULL ,
	[Att_14] [varchar] (45) NULL ,
	[Att_15] [varchar] (45) NULL ,
	[Att_16] [varchar] (45) NULL ,
	[RlsStartDate] [datetime] NULL ,
	[RlsStopDate] [datetime] NULL ,
	[PrevPartID] [varchar] (25) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [smalldatetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [smalldatetime] NULL ,
	[ISLocked] [char] (1) NULL ,
	[ISExport] [char] (1) NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_Part] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_Part] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Part] ADD 
	CONSTRAINT [DF_PDM_Part_Type] DEFAULT ('P') FOR [Type],
	CONSTRAINT [DF_PDM_Part_Status] DEFAULT ('N') FOR [Status],
	CONSTRAINT [DF_PDM_Part_Create_Date] DEFAULT (getdate()) FOR [Create_Date],
	CONSTRAINT [DF_PDM_Part_ISLocked] DEFAULT ('N') FOR [ISLocked],
	CONSTRAINT [DF_PDM_Part_ISExport] DEFAULT ('N') FOR [ISExport]
GO

