利用PIVOT語法，就能快速做到樞紐分析了��
附件是我目前完成，針對各個Item與各倉庫庫存量的樞紐分析表Sample。
可以在任何DB & SAP Query執行。

永豐餘會做這樣的SQL，主要是因為SAP的所有庫存報表，都無法作單位轉換，所以都需要另外做報表轉換。
但是我又不希樣每一次他新增一個倉庫，我就需要再幫他修正報表，而是希望倉庫能自動添加。


----撈出所有倉庫，準備等下橫向要展開用
----N''指的是預防文字文UNICODE時發生錯誤
DECLARE @cols NVARCHAR(MAX)= N'' --儲存動態欄位之用
DECLARE @A NVARCHAR(MAX)--樞紐分析用
--取得資料行列表
--@COLS如果是第一個位置，不可以加逗號，所以加上這段判斷
SELECT @cols = @cols + 
CASE WHEN @cols = N'' THEN  QUOTENAME(OWHS.WhsCode)
ELSE  N',' + QUOTENAME(OWHS.WhsCode) END
FROM OWHS
--把它變成文字輸出，這個只是方便檢查看看自己上面SELECT的對不對，不需要真的Print出來喔。
--PRINT @COLS


--再來就是樞紐分析
SET @A = 'SELECT *  FROM 
----這段是直式時想要展出來的內容
(SELECT OIBT.ItemCode, OITM.ItemName,OITM.Spec, OIBT.BatchNum, OIBT.ExpDate, OIBT.WhsCode, 
ISNULL(OIBT.Quantity/OITM.NumInBuy,0)  AS Quantity
,ISNULL(OITW.OnHand/OITM.NumInBuy,0) AS OnHand, ISNULL(OITM.OnHand/OITM.NumInBuy,0) AS STOCK
FROM OIBT INNER JOIN OITM ON OIBT.ItemCode = OITM.ItemCode
INNER JOIN OITW ON OIBT.ItemCode = OITW.ItemCode AND OIBT.WhsCode = OITW.WhsCode 
WHERE OIBT.Quantity>0
GROUP BY OIBT.ItemCode, OITM.ItemName,OITM.Spec, OIBT.BatchNum, OIBT.ExpDate, OIBT.WhsCode, OIBT.Quantity, OITM.NumInBuy, OITW.OnHand, OITM.OnHand
) 
--幫這一串取個名字
AS GROUPTABLE
PIVOT
(
--樞紐分析表裡面，十字格子裡要的值
 SUM(GROUPTABLE.Quantity)
 --這邊就是橫向列要的，這邊是倉庫，所以把剛剛宣告塞進來
     FOR GROUPTABLE.WhsCode IN('
  + @cols
  + ')
 )AS pvt'


 --執行


 EXEC (@A)
