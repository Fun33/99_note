 --ref http://www.dotblogs.com.tw/kevinya/archive/2012/06/01/72553.aspx?fid=70276
WITH cte0 AS 
(
	SELECT    '111' c1,'C1' CardCode
	union 
	SELECT    '112','C1'
	union 
	SELECT    '211','C2'
	union 
	SELECT    '212','C2'  
	union 
	SELECT    '333','C3'  
) 
select (
SELECT  CAST(t01.c1 AS NVARCHAR(10))+',' 
FROM cte0  t01
where t01.CardCode= a.CardCode
 FOR XML PATH('') 
 )   AS productIDs ,CardCode 
 from cte0 a  
 group by CardCode 
=============================
drop table t1 
create table t1
(
 RECEIPT_DATE nvarchar(20)
 ,ACC_DEPT_NO nvarchar(20)
,VD_NO nvarchar(20)
,RECEIPT_NO nvarchar(20)
,RECEIPT_AMT int 
)
insert into t1
select '1','1','1','01',1
union
select '1','1','1','02',2
union
select '1','1','2','03',3

select 
	RECEIPT_DATE,ACC_DEPT_NO ,VD_NO 
	,sum(RECEIPT_AMT) RECEIPT_AMT
	,(select 
		receipt_no +','
	 from t1 t0
	 where 1=1
	 and t0.vd_no =t1.vd_no 
	 and t0.RECEIPT_DATE= t1.RECEIPT_DATE
	 and t0.ACC_DEPT_NO= t1.ACC_DEPT_NO	 
	 for xml path('')
	 ) as U_receipt_no
from t1
group by RECEIPT_DATE,ACC_DEPT_NO ,VD_NO
 