go
--=================================================================
if OBJECT_ID('tempdb..#tempA', 'u') is not null   drop table #tempA;
go
create table #tempA( [item] varchar(100), [qty] varchar(100));
insert #tempA
select 'A','50' union all
select 'B','180' union all
select 'C','120' 

if OBJECT_ID('tempdb..#tempB', 'u') is not null   drop table #tempB;
go
create table #tempB( [prno] varchar(100), [item] varchar(100), [qty] int, [dqty] int);
insert #tempB
select 'p0001','A','100', null union all
select 'P0002','B','50', null union all
select 'p0003','B','30', null union all
select 'p0004','B','50', null 

--SQL:
;WITH cte AS
(
	SELECT rowid=ROW_NUMBER() OVER(PARTITION BY item ORDER BY GETDATE()), * 
	FROM #tempB
),
cte1 AS
(
	SELECT A.*, sumqty = (SELECT SUM(qty) FROM cte B WHERE b.item=a.item AND b.rowid<=a.rowid)
	FROM cte A
),
cte2 AS
(
	select a.item, totalqty=a.qty, b.rowid, b.prno, bitem=b.item, b.qty, b.sumqty, diff=a.qty-b.sumqty
	from #tempA A
	LEFT JOIN cte1 B
	ON A.item = B.item
)
SELECT prno, item, qty=COALESCE(qty, totalqty), dqty=(CASE WHEN diff >= 0 THEN qty ELSE qty+diff END)
FROM cte2
UNION ALL
SELECT prno=null, b.item, qry=diff, dqty=null FROM
(SELECT item FROM #tempA) a
CROSS APPLY
(SELECT TOP(1) * FROM cte2 m WHERE m.item=a.item ORDER BY m.rowid DESC) b
WHERE diff > 0
ORDER BY item
/*
prno	item	qty	dqty
p0001	A	100	50
P0002	B	50	50
p0003	B	30	30
p0004	B	50	50
NULL	B	50	NULL
NULL	C	120	NULL
*/