if exists 
(select * from dbo.sysobjects where id = object_id(N'[dbo].[VPDM_SBOM]') 
and OBJECTPROPERTY(id, N'IsUserTable') = 1)

OBJECTPROPERTY:目前資料庫的資訊

drop table [dbo].[VPDM_SBOM]
GO

CREATE TABLE [dbo].[VPDM_SBOM] (
	[ROWID] [int] IDENTITY (1, 1) NOT NULL ,
	[DTS_Date] [varchar] (12) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[Source_ID] [int] NOT NULL ,
	[PARENTID] [varchar] (25) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ParentVersion] [smallint] NULL ,
	[P_Name] [varchar] (50) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[P_SPEC] [varchar] (100) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[P_CHIUNIT] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[CHILDID] [varchar] (25) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ChildVersion] [smallint] NULL ,
	[C_Name] [varchar] (50) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[C_SPEC] [varchar] (100) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[C_CHIUNIT] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[POS] [varchar] (8) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[USEQTY] [decimal](15, 6) NULL ,
	[CREATE_USER] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[CREATE_DATE] [smalldatetime] NULL ,
	[TAG] [char] (1) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL 
) ON [PRIMARY]
GO

