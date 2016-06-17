

PRINT 'Too much for the market to bear' 

"INSERT INTO A(no,name,class) SELECT id,name,type From pdm_part" 

//查詢資料表, 檢視表, 欄位的資訊
select a.table_name,b.* from
(
select * from information_schema.tables where table_type='BASE TABLE'
) a join 
(
select table_name,column_name,data_type from information_schema.columns
) b on a.table_name=b.table_name

select * from information_schema.views
 select * from information_schema.columns
select * from pdm_part

//case when可用於對應關係, 如果是a,就為組合件,如果是o,就是專案, 如果是p,就是零件
SELECT  type,category, Category =    // Category是自訂欄位, type是己存在之欄位值
      CASE type
         WHEN 'a' THEN 'Popular Computing'
         WHEN 'p' THEN 'Modern Cooking'
         ELSE 'Not yet categorized'
      END
from pdm_part

select 
CASE 
WHEN category<>'' THEN  Category   //測試這行有沒有作用
WHEN Category = null THEN  Category
ELSE id  END AS category 
from pdm_part

select 
CASE 
WHEN rawmaterial<>'' THEN  Category
WHEN rawmaterial = null THEN id   //測試這行有沒有作用
ELSE id  
END AS category 
from pdm_part

SELECT id,type, status,category ,
CASE 
WHEN  category  LIKE '1%'  THEN '1st'
WHEN  category  LIKE '2%'  THEN '2nd'
WHEN category  LIKE '3%'  THEN '3rd'
ELSE 'Adv'
END AS Action_No
from pdm_part

select 
case when count(parentversion) between 1 and 4 then count(parentversion) end as test,         //如果是在這個範圍, 才會計算筆數 給 test
case when count(parentversion) between 10 and 20 then count(parentversion) end as test1    //如果這個範圍外, 值為null
from pdm_treebom

select substring(id,1,4) as test   //由1開始而非c#(由0開始取)
from pdm_part
//把兩個欄位加在一起
select (id+category) as test  from pdm_part

您是要取出字串前的所有資料
select substring(category,0,charindex( '.' ,category) ) from pdm_part   意思是指從字串的開頭，開始取值到有'延伸閱讀'字串結束
取出字串後的所有資料
select substring(category,charindex( '.' ,category)+1,len(category)) from pdm_part    //是從字串取得後開始算，一直到字串結束


//count 有幾筆資料
select count(*)as col_count  from  pdm_part where id ='a'
select count(surfacetreatment)as col_count ,count(*)as allcol_count   from  pdm_part //這個欄位有幾筆資料 (null就不是資料)

//format //請參照sqlserver的說明 convert 查詢
select 
CONVERT(varchar(8),create_date,112) as test
from pdm_part where id ='bom-1'

select * from pdm_part where id ='bom-1'

select * from pdm_treebom where parenttype='o'


