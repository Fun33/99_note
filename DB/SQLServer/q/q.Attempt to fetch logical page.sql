--error
--Attempt to fetch logical page
--ref
--http://www.symantec.com/business/support/index?page=content&id=TECH25841
 ALTER DATABASE t1 SET SINGLE_USER with ROLLBACK IMMEDIATE
 
DBCC CheckTable ('POS_IssueList', REPAIR_ALLOW_DATA_LOSS)

 ALTER DATABASE t1 SET MULTI_USER