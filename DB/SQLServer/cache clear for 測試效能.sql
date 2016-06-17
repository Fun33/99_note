--一般而言，不會有需要清除SQL Server Cache的問題。但是，在某些時刻它卻是一個必需的指令，例如：在測試performance時，需要前後狀況的比較。或是，在某些狀況下cache無法反應最新的資料狀況時，我們都會需要清除cache的動作，指令如下： 
DBCC FREEPROCCACHE 
--會清空Procedure的最佳化的計劃，重新執行重新產生新的執行計劃 

DBCC DROPCLEANBUFFERS 
--會清空儲存在快取中的資料，而不需要重新啟動SQL Server

SELECT 
	count(*) * 8 / 1024 AS '記憶體大小(Mb)',
	sum (CONVERT (bigint, free_space_in_bytes)) / (1024) AS '空閒記憶體(Kb)'    ,
	CASE database_id         
		WHEN 32767 THEN 'ResourceDb'         
		ELSE db_name(database_id)         
	END AS Database_name
FROM 
	sys.dm_os_buffer_descriptors
where 
	db_name(database_id) ='GreenSafe'
GROUP BY db_name(database_id) ,database_id
ORDER BY '記憶體大小(Mb)' DESC;