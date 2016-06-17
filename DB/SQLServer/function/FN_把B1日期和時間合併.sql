
if object_id('fnCombineB1DateTime') is not null
drop FUNCTION fnCombineB1DateTime
go
CREATE FUNCTION fnCombineB1DateTime
/*****************************************************************************************************
'程式目的：把B1日期和時間兩個分開的欄位值合併成 YYYY-MM-DD HH:SS 的格式
'程式目的：以便與其他的datetime格式，如GETDATE()用DATEDIFF做比較
'參數說明：@B1Date = '2013-07-22 00:00:00.000'
'參數說明：@B1Time = 921
'範　例　：SELECT dbo.fnCombineB1DateTime('2013-07-22 00:00:00.000', 921) 回傳值：'2013-07-22 09:21:00'
*****************************************************************************************************/
( 
  @B1Date datetime,
  @B1Time int
)
RETURNS char(22)
AS
BEGIN 
    DECLARE @B1TimeCHR   char(6)
    DECLARE @NewDateTime char(20)  
    DECLARE @InputLength int    

    SET @B1TimeCHR = RIGHT( REPLICATE('0', 6) + CAST(@B1Time AS varchar), 6)
    SET @NewDateTime = CONVERT(char(10), @B1Date, 120) + ' ' + SUBSTRING(@B1TimeCHR, 1, 2) + ':' + SUBSTRING(@B1TimeCHR, 3, 2)+ ':' + SUBSTRING(@B1TimeCHR, 5, 2)
  
    RETURN @NewDateTime
END
go