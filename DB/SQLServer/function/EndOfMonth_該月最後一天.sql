----²{¦³¤ë+
--select dbo.EndOfMonth('20130620',0)	--2013-06-30 00:00:00.000
--select dbo.EndOfMonth('20130620',1)	--2013-07-31 00:00:00.000


CREATE FUNCTION [dbo].[EndOfMonth]
(
    @date datetime,
    @increment int
)
RETURNS datetime
AS
BEGIN
    RETURN  DATEADD(d,-1,CONVERT(datetime,LEFT(CONVERT(char(8)
            ,DATEADD(M,@increment + 1,@date),112),6) + '01'))
END
GO

