 
 --select dbo.[PlusZero](1,3)
create FUNCTION [dbo].[PlusZero](   @code int   ,@len int)
RETURNS nvarchar(max)
AS
BEGIN
    RETURN  
		--declare @code int
		--declare @len int
		--set @code =1
		--set @len =10
    
     replicate('0',(@len-len(@code)))+CAST ( @code  as nvarchar(1000))
--SELECT REPLICATE('0',5-LEN(2)) + RTRIM(CAST(2 AS CHAR)) 
END
GO

