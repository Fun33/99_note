-- �إߨϥΪ̦ۭq���
CREATE FUNCTION dbo.GetDecimal(@number float, @point int)
RETURNS float
AS
BEGIN
	RETURN LEFT(@number, CHARINDEX('.', @number) + @point)
END
GO

-- ���լݬ�
SELECT [����p���I��� 3 ��] = dbo.GetDecimal(3.1415926, 3)