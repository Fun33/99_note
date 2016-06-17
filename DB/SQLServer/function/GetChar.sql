 
if OBJECT_ID ('GetChar') is not null
drop function GetChar
go 
create function GetChar(@Char nvarchar(1),@time int) returns nvarchar(30)
begin
	--declare @Char nvarchar(1)='8'	
	--declare @time int=6
	
	
	declare @ret nvarchar(10)=''	
	declare @i  int =0
	

	while (@i<@time )
	begin
		set @ret +=@Char 
		set @i+=1
	end
	return @ret 
end