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

insert into `fooddetails` (`fid`,`dishName`,`amount`,`FoodCategory`,`MenuCategory`,`info`,`img`) values (6,'Rice','200','North indian','Main Dish','mn7ubyvt mnub6yvtcr mnbvcrx','����\0JFIF\0\0\0\0\0\0��\0�\0\n\Z\Z\Z\Z\Z!.%+&8&+/1555\Z$;@;3?.4514+$+44444444444444444444444444444444444444444414444444��\0\0�=\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\08\0\0\0\0\0\0!1AQaq\"��2����BR��#���r3���\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0#\0\0\0\0\0\0\0\0!1QAa\"2��\0\0\0?\0���J�r�ː�r�(R�U+�LB�1BA��09�B��18Zߦ{���,1˖���c4��+��#8-gk\r�R���L�0��2ə��h���h��p�*[�+�g�Z��P9,A�z��T�#�l���8����l�e/#�l��B����1O柔/\Z�\\�ۍ;�fc\Zu�/\ZiB�j�V�D�\n%D�%r�\\��]* %D�\\��r�.\\�\0��RW(\\��� %B�	\\�rT.X��2�����[�#O�c��M�.\'��Y��f��q�IV`Qi���T��a��{����2��`�&�0D��0��R�u*U������s^����A\'��[ 0_M�PGq��l΋�b��{r:`Ƈ�Uj\ZƆ�Xi7>���Q�ZgX��V\r����i�TsKcO<�e�����R�vS��Hn�y#cO<��0��.gϟu�m�I��3b5�i���B���h52\\o�r^{�U4\\�.�M�l��g��k��F��M2�?�u�������9�����|�e9X9�%J*҃Yr��@J��)P�%%r��	P�BT.����	$�\'�Q+���#>�oԥn��G���Y�Ԭ���+gP��Kj^X>V�6\Zts�m����d��?�\0�\r���A��]<�H�*B�\"ʙ�D�W5�i��B��d*6�y�g�,��ȝye�Sb\Z�\nϦl)-r	mV��\"B1�ò¬x���\"1��Y	w��4�\'���Umi��QP�YFl�]Q�T�vE�\"`�x�ů�\"Z25�kDK�=�_d�9�x��s?K�(����g�b�\n�c�Gf=�Y�i?���X\\T���h�Go����+E�:}��~��?p�^��\n�\\��+��+��(*҆\n�A��T2�:�y�o����y�7Ԭ�ߋk��k�\'Ԭ2����я���ܮ���q�Y��v\0#���$j�{�~�?�a���{�t�V��״I�����1\r\"A[�9�\0�9�yay\ZT��B�Qhȷ�da�W�s�$����.�/O�V@+;�OѼ6\n�F�1�\Z`�O=��q.��}%GuV1�˘܍���^�J�]��8g�M���A�߇0�Xɩ#@֞\\�-�)��4�J���ld��%V��P]\\|yI��Ԋ��[�Tod� ��}\0\\,lN��\\�X�D��_�o�4��z	Uc�ӕ�Ll��9��<�&�:���^���N�_T�\0�*N��ơU�A���ODuK�j�����&�\0)F`-�)Am�-\r�.�r��Tѧ�o���4+&K�à�z�8���hD��I�Ĩ�{Ǹ��A�\"����+6�W��ܯ �;�DH���Tc���k0�bc����;�\"^����iu7̃���5d:�)����|�̫���SUv��K�����W���UR�>`�9�i��������Sn�W�c��)N��\0I��蛧H�G�\0���&�J��G��j��Zڄ�3G�K�c�?<U_f���w%|ScXƧ����]�������Y�4�f4����X�=��weӊv��n���7��ge�A�#���Z=\'��ᖳ�.4rܻ�^�%0��1�I1y�wG�T�r&��*�*�����=�5_s�&���M�X�\r���Yp�[�a��-��C@$���T�/j�]�92�~�,�B{���\nA�Zn\Z`8r���GWc�6\"�F��YQ�mm�j,y�@�.�4��ZR�[�5�F����LRp2��T:1+A�X#^���(*�E����Xܱ�(���z!ԩ$r�{985�o�T�����i�X���DZ4�;�y�αno�����\0�� N�G���&!�eă�;�׎��N R,ak�tAl��M�bT��Zƒ�\Z���i,W\Zc@�M�-\rI�� n�������k.��m��I�/��{��H��:���X����p(Mz��f3J#J]�Ek�1�V\r�ZPl`��T�:\0%1\\o	Oߨ	���/?��o�\n��������z�7��ƴ8��j��y^3����{�\rB,?���R��?�V�f������\\S;���7�s����?�����\\�\\nJ��7��^B��@��\'���p�j8��ۺ��Y�iѣ\r\'�]���	�R����O+��G<g�&�O��@#I�N1�)�tŗ�O���|Q��\0^H�`@�3�-�5,�l�n�F�������Ǔ\'i#~K�`�7��Jl�R�iP�R\\���u�qp*���LC\0��E6��{��d1�Гn_.��̑��~�ktKR�O�>�\Z*�1ai���G���>i������Q�}��-��O�$�G�S`L%�\0L��v�M6�\'E?`��H��$nmtAPɒ�;�+U.�8��Ɇ;B3i}`r�Q�J��\r��(C��#��/\\9�8����\"�\0�5O}����r>��P�͓���lU��l弉��ȥ�-a��\Z��n{XL�9a�b����p~-Q���s|E���L�\Z-|k�����$��lgD�/��J�{�páp\"ӷ^���KV�ʵ�\0\Z,ܭ�ۗ5��d�x%\Z\'U��2�h�H���|�k~����ǻ���>���\'.��f= �ǫb}�DiJ���rfa�^P�U�T|P5����`����?����}lp�CFEa�`�(�q�Y�o��T�S\r�pn�a�XQ\n��n\n��0�0ݓ��^��дY�*�+��s�҂z�9V�\0�0�5�?I���X���9����|1��i���i�+lTvp\Zǁ������������ݱ��p\\m��036���kbߺ��7��\\��P�!+M��|�s\r;�m����7d!�+��u��\'�UJ8ƛ�:�w�����^�1�<�\"T6�}&-�J��4\\��mu�U����y$��s��X�<�FC^D@��Tyn��7M\Z\"d��0��u��9�����!�u�L\r%^Z�������k�yu�Y�!��]#�I�%����g����Tǚb�0Β or9 �y`k�%δ\r\0ܩ�F�w� ��L�8\"�_^�h�a�+4�������i �o�*��1�NgA~�O-��5t�v���ށꏖ���I�q,.\r�r�o=�N>@��,�儌�Q7\n�heIa�C@���2�H;A�\"�=�\Z֘#�+l$,n<Ԛm��$�2��OD�	Lf�n��(�-�%p��6�C���>]��z��)�~+/�k����ʕX���ʖ�Tҩ�5M�nY�rn������c�AA���Ne�N���܎��V��/�g�Ɏ}V��ya�kJ�\nu�L4�����\n�@X+*�(\n�`p-\"A�@��u�;��o%�tC�\"4<�F��>�)�}�c~�2�l���lak�lL��g3�H\"�o�sQjQk�=�����e��sI;�nS�h��m{dN�V�=�\\u��cs���&z]z@�!�\rkD\\�f�o��\\H��B�5�	p��c�J>� ��|DM�[�{ ?��\rg����Iq�ר河���v�`e�F�LmI�#��c�0�\\������`������/�����M\\�|�Uk1���9E�l\\�0�	���^9�n!��-$&HE��M�N5K\0��� jzΊ���,c���挶�{��������61��E�pl�C����d	���K�������$���pOmBA��׸��s������&7�,K����\"�[�P��iDr�m��#wK3\"/a�jBK�a�j�\0A�{� �T�x��Sٜ�>_�WB�����_klD��UqyO\\�eB$���&���QuWR��H.�1�|��Uj>���`��e�\0��ò��r{M�`0@>kR�+���F�W\"j�l cqm��:�5���!c��)��yу^�XOs���2��h���W&�NYk�&w\\�s�\nAT\nU��wt@WJ��Pb51H�ؘ��9L�J�L�B�Q�n�m�vU�`�#�?�od�L<����\ZKo��n>�x�ۍ�{7YM2���e&F�m�q��3����F�5����5b��|\'�1���|�\0�\\t�,z(+���ǭ,e)�T�r�(5�U�Y\r�q4���j�s	��쯆Ύ���G��\\�U�p-pA�Sq���_U{���d��ob}�9J@P���7KC��\0Wj��	�X�<�v���!E�����X�d�qb;��_��}Z�Zs�\\����X��AHf�,F�����FN�DU{ܧ��D��A�:@�g�i��uLv=�\\�ȹ�)��x[[��ą7�Ɂ��5X�װ���t�4X4+�a��\Z�|����ٙ-�ͽ\nHp�~�ga��\Z� h\r���V��0�;�����x|:�_4A�0ᯠ\\� \0�.c�sw�Dੈ��im;&I��<Eɟ��6�1Mƣ\\M�l6 �܍f�\08O~!�5�d�=�,m�d�c��L�G��r�h\0쉈���r��c����`�|C��\\���)����Y��}��v�Tĭ.� h\0Wʈ���$��`��\0S�c;�<��OD׫U�is�kF����\0\r7w��i����Ԩ��\\vn���kUL}��9:s��uq�=ʲ�*�[�.\\�v��j+�s\Z����EcPk�GL�|5l��\0�D�K��䳨�����$t6^;׳�|m�)���	�m~+-�1��\r0��\0�����dJ��/�k���2�T��0�ey�j��n]���c�AKS(�**��W��r\' ��9�*�.\\�˘�-�	oA���+�-���b��W(nj^3�S;�+1T����h�+5�X�-�\\[��e>5S,[YT\Zaa;�n�=Z\n��[5,?�~�j�W�>��R)���q�VŃ�O�)S�c\'�\0cGf7�_Cx�{?f*9�ԁ܀�N#�v�]�CG�%P{Ğ��?\Z��>��ǰ̶|Ǔ<Ed��ڛ2�}�������1O�c�7���b*V?�s���F�E�6�i�\'L�W.�c�j�b�H\n�b�X�j�X��h�bA5��b+Z�� *�+��5\\�B���');

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
