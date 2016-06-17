--sql »¼°j
drop table #bom
go
create table #bom
(
pa nvarchar(30)
,kid nvarchar(30)
,qty int
)
go 
delete #bom 
insert #bom 
select 'p','11A',2 union
select 'p','12B',1 union
select '11A','21A',1 union
select '11A','22A',2 union
select '22A','31A',2 union
select '22A','32A',3 union
select '12B','21B',1 union
select '12B','22B',2
go
--select  * from #bom 
go
--way1 cte
WITH pa (pa,kid,qty,qty2,DEP_LEVEL) AS
(    
    --³»¼h
    select pa,kid,qty,qty qty2,0 AS DT_LEVEL
    from #bom
    where pa ='p'
     
    union all   
     
    --¦¨­û
    select tkid.pa,tkid.kid
    ,tkid.qty				--get kid qty
    ,pa.qty2*tkid.qty		--get kid.qty *pa.qty
    ,pa.DEP_LEVEL+1
    from #bom tkid INNER JOIN pa on tkid.pa  =pa.kid 
) 
select * from pa  

