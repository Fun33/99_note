--ref
--http://bbs.csdn.net/topics/390559362
--拿INV1,滾成本,滾發貨
--1.dispatch
--2.回寫IssuedQty


if OBJECT_ID('tempdb..#OITM', 'u') is not null   drop table #OITM;
go
create table #OITM( [item] varchar(100), [qty] varchar(100));
insert #OITM
select 'A','50' union all
select 'B','100' union all
select 'C','120' 

if OBJECT_ID('tempdb..#IGE1', 'u') is not null   drop table #IGE1;
go
create table #IGE1( [DocEntry] varchar(100),LineNum int ,[item] varchar(100), [PlannedQty] float, [IssuedQty] float);
insert #IGE1
select '1',1,'A','100', 90 union all
select '2',1,'B','50', 0 union all
select '3',1,'B','30', 0 union all
select '4',1,'B','50', 0 
 

--SQL:
;WITH cte AS--原數量,按item編碼.新item就從1開始
(
	SELECT rowid=ROW_NUMBER() OVER(PARTITION BY item ORDER BY GETDATE()), * 
	FROM #IGE1
),
cte1 AS--累加數量
(
	SELECT A.*, sumqty = (SELECT SUM(PlannedQty-IssuedQty  ) FROM cte t0 WHERE t0.item=a.item AND t0.rowid<=a.rowid)
	FROM cte A
)
select b.*
--, b.PlannedQty-b.IssuedQty  IgeQty,a.qty Onhand
----, qty=COALESCE(b.qty, a.qty)
--, dqty=(CASE WHEN a.qty - b.sumqty > 0 THEN b.PlannedQty-b.IssuedQty  ELSE b.PlannedQty-b.IssuedQty -(b.sumqty-a.qty) END)
from  cte1 B
LEFT JOIN #OITM A
ON A.item = B.item
/*
DocEntry	item	qty	dqty
p0001	A	100	50
P0002	B	50	50
p0003	B	30	30
p0004	B	50	20
NULL	C	120	NULL
*/
