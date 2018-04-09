use icrm 
declare @word nvarchar(max)='%法人%' 
SELECT ROUTINE_NAME, ROUTINE_DEFINITION,CREATED,LAST_ALTERED 
FROM INFORMATION_SCHEMA.ROUTINES
where ROUTINE_TYPE='PROCEDURE'
and ROUTINE_DEFINITION like @word
ORDER BY LAST_ALTERED DESC

--select [name],create_date,modify_date FROM sys.all_objects where type_desc = 'SQL_STORED_PROCEDURE'
--and substring([name],1,3) not in ('sp_','dt_','xp_') 
--order by create_date desc

--這邊說明一下會過濾掉 sp_ , dt_ , xp_ 是因為他們 SQL Server 系統自己的Stored Procedure開頭
--盡量避免與系統產生這種混淆現象


--https://dotblogs.com.tw/fatty0860/2008/11/16/5998

--#匯出SP
--SELECT ROUTINE_NAME, ROUTINE_DEFINITION
--FROM INFORMATION_SCHEMA.ROUTINES
--where ROUTINE_TYPE='PROCEDURE'
--ORDER BY ROUTINE_NAME ASC
