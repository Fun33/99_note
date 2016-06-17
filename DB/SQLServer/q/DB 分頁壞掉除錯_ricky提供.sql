ref
http://www.blueshop.com.tw/board/FUM20041006152735ZFS/BRD20070906222107E1S.html

 

--錯誤訊息
--Msg 824, Level 24, State 2, Line 1
--SQL Server detected a logical consistency-based I/O error: incorrect checksum (expected: 0xabe1bf8a; actual: 0xdbd1bf82). 
--It occurred during a read of page (1:510524) in database ID 68 at offset 0x000000f9478000 in file 
--'F:\MSSQL\Data\GreenSafeGubei_20141217.mdf'.  
--Additional messages in the SQL Server error log or system event log may provide more detail. 
--This is a severe error condition that threatens database integrity and must be corrected immediately. 
--Complete a full database consistency check (DBCC CHECKDB). This error can be caused by many factors; 
--for more information, see SQL Server Books Online.

--step 1 根據錯誤訊息Msg 824，與MSDN查詢後是分頁檔有異常(資料表異常)，解決方法只有CHECK DB並且修復
--step 2 方法是先看哪些SQL被呼叫，縮小查證範圍。結果是 Function >> GetIssueOnhandTable
--step 3 於GetIssueOnhandTable逐一找出錯誤的資料表，結果是 IGE1
 
	
SELECT * FROM CQIMINGubei_0105_Una.DBO.OITM  --OK
SELECT * FROM CQIMINGubei_0105_Una.DBO.OADM  --OK
SELECT * FROM CQIMINGubei_0105_Una.DBO.OCRD  --OK
SELECT * FROM CQIMINGubei_0105_Una.DBO.RDN1  --OK
SELECT * FROM CQIMINGubei_0105_Una.DBO.RIN1  --OK
SELECT * FROM CQIMINGubei_0105_Una.DBO.PDN1  --OK
SELECT * FROM CQIMINGubei_0105_Una.DBO.PCH1  --OK
SELECT * FROM CQIMINGubei_0105_Una.DBO.WTR1  --OK
SELECT * FROM CQIMINGubei_0105_Una.DBO.IGN1  --OK
SELECT * FROM CQIMINGubei_0105_Una.DBO.PDN1  --OK
SELECT * FROM CQIMINGubei_0105_Una.DBO.IGE1  --發生錯誤的資料表

--step 4 檢查page_id是否和error msg的一致
--當SERVER掛掉或有"824"錯誤時，可先從 MSDB..SUSPECT_PAGES，了解event_type   


--step 5 page_id = 510524 開始進行修復

USE master  
SELECT db_name(database_id) as DatabaseName,   file_id, page_id, last_update_date  ,* 
FROM msdb..SUSPECT_PAGES 
WHERE event_type='2'

/*
event_type:
1 = SHORT_TRANSFER
2 = BAD_CHECKSUM
3 = TORN_PAGE   
4 = INCORRECT_PAGE_ID
5 = RESTORE
6 = REPAIRED   
7 = VERIFIED_OR_DEALLOCATED   
*/ 


ALTER DATABASE CQIMINGubei_0105_Una SET ONLINE 
GO
 
BACKUP LOG GreenSafeGubei_20141217   
TO DISK = 'F:\MSSQL\Data\Full_YFY_Kunshan_20141217040707_by_rsp.trn'  
WITH NORECOVERY   

RESTORE DATABASE GreenSafeGubei_20141217 PAGE='1:573586' 
FROM DISK='F:\Kate\CQIMingGubei_20150105.bak'  
WITH NORECOVERY

RESTORE LOG GreenSafeGubei_20141217 
FROM DISK='F:\MSSQL\Data\Full_YFY_Kunshan_20141217040707_by_rsp.trn'
WITH RECOVERY 
GO   


--RESTORE FILELISTONLY  
--FROM DISK='F:\Kina\Full_YFY_Kunshan_20141217040707_by_rsp.bak'  

--大絕招，從.BAK檔案，直接還原資料庫
--RESTORE DATABASE GreenSafeGubei_20141217   
--FROM DISK='F:\Kina\Full_YFY_Kunshan_20141217040707_by_rsp.bak'  
--WITH MOVE 'Kunshan_TEST' TO 'F:\MSSQL\Data\GreenSafeGubei_20141217.mdf',   
--MOVE 'Kunshan_TEST_log' TO 'F:\MSSQL\Data\GreenSafeGubei_20141217.ldf',  
--STATS = 10, REPLACE  --強制
--GO  
