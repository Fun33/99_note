

�n��1 : �X�֨�����Ȭ��@���

�Ϊk1  select (id+category) as test  from pdm_part

�Ϊk2  select (id+��-��+category) as test  from pdm_part

**********************************************

�n��2 : �N�@�����������

�Ϊk1  ��split ���e����select substring(category,0,charindex( '.' ,category) ) from pdm_part

�Ϊk2  ��split ���᪺��select substring(category,charindex( '.' ,category)+1,len(category)) from pdm_part

******************************************* 

�n��3 : �p�G�b�ӷ�����a��, �ت��a�n���������զX��

�Ϊk 1   SELECT  type,category, Category =    

               CASE type

         WHEN 'a' THEN 'Popular Computing'

         WHEN 'p' THEN 'Modern Cooking'

         ELSE 'Not yet categorized'

         END  from pdm_part

�Ϊk 2   SELECT id,type, status,category ,

CASE 

WHEN  category  LIKE '1%'  THEN '1st'

WHEN  category  LIKE '2%'  THEN '2nd'

WHEN category  LIKE '3%'  THEN '3rd'

ELSE 'Adv'

END AS Action_No

from pdm_part

**********************************************

�n��4 : 

��k1 : �w�]���䥦���� ;;�p�G���name �S����, �w�]�����id��

select 

CASE 

WHEN category<>'' THEN  Category  

WHEN Category = null THEN  Category

ELSE id  END AS category 

from pdm_part

��k2 : �Y���ȬOnull, �����w�]

select ISNULL(rawmaterial, '') from pdm_part

*************************************************** 

�ۭq���W��

��k 1 : select parenttype,"type"=parentid  from pdm_treebom 

��k 2 : select parenttype,parentid as type  from pdm_treebom


 
