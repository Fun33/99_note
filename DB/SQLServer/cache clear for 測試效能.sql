--�@��Ө��A���|���ݭn�M��SQL Server Cache�����D�C���O�A�b�Y�Ǯɨ襦�o�O�@�ӥ��ݪ����O�A�Ҧp�G�b����performance�ɡA�ݭn�e�᪬�p������C�άO�A�b�Y�Ǫ��p�Ucache�L�k�����̷s����ƪ��p�ɡA�ڭ̳��|�ݭn�M��cache���ʧ@�A���O�p�U�G 
DBCC FREEPROCCACHE 
--�|�M��Procedure���̨Τƪ��p���A���s���歫�s���ͷs������p�� 

DBCC DROPCLEANBUFFERS 
--�|�M���x�s�b�֨�������ơA�Ӥ��ݭn���s�Ұ�SQL Server

SELECT 
	count(*) * 8 / 1024 AS '�O����j�p(Mb)',
	sum (CONVERT (bigint, free_space_in_bytes)) / (1024) AS '�Ŷ��O����(Kb)'    ,
	CASE database_id         
		WHEN 32767 THEN 'ResourceDb'         
		ELSE db_name(database_id)         
	END AS Database_name
FROM 
	sys.dm_os_buffer_descriptors
where 
	db_name(database_id) ='GreenSafe'
GROUP BY db_name(database_id) ,database_id
ORDER BY '�O����j�p(Mb)' DESC;