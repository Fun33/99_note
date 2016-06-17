華雲 asustor AS-202T 

NAS今仔用FTP多真方便,不過沒法度直接看相片.
NAS缺:沒法度直接看相片.

?對外IP,一直換


[管理介面]
http://192.168.6.65:8000/portal/index.cgi

依說我S.M.A.R.T不良.是安怎不良
用硬碟生.S.M.A.R.T.掃描	>良好
用壞軌掃描		>


[儲存管理員]
如果你的系統需要大量的磁碟容量，但是身邊卻沒有 NAS 或外接的儲存設備，僅有個人電腦時，那該如何是好？ 
此時，透過網路的 SCSI 磁碟 (iSCSI) 就能夠有大大的幫助啦！
這個 iSCSI 是將來自網路的資料模擬成本機的 SCSI 設備， 
因此可以進行諸如 LVM 等方面的實作，而不是單純使用伺服器端提供的檔案系統而已，相當的有幫助喔！
啟用iSNS

=====================Service===========================
[Web Service]
Web Server=網頁伺服器=網頁（HTTP）伺服器:IIS,apache,nginx,GWS(Google Web Server)
e.g.冰箱:國際.LG. 保鮮.省電.放susi
Enable PHP cache >是用

[Windows]
CIFS

[Mac OS X]
AFP

[NFS]
Enable NFS Service
NFS為 Network FileSystem 的簡稱，它的目的就是想讓不同的機器、不同的作業系統可以彼此分享個別的檔案啦
使用 NFS 要比 SAMBA 這個伺服器快速且方便的多了
*類似samba (kay架過)
NFS 的啟動需要透過所謂的遠端程序呼叫 (RPC)，也就是說，我們並不是只要啟動 NFS 就好了， 
還需要啟動 RPC 這個服務才行啊！
*NFS 就是 Network FileSystem 的縮寫
它最大的功能就是可以透過網路，讓不同的機器、不同的作業系統、可以彼此分享個別的檔案 (share files)。
所以，你也可以簡單的將他看做是一個檔案伺服器 (file server) 

[FTP Server]
啟用SSL/TLS
	SMTP也有這個.就是加密.

啟用FXP	
	Server to Server傳檔機制
	ref https://briian.com/7282/ftp-rush.html


[WebDAV]
	B1iSN file就是用這.用XMLSKPY去連.


[MariaDB Server]
MariaDB資料庫管理系統是MySQL的一個分支


[Terminal]
SSH.啟用SSH服務.啟用SFTP服務
*SSH(Secure SHell protocol)中類似FTP的服務，也就是SFTP(Secure File Transfer Protocol)，
*可提供與FTP相同，但是更為安全的檔案傳輸服務。



[Rsync Server]

[TFTP Server]
FTP用TCP,TFTP用UDP
TFTP（Trivial File Transfer Protocol）是一種簡單型的FTP協定，早期電腦記憶體小，且傳輸檔案常常是在LAN內進行，因此產生這種簡單且不需要驗證（使用UDP協定，不檢查資料的正確性）的檔案傳輸協定。

[SNMP]


[samba]
在 Windows 平台上，使用者可以經由「網路上的芳鄰」來看到不同電腦，並經由設定「共用資料夾」來分享檔案及印表機
為了要讓 DOS 的機器和 UNIX 的機器可以共享檔案


如果在家怎麼上雲.
>插上去中華電信路由器,中華電信路由器就會給它對外IP,就上了.

=======================APP===========================
[App.Photo Gallery] 
如果沒有開啟Web Server不能用
也要啟用MySQL(MariaDB)

唉~真憨.only read 底下的doc
我是tree.photo/year/xxxx/oo.jpg



[App.CMS] use MySQL too.
[App.zenPHOTO]也是要裝MySQL
[App.Piwig] 也是要裝MySQL
[App.Gallery]
Photo Storage	/volume1/Web/gallery3/var/
DB	gallery3
User	root
Password sa	
Host	localhost
Table prefix

[APP]
?SoundsGood 網頁聆聽 NAS 中的音樂
?自己的雲端資料存取 App : AiData

線上瀏覽儲放於 ASUSTOR NAS 裡的資料，或立即分享檔案給你的朋友
搜尋、下載一次搞定: AiDownload

監控 NAS 目前的下載任務，一旦任務完成行動裝置便會收到 Push Notification 通知

不再錯過 NAS 的大小事: AiMaster

透過 Push notifiation 立即掌握 NAS 的系統狀態、備份狀態。甚至叫 NAS 關機也不再是難事
 


=============
別人的使用
http://www.mobile01.com/topicdetail.php?f=494&t=4633491
http://www.mobile01.com/topicdetail.php?f=494&t=4285655&p=9#58058323
http://www.mobile01.com/topicdetail.php?f=494&t=4599873


如果你是讓NAS被分配在AP後端的DHCP之下，那麼你的手機跟平板就得要連上同一個區域網路內才能自由的控制NAS
但是你若是有固定對外IP，那麼出門在外只要可以上網，真的是能隨時一手監控，而且NAS也可以當作是你的音樂跟影片的伺服器，就完全不用擔心手機跟平板原本內建的空間不足的問題了。


====================================
iSCSI就是一種讓人家存取的方式.	天啊.存取方式怎麼那麼多啊
iSCSI
FTP / TFTP Service
WebDav
CIFS / AFP
NFS
Web Serice
Rsync Service
SNMP
Terminal	

[iSCSI]
教怎麼設server和client
http://macivilian.blogspot.tw/2013/05/nasiscsi-target.html

說法1:
一般使用 NAS 最簡單的應用就是先用磁碟陣列建立一個大空間，然後透過網路芳鄰 SAMBA、NFS 的方式分享，電腦端透過 IP 輸入帳號密碼來連線，可以連線成網路磁碟機變成硬碟般使用。NAS 的管理者可以看到所有的檔案內容，方便定時的備份所有資料。
iSCSI 是給你一整塊的空間，你所得到的就像是一顆硬碟，必須自己格式化硬碟之後才可以使用，對使用者來說可以利用硬碟格式特性來搭配系統使用，譬如有些檔案格式是適合超多小檔案的，或是就可以使用快速搜尋的工具等等。
對 NAS 的管理者來說比較單純，只看到一塊一塊分享出去的硬碟，不用顧慮檔案內容的多寡等等。

說法2:
大家都知道電腦只要有硬碟就能儲存資料，這是一路以來的傳統，為何會說這麼基本的事情，原因是現時的網絡架構已經著重於備援和虛擬化，不是以往單純的伺服器/客戶端架構。

現在網絡服務已經進入 SDN 和虛擬化階段，網絡管理員可以方便管理更大型的架構，當然不少得就是伺服器和桌面電腦也可虛擬化，另一好處就是萬一虛擬硬碟空間不足，可以隨時新增，令到傳統電腦變得具有彈性去管理。

了解虛擬化儲存裝置

新增一個虛擬硬碟其實背後隱藏許多學問，光是 I/O 效能和備份問題已經困難重重，要看虛擬硬碟儲放在那個儲存裝置之中，而辦法有以下三種：

1.    第一種是最簡單的做法，將虛擬硬碟儲放在本地硬碟之中，除了不需要額外購買網絡儲存裝置之外，I/O 效能不會太過差，原因是不需透過網絡導致影響存取速度，但需要另外購買虛擬化備份工具來備份虛擬機器。

2.    第二種是透過 NAS 掛載 iSCSI LUN，當本地硬碟空間不足，可隨時隨地經由網絡掛載。NAS 大多數包含 Snapshot 功能，管理員以 Snapshot 方便備份虛擬機器，不需購買額外備份軟件。而 I/O 方面可利用不同網絡介面速度來存取，視乎公司環境要求。NAS 對比起 SAN 的價錢還要大眾化，因此有很多企業或部門內都會部署一台 NAS。

3.    第三種是透過 SAN 掛載 Fiber Channel 硬碟，因為是透過光纖存取，所以在 I/O 效能上會遠遠比 iSCSI 還快，以及其 Snapshot 備份功能與 NAS 一樣可備份虛擬機器。因為是使用光纖的關係，在價錢上一定比 NAS 昂貴。

說法3: 
早期的企業使用的伺服器若有大容量磁碟的需求時，通常是透過 SCSI 來串接 SCSI 磁碟，
因此伺服器上面必須要加裝 SCSI 介面卡，而且這個 SCSI 是專屬於該伺服器的。

後來這個外接式的 SCSI 設備被上述提到的 SAN 的架構所取代， 

在 SAN 的標準架構下，雖然有很多的伺服器可以對同一個 SAN 進行存取的動作，不過為了速度需求，通常使用的是光纖通道。 
但是光纖通道就是貴嘛！不但設備貴，伺服器上面也要有光纖介面，很麻煩～所以光纖的 SAN 在中小企業很難普及啊～

後來網路實在太普及，尤其是以 IP 封包為基礎的 LAN 技術已經很成熟，再加上乙太網路的速度越來越快， 
所以就有廠商將 SAN 的連接方式改為利用 IP 技術來處理。
然後再透過一些標準的訂定，最後就得到 Internet SCSI (iSCSI) 這玩意的產生啦！
iSCSI 主要是透過 TCP/IP 的技術，將儲存設備端透過 iSCSI target (iSCSI 標的) 功能，
做成可以提供磁碟的伺服器端，再透過 iSCSI initiator (iSCSI 初始化用戶) 功能，
做成能夠掛載使用 iSCSI target 的用戶端，如此便能透過 iSCSI 協定來進行磁碟的應用了 (註3)。

也就是說，iSCSI 這個架構主要將儲存裝置與使用的主機分為兩個部分，分別是：

iSCSI target：就是儲存設備端，存放磁碟或 RAID 的設備，目前也能夠將 Linux 主機模擬成 iSCSI target 了！目的在提供其他主機使用的『磁碟』；

iSCSI initiator：就是能夠使用 target 的用戶端，通常是伺服器。 
也就是說，想要連接到 iSCSI target 的伺服器，也必須要安裝 iSCSI initiator 的相關功能後才能夠使用 iSCSI target 提供的磁碟就是了。
如下圖所示，iSCSI 是在 TCP/IP 上面所開發出來的一套應用，所以得要有網路才行啊！

========================
S.M.A.R.T

[重新配置磁區數] Relocated Sectors.
一個 Sector 要被 Relocate, 通常是發生了物理性的損壞, 造成無法再儲存資料, 
所以只好將原本存在該 Sector 內的資料, 搬到其他的 Sector 去, 這個動作稱為: Relocate.
所以, 當 Sector 被 Relocate 的次數越來越多的時候, 代表這個硬碟的物理性損壞正在隨時間而增加, 也就是他的壽命正在急遽縮減中.
http://ocean2002n.pixnet.net/blog/post/75566589-%5B%E7%A1%AC%E9%AB%94%5D-%E6%9C%89%E9%97%9Cs.m.a.r.t%E7%9A%84%E9%8C%AF%E8%AA%A4%E8%A8%8A%E6%81%AF%E8%A7%A3%E6%9E%90


只要出現這警告就是壞軌。可以換新的了

原始資料:就是目前relocated的次數.只要出現一次,就會顯示不良.



