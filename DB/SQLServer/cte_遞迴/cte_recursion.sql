--=================================easy
--遞迴式 CTE 有其限制，其預設最大遞迴數 MAXRECURISON 是 100
--撈A的下層.
with tmp(father,kid ) as
(
select itt1.Father ,itt1.Code   from ITT1 where itt1.Father='a' --把A放在這
union all
select itt1.Father ,itt1.Code    from  ITT1
inner join TMP  on tmp.kid =itt1.Father  --用A的下階,當爸爸的撈出來 
)
select * from tmp

--===Return
--a	a1
--a	a2
--a2	a21
--a2	a22
--a1	a11
--a1	a12
--a11	a111

=================================
--如果CTE的WITH不在第一列, 前方要加上;
;WITH DIYParts_BOM(PartName, Parent, Level, SortCol) 
AS
(
    --Recursive CTE分為兩個部分, 第一部分為Anchor Member
    --指不會被遞迴呼叫到的部分
    SELECT PartName, Parent, 0, CONVERT(nvarchar(128),PartNo)
    FROM DIYParts WHERE Parent=N'ROOT'

     UNION ALL

     --UNION ALL後方的部分稱為Recursive Member, 會在遞迴過程中反覆執行,
     --直到無任何查詢結果為止
    SELECT P.PartName, P.Parent, B.Level+1,
    CONVERT(nvarchar(128), B.SortCol+'-'+CONVERT(nvarchar(128),P.PartNo))
    FROM DIYParts P, DIYParts_BOM B
    WHERE P.Parent=B.PartName
)
SELECT ('       ',Level) + PartName, Level, SortCol
FROM DIYParts_BOM ORDER BY SortCol 