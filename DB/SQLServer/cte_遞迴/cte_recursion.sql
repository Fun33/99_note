--=================================easy
--���j�� CTE ���䭭��A��w�]�̤j���j�� MAXRECURISON �O 100
--��A���U�h.
with tmp(father,kid ) as
(
select itt1.Father ,itt1.Code   from ITT1 where itt1.Father='a' --��A��b�o
union all
select itt1.Father ,itt1.Code    from  ITT1
inner join TMP  on tmp.kid =itt1.Father  --��A���U��,���������X�� 
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
--�p�GCTE��WITH���b�Ĥ@�C, �e��n�[�W;
;WITH DIYParts_BOM(PartName, Parent, Level, SortCol) 
AS
(
    --Recursive CTE������ӳ���, �Ĥ@������Anchor Member
    --�����|�Q���j�I�s�쪺����
    SELECT PartName, Parent, 0, CONVERT(nvarchar(128),PartNo)
    FROM DIYParts WHERE Parent=N'ROOT'

     UNION ALL

     --UNION ALL��誺�����٬�Recursive Member, �|�b���j�L�{�����а���,
     --����L����d�ߵ��G����
    SELECT P.PartName, P.Parent, B.Level+1,
    CONVERT(nvarchar(128), B.SortCol+'-'+CONVERT(nvarchar(128),P.PartNo))
    FROM DIYParts P, DIYParts_BOM B
    WHERE P.Parent=B.PartName
)
SELECT ('       ',Level) + PartName, Level, SortCol
FROM DIYParts_BOM ORDER BY SortCol 