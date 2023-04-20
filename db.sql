/*
SQLyog - Free MySQL GUI v5.17
Host - 8.0.26 : Database - food_factory
*********************************************************************
Server version : 8.0.26
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `food_factory`;

USE `food_factory`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `fooddetails` */

DROP TABLE IF EXISTS `fooddetails`;

CREATE TABLE `fooddetails` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `dishName` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `FoodCategory` varchar(100) DEFAULT NULL,
  `MenuCategory` varchar(100) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `img` mediumblob,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `fooddetails` */

insert into `fooddetails` (`fid`,`dishName`,`amount`,`FoodCategory`,`MenuCategory`,`info`,`img`) values (6,'Rice','200','North indian','Main Dish','mn7ubyvt mnub6yvtcr mnbvcrx','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0\n\Z\Z\Z\Z\Z!.%+&8&+/1555\Z$;@;3?.4514+$+44444444444444444444444444444444444444444414444444ÿÀ\0\0Ÿ=\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\08\0\0\0\0\0\0!1AQaq\"‘2¡±ÁÑBRáð#‚’ñr3¢ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0#\0\0\0\0\0\0\0\0!1QAa\"2ÿÚ\0\0\0?\0ú’•J¢råË¡rä(R¹U+®LB‡1BA‘Ä09¼BÎæ±18Zß¦{ìµ£,1Ë–˜ü¹c4ñ¿ð+î‚#8-gk\rä¯RçªñL¥0Æù2É™‡à­h…¡‡Â†h¨ìpØ*[¹+ògãZ¬„P9,AŠz°ÅTæ#ñlå‚Æ8‡Êïlþe/#ñl¸BÉöïæ¬1OæŸ”/\ZÓ\\³Û;„fc\ZuÜ/\ZiB£j¡V•D•\n%D %r‰\\€™]* %D®\\€â¹rä.\\¹\0â•’RW(\\€•Ê %Bå	\\¡rT.Xøþ2†Îîû[¡#O‰c¸ÇMý.\'Š—Y‚Åf½îq—IV`Qiˆç¸êT†¢a°Î{²·Ìì2¶¨`&¼0Dè…0Ú€RÊu*U‚ÂÁ¿†Às^†¦ÝA\'œŸ[ 0_MÃPGq˜ÒlÎ‹Ób°ì{r:`Æ‡—Uj\ZÆ†´Xi7>¥ŠþQ ZgXØòV\r¨ØôëiÏTsKcO<úe¾ðïÉR¤vSû…HnÀy#cO<¤¾0ìˆÊ.gÏŸumàIéÉ3b5§i¶ªí®BÒÁÐh52\\oÐr^{ŽU4\\Ð.×M÷l”¥g¶£k¯íF¬‰M2§?çu¤¬òÇÑàõ9’ÁêÁé |Êe9X9±%J*ÒƒYr¬©@Jå)P¹%%r…È	P¹BT.•¦¸¸	$À\'Q+ÏñÎ#>›oÔ¥n„›Gâ¥òÆY¿Ô¬à€×+gP¡¥Kj^X>V 6\Zts¬mÖþÒdî?Å\0Ï\rÀ¶›A˜€]<ãHèœ*Bâ…\"Ê™ÔDÚW5€iªžB¤d*6µîƒˆyÐgÍ,íãÈyeéSb\Zë\nÏ¦l)-r	mV˜©\"B1²Ã²Â¬xÍêÜ\"1…§Y	w¸æ4Ý\'òí…Umi±òQPÁYFl´]QÁTœvEØ\"`ÍxïÅ¯«\"Z25ãkDKØ=Ä_d†9­x‡ås?K€(òÐÖÞg‡bÁ\nÖc–GÂŠf=ÐY i?§¡X\\T…¤¨h‡Go—ìˆ€Ç+E¶:}•ã~‘–?pÃ^¬€\n³\\š‡+€×+‚€(*Ò†\n™Aˆ¹T2ƒ:¡yÌoâú³žy‹7Ô¬šß‹k»Ýkå\'Ô¬2ùðÇíÑãç—ÓÜ®•óçqüYüäv\0#áøÖ$jò{€~‹?åaê¯ø™{t¢V—×´IÑÍú…°1\r\"A[áž9ÿ\0–9üyay\ZT…íBáQhÈ·ÅdaæW‘sÉ$•§øƒ./OÞV@+;ËOÑ¼6\n¥F—1²\Z`ÜO=ÛÂq.Â™Žâ}%GuV1ŽË˜Ü€Ÿ€^ËJ«]•ä8g‹Mìç÷AÂß‡0µXÉ©#@Öž\\ú-‡)œ•4J²„€ld«š%V»ËP]\\|yIÁêÔŠ­›[ŸTodÒ ƒæ—}\0\\,lNóÑ\\çXõD·ì_ÐoÂŒ¤4öz	UcÜÓ•ÄLlŽö9½µ<Ñ&½:£Äö^¨ñøNÃ_TË\0â*N¥ Æ¡U’AÞúODuKéj•À°Ý–&ÿ\0)F`-Ö)Amã-\r·.ªrÞøTÑ§²o¢ÏÄ4+&KãÃ øzª8µÒ×hD©ñIÄ¨Ñ{Ç¸€ãšA¸\"à‰²ó¼+6ä½Wá”ÞÜ¯ å;‚DHê¼ÎƒTcŸ™ìk0òbc¦Êñ©­ì;Ó\"^¬…¨Åiu7Ìƒ¨±ú5d:ƒ)þÓØè|Ì««•–SUv¹®K«´¦‘ÁW¥’¦UR…>`À9Êi”ÎÃÕ„Ž‰æSnÂWcÛò)N‰ÿ\0I¦Òè›§HòGÿ\0×Ñ&äJ…ò¸GÀãŽj¡¦ZÚ„ð3GšK‹c?<U_fÐæw%|ScXÆ§›Éõ]¿‰…ÝÉÇùYË4Øf4§°ø©X=ÕweÓŠvÌân—ž‰7ƒ²geçºAÌ#˜ù¬Z=\'áîá–³ü.4rÜ»¸^¤%0•³1¦I1yÖwGìTÚr&óÑ*‹*¹ðŽ·=È5_s²&¨™ÑM§Xæ\r‹ÝøYpñ[¢aÌÊ-¹ÙC@$ÐîTÙ/j—]‹92¶~éª,ÉB{ã–öú\nAðZn\Z`8r‰ýôGWc¸6\"©F¼•YQÀmm©j,yŽ@Î.¬4óˆ›ZR™[º5®F¤ÜíõLRp2³™T:1+A¹X#^éã–Ë(*úE¹ áÜXÜ±Ì(ÄÕñz!Ô©$rÂ•³{985ñoèTÜÓêªçæiXýŽßDZ4¦;Üy›Î±noä¼×ÇÓö\0äÌ N¢G…íæ½&!ÞeÄƒá›;¥×ŽÇáN R,akˆtAlÁM•bTß ZÆ’É\Zù­Úi,W\Zc@¥M­-\rI°Ú n‹©™ ßÍk.ÙØmí‘ì…Iò/¨{ƒä˜HÃÞ:ƒêÔXöŒ§¥p(Mz¼«f3J#J]®Ek’1V\r¥ZPl`ùTÕ:\0%1\\o	Oß¨	äßø/?üoµ\nÞûù†ªòæz·7­¨Æ´8†´jçÍy^3ø¹­˜{\rB,?èÝÏR¼ž?ŠV®f£Üþ“€²\\S;­ðø7ÍsçóÉÄ?ƒÇ¸¸’\\í\\nJôÜ7ˆæ±^BžÇ@·ø\'©˜»pâj8òÊÛºõ”Y™iÑ£\r\'¡]€ÂÀ	÷R–‘ÌðO+Å÷G<gº&êOÎÝ@#IÕN1ž)çtÅ—ÓO·¡á|Qõª\0^H‚`@¿3Ì-œ5,®l¾nëF¹—˜à¬¨Ç“\'i#~KÖ`¹7Ü¤JlåRðiP‰R\\¹Æ¤u¡qp*…òªLC\0çE6ž—{‰ód1†Ð“n_.ÊôÌ‘¡~êktKRóO¤>¨\Z*æ1ai¿žéG±äë>iöí¥ ¥¶šQø}“Ñ-ˆ«O—$ÍG»S`L%\0LÎæv×M6û\'E?`Òð¾H·å$nmtAPÉ’‘;¤+U.ð8‘ÊÉ†;B3i}`rõQ¿J°É\rü¿(Cßá#ùÙ/\\9 8¹™ø\"¸\05O}¨ü¤r>¶è­PµÍ“¾º…lU‘âlå¼‰‘ÛÈ¥ñ-a‚¡\Zäún{XLå9aÆbÛÞëÍp~-QŒþ°s|E³‘ÀL™\Z-|kœš›¤‰$ÚÀlgD¾/’–JÎ{ÙpÃ¡p\"Ó·^Š±…KV¬Êµ¤\0\Z,Ü­ŒÛ—5»†dçx%\Z\'Uéè2ËhÈH²ÍÆ|ók~–«‚ÉÇ»Åüä>²œî\'.ªôf= ŠÇ«b}®DiJ±èìrfa¥^PšUÒT|P5î³ãÕß`š¡Á«?Þ¶ƒÑ}lpºCFEa`Ø(Çqé¦Yå—o›á¿TåS\røpn¶aÉXQ\nÐó¸n\nÖìµ0Ø0Ý“þÍ^›²Ð´YÀ*°+ Þs‰Ò‚z÷9Vÿ\0£0íŒ5Ý?Iõ·˜X¦žË9é¥öÑá|1ïÎiÈíåºi¡+lTvp\ZÇ åð´ô™¡‹ªÈÈã¤Ý±Ûìµp\\m ¿036»ŒôkbßºœŽ7‡„\\ùóPã!+MùÉ|˜s\r;šmÎãÑ½7d!‡+ÁuÀî\'’UJ8Æ›ü:®w„€ŽüÕ^ó 1±<»\"T6ƒ}&-è¡J½ 4\\¶ómuÑUõ§Ýþy$ªÕs¤´Xë<¡FC^D@˜êTynêµ7M\Z\"d‹ª0—‚u¸æ9£µûôÕ!Œuó—L\r%^Zœ”äÞÅÔÆkyuòYî«•å³!ŽÊ]#ªIõ%ù™¦¤g²ÎåÄTÇšb­0Î’ or9 Ðy`kœ%Î´\r\0Ü©«F¦w° ›õLÃ8\"à_^ÉhÖaç+4‰“¹½¹¢ˆi ÷oÙ*âú1˜NgA~ÂO-•±5tƒvžœ“Þê–“ƒòI×q,.\rÌr˜o=ÀN>@¸›,Œå„ŒÃQ7\nïheIa’C@¹¥²2èH;Aþ\"ö=Ù\ZÖ˜#Ç+l$,n<ÔšmŒä‡$ƒ2ÓÓODÎ	Lf‘nÎà(Ä-†%pÔá6®CÊÄÅ>]ÚÞzŸ‰)Ü~+/„kü¿¢Ê•X³Îñ¤Ê–¹TÒ©œ5MéªnYÌrn“Ð°¢‚—c‘AA™öNeN³´ÑÜŽ‡±V§Ä/Åg‡ÉŽ}VÙüyaÜkJ„\nuL4­íÁ¨­\n°@X+*…(\nÔ`p-\"A±@´uó;ïÕo%±tCÇ\"4<ºFàî> )Ê}Åc~«2ƒl´°ºlakÈlLëÝg3ÂH\"æoÔsQjQkÄ=¯£ŸùšeÁŒsI;ënSÍháñm{dNƒV‘=¤\\uÍá¸cs²öÌ&z]z@©!¬\rkD\\éf´oè¦î\\H‡BŠ5÷	pºc´J>½ ø™|DM£[¶{ ?üÌ\rgˆÈ£ÝIq×¨æ²³–’ðv­`e­F½LmI¬#âc—0­\\†Ü¬Êøò`´Á˜õýÂ/õ¼ŽáüM\\¢|’Uk1àˆ’9EŠl\\¼0Ÿ	¹¤^9©n!€-$&HE»¢MÊN5K\0ñ™Ò jzÎŠ…ïÏ,cœÀöæŒ¶ƒ{“¥¶õ’³Ý61›´E‘pl¦CÜÌÐëd	¾€÷KÇèü•¥ˆ¦$ÝÂÃpOmBAØò×¸“Åsðú‚®úŒ&7Æ,K„ùÙ\"Ü[ßP‡°iDr‹mÝÑ#wK3\"/a¬jBKöa˜jæ\0AÏ{Ì îTð¬x¨çSÙœçœ>_©WB¤¸¹¤Ù_klD›‚UqyO\\ÌeB$àîÒ&ü–ÅQuWR©žH.—1¸|ñUj>£½ž`ÜÒe²\0‹ÂÃ²Üëºr{M¡`0@>kR+¢²œFˆW\"jÌl cqm¦Ù:›5»“Ð!cø‹)ÛÞyÑƒ^çXOsžüï2íéhäÑõW&úNYkš&w\\ë“sö\nAT\nU°·wt@WJ¢Pb51H¥Ø˜¦ƒ9L¦JÓL€B•Q¡n»mävUÄ`í#Ä?úodíL<ø†¼•\ZKo¨Ün>áx¸ÛÜ{7YM2©âœÇe&FÅmáqË3ŠášæûFÚ5óýþ©5bÕë|\'ý1Ýíæ|ÿ\0†\\tö,z(+Š•¤Ç­,e)TÊr°(5¥UåY\rèq4ƒúî¸jÔs	ˆÈì¯†ÎŽüŽžGòž‡â´\\ƒUp-pA¸Sqû‡Ž_U{¢³ªdÈ×ob}à9J@P¨Ãý7KCäÿ\0WjÞ×	ŠXæ›<ˆv‡³´!Eý´Ÿ¥¸XóŠ’d‡qb;Ÿ¢_‹Ö}Z¬Zs‚\\ááÜÌXÊÑAHfÌ,Fà•ÄæFN£DU{Ü§ÅÝDéºAø:@øg¶i×ùuLv=œ\\áÈ¹ß)„“x[[¤ŽÄ…7œÉ‡ã5Xâ×°»ÄètÜ4X4+Öa½\ZÏ|††ÀÙ™-ÜÍ½\nHpæ~”gašà\Zá h\rÀìåVÄã©0»;„½ÀµÚx|:ã_4AÅ0á¯ \\é \0ø.c‰swÓDà©ˆð‹im;&I¼‚<EÉŸìë6¥1MÆ£\\M‰l6 ÉÜfÿ\08O~!Æ5 d‡=±,mÜd€cµì¯L™G®ªr´h\0ì‰ˆ¹¨rµŽcÞÐÒÓ`Ý|C­þ\\°Ü)÷¯ÐY¿º}€”vµTÄ­.Ú h\0WÊˆ÷†‰$ÌÙ`ãÿ\0SÚc;½<÷òOD×«U¬isˆkF¤˜Æÿ\0\r7w‘ìiù•–çÔ¨ìÕ\\vnŒšškUL}³Ë9:s›’uq¹=Ê²å*Ù[·.\\¤v…Íj+ƒs\ZŽÀ¹ŒEcPkÓGL¡|5lÂÿ\0¸D­K–£ä³¨¼¶éÆÕ$t6^;×³ž|mù)¸¶Â	ém~+-…1ø‹\r0ÍÉ\0öŸö•¤dJîü/ók“òï2ÃT‚·0õeyæjµðn]µÄ×c‘AKS(Í**…•WÀ¨r\' ¸£9È*….\\ŽË˜³-÷	oA§ø›+Ê-÷„Žbß÷W(nj^3éS;ö+1TÏæ½¾hÖ+5ô‚XÑ-÷\\[Úße>5S,[YT\Zaa;ˆn•=Z\n§þ[5,?Ú~éjúW–>Ûæ˜R)…åêq¬VÅƒûOÝ)SŒc\'ÿ\0cGf7ê_Cxû{?f*9­ÔÜ€¼N#‰vµ]ØCGÕ%P{ÄžäŸÙ?\Z›ž>ÞçÇ°Ì¶|Ç“<Edâ¸Ú›2õ}Ïøªó¬¡üÑ1Oªcí7äõÄb*V?ÔsÈñF¡E–6ÊiÉ\'LîW.Õc°j°b¡H\níb»X€j»XŒÚhbA5ˆ¬b+Z®Ö *Ö+€¤5\\šB²ÿÙ');

/*Table structure for table `staffdetail` */

DROP TABLE IF EXISTS `staffdetail`;

CREATE TABLE `staffdetail` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `StaffName` varchar(100) DEFAULT NULL,
  `StaffEmail` varchar(100) DEFAULT NULL,
  `Staffmobile` varchar(100) DEFAULT NULL,
  `Staffsalary` varchar(100) DEFAULT NULL,
  `StaffType` varchar(100) DEFAULT NULL,
  `StaffInfo` varchar(500) DEFAULT NULL,
  `img` mediumblob,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `staffdetail` */

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
