/*
key = t0.U_POSNum+t0.fr  
*/
with cte1 as
(
	SELECT  t0.*
	,	row_number() over (PARTITION BY t0.U_POSNum,t0.fr  order by  t0.U_POSNum) Row 
	 
	from POS_OINV t0
)
delete POS_OINV where rowid in 
(
	select rowid from cte1 t0 	where  t0.row>1
)
