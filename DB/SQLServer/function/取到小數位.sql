-- 建立使用者自訂函數
CREATE FUNCTION dbo.GetDecimal(@number float, @point int)
RETURNS float
AS
BEGIN
	RETURN LEFT(@number, CHARINDEX('.', @number) + @point)
END
GO

-- 測試看看
SELECT [取到小數點後第 3 位] = dbo.GetDecimal(3.1415926, 3)