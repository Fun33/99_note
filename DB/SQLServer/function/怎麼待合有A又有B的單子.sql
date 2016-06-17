DECLARE @rdr1 TABLE 
(
DocEntry  nvarchar(30),  LineNum nvarchar(30), ItemCode nvarchar(30), qty nvarchar(30) 
  )
  
insert into @rdr1 

select '1' t1,'1't2,'t1't3,'1't4
union
select '1','2','t1','1'
union
select '1','3','t3','1'
union
select '1','4','t2','1'
union
select '2','1','t1','1'
union
select '2','2','t1','1'
--union
--select '1','1','t1','1'
--union
--select '1','1','t1','1'

--select * from @rdr1
                
------------------------------------------------------------------------------------
 

SELECT  DocEntry,Itemcode  
                       FROM @rdr1
                       WHERE (ItemCode = N't1'  OR  ItemCode = N't2')
                       GROUP BY DocEntry ,ItemCode
                  
select docentry,count(*) from (
SELECT  DocEntry,Itemcode  
                       FROM @rdr1
                       WHERE (ItemCode = N't1') OR (ItemCode = N't2')
                       GROUP BY DocEntry ,ItemCode
						) a group by DocEntry 
 

--找到符合的單子
select docentry  from (
SELECT  DocEntry,Itemcode  
                       FROM @rdr1
                       WHERE (ItemCode = N't1'  OR  ItemCode = N't2')
                       GROUP BY DocEntry ,ItemCode
                  ) a group by DocEntry 
                    HAVING (COUNT(DocEntry)  = 2)                                          
  

return;
                       
---- 子查詢 --

--SELECT DocEntry, COUNT(DocEntry) AS myNum
--FROM RDR1
--WHERE (ItemCode = N'Y630-C920-72') 
--	OR (ItemCode = N'0895-9030')
--GROUP BY DocEntry
--HAVING (COUNT(DocEntry) >= 2)
--------------------------------------------------------------------------------------

----  驗證查詢結果 --

--SELECT DocEntry, LineNum, ItemCode, Dscription
--FROM RDR1
--WHERE DocEntry IN (1403,1407,1411,1415)

------------------bak-------------------

---- 完整查詢（含子查詢）--

--SELECT T0.DocEntry, T0.DocNum, T1.LineNum, T1.ItemCode, T1.Dscription
--FROM ORDR AS T0 
--INNER JOIN RDR1 AS T1 ON T0.DocEntry = T1.DocEntry
--WHERE (T0.DocEntry IN (SELECT DocEntry
--                       FROM RDR1
--                       WHERE (ItemCode = N'Y630-C920-72') 
--                       OR (ItemCode = N'0895-9030')
--                       GROUP BY DocEntry
--                       HAVING(COUNT(DocEntry) >= 2))
--                       )
--------------------------------------------------------------------------------------

---- 子查詢 --

--SELECT DocEntry, COUNT(DocEntry) AS myNum
--FROM RDR1
--WHERE (ItemCode = N'Y630-C920-72') 
--	OR (ItemCode = N'0895-9030')
--GROUP BY DocEntry
--HAVING (COUNT(DocEntry) >= 2)
--------------------------------------------------------------------------------------

----  驗證查詢結果 --

--SELECT DocEntry, LineNum, ItemCode, Dscription
--FROM RDR1
--WHERE DocEntry IN (1403,1407,1411,1415)
--------------------------------------------------------------------------------------