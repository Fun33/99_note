

PRINT 'Too much for the market to bear' 

"INSERT INTO A(no,name,class) SELECT id,name,type From pdm_part" 

//�d�߸�ƪ�, �˵���, ��쪺��T
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

//case when�i�Ω�������Y, �p�G�Oa,�N���զX��,�p�G�Oo,�N�O�M��, �p�G�Op,�N�O�s��
SELECT  type,category, Category =    // Category�O�ۭq���, type�O�v�s�b������
      CASE type
         WHEN 'a' THEN 'Popular Computing'
         WHEN 'p' THEN 'Modern Cooking'
         ELSE 'Not yet categorized'
      END
from pdm_part

select 
CASE 
WHEN category<>'' THEN  Category   //���ճo�榳�S���@��
WHEN Category = null THEN  Category
ELSE id  END AS category 
from pdm_part

select 
CASE 
WHEN rawmaterial<>'' THEN  Category
WHEN rawmaterial = null THEN id   //���ճo�榳�S���@��
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
case when count(parentversion) between 1 and 4 then count(parentversion) end as test,         //�p�G�O�b�o�ӽd��, �~�|�p�ⵧ�� �� test
case when count(parentversion) between 10 and 20 then count(parentversion) end as test1    //�p�G�o�ӽd��~, �Ȭ�null
from pdm_treebom

select substring(id,1,4) as test   //��1�}�l�ӫDc#(��0�}�l��)
from pdm_part
//�������[�b�@�_
select (id+category) as test  from pdm_part

�z�O�n���X�r��e���Ҧ����
select substring(category,0,charindex( '.' ,category) ) from pdm_part   �N��O���q�r�ꪺ�}�Y�A�}�l���Ȩ즳'�����\Ū'�r�굲��
���X�r��᪺�Ҧ����
select substring(category,charindex( '.' ,category)+1,len(category)) from pdm_part    //�O�q�r����o��}�l��A�@����r�굲��


//count ���X�����
select count(*)as col_count  from  pdm_part where id ='a'
select count(surfacetreatment)as col_count ,count(*)as allcol_count   from  pdm_part //�o����즳�X����� (null�N���O���)

//format //�аѷ�sqlserver������ convert �d��
select 
CONVERT(varchar(8),create_date,112) as test
from pdm_part where id ='bom-1'

select * from pdm_part where id ='bom-1'

select * from pdm_treebom where parenttype='o'


