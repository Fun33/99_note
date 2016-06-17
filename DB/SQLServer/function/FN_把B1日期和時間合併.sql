
if object_id('fnCombineB1DateTime') is not null
drop FUNCTION fnCombineB1DateTime
go
CREATE FUNCTION fnCombineB1DateTime
/*****************************************************************************************************
'�{���ت��G��B1����M�ɶ���Ӥ��}�����ȦX�֦� YYYY-MM-DD HH:SS ���榡
'�{���ت��G�H�K�P��L��datetime�榡�A�pGETDATE()��DATEDIFF�����
'�Ѽƻ����G@B1Date = '2013-07-22 00:00:00.000'
'�Ѽƻ����G@B1Time = 921
'�d�@�ҡ@�GSELECT dbo.fnCombineB1DateTime('2013-07-22 00:00:00.000', 921) �^�ǭȡG'2013-07-22 09:21:00'
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