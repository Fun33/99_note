�ض� asustor AS-202T 

NAS���J��FTP�h�u��K,���L�S�k�ת����ݬۤ�.
NAS��:�S�k�ת����ݬۤ�.

?��~IP,�@����


[�޲z����]
http://192.168.6.65:8000/portal/index.cgi

�̻���S.M.A.R.T���}.�O�w�礣�}
�εw�Х�.S.M.A.R.T.���y	>�}�n
���a�y���y		>


[�x�s�޲z��]
�p�G�A���t�λݭn�j�q���ϺЮe�q�A���O����o�S�� NAS �Υ~�����x�s�]�ơA�Ȧ��ӤH�q���ɡA���Ӧp��O�n�H 
���ɡA�z�L������ SCSI �Ϻ� (iSCSI) �N������j�j�����U�աI
�o�� iSCSI �O�N�Ӧۺ�������Ƽ����������� SCSI �]�ơA 
�]���i�H�i��Ѧp LVM ���譱����@�A�Ӥ��O��¨ϥΦ��A���ݴ��Ѫ��ɮרt�ΦӤw�A�۷������U��I
�ҥ�iSNS

=====================Service===========================
[Web Service]
Web Server=�������A��=�����]HTTP�^���A��:IIS,apache,nginx,GWS(Google Web Server)
e.g.�B�c:���.LG. �O�A.�ٹq.��susi
Enable PHP cache >�O��

[Windows]
CIFS

[Mac OS X]
AFP

[NFS]
Enable NFS Service
NFS�� Network FileSystem ��²�١A�����ت��N�O�Q�����P�������B���P���@�~�t�Υi�H�������ɭӧO���ɮװ�
�ϥ� NFS �n�� SAMBA �o�Ӧ��A���ֳt�B��K���h�F
*����samba (kay�[�L)
NFS ���Ұʻݭn�z�L�ҿת����ݵ{�ǩI�s (RPC)�A�]�N�O���A�ڭ̨ä��O�u�n�Ұ� NFS �N�n�F�A 
�ٻݭn�Ұ� RPC �o�ӪA�Ȥ~��ڡI
*NFS �N�O Network FileSystem ���Y�g
���̤j���\��N�O�i�H�z�L�����A�����P�������B���P���@�~�t�ΡB�i�H�������ɭӧO���ɮ� (share files)�C
�ҥH�A�A�]�i�H²�檺�N�L�ݰ��O�@���ɮצ��A�� (file server) 

[FTP Server]
�ҥ�SSL/TLS
	SMTP�]���o��.�N�O�[�K.

�ҥ�FXP	
	Server to Server���ɾ���
	ref https://briian.com/7282/ftp-rush.html


[WebDAV]
	B1iSN file�N�O�γo.��XMLSKPY�h�s.


[MariaDB Server]
MariaDB��Ʈw�޲z�t�άOMySQL���@�Ӥ���


[Terminal]
SSH.�ҥ�SSH�A��.�ҥ�SFTP�A��
*SSH(Secure SHell protocol)������FTP���A�ȡA�]�N�OSFTP(Secure File Transfer Protocol)�A
*�i���ѻPFTP�ۦP�A���O�󬰦w�����ɮ׶ǿ�A�ȡC



[Rsync Server]

[TFTP Server]
FTP��TCP,TFTP��UDP
TFTP�]Trivial File Transfer Protocol�^�O�@��²�櫬��FTP��w�A�����q���O����p�A�B�ǿ��ɮױ`�`�O�bLAN���i��A�]�����ͳo��²��B���ݭn���ҡ]�ϥ�UDP��w�A���ˬd��ƪ����T�ʡ^���ɮ׶ǿ��w�C

[SNMP]


[samba]
�b Windows ���x�W�A�ϥΪ̥i�H�g�ѡu�����W���ھF�v�Ӭݨ줣�P�q���A�øg�ѳ]�w�u�@�θ�Ƨ��v�Ӥ����ɮפΦL���
���F�n�� DOS �������M UNIX �������i�H�@���ɮ�


�p�G�b�a���W��.
>���W�h���عq�H���Ѿ�,���عq�H���Ѿ��N�|������~IP,�N�W�F.

=======================APP===========================
[App.Photo Gallery] 
�p�G�S���}��Web Server�����
�]�n�ҥ�MySQL(MariaDB)

��~�u�w.only read ���U��doc
�ڬOtree.photo/year/xxxx/oo.jpg



[App.CMS] use MySQL too.
[App.zenPHOTO]�]�O�n��MySQL
[App.Piwig] �]�O�n��MySQL
[App.Gallery]
Photo Storage	/volume1/Web/gallery3/var/
DB	gallery3
User	root
Password sa	
Host	localhost
Table prefix

[APP]
?SoundsGood ������ť NAS ��������
?�ۤv�����ݸ�Ʀs�� App : AiData

�u�W�s���x��� ASUSTOR NAS �̪���ơA�ΥߧY�����ɮ׵��A���B��
�j�M�B�U���@���d�w: AiDownload

�ʱ� NAS �ثe���U�����ȡA�@�����ȧ�����ʸ˸m�K�|���� Push Notification �q��

���A���L NAS ���j�p��: AiMaster

�z�L Push notifiation �ߧY�x�� NAS ���t�Ϊ��A�B�ƥ����A�C�Ʀܥs NAS �����]���A�O����
 


=============
�O�H���ϥ�
http://www.mobile01.com/topicdetail.php?f=494&t=4633491
http://www.mobile01.com/topicdetail.php?f=494&t=4285655&p=9#58058323
http://www.mobile01.com/topicdetail.php?f=494&t=4599873


�p�G�A�O��NAS�Q���t�bAP��ݪ�DHCP���U�A����A������򥭪O�N�o�n�s�W�P�@�Ӱϰ�������~��ۥѪ�����NAS
���O�A�Y�O���T�w��~IP�A����X���b�~�u�n�i�H�W���A�u���O���H�ɤ@��ʱ��A�ӥBNAS�]�i�H��@�O�A�����ָ�v�������A���A�N�������ξ�ߤ���򥭪O�쥻���ت��Ŷ����������D�F�C


====================================
iSCSI�N�O�@�����H�a�s�����覡.	�Ѱ�.�s���覡��򨺻�h��
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
�Ы��]server�Mclient
http://macivilian.blogspot.tw/2013/05/nasiscsi-target.html

���k1:
�@��ϥ� NAS ��²�檺���δN�O���κϺа}�C�إߤ@�Ӥj�Ŷ��A�M��z�L�����ھF SAMBA�BNFS ���覡���ɡA�q���ݳz�L IP ��J�b���K�X�ӳs�u�A�i�H�s�u�������Ϻо��ܦ��w�Я�ϥΡCNAS ���޲z�̥i�H�ݨ�Ҧ����ɮפ��e�A��K�w�ɪ��ƥ��Ҧ���ơC
iSCSI �O���A�@������Ŷ��A�A�ұo�쪺�N���O�@���w�СA�����ۤv�榡�Ƶw�Ф���~�i�H�ϥΡA��ϥΪ̨ӻ��i�H�Q�εw�Ю榡�S�ʨӷf�t�t�ΨϥΡAĴ�p�����ɮ׮榡�O�A�X�W�h�p�ɮת��A�άO�N�i�H�ϥΧֳt�j�M���u�㵥���C
�� NAS ���޲z�̨ӻ������¡A�u�ݨ�@���@�����ɥX�h���w�СA�����U�{�ɮפ��e���h�赥���C

���k2:
�j�a�����D�q���u�n���w�дN���x�s��ơA�o�O�@���H�Ӫ��ǲΡA����|���o��򥻪��Ʊ��A��]�O�{�ɪ������[�c�w�g�ۭ���ƴ��M�����ơA���O�H����ª����A��/�Ȥ�ݬ[�c�C

�{�b�����A�Ȥw�g�i�J SDN �M�����ƶ��q�A�����޲z���i�H��K�޲z��j�����[�c�A��M���ֱo�N�O���A���M�ୱ�q���]�i�����ơA�t�@�n�B�N�O�U�@�����w�ЪŶ������A�i�H�H�ɷs�W�A�O��ǲιq���ܱo�㦳�u�ʥh�޲z�C

�F�ѵ������x�s�˸m

�s�W�@�ӵ����w�Ш��I�����ó\�h�ǰݡA���O I/O �į�M�ƥ����D�w�g�x�������A�n�ݵ����w���x��b�����x�s�˸m�����A�ӿ�k���H�U�T�ءG

1.    �Ĥ@�جO��²�檺���k�A�N�����w���x��b���a�w�Ф����A���F���ݭn�B�~�ʶR�����x�s�˸m���~�AI/O �įण�|�ӹL�t�A��]�O���ݳz�L�����ɭP�v�T�s���t�סA���ݭn�t�~�ʶR�����Ƴƥ��u��ӳƥ����������C

2.    �ĤG�جO�z�L NAS ���� iSCSI LUN�A���a�w�ЪŶ������A�i�H���H�a�g�Ѻ��������CNAS �j�h�ƥ]�t Snapshot �\��A�޲z���H Snapshot ��K�ƥ����������A�����ʶR�B�~�ƥ��n��C�� I/O �譱�i�Q�Τ��P���������t�רӦs���A���G���q���ҭn�D�CNAS ���_ SAN �������٭n�j���ơA�]�����ܦh���~�γ��������|���p�@�x NAS�C

3.    �ĤT�جO�z�L SAN ���� Fiber Channel �w�СA�]���O�z�L���֦s���A�ҥH�b I/O �į�W�|������ iSCSI �٧֡A�H�Ψ� Snapshot �ƥ��\��P NAS �@�˥i�ƥ����������C�]���O�ϥΥ��֪����Y�A�b�����W�@�w�� NAS ���Q�C

���k3: 
���������~�ϥΪ����A���Y���j�e�q�ϺЪ��ݨD�ɡA�q�`�O�z�L SCSI �Ӧ걵 SCSI �ϺСA
�]�����A���W�������n�[�� SCSI �����d�A�ӥB�o�� SCSI �O�M�ݩ�Ӧ��A�����C

��ӳo�ӥ~������ SCSI �]�ƳQ�W�z���쪺 SAN ���[�c�Ҩ��N�A 

�b SAN ���зǬ[�c�U�A���M���ܦh�����A���i�H��P�@�� SAN �i��s�����ʧ@�A���L���F�t�׻ݨD�A�q�`�ϥΪ��O���ֳq�D�C 
���O���ֳq�D�N�O�Q���I�����]�ƶQ�A���A���W���]�n�����֤����A�ܳ·С�ҥH���֪� SAN �b���p���~�������ΰڡ�

��Ӻ�����b�Ӵ��ΡA�ר�O�H IP �ʥ]����¦�� LAN �޳N�w�g�ܦ����A�A�[�W�A�Ӻ������t�׶V�ӶV�֡A 
�ҥH�N���t�ӱN SAN ���s���覡�אּ�Q�� IP �޳N�ӳB�z�C
�M��A�z�L�@�ǼзǪ��q�w�A�̫�N�o�� Internet SCSI (iSCSI) �o���N�����ͰաI
iSCSI �D�n�O�z�L TCP/IP ���޳N�A�N�x�s�]�ƺݳz�L iSCSI target (iSCSI �Ъ�) �\��A
�����i�H���ѺϺЪ����A���ݡA�A�z�L iSCSI initiator (iSCSI ��l�ƥΤ�) �\��A
������������ϥ� iSCSI target ���Τ�ݡA�p���K��z�L iSCSI ��w�Ӷi��ϺЪ����ΤF (��3)�C

�]�N�O���AiSCSI �o�Ӭ[�c�D�n�N�x�s�˸m�P�ϥΪ��D��������ӳ����A���O�O�G

iSCSI target�G�N�O�x�s�]�ƺݡA�s��ϺЩ� RAID ���]�ơA�ثe�]����N Linux �D�������� iSCSI target �F�I�ت��b���Ѩ�L�D���ϥΪ��y�ϺСz�F

iSCSI initiator�G�N�O����ϥ� target ���Τ�ݡA�q�`�O���A���C 
�]�N�O���A�Q�n�s���� iSCSI target �����A���A�]�����n�w�� iSCSI initiator �������\���~����ϥ� iSCSI target ���Ѫ��ϺдN�O�F�C
�p�U�ϩҥܡAiSCSI �O�b TCP/IP �W���Ҷ}�o�X�Ӫ��@�M���ΡA�ҥH�o�n�������~��ڡI

========================
S.M.A.R.T

[���s�t�m�ϰϼ�] Relocated Sectors.
�@�� Sector �n�Q Relocate, �q�`�O�o�ͤF���z�ʪ��l�a, �y���L�k�A�x�s���, 
�ҥH�u�n�N�쥻�s�b�� Sector �������, �h���L�� Sector �h, �o�Ӱʧ@�٬�: Relocate.
�ҥH, �� Sector �Q Relocate �����ƶV�ӶV�h���ɭ�, �N��o�ӵw�Ъ����z�ʷl�a���b�H�ɶ��ӼW�[, �]�N�O�L���ةR���b�����Y�.
http://ocean2002n.pixnet.net/blog/post/75566589-%5B%E7%A1%AC%E9%AB%94%5D-%E6%9C%89%E9%97%9Cs.m.a.r.t%E7%9A%84%E9%8C%AF%E8%AA%A4%E8%A8%8A%E6%81%AF%E8%A7%A3%E6%9E%90


�u�n�X�{�oĵ�i�N�O�a�y�C�i�H���s���F

��l���:�N�O�ثerelocated������.�u�n�X�{�@��,�N�|��ܤ��}.



