§Q¥ÎPIVOT»yªk¡A´N¯à§Ö³t°µ¨ì¼Ï¯Ã¤ÀªR¤Fƒº
ªþ¥ó¬O§Ú¥Ø«e§¹¦¨¡A°w¹ï¦U­ÓItem»P¦U­Ü®w®w¦s¶qªº¼Ï¯Ã¤ÀªRªíSample¡C
¥i¥H¦b¥ô¦óDB & SAP Query°õ¦æ¡C

¥ÃÂ×¾l·|°µ³o¼ËªºSQL¡A¥D­n¬O¦]¬°SAPªº©Ò¦³®w¦s³øªí¡A³£µLªk§@³æ¦ìÂà´«¡A©Ò¥H³£»Ý­n¥t¥~°µ³øªíÂà´«¡C
¦ý¬O§Ú¤S¤£§Æ¼Ë¨C¤@¦¸¥L·s¼W¤@­Ó­Ü®w¡A§Ú´N»Ý­n¦AÀ°¥L­×¥¿³øªí¡A¦Ó¬O§Æ±æ­Ü®w¯à¦Û°Ê²K¥[¡C


----¼´¥X©Ò¦³­Ü®w¡A·Ç³Æµ¥¤U¾î¦V­n®i¶}¥Î
----N''«üªº¬O¹w¨¾¤å¦r¤åUNICODE®Éµo¥Í¿ù»~
DECLARE @cols NVARCHAR(MAX)= N'' --Àx¦s°ÊºAÄæ¦ì¤§¥Î
DECLARE @A NVARCHAR(MAX)--¼Ï¯Ã¤ÀªR¥Î
--¨ú±o¸ê®Æ¦æ¦Cªí
--@COLS¦pªG¬O²Ä¤@­Ó¦ì¸m¡A¤£¥i¥H¥[³r¸¹¡A©Ò¥H¥[¤W³o¬q§PÂ_
SELECT @cols = @cols + 
CASE WHEN @cols = N'' THEN  QUOTENAME(OWHS.WhsCode)
ELSE  N',' + QUOTENAME(OWHS.WhsCode) END
FROM OWHS
--§â¥¦ÅÜ¦¨¤å¦r¿é¥X¡A³o­Ó¥u¬O¤è«KÀË¬d¬Ý¬Ý¦Û¤v¤W­±SELECTªº¹ï¤£¹ï¡A¤£»Ý­n¯uªºPrint¥X¨Ó³á¡C
--PRINT @COLS


--¦A¨Ó´N¬O¼Ï¯Ã¤ÀªR
SET @A = 'SELECT *  FROM 
----³o¬q¬Oª½¦¡®É·Q­n®i¥X¨Óªº¤º®e
(SELECT OIBT.ItemCode, OITM.ItemName,OITM.Spec, OIBT.BatchNum, OIBT.ExpDate, OIBT.WhsCode, 
ISNULL(OIBT.Quantity/OITM.NumInBuy,0)  AS Quantity
,ISNULL(OITW.OnHand/OITM.NumInBuy,0) AS OnHand, ISNULL(OITM.OnHand/OITM.NumInBuy,0) AS STOCK
FROM OIBT INNER JOIN OITM ON OIBT.ItemCode = OITM.ItemCode
INNER JOIN OITW ON OIBT.ItemCode = OITW.ItemCode AND OIBT.WhsCode = OITW.WhsCode 
WHERE OIBT.Quantity>0
GROUP BY OIBT.ItemCode, OITM.ItemName,OITM.Spec, OIBT.BatchNum, OIBT.ExpDate, OIBT.WhsCode, OIBT.Quantity, OITM.NumInBuy, OITW.OnHand, OITM.OnHand
) 
--À°³o¤@¦ê¨ú­Ó¦W¦r
AS GROUPTABLE
PIVOT
(
--¼Ï¯Ã¤ÀªRªí¸Ì­±¡A¤Q¦r®æ¤l¸Ì­nªº­È
 SUM(GROUPTABLE.Quantity)
 --³oÃä´N¬O¾î¦V¦C­nªº¡A³oÃä¬O­Ü®w¡A©Ò¥H§â­è­è«Å§i¶ë¶i¨Ó
     FOR GROUPTABLE.WhsCode IN('
  + @cols
  + ')
 )AS pvt'


 --°õ¦æ


 EXEC (@A)
