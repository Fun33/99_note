--sql �Ϭq��Ϭq.���Ч_
--����4------------------------------------------------------------------@a<sdate and edate<@b
--����3								        ------------sdate<@a and edate<@b and @a<edate 
--����2                         ------------sdate<@a and @b<edate
--����1  -----------------  @a<sdate and @b<edate and @b>sdate
				 ---------------------------------------------

drop  table t1
go
create table t1
(
 sdate time 
 ,edate time
)
insert into t1
select '11:00','11:30'
union
select '14:00','16:00' 
go
declare @a time ='01:30'
declare @b time ='02:40'
select * from t1 
where 
(@a<sdate and @b<edate  and @b>sdate) --����1
or 
(sdate<@a and @b<edate ) --����2
or 
(sdate<@a and edate<@b and @a<edate  )--����3
or 
(@a<sdate and edate<@b)--����4

--��n���Ѫk.�L���g�k���²��.�ڪ�����P��
--http://www.blueshop.com.tw/board/show.asp?subcde=BRD200912101523054OF

--�ګ�ĳ�z�ۤv���e�Ӯɶ��b�ϸѤ@�U�z�N���D��SQL�n��˧P�_�F
--��M�e�X�Ӫ��ϴN�|�o�{�p�z�һ������|�ت��p�ɶ��|����

--�����SQL�u�n�P�_�T�ӡA�ڴN�αz a =DB�}�l�ɶ��A b=DB�����ɶ��A�ӻ���:
--1.User�ӽЪ�"�}�l�ɶ�"�A�bDB���w�йL���Ϭq�� =>startTime between a and b
--2.User�ӽЪ�"�����ɶ�"�A�bDB���w�йL���Ϭq�� =>EndTime between a and b
--3.User�ӽЪ�"�}�l�ɶ�" and "�����ɶ�"�A�ӽа϶�����DB���Ϭq =>startTime <=a and b<=EndTime 

--�H�W�T�Ӫ��p�h��DB���A�u�n���@�զ���ƫh��ܥӽЪ��ɶ������ơASQL��where���@�q�p�U:

--where (startTime between a and b) or (EndTime between a and b) or (startTime <=a and b<=EndTime )
