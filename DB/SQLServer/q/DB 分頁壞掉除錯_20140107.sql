--SQL Server detected a logical consistency-based I/O error:
-- incorrect checksum (expected: 0x8e527eae; actual: 0x6e9612af). 
-- It occurred during a read of page (1:573586) in database ID 29 at offset 0x00000118124000 in file 'F:\MSSQL\Data\t3.mdf'.  Additional messages in the SQL Server error log or system event log may provide more detail. This is a severe error condition that threatens database integrity and must be corrected immediately. Complete a full database consistency check (DBCC CHECKDB). This error can be caused by many factors; for more information, see SQL Server Books Online.

--SQL Server detected a logical consistency-based I/O error: incorrect checksum (expected: 0x8a8d4553; actual: 0x0a0cba2c). It occurred during a read of page (1:77777) in database ID 29 at offset 0x00000025fa2000 in file 'F:\MSSQL\Data\t3.mdf'.  Additional messages in the SQL Server error log or system event log may provide more detail. This is a severe error condition that threatens database integrity and must be corrected immediately. Complete a full database consistency check (DBCC CHECKDB). This error can be caused by many factors; for more information, see SQL Server Books Online.
 restore database t3  from disk='F:\Kate\CQIMingGubei_20150105.bak'  with recovery
 
--�Vstep1:���Ndb�ƥ��ݩ��ܦ� full�A���M�ݷ|���� page���l��A�n�ߧY�ƥ� transaction log�A�N�|����   
USE t3; ALTER DATABASE t3 SET RECOVERY FULL

--�Vstep2:���ƥ� db,�d�adb�A�٥i�H restore
--backup database t3 to disk='F:\Kate\CQIMingGubei_20150105.bak'    

--�Vstep3:offline db�A�p���~�i�H�� visual studio �ק�����A���������l��(�n�����ʨ� �����F������H�~��db,���d�Ҭ�northwind�H�~��db")
--use tempdb;
--alter database t3 set offline

--�Vstep4:visual studio �ק���������������l
--�Vstep5:�� db online
alter database t3 set online

--�Vstep6:���Ҥ����w���l.��k�@:select��db��ơF��k2:�d�t��db�F�k�T:��with checksum�ƥ�
			--���Ҥ����w���l�@�G
			select * from t3.DBO.POS_IssueList  --NG--573586
			select * from t3.dbo.OIGE			--NG--77777
			--���Ҥ����w���l�G�G
			select DB_NAME (database_id), * from msdb.dbo.suspect_pages;
			--���Ҥ����w���l�T�G
			backup database t3 to disk='F:\nwind1.bak' with checksum

--step7:�ƥ��e�ǳ�
USE master;--backup can't use db,if use db will show db in use.
GO
ALTER DATABASE t3 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;--set single user.�~���|���ϥΤ������D
go
/*
--�Vstep7:�ƥ��o�{�������l�᪺ transaction log (���ɭn�藍�O northwind �� db)
backup log t3 to disk='F:\MSSQL\Data\Full_YFY_Kunshan_20141217040707_by_rsp.trn' with norecovery,init
--�Vstep8:�����٭�
restore database t3 page='1:573586' from disk='F:\Kate\CQIMingGubei_20150105.bak'   with   norecovery
--�Vstep9:�����٭��A�z�L�q����ƥ��H�Ӫ���������A���Ҧ�����ƭ����o�@�P�����e
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
--�Vstep10:���ҬO�_�i�H�s��
select DB_NAME (database_id), * from msdb.dbo.suspect_pages;
select * from t3.DBO.POS_IssueList   
go
select * from t3.dbo.OIGE
go
--step11 : �ƥ���,�٭�]�w
 ALTER DATABASE t3 SET MULTI_USER --if test ok set multi user
--=================================================

--error
--Attempt to fetch logical page
--ref
--http://www.symantec.com/business/support/index?page=content&id=TECH25841
--step1:�״_�e�ǳ�
ALTER DATABASE t3 SET SINGLE_USER with ROLLBACK IMMEDIATE
use t3
--step2:�״_
DBCC CheckTable ('POS_IssueList', REPAIR_ALLOW_DATA_LOSS) 
DBCC CheckTable ('OIGE', REPAIR_ALLOW_DATA_LOSS)
--step3:�٭�]�w
ALTER DATABASE t3 SET MULTI_USER