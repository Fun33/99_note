--drop table  POS_OINV
if object_id('POS_OINV') is null
CREATE TABLE [dbo].[POS_OINV](
	[RowID] [int] IDENTITY(1,1) NOT NULL, 
	[Fr] [nvarchar](10) not null ,			/*INV or IGE損耗*/
    [BaseRowID] [int] ,
	[BaseCreatetime] [datetime]   ,
	[U_POS] [nvarchar](12) NULL,
	[U_POSNum] [nvarchar](80) not NULL,
	[CardCode] [nvarchar](30) NULL,
	[DocDueDate] [nvarchar](16) NULL,
	[DocTotal] [numeric](19, 6) NULL,
	[DiscSum] [numeric](19, 6) NULL,
	[U_Owner] [nvarchar](40) NULL,
	[DpmAmnt] [numeric](19, 6) NULL,
	[ObjType] [nvarchar](40) NULL,
	[U_Exchange] [nvarchar](1) NULL,
	[S_DocEntry] [int] NULL,
	[Createtime] [datetime] default getdate() ,
	
	[U_PD] [nvarchar](1) NULL,
	[U_WO] [nvarchar](1) NULL,
	[U_IsAdd] [nvarchar](1) NULL  
)  
 if object_id('PK_OINV0') is null
alter table POS_OINV   ADD  CONSTRAINT PK_OINV0 PRIMARY KEY  (Fr,U_POSNum) 

  
 
/*=========================後續加上的欄位===============================*/  
--select * from POS_OINV
declare @cnt int;   
/*==================================================chk FR */
select @cnt 
	= COUNT(*) from syscolumns where id in (select id  from sysobjects where name='POS_OINV' ) and name='Fr'   
if @cnt =0
begin
	ALTER TABLE POS_OINV ADD Fr nvarchar(10)  					--因為已經有資料,所以沒法度設成not null
	update POS_OINV set Fr='INV1' where Fr is null				--等全部設成有值,再改為not null,才設為PK
	ALTER TABLE POS_OINV alter Column  Fr varchar(10) not null	
	alter table POS_OINV	DROP CONSTRAINT PK_OINV0; 
end
/*=============================reset key.20141215=========================*/
 ALTER TABLE POS_OINV alter Column  U_POSNum nvarchar(80) not null
 ALTER TABLE POS_OINV alter Column  Fr nvarchar(10) not null  
 if object_id('PK_OINV0') is not null 
 begin	
	alter table POS_OINV   drop  CONSTRAINT PK_OINV0    
	alter table POS_OINV   ADD  CONSTRAINT PK_OINV0 PRIMARY KEY  (Fr,U_POSNum) 
 end
 
--select * from POS_OINV--t 
/*找出重覆的單 & 刪除重覆的單*/
--delete POS_OINV where RowID in (
--select RowID2 
----* 
--from 
--(
--	SELECT  t0.fr,
--	CASE 
--		row_number() over (PARTITION BY Fr,U_POSNum  order by  t0.RowID) 
--		WHEN 2 THEN  t0.U_POSNum 
--		else '' 
--	END AS U_POSNum  
--	,	row_number() over (PARTITION BY Fr,U_POSNum   order by  t0.RowID) RowByU_POSNum
--	,	row_number() over (  order by  Fr,RowID ) RowID
--	,RowID RowID2
--	from POS_OINV  t0   
--	) bb
--	where bb.RowByU_POSNum>1
--) 

 