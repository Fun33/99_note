�Q��PIVOT�y�k�A�N��ֳt����ϯä��R�F��
����O�ڥثe�����A�w��U��Item�P�U�ܮw�w�s�q���ϯä��R��Sample�C
�i�H�b����DB & SAP Query����C

���׾l�|���o�˪�SQL�A�D�n�O�]��SAP���Ҧ��w�s����A���L�k�@����ഫ�A�ҥH���ݭn�t�~�������ഫ�C
���O�ڤS���Ƽ˨C�@���L�s�W�@�ӭܮw�A�ڴN�ݭn�A���L�ץ�����A�ӬO�Ʊ�ܮw��۰ʲK�[�C


----���X�Ҧ��ܮw�A�ǳƵ��U��V�n�i�}��
----N''�����O�w����r��UNICODE�ɵo�Ϳ��~
DECLARE @cols NVARCHAR(MAX)= N'' --�x�s�ʺA��줧��
DECLARE @A NVARCHAR(MAX)--�ϯä��R��
--���o��Ʀ�C��
--@COLS�p�G�O�Ĥ@�Ӧ�m�A���i�H�[�r���A�ҥH�[�W�o�q�P�_
SELECT @cols = @cols + 
CASE WHEN @cols = N'' THEN  QUOTENAME(OWHS.WhsCode)
ELSE  N',' + QUOTENAME(OWHS.WhsCode) END
FROM OWHS
--�⥦�ܦ���r��X�A�o�ӥu�O��K�ˬd�ݬݦۤv�W��SELECT���藍��A���ݭn�u��Print�X�ӳ�C
--PRINT @COLS


--�A�ӴN�O�ϯä��R
SET @A = 'SELECT *  FROM 
----�o�q�O�����ɷQ�n�i�X�Ӫ����e
(SELECT OIBT.ItemCode, OITM.ItemName,OITM.Spec, OIBT.BatchNum, OIBT.ExpDate, OIBT.WhsCode, 
ISNULL(OIBT.Quantity/OITM.NumInBuy,0)  AS Quantity
,ISNULL(OITW.OnHand/OITM.NumInBuy,0) AS OnHand, ISNULL(OITM.OnHand/OITM.NumInBuy,0) AS STOCK
FROM OIBT INNER JOIN OITM ON OIBT.ItemCode = OITM.ItemCode
INNER JOIN OITW ON OIBT.ItemCode = OITW.ItemCode AND OIBT.WhsCode = OITW.WhsCode 
WHERE OIBT.Quantity>0
GROUP BY OIBT.ItemCode, OITM.ItemName,OITM.Spec, OIBT.BatchNum, OIBT.ExpDate, OIBT.WhsCode, OIBT.Quantity, OITM.NumInBuy, OITW.OnHand, OITM.OnHand
) 
--���o�@����ӦW�r
AS GROUPTABLE
PIVOT
(
--�ϯä��R��̭��A�Q�r��l�̭n����
 SUM(GROUPTABLE.Quantity)
 --�o��N�O��V�C�n���A�o��O�ܮw�A�ҥH����ŧi��i��
     FOR GROUPTABLE.WhsCode IN('
  + @cols
  + ')
 )AS pvt'


 --����


 EXEC (@A)
