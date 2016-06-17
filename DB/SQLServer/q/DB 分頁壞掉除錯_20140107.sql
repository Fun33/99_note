--SQL Server detected a logical consistency-based I/O error:
-- incorrect checksum (expected: 0x8e527eae; actual: 0x6e9612af). 
-- It occurred during a read of page (1:573586) in database ID 29 at offset 0x00000118124000 in file 'F:\MSSQL\Data\t3.mdf'.  Additional messages in the SQL Server error log or system event log may provide more detail. This is a severe error condition that threatens database integrity and must be corrected immediately. Complete a full database consistency check (DBCC CHECKDB). This error can be caused by many factors; for more information, see SQL Server Books Online.

--SQL Server detected a logical consistency-based I/O error: incorrect checksum (expected: 0x8a8d4553; actual: 0x0a0cba2c). It occurred during a read of page (1:77777) in database ID 29 at offset 0x00000025fa2000 in file 'F:\MSSQL\Data\t3.mdf'.  Additional messages in the SQL Server error log or system event log may provide more detail. This is a severe error condition that threatens database integrity and must be corrected immediately. Complete a full database consistency check (DBCC CHECKDB). This error can be caused by many factors; for more information, see SQL Server Books Online.
 restore database t3  from disk='F:\Kate\CQIMingGubei_20150105.bak'  with recovery
 
--–step1:先將db備份屬性變成 full，不然待會模擬 page毀損後，要立即備份 transaction log，就會失敗   
USE t3; ALTER DATABASE t3 SET RECOVERY FULL

--–step2:先備份 db,搞壞db，還可以 restore
--backup database t3 to disk='F:\Kate\CQIMingGubei_20150105.bak'    

--–step3:offline db，如此才可以用 visual studio 修改分頁，模擬分頁損毀(要先移動到 “除了做實驗以外的db,此範例為northwind以外的db")
--use tempdb;
--alter database t3 set offline

--–step4:visual studio 修改分頁模擬分頁毀損
--–step5:把 db online
alter database t3 set online

--–step6:驗證分頁已毀損.方法一:select此db資料；方法2:查系統db；法三:用with checksum備份
			--驗證分頁已毀損一：
			select * from t3.DBO.POS_IssueList  --NG--573586
			select * from t3.dbo.OIGE			--NG--77777
			--驗證分頁已毀損二：
			select DB_NAME (database_id), * from msdb.dbo.suspect_pages;
			--驗證分頁已毀損三：
			backup database t3 to disk='F:\nwind1.bak' with checksum

--step7:備份前準備
USE master;--backup can't use db,if use db will show db in use.
GO
ALTER DATABASE t3 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;--set single user.才不會有使用中的問題
go
/*
--–step7:備份發現分頁毀損後的 transaction log (此時要選不是 northwind 的 db)
backup log t3 to disk='F:\MSSQL\Data\Full_YFY_Kunshan_20141217040707_by_rsp.trn' with norecovery,init
--–step8:分頁還原
restore database t3 page='1:573586' from disk='F:\Kate\CQIMingGubei_20150105.bak'   with   norecovery
--–step9:分頁還原後，透過從完整備份以來的交易紀錄，讓所有的資料頁取得一致的內容
restore log t3 from disk='F:\MSSQL\Data\Full_YFY_Kunshan_20141217040707_by_rsp.trn' with recovery

*/
--play1
backup log t3 to disk='F:\MSSQL\Data\Full_YFY_Kunshan_20141217040707_by_rsp.trn' with norecovery,init
go 
restore database t3 page='1:573586' from disk='F:\Kate\CQIMingGubei_20150105.bak'   with   norecovery
go  
restore log t3 from disk='F:\MSSQL\Data\Full_YFY_Kunshan_20141217040707_by_rsp.trn' with recovery
go
--play1 end
--play2
backup log t3 to disk='F:\MSSQL\Data\Full_YFY_Kunshan_20141217040707_by_rsp.trn' with norecovery,init
go
restore database t3 page='1:77777' from disk='F:\Kate\CQIMingGubei_20150105.bak'   with   norecovery
go
restore log t3 from disk='F:\MSSQL\Data\Full_YFY_Kunshan_20141217040707_by_rsp.trn' with recovery
go
--play2 end
--–step10:驗證是否可以存取
select DB_NAME (database_id), * from msdb.dbo.suspect_pages;
select * from t3.DBO.POS_IssueList   
go
select * from t3.dbo.OIGE
go
--step11 : 備份後,還原設定
 ALTER DATABASE t3 SET MULTI_USER --if test ok set multi user
--=================================================

--error
--Attempt to fetch logical page
--ref
--http://www.symantec.com/business/support/index?page=content&id=TECH25841
--step1:修復前準備
ALTER DATABASE t3 SET SINGLE_USER with ROLLBACK IMMEDIATE
use t3
--step2:修復
DBCC CheckTable ('POS_IssueList', REPAIR_ALLOW_DATA_LOSS) 
DBCC CheckTable ('OIGE', REPAIR_ALLOW_DATA_LOSS)
--step3:還原設定
ALTER DATABASE t3 SET MULTI_USER