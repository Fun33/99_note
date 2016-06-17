

好用1 : 合併兩個欄位值為一欄位

用法1  select (id+category) as test  from pdm_part

用法2  select (id+’-‘+category) as test  from pdm_part

**********************************************

好用2 : 將一個欄位拆成兩個欄位

用法1  取split 之前的值select substring(category,0,charindex( '.' ,category) ) from pdm_part

用法2  取split 之後的值select substring(category,charindex( '.' ,category)+1,len(category)) from pdm_part

******************************************* 

好用3 : 如果在來源為”a”, 目的地要對應為”組合件”

用法 1   SELECT  type,category, Category =    

               CASE type

         WHEN 'a' THEN 'Popular Computing'

         WHEN 'p' THEN 'Modern Cooking'

         ELSE 'Not yet categorized'

         END  from pdm_part

用法 2   SELECT id,type, status,category ,

CASE 

WHEN  category  LIKE '1%'  THEN '1st'

WHEN  category  LIKE '2%'  THEN '2nd'

WHEN category  LIKE '3%'  THEN '3rd'

ELSE 'Adv'

END AS Action_No

from pdm_part

**********************************************

好用4 : 

方法1 : 預設為其它欄位值 ;;如果欄位name 沒有值, 預設為欄位id值

select 

CASE 

WHEN category<>'' THEN  Category  

WHEN Category = null THEN  Category

ELSE id  END AS category 

from pdm_part

方法2 : 若欄位值是null, 給它預設

select ISNULL(rawmaterial, '') from pdm_part

*************************************************** 

自訂欄位名稱

方法 1 : select parenttype,"type"=parentid  from pdm_treebom 

方法 2 : select parenttype,parentid as type  from pdm_treebom


 
