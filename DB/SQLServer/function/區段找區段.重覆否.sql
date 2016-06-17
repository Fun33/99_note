--sql 區段找區段.重覆否
--重覆4------------------------------------------------------------------@a<sdate and edate<@b
--重覆3								        ------------sdate<@a and edate<@b and @a<edate 
--重覆2                         ------------sdate<@a and @b<edate
--重覆1  -----------------  @a<sdate and @b<edate and @b>sdate
				 ---------------------------------------------

drop  table t1
go
create table t1
(
 sdate time 
 ,edate time
)
insert into t1
select '11:00','11:30'
union
select '14:00','16:00' 
go
declare @a time ='01:30'
declare @b time ='02:40'
select * from t1 
where 
(@a<sdate and @b<edate  and @b>sdate) --重覆1
or 
(sdate<@a and @b<edate ) --重覆2
or 
(sdate<@a and edate<@b and @a<edate  )--重覆3
or 
(@a<sdate and edate<@b)--重覆4

--更好的解法.他的寫法比較簡單.我的比較嚕嗦
--http://www.blueshop.com.tw/board/show.asp?subcde=BRD200912101523054OF

--我建議您自己先畫個時間軸圖解一下您就知道哪SQL要怎樣判斷了
--當然畫出來的圖就會發現如您所說的有四種狀況時間會重複

--但其實SQL只要判斷三個，我就用您 a =DB開始時間， b=DB結束時間，來說明:
--1.User申請的"開始時間"，在DB中已請過的區段內 =>startTime between a and b
--2.User申請的"結束時間"，在DB中已請過的區段內 =>EndTime between a and b
--3.User申請的"開始時間" and "結束時間"，申請區間內有DB的區段 =>startTime <=a and b<=EndTime 

--以上三個狀況去跟DB比對，只要有一組有資料則表示申請的時間有重複，SQL的where那一段如下:

--where (startTime between a and b) or (EndTime between a and b) or (startTime <=a and b<=EndTime )
