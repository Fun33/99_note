IQ，
-- 查sp裡面關鍵字
select * from SYS.SYSPROCEDURE where proc_defn like '%BUSINESS_KEY,27%'

BUSINESS_KEY,27,5)
BUSINESS_KEY,27,5)


select proc_name from SYS.SYSPROCEDURE where proc_defn like '%BUSINESS_KEY,27,7%'
 
--select * from SYS.SYSPROCEDURE where proc_defn like '%BUSINESS_KEY,27,5%'
-- '%BUSINESS_KEY%'
--G(BUSINESS_KEY,27,7)
--A.EVT_TYP_ID in( 1,7 )
select proc_name from SYS.SYSPROCEDURE where proc_defn like '%EVT_TYP_ID in%'
/*
 TYPE=case EVT_TYP_ID when 1 then convert(integer,6)
    when 2 then convert(integer,7)
    when 9 then convert(integer,8)
*/
