----²{¦³¤ë+
--select dbo.FirstOfMonth('20130620',0)--2013-06-01 00:00:00.000
--select dbo.FirstOfMonth('20130620',1)--2013-07-01 00:00:00.000
  
 
create FUNCTION [dbo].[FirstOfMonth]
(
    @date datetime,
    @increment int
)
RETURNS datetime
AS
BEGIN
    RETURN  
    --declare    @date datetime
    --declare @increment int
    --set @date ='2013/6/20'
    --set @increment =0
    
      CONVERT(datetime,LEFT(CONVERT(char(8)
            ,DATEADD(M,@increment  ,@date),112),6) + '01')
END
GO

