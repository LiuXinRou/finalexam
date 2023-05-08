DROP DATABASE IF EXISTS finalexam_login;

CREATE DATABASE finalexam_login CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE finalexam_login;

DROP TABLE IF EXISTS `signin`;
create table `signin`(
 `id` varchar(20) not null,
 `pwd` varchar(20) not null,
 `email` varchar(20) not null,
 `phone` varchar(15) not null,
 `address` varchar(25) not null,
 primary key(id)
);
insert into `signin` values("test","0000","asd09391@gmail.com","0987878787","我家");
select*from `signin`;

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content` (
  `c_id` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `flim_name` varchar(45) DEFAULT NULL,
  `star` varchar(45) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,'chao','cool',NULL,'月老',NULL,1),(2,'null','null',NULL,'null',NULL,2),(3,'null','null',NULL,'null',NULL,3),(4,'null','null',NULL,'null',NULL,4),(5,'null','null',NULL,'null',NULL,5),(6,'null','null',NULL,'null',NULL,6),(7,'null','null',NULL,'null',NULL,7),(8,'null','null','2022-06-11','null',NULL,8),(9,'CHAO','dcds','2022-06-11','月老',NULL,9),(10,'ccc','good','2022-06-11','月老',NULL,10),(11,'asf','safdvg','2022-06-11','月老',NULL,11),(12,'chao','cool','2022-06-17','月老','1',12),(13,'chao','cool','2022-06-17','月老','1',13),(13,'chao','cool','2022-06-17','月老','1',14),(15,'chao','m....\r\n','2022-06-17','月老','5',15),(15,'chao','m....\r\n','2022-06-17','月老','5',16);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;
select*from `content`;
--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `count` int NOT NULL,
  PRIMARY KEY (`count`)
) ;

select*from counter;
--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (0);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perflim`
--


DROP TABLE IF EXISTS `perflim`;

CREATE TABLE `perflim` (
  `name` varchar(20) NOT NULL,
  `product_id` int NOT NULL AUTO_INCREMENT,
  `price` int NOT NULL,
  `type` varchar(45) NOT NULL,
  `href` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `stock` int NOT NULL,
  `director` varchar(45) DEFAULT NULL,
  `actor` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `point1` varchar(100) DEFAULT NULL,
  `point2` varchar(100) DEFAULT NULL,
  `point3` varchar(100) DEFAULT NULL,
  `introduce` varchar(400) DEFAULT NULL,
  `iframe` varchar(200) DEFAULT NULL,
  `comment` varchar(400) DEFAULT NULL,
  `perflimcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
);

INSERT INTO `perflim` VALUES ('一個巨星的誕生',1,10,'劇情片','good-1.jsp',
'assets/img/astarisborn.png',10,'布萊德利．庫柏','布萊德利．庫柏、女神卡卡','2小時15分鐘','輔15級',
'全球票房4.34億美元','榮獲《第七十六屆金球獎》最佳戲劇類等5項提名','榮獲《第九十一屆奧斯卡金像獎》8項提名',
'故事講述擁有豐富音樂經驗的傑克森(布萊德利．庫柏 飾)深受酒癮之苦，某天在酒吧酗酒時，偶遇了有著過人音樂天分的駐唱歌手艾莉(女神卡卡 飾)，因音樂相識的兩人隨後墜入愛河。傑克森給予了艾莉更大的舞台，讓艾莉的歌聲備受肯定，但兩人的戀情卻瀕臨破滅，美夢瞬間化成噩夢。
','https://www.youtube.com/embed/luru4Zf57TE',NULL,NULL),
('白日夢冒險王',2,12,'劇情片','n','assets/img/mitty.png',12,'班．史提勒','班．史提勒、克莉絲汀．薇閣','1小時54分鐘','保護級',
'改編自詹姆士·格羅弗·瑟伯的短篇小說','榮獲《紐約每日新聞》好評','北美首周末賣座1300萬美元','在雜誌社工作的無名小卒華特米堤，面臨被公司裁員的窘境，又默默迷戀正妹同事，卻仍作著一個又一個的白日夢，不論是以帥哥姿態征服冰河，或從從爆炸大樓現場化身超級英雄救出小狗，在他的超現實幻想情境中，他無所不能！就在面對現實世界的終極考驗時，他決定放手一搏讓一切超乎想像。發現人生原來可以過得如此精彩，冒險歷程遠比夢想更加壯觀動人！'
,'https://www.youtube.com/embed/v5fIgF1wefU',NULL,NULL),('脫稿玩家',3,13,'劇情片/奇幻片','n','assets/img/freeguy.png',13,'薛恩．李維','萊恩．雷諾斯、茱蒂．康默','1小時55分鐘','保護級','全球票房破3億3千萬美金','首週末票房2840萬美元，位居當週票房榜首。',
'台北票房破2千3百萬','故事描述一個銀行小職員 - 蓋伊 (萊恩雷諾斯 飾) 日復一日年復一年做著無聊的工作，過著樸實無華的生活，直到有一天他突然發現自己是一個暴力電玩中可有可無的配角，他想要突破現狀，但這個動作竟讓整個遊戲大變調，除了要挑戰層層關卡，還要拯救世界，更重要的是否能從C咖一躍成A咖呢？'
,'https://www.youtube.com/embed/aVHJ3eLFFdM',NULL,NULL),('金牌特務:金士曼起源',4,14,'劇情片','n','assets/img/kingsman.png',14,'馬修．范恩','雷夫．范恩斯、潔瑪．艾特頓','2小時11分鐘',
'輔15級','爛番茄評價5.1級分','全美票房3700萬美元','知名導演「馬修．范恩」最新劇作','當史上最殘暴的暴君與犯罪主謀齊聚一堂，密謀策劃一場足以讓世上數百萬人斷命的血腥戰爭時， 一位偉大的紳士挺身而出，憑藉著他兒子的幫助、可靠的助手，以及風格極致的裝備， 他們將分秒必爭地阻止這場悲劇發生，而這就是「金牌特務」的誕生。'
,'https://www.youtube.com/embed/OxSiqkX4nAs',NULL,NULL),('歌喉讚',5,15,'劇情片','n','assets/img/pitchperfect.png',15,'傑森．摩爾','安娜·坎卓克、安娜·坎普、布蘭妮·史諾、瑞貝爾·威爾森','1小時52分鐘',
'保護級','全美票房6500萬美元','音樂喜劇片票房史上上映首周第二高的電影','爛番茄評價榮獲81%好評',
'安娜坎卓克與瑞貝爾威爾森主演。電影描述大學新鮮人貝卡，加入一個由甜姐兒、惡毒美眉、怪咖女生所組成的阿卡貝拉樂團， 與其他團體在全國大賽中一決勝負。'
,'https://www.youtube.com/embed/oEU3yB9ppag',NULL,NULL),('月老',6,16,'劇情片/奇幻片','n','assets/img/moon.jpg',16,'九把刀','柯震東、王淨','2小時08分鐘','輔12級',
'入圍第 58 屆金馬獎 11 項大獎','入圍香港電影金像獎-最佳亞洲華語電影','入圍 2022 台北電影節 11 項大獎','慘遭雷擊而死的阿綸（柯震東 飾）來到陰間，生前所有記憶歸零。阿綸決定成為月老新鮮人， 他與個性爆衝粉紅女Pinky（王淨 飾）搭檔，來到人間執行任務，當阿綸遇見狗狗阿魯以及牽著他的主人小咪時，他前世的記憶都回來了， 小咪（宋芸樺 飾）就是他生前的摯愛。阿綸希望能幫助陽間的小咪尋得新的姻緣，但每一條綁在小咪手上的紅線竟然都被燒毀！原來，有些事，一萬年也不會變…',
'https://www.youtube.com/embed/gEqXgmrgGgM',NULL,NULL),('神力女超人',7,17,'劇情片/奇幻片','n','assets/img/powerwomen.png',17,'派蒂·珍金斯','蓋兒·加朵、克里斯·潘恩','2小時31分鐘','保護級','全球票房1.66億美元','全臺首週票房達9757萬','爛番茄評價6.1級分',
'承襲《神力女超人》的強大聲勢，蓋兒加朵再度於《神力女超人1984》行俠仗義； 但命運並沒有想讓她太安逸，蓋兒加朵不僅要在《神力女超人1984》迎戰兩大反派「豹女」與「麥斯威爾羅德」， 還可能再次失去摯愛史提夫？',
'https://www.youtube.com/embed/i2_rubmMj0I',NULL,NULL),('猛禽小隊:小丑女大解放',8,18,'劇情片/奇幻片','n','assets/img/bridsofprey.png',18,'閻羽茜','瑪格·羅比、瑪麗伊莉莎白文斯蒂德','1小時49分鐘','輔12級','全球票房累計達2.01億美元','北美首周票房1300萬美元',
'爛番茄評價6.8級分','《猛禽小隊：小丑女大解放》構想來自DC同名漫畫，敘述一個不可能的組合，小丑女哈莉奎茵、黑金絲雀、女獵手與芮妮蒙托亞聯手， 企圖從高譚市著名的犯罪首腦：「黑面具」手中拯救出一位名為卡珊卓拉該隱的小女孩。'
,'https://www.youtube.com/embed/RmgzaWpkNkA',NULL,NULL),('葉問4',9,19,'劇情片','n','assets/img/kongfu.png',19,'葉偉信','甄子丹、陳國坤','1小時45分鐘','輔12級','香港上映首三日累積750萬港幣','全台票房1.85億元','獲得爛番茄評論87%新鮮度',
'故事延續上一集劇情，葉問妻子罹癌病逝，葉問與幼子葉正一起生活，但兩人產生不少衝突。 身為葉問最出名的徒弟，李小龍的事蹟眾所周知，這集故事的開頭就是葉問應李小龍的邀請， 到美國舊金山觀看空手道大賽，並且希望將葉正送到美國唸書而先去美國找學校的探路之旅。',
'https://www.youtube.com/embed/YrtreI7lkys',NULL,NULL),('靈魂急轉彎',10,20,'動畫片','n','assets/img/soul.png',20,'彼特·達克特','傑米·福克斯、蒂娜·費','1小時47分鐘','普通級','入圍第 48 屆安妮獎 10 項大獎','榮獲第 93 屆奧斯卡金像獎「最佳原創配樂」「最佳動畫長片」'
,'爛番茄評價認可度高達九成五','一名對音樂失去熱情的音樂家，無意間遇上靈魂出竅的事件，他迷失到了「投胎先修班」， 在那裡靈魂會塑造出自己的個性、怪癖與興趣，再進入人世。為了找到返回自己身體的方法， 他得幫助一位孤魂「22」。',
'https://www.youtube.com/embed/-RAdHJ-aquE',NULL,NULL),('咒術迴戰0',11,21,'動畫片','n','assets/img/purelove.png',21,'朴性厚','緒方惠美、花澤香菜','1小時45分鐘','輔12級','全日首周票房26.9億日圓','全臺票房累積2.3億新台幣','入圍第 45 屆日本電影學院獎「最佳動畫獎」',
'自幼感情極好的乙骨憂太與祈本里香約好長大後要結婚，卻不料里香因死亡車禍化為強大怨靈依附在憂太身邊， 為此所苦的憂太一心求死，之後在五條悟的帶領下進入咒術高專結識了新同學：禪院真希、狗卷棘與熊貓， 他決定在這裡找到活下去的自信並解除里香的詛咒。意欲奪取里香強大怨靈力量的夏油傑宣布在12月24日舉行「百鬼夜行」， 在新宿與京都釋出上千個詛咒。面臨如此重大浩劫，憂太能否阻止夏油的野心並解開里香的詛咒？',
'https://www.youtube.com/embed/39qGk7E6OuY',NULL,NULL),('你的名字',12,22,'動畫片','n','assets/img/yourname.png',22,'新海誠','神木隆之介、上白石萌音','1小時46分鐘',
'普通級','日本票房累積高達 250.3 億日圓','全臺首週票房突破 6400 萬元','日本網路雜誌《Japan Web Magazine》評選30部最佳日本動畫電影榮獲第三',
'高校男孩立花瀧（神木隆之介 飾）在半夢半醒間睜開睡眼，竟發現自己身處不知名的房間，甚至發現自己變成一個陌生女孩！而遠在他方的高校女生宮水三葉（上白石萌音 飾）， 醒來時也發現自己變成男孩，原來是他們的身體對調了！驚醒的兩人跳起床後發現又回到了自己的身體裡，但只要睡覺或半...',
'https://www.youtube.com/embed/kkBdOiaDmRc',NULL,NULL),('龍貓',13,23,'動畫片','n','assets/img/totoro.png',23,'宮崎駿','日高範子、坂本千夏、糸井重里 、北林谷栄','1小時22分鐘','普通級','英國《Empire》雜誌評選世界前百大電影第 41 名','獲選第 24 屆電影藝術十大電影第一名',
'獲選第 10 屆橫濱電影節第二名','念小學的小月和四歲的妹妹小梅，在媽媽住院期間，跟著爸爸搬到郊外的一間舊屋住， 在那個被人戲稱為「鬼屋」的新家裡，她們的生活有了許多有趣的新發現，包括傳說中的龍貓... 有一天，思念媽媽的小梅決定去醫院探望她，卻在途中迷路了，大龍貓會出現幫助小月找回小梅嗎？',
'https://www.youtube.com/embed/GnTd7qDCu_8',NULL,NULL),('神隱少女',14,24,'動畫片','n','assets/img/spiritedaway.png',24,'宮崎駿','柊瑠美、入野自由','2小時04分鐘','普通級','獲選第52屆柏林影展金熊獎','獲選第 75 屆奧斯卡金像獎「最佳動畫片獎」','獲選第 30 屆安妮獎「最佳動畫片獎」',
'隧道的另一端，是一個不可思議的地方！ 一個不可能有的地點，一個不可能的事情竟然發生。 10歲的少女千尋和父母，被捲入人類不能踏入的世界。 在這個處處令人驚訝的地方，千尋感受到強大的無力感…和渺小的希望。 讓我在這裡工作吧！ 為解救被變成動物的父母，千尋求生的力量原本是沉睡的，現在終於被喚醒！',
'hhttps://www.youtube.com/embed/ByXuk9QqQkkttps://youtu.be/ByXuk9QqQkk',NULL,NULL),('霍爾的移動城堡',15,25,'動畫片','n','assets/img/hower.png',25,'宮崎駿','倍賞千恵子、木村拓哉','1小時59分鐘','普通級','全臺票房累積 9545 萬元','獲選第 62 屆威尼斯影展「傑出動畫獎」',
'入圍第 78 屆奧斯卡金像獎「最佳動畫片獎」','愛國主義的全盛時期，國家的士兵們正準備遠赴戰地。在荒郊野外裡，竟出現一個傳說專吃美女心臟的巫師霍爾， 及他所居住的移動城堡。在荒郊附近的城鎮，有位名叫蘇菲的18 歲少女，在父親遺留的帽子店認真工作的她， 有天在街上被士兵騷擾巧遇美男子霍爾搭救，好像在被什麼追趕的霍爾，忽然抱起蘇菲一同飛上天空漫步， 蘇菲的心從此深深地被霍爾吸引…',
'https://www.youtube.com/embed/iwROgK94zcM',NULL,NULL),('崖上的波妞',16,26,'動畫片','n','assets/img/ponyo.png',26,'宮崎駿','奈良柚莉愛、土井洋輝','1小時41分鐘','普通級','入選第 65 屆威尼斯影展金獅獎','獲選第 3 屆亞洲電影大獎「最佳原創音樂」','獲選第 32 屆日本電影金像獎「最優秀動畫電影」等三項大獎',
'故事敘述五歲的宗介與媽媽理莎，住在一個靠海小村莊的山崖上。 身為船長的爸爸長年出海，留下宗介與媽媽相依為命。一天當他在山崖下岩石遍佈的海灘上玩耍時， 撿到了一隻困在玻璃瓶裡的人魚─波妞，宗介救出波妞兩人因此成為好朋友，但是波妞的父親─魔法師藤本， 逼著波妞跟他回到海裡…',
'https://www.youtube.com/embed/CsR3KVgBzSM',NULL,NULL),('奇異博士2:失控多重宇宙',17,27,'奇幻片','n','assets/img/doctorstrange.png',27,'山姆·萊米','班奈狄克·康柏拜區、伊莉莎白·歐森','2小時06分鐘','輔12級',
'北美首日票房累積9000萬美元','北美首日票房累積9000萬美元','全臺票房突破1.71億元','漫威影業2022年重磅鉅作，重新定義大銀幕視覺饗宴。',
'https://www.youtube.com/embed/aWzlQ2N6qqg',NULL,NULL),('蜘蛛人:無家日',18,28,'奇幻片','n','assets/img/spiderman.png',28,'強·華茲','湯姆·霍蘭德、贊達亞','2小時28分鐘','普通級','北美首日票房1.218億美元','全球票房累積18.92億美元','榮獲第 94 屆奧斯卡金像獎「最佳視覺效果獎」','索尼與漫威拍攝的湯姆霍蘭德新版蜘蛛人三部曲。彼得帕克的蜘蛛人身分曝光， 再也無法回到原本平凡的生活，當他向奇異博士史傳奇尋求幫助，讓他重新回到沒有人知道他是蜘蛛人的那一刻， 一切情形反而更加混亂。','https://www.youtube.com/embed/JgWGVmgn8EA',NULL,NULL);

select*from perflim;

drop table if exists cart;
create table cart(
id varchar(15) default null,
quantity varchar(10) default null,
product_id varchar(20) default null,
price varchar(20),
img varchar(100),
totalpri varchar(20)

);
select*from cart where id="qwe";
SELECT * FROM `perflim` where product_id;

drop table if exists totalprice;
create table totalprice(
totalpri varchar(20) default null,
totalpri_id int(20) NOT NULL AUTO_INCREMENT,
UNIQUE KEY (totalpri_id)
);
select*from totalprice;



drop table if exists ordersdetail;
create table ordersdetail(
user_id varchar(15)not null,
`name` varchar(10) not null,
address varchar(30) not null,
pay varchar(100) not null,
other varchar(50) default null,
order_id int(15) NOT NULL AUTO_INCREMENT ,
PRIMARY KEY (order_id)
);
select*from ordersdetail;


drop table if exists orders;
create table orders(
user_id varchar(200) not null,
quantity varchar(20),
product_id int(10),
order_id int(15) NOT NULL AUTO_INCREMENT ,
PRIMARY KEY (order_id)
);
select*from orders;

