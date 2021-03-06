CREATE TABLE [dbo].[PDM_APPConnect] (
	[Connect_Time] [varchar] (25) NOT NULL ,
	[Connect_PC] [varchar] (40) NOT NULL ,
	[Connect_Class] [smallint] NOT NULL ,
	[Connect_User] [varchar] (20) NULL ,
	[Connect_IP] [varchar] (24) NULL ,
	[Connect_ClientName] [varchar] (40) NULL ,
	[Connect_SessionName] [varchar] (40) NULL ,
	[Connect_AppName] [varchar] (50) NULL ,
	[Connect_AppHandle] [int] NULL ,
	[Connect_PCStarted] [varchar] (15) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_APPGlobal] (
	[App_Name] [varchar] (30) NOT NULL ,
	[App_Version] [varchar] (8) NULL ,
	[DB_Version] [varchar] (8) NULL ,
	[Def_LangeageID] [varchar] (3) NULL ,
	[Licensed_Server] [varchar] (20) NULL ,
	[APP_SN] [varchar] (30) NULL ,
	[App_InfoNO] [varchar] (30) NULL ,
	[App_UserCount] [smallint] NULL ,
	[App_RegNO] [varchar] (16) NULL ,
	[Name] [varchar] (50) NULL ,
	[EName] [varchar] (70) NULL ,
	[Addr1] [varchar] (60) NULL ,
	[Addr2] [varchar] (60) NULL ,
	[EAddr1] [varchar] (90) NULL ,
	[EAddr2] [varchar] (90) NULL ,
	[Tel] [varchar] (20) NULL ,
	[Fax] [varchar] (20) NULL ,
	[Invoice_ID] [varchar] (20) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_APPMessage] (
	[ID] [smallint] NOT NULL ,
	[Type] [char] (1) NOT NULL ,
	[Name] [varchar] (40) NOT NULL ,
	[Style] [char] (1) NULL ,
	[Subject] [varchar] (250) NULL ,
	[Body] [text] NULL ,
	[UseAttachment] [char] (1) NULL ,
	[ShowDialog] [char] (1) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_APPOption] (
	[Name] [varchar] (20) NOT NULL ,
	[Property] [varchar] (180) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_APPUserMenu] (
	[RowID] [int] NOT NULL ,
	[ParentID] [int] NULL ,
	[Menu_Pos] [smallint] NULL ,
	[LevelNO] [smallint] NULL ,
	[Type] [char] (1) NULL ,
	[Menu_Caption] [varchar] (40) NULL ,
	[Menu_ShortCut] [varchar] (20) NULL ,
	[Application] [varchar] (250) NULL ,
	[Parameters] [varchar] (200) NULL ,
	[Work_Dir] [varchar] (200) NULL ,
	[Description] [varchar] (200) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Access_Class] (
	[ID] [int] NOT NULL ,
	[Name] [varchar] (30) NULL ,
	[Description] [varchar] (80) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Access_Perm] (
	[Type] [char] (1) NOT NULL ,
	[Obj_ID] [varchar] (30) NOT NULL ,
	[Rights_ID] [varchar] (6) NOT NULL ,
	[Permission] [char] (1) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Access_Rights] (
	[Class_ID] [int] NOT NULL ,
	[ID] [varchar] (6) NOT NULL ,
	[Name] [varchar] (30) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_AttFldList] (
	[AttID] [varchar] (15) NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[Alias] [varchar] (45) NOT NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_AttribList] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (15) NOT NULL ,
	[Name] [varchar] (40) NULL ,
	[Labels] [varchar] (250) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_CADBorder] (
	[Name] [varchar] (4) NOT NULL ,
	[Type] [char] (1) NOT NULL ,
	[FieldID] [int] NOT NULL ,
	[Property] [varchar] (40) NULL ,
	[SummaryType] [char] (1) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_CADOption] (
	[Name] [varchar] (20) NOT NULL ,
	[Property] [varchar] (180) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_CD_Day] (
	[ClassID] [smallint] NOT NULL ,
	[DateID] [datetime] NOT NULL ,
	[DayTypeID] [int] NULL ,
	[Description] [varchar] (160) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_CD_DayType] (
	[ID] [int] NOT NULL ,
	[Name] [varchar] (40) NULL ,
	[AM_Work_ON] [varchar] (8) NULL ,
	[AM_Work_OFF] [varchar] (8) NULL ,
	[PM_Work_ON] [varchar] (8) NULL ,
	[PM_Work_OFF] [varchar] (8) NULL ,
	[NT_Work_ON] [varchar] (8) NULL ,
	[NT_Work_OFF] [varchar] (8) NULL ,
	[Work_Hours] [decimal](10, 4) NULL ,
	[ShowColor] [varchar] (20) NULL ,
	[Description] [varchar] (120) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_CommCode] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[Code] [varchar] (20) NOT NULL ,
	[Name] [varchar] (50) NULL ,
	[Description] [varchar] (200) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_DiaryReport] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[DiaryID] [datetime] NOT NULL ,
	[UserID] [varchar] (20) NOT NULL ,
	[UDR_Type] [char] (1) NOT NULL ,
	[UDR_ID] [varchar] (25) NOT NULL ,
	[UDR_isFinished] [char] (1) NULL ,
	[UDR_Complete] [decimal](10, 4) NULL ,
	[Business_Hrs] [decimal](10, 4) NULL ,
	[Overtime_Hrs1] [decimal](10, 4) NULL ,
	[Overtime_Hrs2] [decimal](10, 4) NULL ,
	[UDR_User_1] [varchar] (50) NULL ,
	[UDR_User_2] [varchar] (50) NULL ,
	[UDR_Note] [varchar] (2048) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_DocFolder] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[ParentID] [varchar] (25) NULL ,
	[Name] [varchar] (40) NULL ,
	[Type] [varchar] (40) NULL ,
	[SecretLevel] [varchar] (20) NULL ,
	[Department] [varchar] (30) NULL ,
	[User_1] [varchar] (45) NULL ,
	[User_2] [varchar] (45) NULL ,
	[User_3] [varchar] (45) NULL ,
	[User_4] [varchar] (45) NULL ,
	[Description] [varchar] (2048) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_DocRelation] (
	[PartID] [varchar] (25) NOT NULL ,
	[DocID] [varchar] (25) NOT NULL ,
	[DocVer] [varchar] (5) NOT NULL ,
	[Pos] [smallint] NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_DocTempType] (
	[ID] [smallint] NULL ,
	[DocExt] [varchar] (20) NOT NULL ,
	[DocAppName] [varchar] (80) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_DocTemplate] (
	[DocTypeID] [smallint] NOT NULL ,
	[Template_Name] [varchar] (50) NOT NULL ,
	[Template_File] [varchar] (200) NULL ,
	[Type] [char] (1) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Document] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[Version] [varchar] (5) NOT NULL ,
	[Status] [char] (1) NULL ,
	[From_State] [char] (2) NULL ,
	[Name] [varchar] (50) NULL ,
	[EnglishName] [varchar] (80) NULL ,
	[Category] [varchar] (40) NULL ,
	[Control] [varchar] (30) NULL ,
	[Title] [varchar] (50) NULL ,
	[Subject] [varchar] (80) NULL ,
	[Keyword] [varchar] (40) NULL ,
	[Source] [varchar] (30) NULL ,
	[Drafter] [varchar] (20) NULL ,
	[Drafter_Date] [datetime] NULL ,
	[Designer] [varchar] (20) NULL ,
	[Designer_Date] [datetime] NULL ,
	[Checker] [varchar] (20) NULL ,
	[Checker_Date] [datetime] NULL ,
	[Approver] [varchar] (20) NULL ,
	[Approver_Date] [datetime] NULL ,
	[Drawing_Paper] [varchar] (4) NULL ,
	[Drawing_Scale] [varchar] (10) NULL ,
	[FilePath] [varchar] (250) NULL ,
	[FileName] [varchar] (60) NULL ,
	[FileType] [varchar] (10) NULL ,
	[FileClassify] [varchar] (40) NULL ,
	[Description] [varchar] (2048) NULL ,
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
	[PrevDocID] [varchar] (25) NULL ,
	[PrevVersion] [varchar] (5) NULL ,
	[OnVault] [char] (1) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL ,
	[ISLocked] [char] (1) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Document_Binary] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[DocID] [varchar] (25) NOT NULL ,
	[DocVer] [varchar] (5) NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[Title] [varchar] (50) NULL ,
	[Bits] [image] NULL ,
	[QBits] [text] NULL ,
	[BitsLength] [int] NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_ECInfo] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[Status] [char] (1) NULL ,
	[Type] [varchar] (40) NULL ,
	[SpeedRequire] [varchar] (20) NULL ,
	[Pro_Department] [varchar] (40) NULL ,
	[Pro_User] [varchar] (20) NULL ,
	[RequireUser] [varchar] (40) NULL ,
	[Subject] [varchar] (80) NULL ,
	[Reason] [varchar] (2048) NULL ,
	[Description] [varchar] (2048) NULL ,
	[Pro_Date] [datetime] NULL ,
	[Rls_Date] [datetime] NULL ,
	[Editor] [varchar] (20) NULL ,
	[Editor_Date] [datetime] NULL ,
	[Checker1] [varchar] (50) NULL ,
	[Checker1_Date] [datetime] NULL ,
	[Checker2] [varchar] (20) NULL ,
	[Checker2_Date] [datetime] NULL ,
	[Checker3] [varchar] (20) NULL ,
	[Checker3_Date] [datetime] NULL ,
	[User_1] [varchar] (50) NULL ,
	[User_2] [varchar] (50) NULL ,
	[User_3] [varchar] (50) NULL ,
	[User_4] [varchar] (50) NULL ,
	[User_5] [varchar] (80) NULL ,
	[User_6] [varchar] (80) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL ,
	[ISLocked] [char] (1) NULL ,
	[ISExport] [char] (1) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_ECNote] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ECID] [varchar] (25) NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[Department] [varchar] (40) NULL ,
	[isAgree] [varchar] (40) NULL ,
	[State] [varchar] (40) NULL ,
	[Title] [varchar] (50) NULL ,
	[EC_Note] [varchar] (2048) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_ECRelation] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ECID] [varchar] (25) NOT NULL ,
	[Type] [char] (1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[Version] [varchar] (5) NOT NULL ,
	[NewID] [varchar] (25) NULL ,
	[NewVersion] [varchar] (5) NULL ,
	[Reserve_Cope] [varchar] (50) NULL ,
	[Reserve_Qty] [varchar] (50) NULL ,
	[Mold_Cope] [varchar] (80) NULL ,
	[User_1] [varchar] (50) NULL ,
	[User_2] [varchar] (50) NULL ,
	[ECR_Check1] [char] (1) NULL,
	[ECR_Check2] [char] (1) NULL,
	[ECR_Check3] [char] (1) NULL,
	[ECR_Check4] [char] (1) NULL,
	[ECR_Check5] [char] (1) NULL,
	[ECR_Check6] [char] (1) NULL,
	[ECR_Check7] [char] (1) NULL,
	[ECR_Check8] [char] (1) NULL,
	[ECR_Check9] [char] (1) NULL,
	[ECR_Check10] [char] (1) NULL,
	[ECR_Check11] [char] (1) NULL,
	[ECR_Check12] [char] (1) NULL,
	[Bits] [image] NULL ,
	[QBits] [text] NULL ,
	[BitsLength] [int] NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_F_Deputy] (
	[DeputyID] [int] NOT NULL ,
	[FD_User] [varchar] (20) NULL ,
	[FD_StartDate] [datetime] NULL ,
	[FD_EndDate] [datetime] NULL ,
	[FD_ACEndDate] [datetime] NULL ,
	[FD_Deputy] [varchar] (20) NULL ,
	[FD_Description] [varchar] (250) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_F_Info] (
	[ID] [int] NOT NULL ,
	[FL_Class] [char] (1) NULL ,
	[FL_Name] [varchar] (80) NULL ,
	[FL_Type] [varchar] (50) NULL ,
	[FL_Speed] [smallint] NULL ,
	[FL_User1] [varchar] (50) NULL ,
	[FL_User2] [varchar] (50) NULL ,
	[FL_Description] [varchar] (4096) NULL ,
	[FL_Status] [char] (1) NULL ,
	[FL_CurGroup] [int] NULL ,
	[FL_GroupCount] [int] NULL ,
	[FL_DueDate] [datetime] NULL ,
	[FL_PublishDate] [datetime] NULL ,
	[FL_FinishedDate] [datetime] NULL ,
	[FL_StopUser] [varchar] (20) NULL ,
	[FL_StopDate] [datetime] NULL ,
	[FL_Returned] [char] (1) NULL ,
	[FL_OptStart] [int] NULL ,
	[FL_OptEnd] [int] NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_F_MsgUserList] (
	[FSUL_UserID] [varchar] (20) NOT NULL ,
	[FSUL_FieldID] [int] NOT NULL ,
	[FSUL_SeqNO] [int] NOT NULL ,
	[FSUL_Msg] [varchar] (4096) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_F_SignGroup] (
	[FL_ID] [char] (10) NOT NULL ,
	[FSG_Step] [smallint] NOT NULL ,
	[FSG_Name] [varchar] (80) NULL ,
	[FSG_Routing] [char] (1) NULL ,
	[FSG_SendMail] [char] (1) NULL ,
	[FSG_SignField] [smallint] NULL ,
	[FSG_MarcoID] [int] NULL ,
	[FSG_Description] [varchar] (1024) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_F_SignMember] (
	[FL_ID] [int] NOT NULL ,
	[FSM_Step] [int] NOT NULL ,
	[FSM_SeqNO] [smallint] NOT NULL ,
	[FSM_User] [varchar] (20) NULL ,
	[FSM_isLeader] [char] (1) NULL ,
	[FSM_isSigned] [char] (1) NULL ,
	[FSM_SendMail] [char] (1) NULL ,
	[FSM_SignField] [smallint] NULL ,
	[FSM_MsgSeqNO] [int] NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_F_SignMsg] (
	[FL_ID] [int] NOT NULL ,
	[FSMG_SeqNO] [int] NOT NULL ,
	[FSMG_Step] [smallint] NULL ,
	[FSMG_User] [varchar] (20) NULL ,
	[FSMG_DeputyUser] [varchar] (20) NULL ,
	[FSMG_SignDate] [datetime] NULL ,
	[FSMG_SignType] [char] (1) NULL ,
	[FSMG_RedLineID] [int] NULL ,
	[FSMG_Signed] [char] (1) NULL ,
	[FSMG_RetGroup] [smallint] NULL ,
	[FSMG_Msg] [varchar] (4096) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_F_SignObject] (
	[FL_ID] [int] NOT NULL ,
	[FSO_SeqNO] [int] NOT NULL ,
	[FSO_Type] [char] (1) NULL ,
	[FSO_ID] [varchar] (25) NULL ,
	[FSO_Ver] [varchar] (5) NULL ,
	[FSO_PJID] [varchar] (25) NULL ,
	[FSO_TaskID] [varchar] (25) NULL ,
	[FSO_TreeType] [int] NULL ,
	[FSO_Signed] [char] (1) NULL ,
	[FSO_Amount] [int] NULL ,
	[FSO_OldStatus] [char] (1) NULL ,
	[FSO_SignBorder] [char] (1) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_F_TempRights] (
	[FL_ID] [int] NOT NULL ,
	[FTR_RightsType] [char] (1) NOT NULL ,
	[FTR_RightsID] [varchar] (30) NOT NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[PDM_FileFlow] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[DocID] [varchar] (30) NULL ,
	[DocVer] [varchar] (5) NULL ,
	[UNC_ID] [int] NULL ,
	[FileName] [varchar] (80) NULL ,
	[AppHandle] [int] NULL ,
	[Out_Computer] [varchar] (20) NULL ,
	[Out_Dir] [varchar] (250) NULL ,
	[Out_User] [varchar] (20) NULL ,
	[Out_Time] [datetime] NULL ,
	[Status] [char] (1) NULL ,
	[In_UNC_ID] [int] NULL ,
	[In_Time] [datetime] NULL ,
	[In_User] [varchar] (20) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_FileOption] (
	[VaultNO] [smallint] NOT NULL ,
	[DefaultValue] [char] (1) NULL ,
	[ComputerName] [varchar] (20) NULL ,
	[ShareName] [varchar] (30) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_FileVault] (
	[DocID] [varchar] (30) NOT NULL ,
	[DocVer] [varchar] (5) NOT NULL ,
	[Version] [smallint] NOT NULL ,
	[UNC_ID] [int] NULL ,
	[FileName] [varchar] (80) NULL ,
	[Source_Computer] [varchar] (20) NULL ,
	[VaultNO] [smallint] NULL ,
	[Status] [char] (1) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_FileLink] (
	[FLK_ObjClass] [char] (1) NOT NULL ,
	[FLK_ObjID] [varchar] (30) NOT NULL ,
	[FLK_SeqNO] [smallint] NOT NULL ,
	[FLK_FileName] [varchar] (300) NULL ,
	[FLK_Type] [varchar] (50) NULL ,
	[FLK_Name] [varchar] (200) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_FldDict] (
	[ID] [int] NOT NULL ,
	[TableName] [varchar] (25) NULL ,
	[FieldName] [varchar] (30) NULL ,
	[Property] [varchar] (36) NULL ,
	[FieldDefVal] [varchar] (160) NULL ,
	[FieldType] [char] (1) NULL ,
	[FieldStatus] [char] (1) NULL ,
	[Width] [int] NULL ,
	[List] [char] (1) NULL ,
	[NoEditList] [char] (1) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_FldList] (
	[ID] [int] NOT NULL ,
	[Alias] [varchar] (50) NOT NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Log_MainDB] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[Type] [char] (1) NULL ,
	[Obj_ID] [varchar] (25) NULL ,
	[Obj_Ver] [varchar] (5) NULL ,
	[UNC_ID] [int] NULL ,
	[Vault_Ver] [int] NULL ,
	[ComputerName] [varchar] (20) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Log_PkgFile] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[PkgInfo_ID] [int] NOT NULL ,
	[DocID] [varchar] (25) NOT NULL ,
	[DocVer] [char] (5) NOT NULL ,
	[Status] [char] (2) NULL ,
	[FileName] [varchar] (60) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Log_PkgInfo] (
	[RowID] [int] NOT NULL ,
	[Type] [char] (1) NULL ,
	[E_ProjectID] [varchar] (25) NULL ,
	[I_ProjectID] [varchar] (25) NULL ,
	[Pkg_Title] [varchar] (60) NULL ,
	[Pkg_Subject] [varchar] (90) NULL ,
	[Pkg_Description] [varchar] (250) NULL ,
	[Pkg_ComputerName] [varchar] (40) NULL ,
	[Pkg_Dir] [varchar] (250) NULL ,
	[Pkg_FileCount] [int] NULL ,
	[Pkg_Option] [varchar] (40) NULL ,
	[isSucceed] [char] (1) NULL ,
	[Create_User] [varchar] (20) NOT NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Log_Report] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ReportID] [smallint] NULL ,
	[Type] [varchar] (3) NULL ,
	[PageCount] [smallint] NULL ,
	[ComputerName] [varchar] (20) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Log_TreeBOM] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[Type] [varchar] (8) NULL ,
	[PartID] [varchar] (30) NULL ,
	[Description] [varchar] (120) NULL ,
	[ComputerName] [varchar] (20) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_LogonAccount] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserID] [varchar] (20) NOT NULL ,
	[LogonPwd] [varchar] (50) NULL ,
	[UserName] [varchar] (40) NULL ,
	[DisplayName] [varchar] (70) NULL ,
	[Post] [varchar] (30) NULL ,
	[Department] [varchar] (30) NULL ,
	[UserMail] [varchar] (50) NULL ,
	[WorkDir] [varchar] (100) NULL ,
	[Description] [varchar] (150) NULL ,
	[StopUse] [char] (1) NULL ,
	[StopDate] [datetime] NULL ,
	[PwdChange] [char] (1) NULL ,
	[PwdChangeDate] [datetime] NULL ,
	[lmtLogonCount] [smallint] NULL ,
	[TaskScoreLevel] [smallint] NULL ,
	[Configure] [image] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_LogonGrp] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (30) NOT NULL ,
	[Name] [varchar] (50) NULL ,
	[Description] [varchar] (150) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_LogonUserGrp] (
	[UserID] [varchar] (20) NOT NULL ,
	[GroupID] [varchar] (30) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MPConsum] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[MPCS_Name] [varchar] (60) NULL ,
	[MPCS_EngName] [varchar] (80) NULL ,
	[MPCS_Type] [varchar] (40) NULL ,
	[MPCS_Spec] [varchar] (80) NULL ,
	[MPCS_MTDepar] [varchar] (40) NULL ,
	[MPCS_Storeroom] [varchar] (50) NULL ,
	[MPCS_Description] [varchar] (2048) NULL ,
	[MPCS_User1] [varchar] (40) NULL ,
	[MPCS_User2] [varchar] (40) NULL ,
	[MPCS_User3] [varchar] (40) NULL ,
	[MPCS_User4] [varchar] (40) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MPCostRel] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MPC_ID] [varchar] (30) NOT NULL ,
	[MPCR_RlsDate] [datetime] NOT NULL ,
	[MPCR_StopDate] [datetime] NULL ,
	[MPCR_Description] [varchar] (2048) NULL ,
	[MPCR_Cost_Setup] [decimal](15, 6) NULL ,
	[MPCR_Cost_Run] [decimal](15, 6) NULL ,
	[MPCR_Cost_WTTrans] [decimal](15, 6) NULL ,
	[MPCR_Cost_Transfer] [decimal](15, 6) NULL ,
	[MPCR_Cost_WTLoadUp] [decimal](15, 7) NULL ,
	[MPCR_Cost_Detach] [decimal](15, 6) NULL ,
	[MPCR_Cost_User1] [decimal](15, 6) NULL ,
	[MPCR_Cost_User2] [decimal](15, 6) NULL ,
	[MPCR_Cost_User3] [decimal](15, 6) NULL ,
	[MPCR_Cost_User4] [decimal](15, 6) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MPCostType] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (30) NOT NULL ,
	[MPC_Type] [varchar] (40) NULL ,
	[MPC_Name] [varchar] (80) NULL ,
	[MPC_Description] [varchar] (2048) NULL ,
	[MPC_User1] [varchar] (50) NULL ,
	[MPC_User2] [varchar] (50) NULL ,
	[MPC_User3] [varchar] (50) NULL ,
	[MPC_User4] [varchar] (50) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MPCutting] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[MPCT_Name] [varchar] (60) NULL ,
	[MPCT_EngName] [varchar] (80) NULL ,
	[MPCT_Type] [varchar] (40) NULL ,
	[MPCT_Spec] [varchar] (80) NULL ,
	[MPCT_MTDepar] [varchar] (40) NULL ,
	[MPCT_GBCode] [varchar] (40) NULL ,
	[MPCT_Material] [varchar] (50) NULL ,
	[MPCT_Vendor] [varchar] (50) NULL ,
	[MPCT_Price] [decimal](15, 6) NULL ,
	[MPCT_Life] [varchar] (40) NULL ,
	[MPCT_Description] [varchar] (2048) NULL ,
	[MPCT_User1] [varchar] (40) NULL ,
	[MPCT_User2] [varchar] (40) NULL ,
	[MPCT_User3] [varchar] (40) NULL ,
	[MPCT_User4] [varchar] (40) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MPDocRel] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MPDR_Type] [char] (1) NOT NULL ,
	[MPDR_MPID] [varchar] (30) NOT NULL ,
	[MPDR_Class] [char] (1) NOT NULL ,
	[MPDR_ObjID] [varchar] (25) NOT NULL ,
	[MPDR_ObjVer] [varchar] (5) NOT NULL ,
	[MPDR_User1] [varchar] (40) NULL ,
	[MPDR_User2] [varchar] (40) NULL ,
	[MPDR_User3] [varchar] (40) NULL ,
	[MPDR_User4] [varchar] (40) NULL ,
	[MPDR_Description] [varchar] (1024) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MPLeg] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (30) NOT NULL ,
	[MPO_ID] [varchar] (30) NULL ,
	[MPL_SemiID] [varchar] (25) NULL ,
	[MPL_Name] [varchar] (60) NULL ,
	[MPL_Description] [varchar] (2048) NULL ,
	[MPL_User1] [varchar] (50) NULL ,
	[MPL_User2] [varchar] (50) NULL ,
	[MPL_User3] [varchar] (50) NULL ,
	[MPL_User4] [varchar] (50) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MPMeasure] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[MPMS_Name] [varchar] (60) NULL ,
	[MPMS_EngName] [varchar] (80) NULL ,
	[MPMS_Type] [varchar] (40) NULL ,
	[MPMS_Spec] [varchar] (80) NULL ,
	[MPMS_MTDepar] [varchar] (40) NULL ,
	[MPMS_Storeroom] [varchar] (50) NULL ,
	[MPMS_Description] [varchar] (2048) NULL ,
	[MPMS_User1] [varchar] (40) NULL ,
	[MPMS_User2] [varchar] (40) NULL ,
	[MPMS_User3] [varchar] (40) NULL ,
	[MPMS_User4] [varchar] (40) NULL ,
	[MPMS_User5] [varchar] (40) NULL ,
	[MPMS_User6] [varchar] (40) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MPOperation] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (30) NOT NULL ,
	[MPO_PartID] [varchar] (30) NULL ,
	[MPO_PartVer] [varchar] (15) NULL ,
	[MPO_SeqNO] [smallint] NULL ,
	[MPC_ID] [varchar] (30) NULL ,
	[MPO_Type] [varchar] (50) NULL ,
	[MPO_Name] [varchar] (80) NULL ,
	[MPO_Description] [text] NULL ,
	[MPO_RsType] [char] (1) NULL ,
	[MPO_RsID] [varchar] (25) NULL ,
	[MPO_Time_Setup] [numeric](15, 6) NULL ,
	[MPO_Time_Run] [numeric](15, 6) NULL ,
	[MPO_Time_WTTrans] [numeric](15, 6) NULL ,
	[MPO_Time_Transfer] [numeric](15, 6) NULL ,
	[MPO_Time_WTLoadUp] [numeric](15, 6) NULL ,
	[MPO_Time_Detach] [numeric](15, 6) NULL ,
	[MPO_Time_User1] [numeric](15, 6) NULL ,
	[MPO_Time_User2] [numeric](15, 6) NULL ,
	[MPO_Time_User3] [numeric](15, 6) NULL ,
	[MPO_Time_User4] [numeric](15, 6) NULL ,
	[MPO_Time_Allowance] [numeric](15, 6) NULL ,
	[MPO_Time_Lead] [numeric](15, 6) NULL ,
	[MPO_Cost_Direct] [numeric](15, 6) NULL ,
	[MPO_Cost_InDirect] [numeric](15, 6) NULL ,
	[MPO_User1] [varchar] (50) NULL ,
	[MPO_User2] [varchar] (50) NULL ,
	[MPO_User3] [varchar] (50) NULL ,
	[MPO_User4] [varchar] (50) NULL ,
	[MPO_User5] [varchar] (50) NULL ,
	[MPO_User6] [varchar] (50) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MPOperationRel] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MPOR_Class] [char] (1) NOT NULL ,
	[MPOR_ParentID] [varchar] (30) NOT NULL ,
	[MPOR_SeqNO] [smallint] NOT NULL ,
	[MPOR_Type] [char] (1) NULL ,
	[MPOR_ID] [varchar] (30) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MPRequire] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (30) NOT NULL ,
	[MPO_ID] [varchar] (30) NULL ,
	[MPRQ_Type] [char] (1) NULL ,
	[MPRQ_Status] [char] (1) NULL ,
	[MPRQ_ObjID] [varchar] (25) NULL ,
	[MPRQ_ObjVer] [varchar] (5) NULL ,
	[MPRQ_Qty] [numeric](15, 6) NULL ,
	[MPRQ_Title] [varchar] (80) NULL ,
	[MPRQ_Description] [text] NULL ,
	[MPRQ_User1] [varchar] (50) NULL ,
	[MPRQ_User2] [varchar] (50) NULL ,
	[MPRQ_User3] [varchar] (50) NULL ,
	[MPRQ_User4] [varchar] (50) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MPResource] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[MPRS_Name] [varchar] (60) NULL ,
	[MPRS_Engname] [varchar] (80) NULL ,
	[MPRS_Type] [varchar] (50) NULL ,
	[MPRS_Spec] [varchar] (80) NULL ,
	[MPRS_Process] [varchar] (50) NULL ,
	[MPRS_Usability] [varchar] (50) NULL ,
	[MPRS_MTDepar] [varchar] (40) NULL ,
	[MPRS_Storeroom] [varchar] (50) NULL ,
	[MPRS_Description] [varchar] (2048) NULL ,
	[MPRS_User1] [varchar] (40) NULL ,
	[MPRS_User2] [varchar] (40) NULL ,
	[MPRS_User3] [varchar] (40) NULL ,
	[MPRS_User4] [varchar] (40) NULL ,
	[MPRS_User5] [varchar] (40) NULL ,
	[MPRS_User6] [varchar] (40) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MPSpec] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MPS_PartID] [varchar] (25) NOT NULL ,
	[MPS_PartVer] [varchar] (15) NOT NULL ,
	[MPS_Name] [varchar] (80) NULL ,
	[MPS_Default] [char] (1) NULL ,
	[MPS_Description] [varchar] (2048) NULL ,
	[MPS_RlsDate] [datetime] NULL ,
	[MPS_StopDate] [datetime] NULL ,
	[MPS_User1] [varchar] (50) NULL ,
	[MPS_User2] [varchar] (50) NULL ,
	[MPS_User3] [varchar] (50) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MaterialPrice] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (50) NOT NULL ,
	[Price] [numeric](15, 6) NULL ,
	[Unit] [varchar] (40) NULL ,
	[Description] [varchar] (250) NULL ,
	[User_1] [varchar] (45) NULL ,
	[User_2] [varchar] (45) NULL ,
	[User_3] [varchar] (80) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Meeting] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[Status] [char] (1) NULL ,
	[Name] [varchar] (50) NULL ,
	[Type] [varchar] (30) NULL ,
	[Location] [varchar] (40) NULL ,
	[Department] [varchar] (40) NULL ,
	[Subject] [varchar] (80) NULL ,
	[Description] [text] NULL ,
	[Chairman] [varchar] (20) NULL ,
	[Recorder] [varchar] (20) NULL ,
	[Start_Time] [datetime] NULL ,
	[ES_End_Time] [datetime] NULL ,
	[AC_End_Time] [datetime] NULL ,
	[Resolution] [text] NULL ,
	[Summary] [text] NULL ,
	[QDescription] [text] NULL ,
	[QResolution] [text] NULL ,
	[QSummary] [text] NULL ,
	[User_1] [varchar] (50) NULL ,
	[User_2] [varchar] (50) NULL ,
	[User_3] [varchar] (50) NULL ,
	[User_4] [varchar] (50) NULL ,
	[User_5] [varchar] (80) NULL ,
	[User_6] [varchar] (80) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL ,
	[ISLocked] [char] (1) NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MeetingDiscuss] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MeetID] [varchar] (25) NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[Department] [varchar] (40) NULL ,
	[Spokesman] [varchar] (40) NULL ,
	[Title] [varchar] (60) NULL ,
	[Disc_Note] [varchar] (2048) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (50) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MeetingNote] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MeetID] [varchar] (25) NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[Department] [varchar] (40) NULL ,
	[isAgree] [varchar] (40) NULL ,
	[State] [varchar] (40) NULL ,
	[AagentUser] [varchar] (40) NULL ,
	[Title] [varchar] (60) NULL ,
	[Meet_Note] [varchar] (2048) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MeetingRelation] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MeetID] [varchar] (25) NOT NULL ,
	[Type] [char] (1) NOT NULL ,
	[ObjectID] [varchar] (25) NOT NULL ,
	[ObjectVer] [varchar] (5) NOT NULL ,
	[Description] [varchar] (2048) NULL ,
	[MTRL_User1] [varchar] (50) NULL ,
	[MTRL_User2] [varchar] (50) NULL ,
	[MTRL_User3] [varchar] (50) NULL ,
	[MTRL_User4] [varchar] (50) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MoldCost] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MOClass] [char] (1) NOT NULL ,
	[MOID] [varchar] (25) NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[Account_Type] [char] (1) NULL ,
	[MOC_Type] [char] (1) NULL ,
	[MOC_Category] [varchar] (40) NULL ,
	[MOC_Account] [varchar] (40) NULL ,
	[MOC_Vendor] [varchar] (50) NULL ,
	[MOC_VDNo] [varchar] (40) NULL ,
	[MOC_Person] [varchar] (40) NULL ,
	[MOC_Currency] [varchar] (30) NULL ,
	[MOC_Cost] [decimal](15, 6) NULL ,
	[MOC_SysCost] [decimal](15, 6) NULL ,
	[MOC_Pay_ESTime] [datetime] NULL ,
	[MOC_Pay_ACTime] [datetime] NULL ,
	[MOC_Description] [varchar] (2048) NULL ,
	[MOC_User1] [varchar] (40) NULL ,
	[MOC_User2] [varchar] (40) NULL ,
	[MOC_User3] [varchar] (40) NULL ,
	[MOC_User4] [varchar] (40) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MoldHistory] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MOID] [varchar] (25) NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[MOH_Title] [varchar] (160) NULL ,
	[MOH_Attach] [varchar] (160) NULL ,
	[MOH_O_Time] [datetime] NULL ,
	[MOH_O_Dep] [varchar] (40) NULL ,
	[MOH_O_Person] [varchar] (40) NULL ,
	[MOH_O_Checker] [varchar] (40) NULL ,
	[MOH_I_Time] [datetime] NULL ,
	[MOH_I_Dep] [varchar] (40) NULL ,
	[MOH_I_Person] [varchar] (40) NULL ,
	[MOH_Dis_Time] [datetime] NULL ,
	[MOH_Dis_Reason] [text] NULL ,
	[MOH_Description] [text] NULL ,
	[MOH_User1] [varchar] (40) NULL ,
	[MOH_User2] [varchar] (40) NULL ,
	[MOH_User3] [varchar] (40) NULL ,
	[MOH_User4] [varchar] (40) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MoldInfo] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[Status] [char] (1) NULL ,
	[MO_Name] [varchar] (80) NULL ,
	[MO_EngName] [varchar] (80) NULL ,
	[MO_Category] [varchar] (40) NULL ,
	[MO_Type] [varchar] (40) NULL ,
	[MO_Material] [varchar] (50) NULL ,
	[MO_Shape] [varchar] (160) NULL ,
	[MO_Stor_Depart] [varchar] (40) NULL ,
	[MO_Stor_User] [varchar] (40) NULL ,
	[MO_DepOsit] [varchar] (50) NULL ,
	[MO_Owner] [varchar] (50) NULL ,
	[MO_SuFactory] [varchar] (40) NULL ,
	[MO_MaFactory] [varchar] (40) NULL ,
	[MO_HoleCount] [decimal](15, 6) NULL ,
	[MO_Weight] [decimal](15, 6) NULL ,
	[MO_WOType] [varchar] (40) NULL ,
	[MO_WOID] [varchar] (25) NULL ,
	[MO_WOTime] [datetime] NULL ,
	[MO_Cost_ES] [decimal](15, 6) NOT NULL ,
	[MO_Cost_Prt] [decimal](15, 6) NULL ,
	[MO_Cost_Rep] [decimal](15, 6) NULL ,
	[MO_Cost_Oth] [decimal](15, 6) NULL ,
	[MO_ES_FTime] [datetime] NULL ,
	[MO_AC_FTime] [datetime] NULL ,
	[MO_AC_TTime] [datetime] NULL ,
	[MO_Store_Time] [datetime] NULL ,
	[MO_Stop_Time] [datetime] NULL ,
	[MO_Desc_Note] [text] NULL ,
	[MO_Desc_Check] [text] NULL ,
	[MO_Desc_Store] [text] NULL ,
	[MO_Desc_Set] [text] NULL ,
	[MO_Check1] [char] (1) NULL ,
	[MO_Check2] [char] (1) NULL ,
	[MO_Check3] [char] (1) NULL ,
	[MO_Check4] [char] (1) NULL ,
	[MO_Check5] [char] (1) NULL ,
	[MO_Check6] [char] (1) NULL ,
	[MO_Check7] [char] (1) NULL ,
	[MO_Check8] [char] (1) NULL ,
	[MO_CK_Person] [varchar] (40) NULL ,
	[MO_CK_Vendor] [varchar] (40) NULL ,
	[MO_CK_Dept] [varchar] (40) NULL ,
	[MO_CK_Date] [datetime] NULL ,
	[MO_CK_User1] [varchar] (50) NULL ,
	[MO_CK_User2] [varchar] (50) NULL ,
	[MO_CK_User3] [varchar] (50) NULL ,
	[MO_CK_User4] [varchar] (50) NULL ,
	[MO_CK_Check1] [char] (1) NULL ,
	[MO_CK_Check2] [char] (1) NULL ,
	[MO_CK_Check3] [char] (1) NULL ,
	[MO_CK_Check4] [char] (1) NULL ,
	[User_1] [varchar] (50) NULL ,
	[User_2] [varchar] (50) NULL ,
	[User_3] [varchar] (50) NULL ,
	[User_4] [varchar] (50) NULL ,
	[User_5] [varchar] (50) NULL ,
	[User_6] [varchar] (50) NULL ,
	[User_7] [varchar] (50) NULL ,
	[User_8] [varchar] (50) NULL ,
	[User_9] [varchar] (50) NULL ,
	[AttID] [varchar] (15) NULL ,
	[Att_1] [varchar] (45) NULL ,
	[Att_2] [varchar] (45) NULL ,
	[Att_3] [varchar] (45) NULL ,
	[Att_4] [varchar] (45) NULL ,
	[Att_5] [varchar] (45) NULL ,
	[Att_6] [varchar] (45) NULL ,
	[Att_7] [varchar] (45) NULL ,
	[Att_8] [varchar] (45) NULL ,
	[Att_9] [varchar] (45) NULL ,
	[Att_10] [varchar] (45) NULL ,
	[Att_11] [varchar] (45) NULL ,
	[Att_12] [varchar] (45) NULL ,
	[Att_13] [varchar] (45) NULL ,
	[Att_14] [varchar] (45) NULL ,
	[Att_15] [varchar] (45) NULL ,
	[Att_16] [varchar] (45) NULL ,
	[ISLocked] [varchar] (1) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MoldRelation] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MOID] [varchar] (25) NOT NULL ,
	[MOR_Type] [char] (1) NOT NULL ,
	[MOR_ID] [varchar] (25) NOT NULL ,
	[MOR_Version] [varchar] (5) NOT NULL ,
	[MOR_User1] [varchar] (40) NULL ,
	[MOR_User2] [varchar] (40) NULL ,
	[MOR_User3] [varchar] (40) NULL ,
	[MOR_User4] [varchar] (40) NULL ,
	[MOR_User5] [varchar] (40) NULL ,
	[MOR_User6] [varchar] (40) NULL ,
	[MOR_Description] [varchar] (2048) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MoldRepair] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MOID] [varchar] (25) NOT NULL ,
	[MOR_ID] [varchar] (25) NOT NULL ,
	[MOR_Type] [varchar] (40) NULL ,
	[MOR_Time] [datetime] NULL ,
	[MOR_Person] [varchar] (40) NULL ,
	[MOR_Description] [text] NULL ,
	[MOR_Question] [text] NULL ,
	[MOR_Cope] [text] NULL ,
	[MOR_User1] [varchar] (40) NULL ,
	[MOR_User2] [varchar] (40) NULL ,
	[MOR_User3] [varchar] (40) NULL ,
	[MOR_User4] [varchar] (40) NULL ,
	[MOR_User5] [varchar] (40) NULL ,
	[MOR_User6] [varchar] (40) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MoldResource] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MOID] [varchar] (25) NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[MORS_Machine] [varchar] (50) NULL ,
	[MORS_Type] [varchar] (40) NULL ,
	[MORS_Resource] [varchar] (40) NULL ,
	[MORS_Prod] [varchar] (40) NULL ,
	[MORS_FormTime] [varchar] (40) NULL ,
	[MORS_Description] [varchar] (2048) NULL ,
	[MORS_User1] [varchar] (40) NULL ,
	[MORS_User2] [varchar] (40) NULL ,
	[MORS_User3] [varchar] (40) NULL ,
	[MORS_User4] [varchar] (40) NULL ,
	[MORS_User5] [varchar] (40) NULL ,
	[MORS_User6] [varchar] (40) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_MoldTrial] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[MOID] [varchar] (25) NOT NULL ,
	[SeqNO] [int] NOT NULL ,
	[MOT_Type] [varchar] (40) NULL ,
	[MOT_Time] [datetime] NULL ,
	[MOT_ACTime] [datetime] NULL ,
	[MOT_Person] [varchar] (50) NULL ,
	[MOT_Location] [varchar] (50) NULL ,
	[MOT_MacSpec] [varchar] (80) NULL ,
	[MOT_MacNo] [varchar] (40) NULL ,
	[MOT_Check1] [char] (1) NULL ,
	[MOT_Check2] [char] (1) NULL ,
	[MOT_Check3] [char] (1) NULL ,
	[MOT_Check4] [char] (1) NULL ,
	[MOT_Check5] [char] (1) NULL ,
	[MOT_Check6] [char] (1) NULL ,
	[MOT_Reason] [text] NULL ,
	[MOT_Result] [text] NULL ,
	[MOT_User1] [varchar] (40) NULL ,
	[MOT_User2] [varchar] (40) NULL ,
	[MOT_User3] [varchar] (40) NULL ,
	[MOT_User4] [varchar] (40) NULL ,
	[MOT_User5] [varchar] (40) NULL ,
	[MOT_User6] [varchar] (40) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NOConst] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[SegID] [int] NULL ,
	[ConstID] [varchar] (10) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NOGetInfo] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[NodeID] [int] NULL ,
	[LastNO] [varchar] (40) NULL ,
	[UNUsedNO] [varchar] (160) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NOGrpRights] (
	[NodeID] [int] NOT NULL ,
	[GroupID] [varchar] (30) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NOList] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[SegID] [int] NULL ,
	[PropID] [varchar] (10) NULL ,
	[PropName] [varchar] (50) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NONode] (
	[NodeID] [int] IDENTITY (1, 1) NOT NULL ,
	[Name] [varchar] (50) NULL ,
	[LevelNO] [smallint] NULL ,
	[ParentID] [int] NULL ,
	[Title] [varchar] (80) NULL ,
	[FilePath] [varchar] (85) NULL ,
	[Description] [varchar] (254) NULL ,
	[AttID] [varchar] (15) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL ,
	[ISFreeze] [char] (1) NULL ,
	[ISLocked] [char] (1) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NONotUse] (
	[GetNOID] [int] NOT NULL ,
	[NotUseNO] [varchar] (40) NOT NULL ,
	[TabID] [int] NULL ,
	[Status] [char] (1) NULL ,
	[ComputerName] [varchar] (20) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NOSegment] (
	[SegID] [int] IDENTITY (1, 1) NOT NULL ,
	[NodeID] [int] NULL ,
	[SeqNO] [smallint] NULL ,
	[Name] [varchar] (50) NULL ,
	[Type] [smallint] NULL ,
	[ChrLen] [smallint] NULL ,
	[ShareID] [int] NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NOSerial] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[SegID] [int] NULL ,
	[InitSer] [varchar] (10) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NOTabRights] (
	[NodeID] [int] NOT NULL ,
	[TabID] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NOTable] (
	[TabID] [int] NOT NULL ,
	[Name] [varchar] (50) NULL ,
	[Description] [varchar] (180) NULL ,
	[TabName] [varchar] (25) NULL ,
	[PKFldName] [varchar] (20) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NOVerList] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[VerID] [int] NOT NULL ,
	[SeqNO] [smallint] NULL ,
	[PropName] [varchar] (50) NULL ,
	[PropID] [varchar] (10) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NOVerRights] (
	[VerID] [int] NOT NULL ,
	[TabID] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NOVerify] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[NodeID] [smallint] NULL ,
	[GetNO] [varchar] (50) NULL ,
	[TabID] [int] NULL ,
	[ComputerName] [varchar] (20) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_NOVersion] (
	[VerID] [int] IDENTITY (1, 1) NOT NULL ,
	[Name] [varchar] (50) NOT NULL ,
	[Description] [varchar] (180) NULL ,
	[InitPos] [smallint] NOT NULL ,
	[ChrLen] [smallint] NOT NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL ,
	[ISLocked] [char] (1) NULL 
) ON [PRIMARY]
GO

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
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL ,
	[ISLocked] [char] (1) NULL ,
	[ISExport] [char] (1) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_PartCost] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[PartID] [varchar] (25) NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[CostDate] [datetime] NULL ,
	[DefaultCost] [char] (1) NULL ,
	[VendorID] [varchar] (15) NULL ,
	[Type] [varchar] (25) NULL ,
	[Description] [varchar] (100) NULL ,
	[PAC_User_1] [varchar] (45) NULL ,
	[PAC_User_2] [varchar] (45) NULL ,
	[PAC_User_3] [varchar] (45) NULL ,
	[PAC_User_4] [varchar] (45) NULL ,
	[Cost_1] [decimal](15, 6) NOT NULL ,
	[Cost_2] [decimal](15, 6) NULL ,
	[Cost_3] [decimal](15, 6) NULL ,
	[Cost_4] [decimal](15, 6) NULL ,
	[Cost_5] [decimal](15, 6) NULL ,
	[Cost_6] [decimal](15, 6) NULL ,
	[Cost_7] [decimal](15, 6) NULL ,
	[Cost_8] [decimal](15, 6) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Part_Binary] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[PartID] [varchar] (25) NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[Title] [varchar] (50) NULL ,
	[Bits] [image] NULL ,
	[QBits] [text] NULL ,
	[BitsLength] [int] NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_ProductCode] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[Code] [varchar] (20) NOT NULL ,
	[Name] [varchar] (50) NULL ,
	[Description] [varchar] (200) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Project] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[LevelNO] [smallint] NULL ,
	[ParentID] [varchar] (25) NULL ,
	[Pos] [int] NULL ,
	[Status] [char] (1) NULL ,
	[Name] [varchar] (50) NULL ,
	[Type] [varchar] (20) NULL ,
	[Title] [varchar] (80) NULL ,
	[Subject] [varchar] (80) NULL ,
	[Keyword] [varchar] (40) NULL ,
	[SecretLevel] [varchar] (20) NULL ,
	[Description] [varchar] (2048) NULL ,
	[SpeedRequire] [varchar] (16) NULL ,
	[StartDate] [datetime] NULL ,
	[ExpectDate] [datetime] NULL ,
	[FinishDate] [datetime] NULL ,
	[RlsStartDate] [datetime] NULL ,
	[RlsStopDate] [datetime] NULL ,
	[Customer] [varchar] (50) NULL ,
	[Manager] [varchar] (50) NULL ,
	[User_1] [varchar] (50) NULL ,
	[User_2] [varchar] (50) NULL ,
	[User_3] [varchar] (50) NULL ,
	[User_4] [varchar] (50) NULL ,
	[User_5] [varchar] (80) NULL ,
	[User_6] [varchar] (80) NULL ,
	[User_7] [varchar] (80) NULL ,
	[User_8] [varchar] (80) NULL ,
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
	[PartID] [varchar] (25) NULL ,
	[FlowID] [varchar] (25) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL ,
	[ISLocked] [char] (1) NULL ,
	[ISExport] [char] (1) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_ProjectUser] (
	[ProjectID] [varchar] (25) NOT NULL ,
	[RightsType] [char] (1) NOT NULL ,
	[RightsID] [varchar] (30) NOT NULL ,
	[Leader] [char] (1) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Project_Binary] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ProjectID] [varchar] (25) NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[Title] [varchar] (50) NULL ,
	[Bits] [image] NULL ,
	[QBits] [text] NULL ,
	[BitsLength] [int] NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Report] (
	[RowID] [smallint] NOT NULL ,
	[Class] [varchar] (20) NULL ,
	[Name] [varchar] (30) NULL ,
	[FieldCount] [smallint] NULL ,
	[PaperSize] [varchar] (16) NULL ,
	[Direction] [char] (1) NULL ,
	[FontName] [varchar] (25) NULL ,
	[FontSize] [smallint] NULL ,
	[Margin_Top] [decimal](10, 2) NULL ,
	[Margin_Bottom] [decimal](10, 2) NULL ,
	[Margin_Left] [decimal](10, 2) NULL ,
	[Margin_Right] [decimal](10, 2) NULL ,
	[LanguageID] [varchar] (3) NULL ,
	[Img_Header] [image] NULL ,
	[Img_Footer] [image] NULL ,
	[Footer_Type] [char] (1) NULL ,
	[Header_Caption] [text] NULL ,
	[Summary_Caption] [text] NULL ,
	[Img_WaterMark] [image] NULL ,
	[Lo_WaterMark] [varchar] (2) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Report_Line] (
	[ReportID] [smallint] NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[FieldID] [int] NULL ,
	[Name] [varchar] (30) NULL ,
	[Width] [smallint] NULL ,
	[DecimalNO] [smallint] NULL ,
	[Comma] [char] (1) NULL ,
	[IsAmount] [char] (1) NULL ,
	[Calc_Formula] [varchar] (60) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_TableDict] (
	[TabName] [varchar] (25) NOT NULL ,
	[Property] [varchar] (50) NULL ,
	[FldID] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Task] (
	[ID] [varchar] (25) NOT NULL ,
	[ParentID] [varchar] (25) NULL ,
	[ProjectID] [varchar] (25) NULL ,
	[LevelNO] [smallint] NULL ,
	[SeqNO] [smallint] NULL ,
	[Task_Name] [varchar] (50) NULL ,
	[Task_Type] [varchar] (40) NULL ,
	[Task_Manager] [varchar] (30) NULL ,
	[Status] [char] (1) NULL ,
	[ES_Sart_Date] [datetime] NULL ,
	[ES_Finish_Date] [datetime] NULL ,
	[AC_Start_Date] [datetime] NULL ,
	[AC_Finish_Date] [datetime] NULL ,
	[Deadline] [datetime] NULL ,
	[Stop_Date] [datetime] NULL ,
	[Task_Priority] [smallint] NULL ,
	[Work_Complete] [decimal](10, 4) NULL ,
	[A_Business_Hrs] [decimal](15, 6) NULL ,
	[A_Overtime_Hrs1] [decimal](15, 6) NULL ,
	[A_Overtime_Hrs2] [decimal](15, 6) NULL ,
	[Task_Note] [varchar] (2048) NULL ,
	[Task_User_1] [varchar] (45) NULL ,
	[Task_User_2] [varchar] (45) NULL ,
	[Task_User_3] [varchar] (45) NULL ,
	[Task_User_4] [varchar] (45) NULL ,
	[Task_User_5] [varchar] (80) NULL ,
	[Task_User_6] [varchar] (80) NULL ,
	[Task_User_7] [varchar] (45) NULL ,
	[Task_User_8] [varchar] (45) NULL ,
	[Task_User_9] [varchar] (45) NULL ,
	[Task_User_10] [varchar] (45) NULL ,
	[isEstimation] [char] (1) NULL ,
	[isCheckScore] [char] (1) NULL ,
	[ScoreLevel] [varchar] (30) NULL ,
	[fsStatus] [char] (1) NULL,
	[fsObjectID] [varchar] (30) NULL,
	[ISLocked] [char] (1) NULL ,
	[Issue_User] [varchar] (20) NULL ,
	[Issue_Date] [datetime] NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_TaskDocument] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserID] [varchar] (20) NOT NULL ,
	[TD_Type] [char] (1) NOT NULL ,
	[TD_ID] [varchar] (25) NOT NULL ,
	[DocID] [varchar] (25) NOT NULL ,
	[DocVer] [varchar] (5) NOT NULL ,
	[TD_isFinished] [char] (1) NULL ,
	[TD_Complete] [decimal](10, 4) NULL ,
	[TD_Source] [varchar] (45) NULL ,
	[TD_User_1] [varchar] (50) NULL ,
	[TD_User_2] [varchar] (50) NULL ,
	[TD_Note] [varchar] (2048) NULL ,
	[TD_Start_Date] [datetime] NULL ,
	[TD_Finished_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_TaskEexec] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[Name] [varchar] (40) NULL ,
	[User_1] [varchar] (50) NULL ,
	[User_2] [varchar] (50) NULL ,
	[Description] [varchar] (250) NULL ,
	[ShowColor] [varchar] (20) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_TreeBOM] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ParentType] [char] (1) NOT NULL ,
	[ParentID] [varchar] (25) NOT NULL ,
	[ParentVersion] [smallint] NOT NULL ,
	[ChildType] [char] (1) NOT NULL ,
	[ChildID] [varchar] (25) NOT NULL ,
	[ChildVersion] [smallint] NOT NULL ,
	[Pos] [varchar] (8) NULL ,
	[UseQty] [decimal](15, 8) NULL ,
	[Status] [char] (1) NULL ,
	[BOM_ST] [char] (1) NULL ,
	[BOM_Note] [text] NULL ,
	[BOM_Note1] [varchar] (512) NULL ,
	[BOM_Note2] [varchar] (512) NULL ,
	[MP_Version] [varchar] (15) NULL ,
	[RlsDate] [datetime] NULL ,
	[StopDate] [datetime] NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_TreeBOMSubst] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ParentID] [varchar] (25) NOT NULL ,
	[ChildID] [varchar] (25) NOT NULL ,
	[Pos] [smallint] NOT NULL ,
	[SubstID] [varchar] (25) NOT NULL ,
	[Subst_Class] [varchar] (20) NULL ,
	[VendorID] [varchar] (15) NULL ,
	[Vend_PartID] [varchar] (25) NULL ,
	[Subst_User1] [varchar] (45) NULL ,
	[Subst_User2] [varchar] (45) NULL ,
	[Subst_Description] [varchar] (250) NULL ,
	[Subst_RlsDate] [datetime] NULL ,
	[Subst_StopDate] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_TreeBOMVer] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[PartID] [varchar] (25) NOT NULL ,
	[PartVer] [int] NOT NULL ,
	[Status] [char] (1) NULL ,
	[Description] [varchar] (200) NULL ,
	[ECID] [varchar] (25) NULL ,
	[RlsDate] [datetime] NULL ,
	[StopDate] [datetime] NULL ,
	[Create_User] [varchar] (25) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_TreeDoc] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[Type] [char] (1) NOT NULL ,
	[ParentID] [varchar] (25) NOT NULL ,
	[ID] [varchar] (25) NOT NULL ,
	[Version] [varchar] (5) NOT NULL ,
	[Pos] [int] NULL ,
	[Create_User] [varchar] (25) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_UserDsCenter] (
	[UserID] [varchar] (20) NOT NULL ,
	[ID] [int] NOT NULL ,
	[LevelNO] [smallint] NULL ,
	[Pos] [smallint] NULL ,
	[ParentID] [int] NULL ,
	[UDC_Type] [char] (1) NULL ,
	[UDC_ID] [varchar] (250) NULL ,
	[UDC_Ver] [varchar] (5) NULL ,
	[UDC_Status] [char] (1) NULL ,
	[UDC_Description] [text] NULL ,
	[UDC_EsDate] [datetime] NULL ,
	[TxColor] [varchar] (20) NULL ,
	[Create_PCName] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_UserMessage] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[Type] [char] (1) NOT NULL ,
	[ObjectID] [varchar] (25) NOT NULL ,
	[ObjectVer] [varchar] (5) NOT NULL ,
	[UserID] [varchar] (20) NOT NULL ,
	[Status] [char] (1) NULL ,
	[F_Level] [char] (1) NULL ,
	[F_isSendMail] [char] (1) NULL ,
	[F_isRead] [char] (1) NULL ,
	[F_isReply] [char] (1) NULL ,
	[F_isDelete] [char] (1) NULL ,
	[Msg_Subject] [varchar] (120) NULL ,
	[Msg_Description] [varchar] (2048) NULL ,
	[Msg_Complete] [decimal](10, 4) NULL ,
	[AagentUser] [varchar] (20) NULL ,
	[Score] [numeric](15, 6) NULL ,
	[isJoin] [char] (1) NULL ,
	[isPresent] [char] (1) NULL ,
	[Read_Date] [datetime] NULL ,
	[Reply_Date] [datetime] NULL ,
	[Delete_Date] [datetime] NULL ,
	[SendMail_Date] [datetime] NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_UserQueryData] (
	[UserID] [varchar] (20) NOT NULL ,
	[ClsName] [varchar] (20) NOT NULL ,
	[SeqNO] [smallint] NOT NULL ,
	[QryName] [varchar] (40) NULL ,
	[Condition] [text] NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Vendor] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (15) NOT NULL ,
	[Name] [varchar] (50) NULL ,
	[Country] [varchar] (50) NULL ,
	[ZipCode] [varchar] (10) NULL ,
	[State] [varchar] (10) NULL ,
	[City] [varchar] (30) NULL ,
	[Addr] [varchar] (50) NULL ,
	[Web_URL] [varchar] (128) NULL ,
	[Description] [varchar] (200) NULL ,
	[Contact_First_Name] [varchar] (30) NULL ,
	[Contact_Last_Name] [varchar] (30) NULL ,
	[Contact_Position] [varchar] (20) NULL ,
	[Contact_Honorific] [varchar] (4) NULL ,
	[Contact_Phone] [varchar] (20) NULL ,
	[Contact_Fax] [varchar] (20) NULL ,
	[Contact_Mobile] [varchar] (20) NULL ,
	[Contact_EMail] [varchar] (50) NULL ,
	[Remit_TO_Name] [varchar] (50) NULL ,
	[Remit_TO_Country] [varchar] (50) NULL ,
	[Remit_TO_ZipCode] [varchar] (10) NULL ,
	[Remit_TO_State] [varchar] (10) NULL ,
	[Remit_TO_City] [varchar] (30) NULL ,
	[Remit_TO_Addr] [varchar] (50) NULL ,
	[Tax_ID_Number] [varchar] (25) NULL ,
	[Buyer] [varchar] (15) NULL ,
	[User_1] [varchar] (45) NULL ,
	[User_2] [varchar] (45) NULL ,
	[User_3] [varchar] (45) NULL ,
	[User_4] [varchar] (45) NULL ,
	[User_5] [varchar] (80) NULL ,
	[User_6] [varchar] (80) NULL ,
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
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL ,
	[ISLocked] [char] (1) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_Vendor_Contact] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[Vendor_ID] [varchar] (15) NOT NULL ,
	[Contact_NO] [smallint] NOT NULL ,
	[Contact_First_Name] [varchar] (30) NULL ,
	[Contact_Last_Name] [varchar] (30) NULL ,
	[Contact_Position] [varchar] (20) NULL ,
	[Contact_Honorific] [varchar] (4) NULL ,
	[Contact_Phone] [varchar] (20) NULL ,
	[Contact_Fax] [varchar] (20) NULL ,
	[Contact_Mobile] [varchar] (20) NULL ,
	[Contact_EMail] [varchar] (50) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[PDM_TaskLink] (
	[TL_SUCC_ID] [varchar] (25) NOT NULL ,
	[TL_PRED_ID] [varchar] (25) NOT NULL ,
	[TL_Type] [int] NULL ,
	[TL_Lag_FMT] [int] NULL ,
	[TL_Lag] [int] NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_TaskScRule] (
	[TS_ID] [varchar] (30) NOT NULL ,
	[TSR_UserLevel] [smallint] NOT NULL ,
	[TSR_Day] [int] NOT NULL ,
	[TSR_Score] [decimal](15, 6) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_TaskScore] (
	[RowID] [int] IDENTITY (1, 1) NOT NULL ,
	[ID] [varchar] (30) NOT NULL ,
	[TS_Name] [varchar] (80) NULL ,
	[TS_Description] [varchar] (1024) NULL ,
	[Update_User] [varchar] (20) NULL ,
	[Update_Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDM_TaskUserSc] (
	[UserID] [varchar] (20) NOT NULL ,
	[Task_ID] [varchar] (25) NOT NULL ,
	[TS_ID] [varchar] (30) NULL ,
	[Task_ESFDate] [datetime] NULL ,
	[Task_ACFDate] [datetime] NULL ,
	[User_ACFDate] [datetime] NULL ,
	[TUR_Day] [decimal](15, 6) NULL ,
	[TUR_Day_User] [decimal](15, 6) NULL ,
	[Create_User] [varchar] (20) NULL ,
	[Create_Date] [datetime] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_TaskLink] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_TaskLink] PRIMARY KEY  CLUSTERED 
	(
		[TL_SUCC_ID],
		[TL_PRED_ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_TaskScRule] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_TaskScRule] PRIMARY KEY  CLUSTERED 
	(
		[TS_ID],
		[TSR_UserLevel],
		[TSR_Day]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_TaskScore] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_TaskScore] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_TaskUserSc] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_TaskUserSc] PRIMARY KEY  CLUSTERED 
	(
		[UserID],
		[Task_ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_TaskLink] ADD 
	CONSTRAINT [DF_PDM_TaskLink_TL_Link_Type] DEFAULT (1) FOR [TL_Type],
	CONSTRAINT [DF_PDM_TaskLink_TL_Link_Lag_FMT] DEFAULT (7) FOR [TL_Lag_FMT],
	CONSTRAINT [DF_PDM_TaskLink_TL_Link_Lag] DEFAULT (0) FOR [TL_Lag]
GO

ALTER TABLE [dbo].[PDM_TaskScRule] ADD 
	CONSTRAINT [DF_PDM_TaskScRule_TSR_UserLevel] DEFAULT (1) FOR [TSR_UserLevel],
	CONSTRAINT [DF_PDM_TaskScRule_TSR_Day_1] DEFAULT (0) FOR [TSR_Day],
	CONSTRAINT [DF_PDM_TaskScRule_TSR_Score] DEFAULT (0) FOR [TSR_Score]
GO

ALTER TABLE [dbo].[PDM_TaskUserSc] ADD 
	CONSTRAINT [DF_PDM_TaskUserSc_TUR_Day] DEFAULT (0) FOR [TUR_Day],
	CONSTRAINT [DF_PDM_TaskUserSc_TUR_Day_User] DEFAULT (0) FOR [TUR_Day_User]
GO





ALTER TABLE [dbo].[PDM_APPConnect] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_APPConnect] PRIMARY KEY  CLUSTERED 
	(
		[Connect_Time],
		[Connect_PC],
		[Connect_Class]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_APPGlobal] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_APPGlobal] PRIMARY KEY  CLUSTERED 
	(
		[App_Name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_APPMessage] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_AppMessage] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_APPOption] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_AppInfo] PRIMARY KEY  CLUSTERED 
	(
		[Name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_APPUserMenu] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_APPUserMenu] PRIMARY KEY  CLUSTERED 
	(
		[RowID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Access_Class] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Access_Class] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Access_Perm] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Access_Perm] PRIMARY KEY  CLUSTERED 
	(
		[Type],
		[Obj_ID],
		[Rights_ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Access_Rights] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Service_Obj] PRIMARY KEY  CLUSTERED 
	(
		[Class_ID],
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_AttFldList] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_AttFldLits] PRIMARY KEY  CLUSTERED 
	(
		[AttID],
		[SeqNO],
		[Alias]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_AttribList] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_AttribList] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_CADBorder] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_CADOption] PRIMARY KEY  CLUSTERED 
	(
		[Name],
		[Type],
		[FieldID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_CADOption] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_CADOption_1] PRIMARY KEY  CLUSTERED 
	(
		[Name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_CD_Day] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_CD_Day] PRIMARY KEY  CLUSTERED 
	(
		[ClassID],
		[DateID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_CD_DayType] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_CD_DayType] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_CommCode] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_CommCode] PRIMARY KEY  CLUSTERED 
	(
		[Code]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_DiaryReport] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_DiaryReport] PRIMARY KEY  CLUSTERED 
	(
		[DiaryID],
		[UserID],
		[UDR_Type],
		[UDR_ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_DocFolder] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_DocFolder] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_DocRelation] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_DocRelation] PRIMARY KEY  CLUSTERED 
	(
		[PartID],
		[DocID],
		[DocVer]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_DocTempType] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_DocTempType] PRIMARY KEY  CLUSTERED 
	(
		[DocExt]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_DocTemplate] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_DocTemplate] PRIMARY KEY  CLUSTERED 
	(
		[DocTypeID],
		[Template_Name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Document] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_Document] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[Version]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Document_Binary] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_Document_Binary] PRIMARY KEY  CLUSTERED 
	(
		[DocID],
		[DocVer],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_ECInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_ECInfo] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_ECNote] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_ECNote] PRIMARY KEY  CLUSTERED 
	(
		[ECID],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_ECRelation] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_ECRelation] PRIMARY KEY  CLUSTERED 
	(
		[ECID],
		[Type],
		[ID],
		[Version]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_F_Deputy] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_F_Deputy] PRIMARY KEY  CLUSTERED 
	(
		[DeputyID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_F_Info] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_F_Info] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_F_MsgUserList] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_F_MsgUserList] PRIMARY KEY  CLUSTERED 
	(
		[FSUL_UserID],
		[FSUL_FieldID],
		[FSUL_SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_F_SignGroup] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_F_SignGroup] PRIMARY KEY  CLUSTERED 
	(
		[FL_ID],
		[FSG_Step]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_F_SignMember] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_F_SignMember] PRIMARY KEY  CLUSTERED 
	(
		[FL_ID],
		[FSM_Step],
		[FSM_SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_F_SignMsg] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_F_SignLog] PRIMARY KEY  CLUSTERED 
	(
		[FL_ID],
		[FSMG_SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_F_SignObject] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_F_SignObject] PRIMARY KEY  CLUSTERED 
	(
		[FL_ID],
		[FSO_SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_F_TempRights] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_F_TempRights] PRIMARY KEY  CLUSTERED 
	(
		[FL_ID],
		[FTR_RightsType],
		[FTR_RightsID]
	)  ON [PRIMARY] 
GO


ALTER TABLE [dbo].[PDM_FileFlow] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_File_Flow] PRIMARY KEY  CLUSTERED 
	(
		[RowID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_FileOption] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_FileOption] PRIMARY KEY  CLUSTERED 
	(
		[VaultNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_FileVault] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_FileVault] PRIMARY KEY  CLUSTERED 
	(
		[DocID],
		[DocVer],
		[Version]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_FileLink] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_FileLink] PRIMARY KEY  CLUSTERED 
	(
		[FLK_ObjClass],
		[FLK_ObjID],
		[FLK_SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_FldDict] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_APPField] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_FldList] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_FldList] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[Alias]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Log_MainDB] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Log_MainDB] PRIMARY KEY  CLUSTERED 
	(
		[RowID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Log_PkgFile] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Log_PkgFile] PRIMARY KEY  CLUSTERED 
	(
		[PkgInfo_ID],
		[DocID],
		[DocVer]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Log_PkgInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Log_PkgInfo] PRIMARY KEY  CLUSTERED 
	(
		[RowID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Log_Report] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_LogReport] PRIMARY KEY  CLUSTERED 
	(
		[RowID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Log_TreeBOM] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Log_TreeBOM] PRIMARY KEY  CLUSTERED 
	(
		[RowID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_LogonGrp] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_LogonGroup] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_LogonUserGrp] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_LogonUserGrp] PRIMARY KEY  CLUSTERED 
	(
		[UserID],
		[GroupID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPConsum] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MPConsum] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPCostRel] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MPCostRel] PRIMARY KEY  CLUSTERED 
	(
		[MPC_ID],
		[MPCR_RlsDate]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPCostType] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MPCostType] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPCutting] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MPCutting] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPDocRel] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MPDocRel] PRIMARY KEY  CLUSTERED 
	(
		[MPDR_Type],
		[MPDR_MPID],
		[MPDR_Class],
		[MPDR_ObjID],
		[MPDR_ObjVer]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPLeg] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MPLeg] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPMeasure] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MPMeasure] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPOperation] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MPOperation] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPOperationRel] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MPOperationRel] PRIMARY KEY  CLUSTERED 
	(
		[MPOR_Class],
		[MPOR_ParentID],
		[MPOR_SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPRequire] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MPRequire] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPResource] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MPResource] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPSpec] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MPSpec] PRIMARY KEY  CLUSTERED 
	(
		[MPS_PartID],
		[MPS_PartVer]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MaterialPrice] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MaterialCost] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Meeting] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Meeting] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MeetingDiscuss] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MeetingDiscuss] PRIMARY KEY  CLUSTERED 
	(
		[MeetID],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MeetingNote] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MeetingNote] PRIMARY KEY  CLUSTERED 
	(
		[MeetID],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MeetingRelation] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MeetingRelation] PRIMARY KEY  CLUSTERED 
	(
		[MeetID],
		[Type],
		[ObjectID],
		[ObjectVer]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MoldCost] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MoldCost] PRIMARY KEY  CLUSTERED 
	(
		[MOClass],
		[MOID],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MoldHistory] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MoldHistory] PRIMARY KEY  CLUSTERED 
	(
		[MOID],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MoldInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MoldInfo] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MoldRelation] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MoldRelation] PRIMARY KEY  CLUSTERED 
	(
		[MOID],
		[MOR_Type],
		[MOR_ID],
		[MOR_Version]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MoldRepair] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MoldRepair] PRIMARY KEY  CLUSTERED 
	(
		[MOID],
		[MOR_ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MoldResource] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MoldResource] PRIMARY KEY  CLUSTERED 
	(
		[MOID],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MoldTrial] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_MoldTrial] PRIMARY KEY  CLUSTERED 
	(
		[MOID],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NOConst] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_NOConst] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NOGetInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_NOGetInfo] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NOGrpRights] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_NOGrpRights] PRIMARY KEY  CLUSTERED 
	(
		[NodeID],
		[GroupID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NOList] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_NOList] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NONode] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_ItemNONode] PRIMARY KEY  CLUSTERED 
	(
		[NodeID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NONotUse] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_NONotUse] PRIMARY KEY  CLUSTERED 
	(
		[GetNOID],
		[NotUseNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NOSegment] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_NOSegment] PRIMARY KEY  CLUSTERED 
	(
		[SegID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NOSerial] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_NOSerial] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NOTabRights] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_NOTabRights] PRIMARY KEY  CLUSTERED 
	(
		[NodeID],
		[TabID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NOTable] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_NOTable] PRIMARY KEY  CLUSTERED 
	(
		[TabID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NOVerList] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_NOVerList] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NOVerRights] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_VerRights] PRIMARY KEY  CLUSTERED 
	(
		[VerID],
		[TabID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NOVerify] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_NOVerify] PRIMARY KEY  CLUSTERED 
	(
		[RowID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_NOVersion] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_NOVersion] PRIMARY KEY  CLUSTERED 
	(
		[VerID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Part] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_Part] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_PartCost] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_PartConst] PRIMARY KEY  CLUSTERED 
	(
		[PartID],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Part_Binary] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_Part_Binary] PRIMARY KEY  CLUSTERED 
	(
		[PartID],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_ProductCode] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_ProdCode] PRIMARY KEY  CLUSTERED 
	(
		[Code]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Project] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_Project] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_ProjectUser] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_ProjectUser] PRIMARY KEY  CLUSTERED 
	(
		[ProjectID],
		[RightsType],
		[RightsID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Project_Binary] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_Project_Binary] PRIMARY KEY  CLUSTERED 
	(
		[ProjectID],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Report] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Report] PRIMARY KEY  CLUSTERED 
	(
		[RowID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Report_Line] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Report_Line] PRIMARY KEY  CLUSTERED 
	(
		[ReportID],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_TableDict] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_TableDict] PRIMARY KEY  CLUSTERED 
	(
		[TabName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Task] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Task] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_TaskDocument] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_TaskDocument] PRIMARY KEY  CLUSTERED 
	(
		[UserID],
		[TD_Type],
		[TD_ID],
		[DocID],
		[DocVer]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_TaskEexec] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_TaskEexec] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_TreeBOM] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_TreeBOM] PRIMARY KEY  CLUSTERED 
	(
		[RowID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_TreeBOMSubst] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_TreeBOMSubst] PRIMARY KEY  CLUSTERED 
	(
		[ParentID],
		[ChildID],
		[Pos],
		[SubstID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_TreeBOMVer] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_TreeBOMVer] PRIMARY KEY  CLUSTERED 
	(
		[PartID],
		[PartVer]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_TreeDoc] WITH NOCHECK ADD 
	CONSTRAINT [PK_PD_TreeDoc] PRIMARY KEY  CLUSTERED 
	(
		[Type],
		[ParentID],
		[ID],
		[Version]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_UserDsCenter] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_UserDsCenter] PRIMARY KEY  CLUSTERED 
	(
		[UserID],
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_UserMessage] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_UserMessage] PRIMARY KEY  CLUSTERED 
	(
		[Type],
		[ObjectID],
		[ObjectVer],
		[UserID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_UserQueryData] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_UserQueryData] PRIMARY KEY  CLUSTERED 
	(
		[UserID],
		[ClsName],
		[SeqNO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Vendor] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Vendor] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_Vendor_Contact] WITH NOCHECK ADD 
	CONSTRAINT [PK_PDM_Vendor_Contact] PRIMARY KEY  CLUSTERED 
	(
		[Vendor_ID],
		[Contact_NO]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_APPConnect] ADD 
	CONSTRAINT [DF_PDM_APPConnect_Connect_Class_1] DEFAULT (0) FOR [Connect_Class],
	CONSTRAINT [DF_PDM_APPConnect_Connect_AppHandle] DEFAULT (0) FOR [Connect_AppHandle]
GO

ALTER TABLE [dbo].[PDM_APPMessage] ADD 
	CONSTRAINT [DF_PDM_AppMessage_Style] DEFAULT ('T') FOR [Style],
	CONSTRAINT [DF_PDM_AppMessage_UseAttachment] DEFAULT ('N') FOR [UseAttachment],
	CONSTRAINT [DF_PDM_AppMessage_ShowDialog] DEFAULT ('Y') FOR [ShowDialog]
GO

ALTER TABLE [dbo].[PDM_APPUserMenu] ADD 
	CONSTRAINT [DF_PDM_APPUserMenu_ParentID] DEFAULT (0) FOR [ParentID],
	CONSTRAINT [DF_PDM_APPUserMenu_Menu_Pos] DEFAULT (1) FOR [Menu_Pos],
	CONSTRAINT [DF_PDM_APPUserMenu_LevelNO] DEFAULT (0) FOR [LevelNO]
GO

 CREATE  INDEX [Menu_Pos] ON [dbo].[PDM_APPUserMenu]([ParentID], [Menu_Pos], [LevelNO]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_AttFldList] ADD 
	CONSTRAINT [DF_PDM_AttFldLits_Create_Date] DEFAULT (getdate()) FOR [Create_Date]
GO

ALTER TABLE [dbo].[PDM_AttribList] ADD 
	CONSTRAINT [DF_PDM_AttribList_Create_Date] DEFAULT (getdate()) FOR [Create_Date]
GO

ALTER TABLE [dbo].[PDM_CD_Day] ADD 
	CONSTRAINT [DF_PDM_CD_Day_ClassID] DEFAULT (0) FOR [ClassID]
GO

ALTER TABLE [dbo].[PDM_CD_DayType] ADD 
	CONSTRAINT [DF_PDM_CD_DayType_Work_Hours] DEFAULT (0) FOR [Work_Hours]
GO

ALTER TABLE [dbo].[PDM_CommCode] ADD 
	CONSTRAINT [DF_PDM_CommCode_Create_Date] DEFAULT (getdate()) FOR [Update_Date]
GO

ALTER TABLE [dbo].[PDM_DiaryReport] ADD 
	CONSTRAINT [DF_PDM_DiaryReport_UDR_isFinished] DEFAULT ('N') FOR [UDR_isFinished],
	CONSTRAINT [DF_PDM_DiaryReport_UDR_Complete] DEFAULT (0) FOR [UDR_Complete],
	CONSTRAINT [DF_PDM_DiaryReport_Business_Hrs] DEFAULT (0) FOR [Business_Hrs],
	CONSTRAINT [DF_PDM_DiaryReport_Overtime_Hrs1] DEFAULT (0) FOR [Overtime_Hrs1],
	CONSTRAINT [DF_PDM_DiaryReport_Overtime_Hrs2] DEFAULT (0) FOR [Overtime_Hrs2]
GO

 CREATE  INDEX [UserType] ON [dbo].[PDM_DiaryReport]([UserID], [UDR_Type]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_DocFolder] ADD 
	CONSTRAINT [DF_PDM_DocFolder_Create_Date] DEFAULT (getdate()) FOR [Create_Date]
GO

ALTER TABLE [dbo].[PDM_DocRelation] ADD 
	CONSTRAINT [DF_PD_DocRelation_Create_Date] DEFAULT (getdate()) FOR [Create_Date]
GO

 CREATE  INDEX [PartIDPos] ON [dbo].[PDM_DocRelation]([PartID], [Pos]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_DocTemplate] ADD 
	CONSTRAINT [DF_PDM_DocTemplate_Status] DEFAULT ('N') FOR [Type]
GO

ALTER TABLE [dbo].[PDM_Document] ADD 
	CONSTRAINT [DF_PD_Document_Status] DEFAULT ('N') FOR [Status],
	CONSTRAINT [DF_PD_Document_OnVault] DEFAULT ('N') FOR [OnVault],
	CONSTRAINT [DF_PD_Document_Create_Date] DEFAULT (getdate()) FOR [Create_Date],
	CONSTRAINT [DF_PD_Document_ISLocked] DEFAULT ('N') FOR [ISLocked]
GO

ALTER TABLE [dbo].[PDM_ECInfo] ADD 
	CONSTRAINT [DF_PDM_ECInfo_ISLocked] DEFAULT ('N') FOR [ISLocked],
	CONSTRAINT [DF_PDM_ECInfo_ISExport] DEFAULT ('N') FOR [ISExport]
GO

 CREATE  INDEX [Type] ON [dbo].[PDM_ECInfo]([Type]) ON [PRIMARY]
GO

 CREATE  INDEX [Rls_Date] ON [dbo].[PDM_ECInfo]([Rls_Date]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_ECRelation] ADD 
	CONSTRAINT [DF_PDM_ECRelation_BitsLength] DEFAULT (0) FOR [BitsLength],
	CONSTRAINT [DF_PDM_ECRelation_ECR_Check1] DEFAULT ('N') FOR [ECR_Check1],
	CONSTRAINT [DF_PDM_ECRelation_ECR_Check2] DEFAULT ('N') FOR [ECR_Check2],
	CONSTRAINT [DF_PDM_ECRelation_ECR_Check3] DEFAULT ('N') FOR [ECR_Check3],
	CONSTRAINT [DF_PDM_ECRelation_ECR_Check4] DEFAULT ('N') FOR [ECR_Check4],
	CONSTRAINT [DF_PDM_ECRelation_ECR_Check5] DEFAULT ('N') FOR [ECR_Check5],
	CONSTRAINT [DF_PDM_ECRelation_ECR_Check6] DEFAULT ('N') FOR [ECR_Check6],
	CONSTRAINT [DF_PDM_ECRelation_ECR_Check7] DEFAULT ('N') FOR [ECR_Check7],
	CONSTRAINT [DF_PDM_ECRelation_ECR_Check8] DEFAULT ('N') FOR [ECR_Check8],
	CONSTRAINT [DF_PDM_ECRelation_ECR_Check9] DEFAULT ('N') FOR [ECR_Check9],
	CONSTRAINT [DF_PDM_ECRelation_ECR_Check10] DEFAULT ('N') FOR [ECR_Check10],
	CONSTRAINT [DF_PDM_ECRelation_ECR_Check11] DEFAULT ('N') FOR [ECR_Check11],
	CONSTRAINT [DF_PDM_ECRelation_ECR_Check12] DEFAULT ('N') FOR [ECR_Check12]
GO

ALTER TABLE [dbo].[PDM_F_Info] ADD 
	CONSTRAINT [DF_PDM_F_Info_FL_Class] DEFAULT ('W') FOR [FL_Class],
	CONSTRAINT [DF_PDM_F_Info_FL_Level] DEFAULT (0) FOR [FL_Speed],
	CONSTRAINT [DF_PDM_F_Info_FL_Status] DEFAULT ('N') FOR [FL_Status],
	CONSTRAINT [DF_PDM_F_Info_FL_CurGroup] DEFAULT (0) FOR [FL_CurGroup],
	CONSTRAINT [DF_PDM_F_Info_FL_GroupCount] DEFAULT (0) FOR [FL_GroupCount],
	CONSTRAINT [DF_PDM_F_Info_FL_Returned] DEFAULT ('N') FOR [FL_Returned],
	CONSTRAINT [DF_PDM_F_Info_FL_OptStart] DEFAULT (0) FOR [FL_OptStart],
	CONSTRAINT [DF_PDM_F_Info_FL_OptEndn] DEFAULT (0) FOR [FL_OptEnd]
GO

ALTER TABLE [dbo].[PDM_F_MsgUserList] ADD 
	CONSTRAINT [DF_PDM_F_MsgList_FSMT_FieldID] DEFAULT (0) FOR [FSUL_FieldID],
	CONSTRAINT [DF_PDM_F_MsgList_FSMT_SeqNO] DEFAULT (0) FOR [FSUL_SeqNO]
GO

ALTER TABLE [dbo].[PDM_F_SignGroup] ADD 
	CONSTRAINT [DF_PDM_F_SignGroup_FSG_Step] DEFAULT (0) FOR [FSG_Step],
	CONSTRAINT [DF_PDM_F_SignGroup_FSG_isSendMail] DEFAULT ('N') FOR [FSG_SendMail],
	CONSTRAINT [DF_PDM_F_SignGroup_FSG_SignField] DEFAULT (0) FOR [FSG_SignField],
	CONSTRAINT [DF_PDM_F_SignGroup_FSG_MarcoID] DEFAULT (0) FOR [FSG_MarcoID]
GO

ALTER TABLE [dbo].[PDM_F_SignMember] ADD 
	CONSTRAINT [DF_PDM_F_SignMember_FL_ID] DEFAULT (0) FOR [FL_ID],
	CONSTRAINT [DF_PDM_F_SignMember_FSM_Step] DEFAULT (0) FOR [FSM_Step],
	CONSTRAINT [DF_PDM_F_SignMember_FSM_SeqNO] DEFAULT (0) FOR [FSM_SeqNO],
	CONSTRAINT [DF_PDM_F_SignMember_FSM_isLeader] DEFAULT ('N') FOR [FSM_isLeader],
	CONSTRAINT [DF_PDM_F_SignMember_FSM_isSigned] DEFAULT ('E') FOR [FSM_isSigned],
	CONSTRAINT [DF_PDM_F_SignMember_FSM_SendMail] DEFAULT ('N') FOR [FSM_SendMail],
	CONSTRAINT [DF_PDM_F_SignMember_FSM_SignField] DEFAULT (0) FOR [FSM_SignField],
	CONSTRAINT [DF_PDM_F_SignMember_FSM_MsgSeqNO] DEFAULT ((-1)) FOR [FSM_MsgSeqNO]
GO

ALTER TABLE [dbo].[PDM_F_SignMsg] ADD 
	CONSTRAINT [DF_PDM_F_SignLog_FL_ID] DEFAULT (0) FOR [FL_ID],
	CONSTRAINT [DF_PDM_F_SignMsg_FSM_SeqNO] DEFAULT (0) FOR [FSMG_SeqNO],
	CONSTRAINT [DF_PDM_F_SignLog_FSL_SeqNO] DEFAULT (0) FOR [FSMG_Step],
	CONSTRAINT [DF_PDM_F_SignMsg_FSMG_SignType] DEFAULT ('N') FOR [FSMG_SignType],
	CONSTRAINT [DF_PDM_F_SignMsg_FSMG_RedLineID] DEFAULT (0) FOR [FSMG_RedLineID],
	CONSTRAINT [DF_PDM_F_SignMsg_FSMG_Signed] DEFAULT ('Y') FOR [FSMG_Signed],
	CONSTRAINT [DF_PDM_F_SignLog_FSL_RetGroup] DEFAULT ((-1)) FOR [FSMG_RetGroup]
GO

ALTER TABLE [dbo].[PDM_F_SignObject] ADD 
	CONSTRAINT [DF_PDM_F_SignObject_FL_ID] DEFAULT (0) FOR [FL_ID],
	CONSTRAINT [DF_PDM_F_SignObject_FSO_SeqNO] DEFAULT (0) FOR [FSO_SeqNO],
	CONSTRAINT [DF_PDM_F_SignObject_FCO_Ver] DEFAULT ('O') FOR [FSO_Ver],
	CONSTRAINT [DF_PDM_F_SignObject_FSO_TreeType] DEFAULT (0) FOR [FSO_TreeType],
	CONSTRAINT [DF_PDM_F_SignObject_FCO_isRelease] DEFAULT ('N') FOR [FSO_Signed],
	CONSTRAINT [DF_PDM_F_SignObject_FCO_Amount] DEFAULT (0) FOR [FSO_Amount],
	CONSTRAINT [DF_PDM_F_SignObject_FCO_oldStatus] DEFAULT ('N') FOR [FSO_OldStatus],
	CONSTRAINT [DF_PDM_F_SignObject_FSO_SignBorder] DEFAULT ('N') FOR [FSO_SignBorder]
GO

ALTER TABLE [dbo].[PDM_FileFlow] ADD 
	CONSTRAINT [DF_PDM_FileFlow_UNC_ID] DEFAULT (0) FOR [UNC_ID],
	CONSTRAINT [DF_PDM_FileFlow_AppHandle] DEFAULT ((-1)) FOR [AppHandle],
	CONSTRAINT [DF_PDM_FileFlow_In_UNC_ID] DEFAULT (0) FOR [In_UNC_ID]
GO

 CREATE  INDEX [DocID] ON [dbo].[PDM_FileFlow]([DocID], [DocVer]) ON [PRIMARY]
GO

 CREATE  UNIQUE  INDEX [Vault_UNCID] ON [dbo].[PDM_FileVault]([UNC_ID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_FldDict] ADD 
	CONSTRAINT [DF_PD_APPField_FieldType] DEFAULT ('S') FOR [FieldType],
	CONSTRAINT [DF_PD_APPField_FieldStatus] DEFAULT ('N') FOR [FieldStatus],
	CONSTRAINT [DF_PD_APPField_Width] DEFAULT (10) FOR [Width],
	CONSTRAINT [DF_PD_APPField_List] DEFAULT ('N') FOR [List],
	CONSTRAINT [DF_PD_APPField_NoEditList] DEFAULT ('N') FOR [NoEditList]
GO

ALTER TABLE [dbo].[PDM_FldList] ADD 
	CONSTRAINT [DF_PD_FldList_Create_Date] DEFAULT (getdate()) FOR [Create_Date]
GO

ALTER TABLE [dbo].[PDM_Log_MainDB] ADD 
	CONSTRAINT [DF_PDM_Log_MainDB_Type] DEFAULT ('P') FOR [Type],
	CONSTRAINT [DF_PDM_Log_MainDB_Obj_Ver] DEFAULT ('0') FOR [Obj_Ver],
	CONSTRAINT [DF_PDM_Log_MainDB_UNC_ID] DEFAULT (0) FOR [UNC_ID],
	CONSTRAINT [DF_PDM_Log_MainDB_Vault_Ver] DEFAULT (0) FOR [Vault_Ver]
GO

 CREATE  INDEX [idx_Pkg_DocID] ON [dbo].[PDM_Log_PkgFile]([DocID], [DocVer]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_Log_PkgInfo] ADD 
	CONSTRAINT [DF_PDM_Log_PkgInfo_Type] DEFAULT ('E') FOR [Type],
	CONSTRAINT [DF_PDM_Log_PkgInfo_is] DEFAULT ('N') FOR [isSucceed]
GO

 CREATE  INDEX [ReportID] ON [dbo].[PDM_Log_Report]([ReportID]) ON [PRIMARY]
GO

 CREATE  INDEX [PartID] ON [dbo].[PDM_Log_TreeBOM]([PartID]) ON [PRIMARY]
GO

 CREATE  INDEX [Type] ON [dbo].[PDM_Log_TreeBOM]([Type]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_LogonAccount] ADD 
	CONSTRAINT [DF_PDM_LogonAccount_lmtLogonCount] DEFAULT (0) FOR [lmtLogonCount],
	CONSTRAINT [DF_PDM_LogonAccount_TaskScoreLevel] DEFAULT (1) FOR [TaskScoreLevel],
	CONSTRAINT [PK_PDM_LogonAccount] PRIMARY KEY  NONCLUSTERED 
	(
		[UserID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDM_MPCostRel] ADD 
	CONSTRAINT [DF_PDM_MPCostRel_MPCR_Cost_Setup] DEFAULT (0) FOR [MPCR_Cost_Setup],
	CONSTRAINT [DF_PDM_MPCostRel_MPCR_Cost_Run] DEFAULT (0) FOR [MPCR_Cost_Run],
	CONSTRAINT [DF_PDM_MPCostRel_MPCR_Cost_WTTrans] DEFAULT (0) FOR [MPCR_Cost_WTTrans],
	CONSTRAINT [DF_PDM_MPCostRel_MPCR_Cost_Transfer] DEFAULT (0) FOR [MPCR_Cost_Transfer],
	CONSTRAINT [DF_PDM_MPCostRel_MPCR_Cost_WTLoadUp] DEFAULT (0) FOR [MPCR_Cost_WTLoadUp],
	CONSTRAINT [DF_PDM_MPCostRel_MPCR_Cost_Detach] DEFAULT (0) FOR [MPCR_Cost_Detach],
	CONSTRAINT [DF_PDM_MPCostRel_MPCR_Cost_User1] DEFAULT (0) FOR [MPCR_Cost_User1],
	CONSTRAINT [DF_PDM_MPCostRel_MPCR_Cost_User2] DEFAULT (0) FOR [MPCR_Cost_User2],
	CONSTRAINT [DF_PDM_MPCostRel_MPCR_Cost_User3] DEFAULT (0) FOR [MPCR_Cost_User3],
	CONSTRAINT [DF_PDM_MPCostRel_MPCR_Cost_User4] DEFAULT (0) FOR [MPCR_Cost_User4]
GO

ALTER TABLE [dbo].[PDM_MPDocRel] ADD 
	CONSTRAINT [DF_PDM_MPDocRel_MPDR_Class] DEFAULT ('O') FOR [MPDR_Class]
GO

ALTER TABLE [dbo].[PDM_MPOperation] ADD 
	CONSTRAINT [DF_PDM_MPOperation_MPO_Name] DEFAULT ('S') FOR [MPO_Name],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Time_Setup] DEFAULT (0) FOR [MPO_Time_Setup],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Time_Run] DEFAULT (0) FOR [MPO_Time_Run],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Time_WTTrans] DEFAULT (0) FOR [MPO_Time_WTTrans],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Time_Transfer] DEFAULT (0) FOR [MPO_Time_Transfer],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Time_WTLoadUp] DEFAULT (0) FOR [MPO_Time_WTLoadUp],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Time_Detach] DEFAULT (0) FOR [MPO_Time_Detach],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Time_User1] DEFAULT (0) FOR [MPO_Time_User1],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Time_User2] DEFAULT (0) FOR [MPO_Time_User2],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Time_User3] DEFAULT (0) FOR [MPO_Time_User3],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Time_User4] DEFAULT (0) FOR [MPO_Time_User4],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Time_Allowance] DEFAULT (1) FOR [MPO_Time_Allowance],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Time_Lead] DEFAULT (0) FOR [MPO_Time_Lead],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Cost_Direct] DEFAULT (0) FOR [MPO_Cost_Direct],
	CONSTRAINT [DF_PDM_MPOperation_MPO_Cost_InDirect] DEFAULT (0) FOR [MPO_Cost_InDirect]
GO

 CREATE  INDEX [MPO_PartID] ON [dbo].[PDM_MPOperation]([MPO_PartID], [MPO_PartVer], [MPO_SeqNO]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_MPRequire] ADD 
	CONSTRAINT [DF_PDM_MPRequire_MPRQ_Status] DEFAULT ('N') FOR [MPRQ_Status],
	CONSTRAINT [DF_PDM_MPRequire_MPRQ_ObjVer] DEFAULT ('0') FOR [MPRQ_ObjVer],
	CONSTRAINT [DF_PDM_MPRequire_MPRQ _Qty] DEFAULT (1) FOR [MPRQ_Qty]
GO

ALTER TABLE [dbo].[PDM_MPSpec] ADD 
	CONSTRAINT [DF_PDM_MPSpec_MPS_Default] DEFAULT ('N') FOR [MPS_Default]
GO

ALTER TABLE [dbo].[PDM_MaterialPrice] ADD 
	CONSTRAINT [DF_PDM_MaterialPrice_Price] DEFAULT (0) FOR [Price]
GO

ALTER TABLE [dbo].[PDM_Meeting] ADD 
	CONSTRAINT [DF_PDM_Meeting_ISLocked] DEFAULT ('N') FOR [ISLocked]
GO

ALTER TABLE [dbo].[PDM_MoldCost] ADD 
	CONSTRAINT [DF_PDM_MoldCost_MOClass] DEFAULT ('M') FOR [MOClass],
	CONSTRAINT [DF_PDM_MoldCost_Account_Type] DEFAULT ('P') FOR [Account_Type],
	CONSTRAINT [DF_PDM_MoldCost_MOC_Cost] DEFAULT (0) FOR [MOC_Cost],
	CONSTRAINT [DF_PDM_MoldCost_MOC_SysCost] DEFAULT (0) FOR [MOC_SysCost]
GO

ALTER TABLE [dbo].[PDM_MoldInfo] ADD 
	CONSTRAINT [DF_PDM_MoldInfo_Status] DEFAULT ('N') FOR [Status],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Machine] DEFAULT (0) FOR [MO_Stor_User],
	CONSTRAINT [DF_PDM_MoldInfo_MO_HoleCount] DEFAULT (0) FOR [MO_HoleCount],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Weight] DEFAULT (0) FOR [MO_Weight],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Cost_ES] DEFAULT (0) FOR [MO_Cost_ES],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Cost_Prt] DEFAULT (0) FOR [MO_Cost_Prt],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Cost_Rep] DEFAULT (0) FOR [MO_Cost_Rep],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Cost_Oth] DEFAULT (0) FOR [MO_Cost_Oth],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Check1] DEFAULT ('N') FOR [MO_Check1],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Check2] DEFAULT ('N') FOR [MO_Check2],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Check3] DEFAULT ('N') FOR [MO_Check3],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Check4] DEFAULT ('N') FOR [MO_Check4],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Check5] DEFAULT ('N') FOR [MO_Check5],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Check6] DEFAULT ('N') FOR [MO_Check6],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Check7] DEFAULT ('N') FOR [MO_Check7],
	CONSTRAINT [DF_PDM_MoldInfo_MO_Check8] DEFAULT ('N') FOR [MO_Check8],
	CONSTRAINT [DF_PDM_MoldInfo_MO_CK_Check1] DEFAULT ('N') FOR [MO_CK_Check1],
	CONSTRAINT [DF_PDM_MoldInfo_MO_CK_Check2] DEFAULT ('N') FOR [MO_CK_Check2],
	CONSTRAINT [DF_PDM_MoldInfo_MO_CK_Check3] DEFAULT ('N') FOR [MO_CK_Check3],
	CONSTRAINT [DF_PDM_MoldInfo_MO_CK_Check4] DEFAULT ('N') FOR [MO_CK_Check4],
	CONSTRAINT [DF_PDM_MoldInfo_ISLocked] DEFAULT ('N') FOR [ISLocked]
GO

ALTER TABLE [dbo].[PDM_MoldTrial] ADD 
	CONSTRAINT [DF_PDM_MoldTrial_MOT_Check1] DEFAULT ('N') FOR [MOT_Check1],
	CONSTRAINT [DF_PDM_MoldTrial_MOT_Check2] DEFAULT ('N') FOR [MOT_Check2],
	CONSTRAINT [DF_PDM_MoldTrial_MOT_Check3] DEFAULT ('N') FOR [MOT_Check3],
	CONSTRAINT [DF_PDM_MoldTrial_MOT_Check4] DEFAULT ('N') FOR [MOT_Check4]
GO

 CREATE  INDEX [SegID] ON [dbo].[PDM_NOConst]([SegID]) ON [PRIMARY]
GO

 CREATE  INDEX [NodeID] ON [dbo].[PDM_NOGetInfo]([NodeID], [LastNO]) ON [PRIMARY]
GO

 CREATE  INDEX [PropID] ON [dbo].[PDM_NOList]([SegID], [PropID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_NONode] ADD 
	CONSTRAINT [DF_PDM_ItemNONode_Create_Date] DEFAULT (getdate()) FOR [Create_Date],
	CONSTRAINT [DF_PDM_NONode_ISFreeze] DEFAULT ('N') FOR [ISFreeze],
	CONSTRAINT [DF_PD_NONode_ISLocked] DEFAULT ('N') FOR [ISLocked]
GO

 CREATE  INDEX [NodeName] ON [dbo].[PDM_NONode]([LevelNO], [Name]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_NONotUse] ADD 
	CONSTRAINT [DF_PDM_NONotUse_Status] DEFAULT ('N') FOR [Status],
	CONSTRAINT [DF_PDM_NONotUse_Update_Date] DEFAULT (getdate()) FOR [Update_Date]
GO

 CREATE  INDEX [Update_Date] ON [dbo].[PDM_NONotUse]([GetNOID], [Update_Date]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_NOSegment] ADD 
	CONSTRAINT [DF_PDM_NOSegment_ShareID] DEFAULT (0) FOR [ShareID],
	CONSTRAINT [DF_PDM_NOSegment_Create_Date] DEFAULT (getdate()) FOR [Create_Date]
GO

 CREATE  INDEX [NodeID] ON [dbo].[PDM_NOSegment]([NodeID], [SeqNO]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_NOSerial] ADD 
	CONSTRAINT [DF_PD_NOSerial_InitSer] DEFAULT ('0') FOR [InitSer]
GO

 CREATE  INDEX [SegID] ON [dbo].[PDM_NOSerial]([SegID]) ON [PRIMARY]
GO

 CREATE  INDEX [VerID] ON [dbo].[PDM_NOVerList]([VerID], [SeqNO]) ON [PRIMARY]
GO

 CREATE  INDEX [NodeID] ON [dbo].[PDM_NOVerify]([NodeID], [GetNO]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_NOVersion] ADD 
	CONSTRAINT [DF_PD_NOVersion_Create_Date] DEFAULT (getdate()) FOR [Create_Date],
	CONSTRAINT [DF_PD_NOVersion_ISLocked] DEFAULT ('N') FOR [ISLocked]
GO

ALTER TABLE [dbo].[PDM_Part] ADD 
	CONSTRAINT [DF_PDM_Part_Type] DEFAULT ('P') FOR [Type],
	CONSTRAINT [DF_PDM_Part_Status] DEFAULT ('N') FOR [Status],
	CONSTRAINT [DF_PDM_Part_Create_Date] DEFAULT (getdate()) FOR [Create_Date],
	CONSTRAINT [DF_PDM_Part_ISLocked] DEFAULT ('N') FOR [ISLocked],
	CONSTRAINT [DF_PDM_Part_ISExport] DEFAULT ('N') FOR [ISExport]
GO

ALTER TABLE [dbo].[PDM_PartCost] ADD 
	CONSTRAINT [DF_PDM_PartCost_DefaultCost] DEFAULT ('N') FOR [DefaultCost],
	CONSTRAINT [DF_PD_PartConst_Create_Date] DEFAULT (getdate()) FOR [Create_Date]
GO

ALTER TABLE [dbo].[PDM_ProductCode] ADD 
	CONSTRAINT [DF_PDM_ProductCode_Create_Date] DEFAULT (getdate()) FOR [Update_Date]
GO

ALTER TABLE [dbo].[PDM_Project] ADD 
	CONSTRAINT [DF_PD_Project_LevelNO] DEFAULT (0) FOR [LevelNO],
	CONSTRAINT [DF_PDM_Project_Pos] DEFAULT (0) FOR [Pos],
	CONSTRAINT [DF_PD_Project_Status] DEFAULT ('N') FOR [Status],
	CONSTRAINT [DF_PD_Project_Create_Date] DEFAULT (getdate()) FOR [Create_Date],
	CONSTRAINT [DF_PD_Project_ISLocked] DEFAULT ('N') FOR [ISLocked],
	CONSTRAINT [DF_PDM_Project_ISExport] DEFAULT ('N') FOR [ISExport]
GO

 CREATE  INDEX [LevelNO] ON [dbo].[PDM_Project]([LevelNO], [ParentID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_ProjectUser] ADD 
	CONSTRAINT [DF_PD_ProjectUser_Leader] DEFAULT ('N') FOR [Leader]
GO

ALTER TABLE [dbo].[PDM_Project_Binary] ADD 
	CONSTRAINT [DF_PD_Project_Binary_Create_Date] DEFAULT (getdate()) FOR [Create_Date]
GO

ALTER TABLE [dbo].[PDM_Report] ADD 
	CONSTRAINT [DF_PDM_Report_Footer_Type] DEFAULT ('N') FOR [Footer_Type]
GO

 CREATE  INDEX [Class] ON [dbo].[PDM_Report]([Class]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_Report_Line] ADD 
	CONSTRAINT [DF_PDM_Report_Line_IsAmount] DEFAULT ('N') FOR [IsAmount]
GO

 CREATE  INDEX [FldID] ON [dbo].[PDM_TableDict]([FldID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_Task] ADD 
	CONSTRAINT [DF_PDM_Task_ParentID] DEFAULT ('0') FOR [ParentID],
	CONSTRAINT [DF_PDM_Task_LevelNO] DEFAULT (0) FOR [LevelNO],
	CONSTRAINT [DF_PDM_Task_SeqNO] DEFAULT (0) FOR [SeqNO],
	CONSTRAINT [DF_PDM_Task_Task_Priority] DEFAULT (0) FOR [Task_Priority],
	CONSTRAINT [DF_PDM_Task_Work_Complete] DEFAULT (0) FOR [Work_Complete],
	CONSTRAINT [DF_PDM_Task_A_Business_Hrs] DEFAULT (0) FOR [A_Business_Hrs],
	CONSTRAINT [DF_PDM_Task_A_Overtime_Hrs1] DEFAULT (0) FOR [A_Overtime_Hrs1],
	CONSTRAINT [DF_PDM_Task_A_Overtime_Hrs2] DEFAULT (0) FOR [A_Overtime_Hrs2],
	CONSTRAINT [DF_PDM_Task_isChecking] DEFAULT ('N') FOR [isCheckScore],
	CONSTRAINT [DF_PDM_Task_fsStatus] DEFAULT ('N') FOR [fsStatus],
	CONSTRAINT [DF_PDM_Task_ISLocked] DEFAULT ('N') FOR [ISLocked]
GO

 CREATE  INDEX [TaskSeqNO] ON [dbo].[PDM_Task]([ProjectID], [SeqNO]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_TaskDocument] ADD 
	CONSTRAINT [DF_PDM_TaskDocument_TD_Complete] DEFAULT (0) FOR [TD_Complete]
GO

ALTER TABLE [dbo].[PDM_TreeBOM] ADD 
	CONSTRAINT [DF_PDM_TreeBOM_Version] DEFAULT (1) FOR [ParentVersion],
	CONSTRAINT [DF_PDM_TreeBOM_UseQty] DEFAULT (0) FOR [UseQty],
	CONSTRAINT [DF_PDM_TreeBOM_Status] DEFAULT ('N') FOR [Status],
	CONSTRAINT [DF_PDM_TreeBOM_BOM_ST] DEFAULT ('N') FOR [BOM_ST]
GO

 CREATE  INDEX [IX_PDM_TreeBOM_ParentID] ON [dbo].[PDM_TreeBOM]([ParentID], [ParentVersion]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_PDM_TreeBOM_ChildID] ON [dbo].[PDM_TreeBOM]([ChildID], [ChildVersion]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_PDM_TreeBOM_Key] ON [dbo].[PDM_TreeBOM]([ParentType], [ParentID], [ParentVersion], [ChildType], [ChildID], [ChildVersion]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_TreeBOMVer] ADD 
	CONSTRAINT [DF_PDM_TreeBOMVer_Status] DEFAULT ('N') FOR [Status]
GO

ALTER TABLE [dbo].[PDM_TreeDoc] ADD 
	CONSTRAINT [DF_PDM_TreeDoc_Type] DEFAULT ('D') FOR [Type],
	CONSTRAINT [DF_PDM_TreeDoc_Version] DEFAULT ('0') FOR [Version],
	CONSTRAINT [DF_PDM_TreeDoc_Pos] DEFAULT (0) FOR [Pos],
	CONSTRAINT [DF_PD_TreeDoc_Create_Date] DEFAULT (getdate()) FOR [Create_Date]
GO

 CREATE  INDEX [PK_Center_LevelNO] ON [dbo].[PDM_UserDsCenter]([LevelNO], [ParentID], [Pos]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_UserMessage] ADD 
	CONSTRAINT [DF_PDM_UserMessage_ObjectVer] DEFAULT ('0') FOR [ObjectVer],
	CONSTRAINT [DF_PDM_UserMessage_F_Level] DEFAULT ('0') FOR [F_Level],
	CONSTRAINT [DF_PDM_UserMessage_F_isSendMail] DEFAULT ('N') FOR [F_isSendMail],
	CONSTRAINT [DF_PDM_UserMessage_F_isRead] DEFAULT ('N') FOR [F_isRead],
	CONSTRAINT [DF_PDM_UserMessage_F_isReply] DEFAULT ('N') FOR [F_isReply],
	CONSTRAINT [DF_PDM_UserMessage_F_isDelete] DEFAULT ('N') FOR [F_isDelete],
	CONSTRAINT [DF_PDM_UserMessage_Progress] DEFAULT (0) FOR [Msg_Complete],
	CONSTRAINT [DF_PDM_UserMessage_Score] DEFAULT (0) FOR [Score],
	CONSTRAINT [DF_PDM_UserMessage_isJoin] DEFAULT ('N') FOR [isJoin],
	CONSTRAINT [DF_PDM_UserMessage_isPresent] DEFAULT ('N') FOR [isPresent]
GO

 CREATE  INDEX [Create_Date] ON [dbo].[PDM_UserMessage]([Create_User]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDM_UserQueryData] ADD 
	CONSTRAINT [DF_PDM_UserQueryData_SeqNO] DEFAULT (0) FOR [SeqNO]
GO

