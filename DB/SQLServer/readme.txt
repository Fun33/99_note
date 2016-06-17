報表,都要加nolock


建立資料夾
EXEC xp_cmdshell 'MD C:\MyNewFolder'
http://social.msdn.microsoft.com/Forums/en-US/transactsql/thread/c84c3983-ced2-485b-9a28-095dc3f69b25/


避免使用耗费资源的操作，带有DISTINCT,UNION,MINUS,INTERSECT,ORDER BY的SQL语句会启动SQL引擎 执行，耗费资源的排序(SORT)功能. DISTINCT需要一次排序操作, 而其他的至少需要执行两次排序

ref
http://bigone2000.pixnet.net/blog/post/56194164-%E4%B8%80%E4%BA%9B%E5%B8%B8%E8%A6%8B%E7%9A%84sql%E6%95%88%E8%83%BD%E5%95%8F%E9%A1%8C

索引固然可以提高相應的 select 的效率，但同時也降低了 insert 及 update 的效率

一個表的索引數最好不要超過6個

 儘量使用數字型欄位，若只含數值資訊的欄位儘量不要設計為字元型，這會降低查詢和連接的性能，並會增加存儲開銷。這是因為引擎在處理查詢和連接時會逐個比較字串中每一個字元，而
      對於數字型而言只需要比較一次就夠了。

應儘量避免在where子句中對欄位進行函數操作，這將導致引擎放棄使用索引而進行全表掃描。如：
     select id from t where substring(name,1,3)='abc'--name以abc開頭的id
     select id from t where datediff(day,createdate,'2005-11-30')=0--‘2005-11-30’生成的id應改為:
     select id from t where name like 'abc'
     select id from t where createdate>='2005-11-30' and createdate<'2005-12-1'

----------------------------------
低效:WHERE SAL * 12 > 25000;
高效:WHERE SAL > 25000/12;

 
高效:WHERE DEPTNO >=4
低效:WHERE DEPTNO >3
前者DBMS將直接跳到第一個DEPT等於4的記錄
後者將首先定位到DEPTNO=3的記錄並且向前掃瞄到第一個DEPT大於3的記錄.  

低效:Or
高效:union

 
低效:(索引失效)WHERE DEPT_CODE IS NOT NULL;
高效:(索引有效)WHERE DEPT_CODE >=0;

低效(不使用索引):WHERE AMOUNT !=0;
高效(使用索引):WHERE AMOUNT >0;