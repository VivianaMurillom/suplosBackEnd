-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.14-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla intelcost_bienes.inmuebles

-- Volcando estructura de base de datos para intelcost_bienes

 /*!40100 DEFAULT CHARACTER SET utf8 */

CREATE TABLE IF NOT EXISTS `inmuebles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Direccion` longtext DEFAULT NULL,
  `Ciudad` varchar(100) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Codigo_Postal` varchar(10) DEFAULT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  `Precio` int(11) DEFAULT 0,
  `Estado` enum('No asignado','Asignado') DEFAULT 'No asignado',
  `Ip_asignada` varchar(50) DEFAULT '0',
  `fecha_asignacion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla intelcost_bienes.inmuebles: ~100 rows (aproximadamente)
INSERT INTO `inmuebles` (`Id`, `Direccion`, `Ciudad`, `Telefono`, `Codigo_Postal`, `Tipo`, `Precio`, `Estado`, `Ip_asignada`, `fecha_asignacion`) VALUES
	(1, 'Ap #549-7395 Ut Rd.', 'New York', '334-052-0954', '85328', 'Casa', 30746, 'No asignado', '0', NULL),
	(2, 'P.O. Box 657, 9831 Cursus St.', 'Orlando', '488-441-5521', '04436', 'Casa de Campo', 71045, 'No asignado', '0', NULL),
	(3, 'Ap #325-2507 Quisque Av.', 'Los Angeles', '623-807-2869', '89804', 'Casa de Campo', 36087, 'No asignado', '0', NULL),
	(4, '347-866 Laoreet Road', 'Los Angeles', '997-640-8188', '94526-134', 'Casa de Campo', 16048, 'No asignado', '0', NULL),
	(5, '4732 Ipsum. Rd.', 'Houston', '802-414-8872', '162925', 'Casa', 45912, 'No asignado', '0', NULL),
	(6, '672-9576 Consectetuer Road', 'Orlando', '355-601-5749', '210020', 'Casa de Campo', 64370, 'No asignado', '0', NULL),
	(7, '549-5766 Sodales St.', 'Orlando', '557-228-6918', '16794', 'Casa', 2846, 'No asignado', '0', NULL),
	(8, 'P.O. Box 847, 2589 In Av.', 'Washington', '390-713-8687', '70689', 'Apartamento', 60951, 'No asignado', '0', NULL),
	(9, '175-4344 Nec, Ave', 'Orlando', '578-170-6179', 'P0C 0G3', 'Casa de Campo', 58902, 'No asignado', '0', NULL),
	(10, 'P.O. Box 497, 8679 Turpis. St.', 'New York', '870-559-3430', '7029', 'Casa', 17759, 'No asignado', '0', NULL),
	(11, '844-8312 Molestie Road', 'Miami', '147-920-5435', '5237JG', 'Casa', 91067, 'No asignado', '0', NULL),
	(12, 'P.O. Box 494, 674 Amet, Street', 'New York', '056-617-2556', '684445', 'Casa', 36155, 'No asignado', '0', NULL),
	(13, 'P.O. Box 466, 2795 Velit. Avenue', 'New York', '252-330-0116', '5422', 'Apartamento', 78947, 'No asignado', '0', NULL),
	(14, 'P.O. Box 523, 2126 Aliquet Rd.', 'Orlando', '986-825-6899', '37045', 'Casa de Campo', 51817, 'No asignado', '0', NULL),
	(15, 'Ap #669-7718 Cras St.', 'New York', '200-935-8531', 'RI9 6RT', 'Casa', 39561, 'No asignado', '0', NULL),
	(16, '2211 Malesuada Rd.', 'Los Angeles', '436-742-7954', '31519', 'Apartamento', 52433, 'No asignado', '0', NULL),
	(17, 'P.O. Box 181, 7858 Nisi. St.', 'Houston', '383-252-8216', '83594', 'Apartamento', 85641, 'No asignado', '0', NULL),
	(18, '741-2614 Accumsan Rd.', 'Miami', '487-609-0106', '753543', 'Casa de Campo', 78854, 'No asignado', '0', NULL),
	(19, '829-3250 In Rd.', 'New York', '788-832-7076', '783917', 'Casa de Campo', 64471, 'No asignado', '0', NULL),
	(20, 'Ap #393-3363 Fringilla Road', 'Orlando', '335-278-9678', '8635', 'Apartamento', 47420, 'No asignado', '0', NULL),
	(21, 'Ap #247-8024 Curabitur St.', 'Miami', '167-013-1429', '15971', 'Casa de Campo', 28795, 'No asignado', '0', NULL),
	(22, '995-1099 Id, Road', 'Washington', '491-394-8799', '37-346', 'Apartamento', 69505, 'No asignado', '0', NULL),
	(23, 'Ap #176-8333 Gravida St.', 'Miami', '339-324-8859', '0318YB', 'Casa de Campo', 73231, 'No asignado', '0', NULL),
	(24, '340-985 Lobortis. Avenue', 'Washington', '049-063-4896', '5411', 'Casa de Campo', 83847, 'No asignado', '0', NULL),
	(25, '992-7214 Pharetra Rd.', 'Miami', '257-364-7011', '1045SO', 'Casa', 93907, 'No asignado', '0', NULL),
	(26, '7705 Fusce St.', 'Washington', '363-540-9113', '9802', 'Casa de Campo', 21796, 'No asignado', '0', NULL),
	(27, '723-5458 Neque. Ave', 'New York', '512-886-8792', '1038', 'Casa', 97134, 'No asignado', '0', NULL),
	(28, 'Ap #246-9877 Ultricies Rd.', 'Washington', '423-014-6013', '61483', 'Casa', 32659, 'No asignado', '0', NULL),
	(29, 'Ap #712-3234 Nunc Road', 'Miami', '334-030-0048', '9738', 'Apartamento', 14560, 'No asignado', '0', NULL),
	(30, '4406 Justo Avenue', 'Houston', '242-441-7733', '38707', 'Casa de Campo', 69433, 'No asignado', '0', NULL),
	(31, 'Ap #172-6600 Vivamus St.', 'New York', '710-649-0830', '57503', 'Casa de Campo', 1986, 'No asignado', '0', NULL),
	(32, 'Ap #728-4099 Et, Ave', 'Houston', '535-501-0707', '0242AN', 'Casa', 73668, 'No asignado', '0', NULL),
	(33, '4648 Sem Rd.', 'Washington', '956-749-3273', '94323', 'Apartamento', 85996, 'No asignado', '0', NULL),
	(34, 'Ap #539-4295 Volutpat Avenue', 'Miami', '904-312-9292', '894922', 'Casa', 38835, 'No asignado', '0', NULL),
	(35, '500-6214 Tempus, Street', 'Miami', '168-671-0953', '5574', 'Casa de Campo', 62069, 'No asignado', '0', NULL),
	(36, '233-9001 Cum Rd.', 'New York', '670-701-8060', '20705', 'Casa de Campo', 32174, 'No asignado', '0', NULL),
	(37, '4084 Sit St.', 'Orlando', '326-023-8622', '02187', 'Apartamento', 23492, 'No asignado', '0', NULL),
	(38, 'P.O. Box 825, 9762 Etiam Street', 'Miami', '343-695-3228', '56309', 'Casa de Campo', 42579, 'No asignado', '0', NULL),
	(39, '5889 Luctus. Ave', 'New York', '259-039-5762', '6038', 'Apartamento', 41843, 'No asignado', '0', NULL),
	(40, 'Ap #834-3873 Nullam St.', 'Houston', '809-587-9484', '69526', 'Casa de Campo', 94728, 'No asignado', '0', NULL),
	(41, 'P.O. Box 711, 706 Dis Rd.', 'Washington', '354-038-8533', '65211', 'Casa de Campo', 90451, 'No asignado', '0', NULL),
	(42, 'P.O. Box 315, 6041 Duis Avenue', 'Orlando', '186-671-4205', '893592', 'Casa de Campo', 2261, 'No asignado', '0', NULL),
	(43, '5640 Dapibus St.', 'Washington', '906-342-4567', '4263', 'Casa de Campo', 76404, 'No asignado', '0', NULL),
	(44, '5260 Sed Rd.', 'New York', '336-903-7567', '92501', 'Casa', 2055, 'No asignado', '0', NULL),
	(45, 'Ap #864-1235 Mi Rd.', 'Orlando', '723-547-1102', 'G9T 9P2', 'Casa de Campo', 99508, 'No asignado', '0', NULL),
	(46, '8151 Rutrum Rd.', 'Miami', '594-072-4670', '58567', 'Casa', 7952, 'No asignado', '0', NULL),
	(47, 'P.O. Box 926, 1798 Pellentesque St.', 'New York', '328-063-3034', '0547ID', 'Casa', 48882, 'No asignado', '0', NULL),
	(48, 'P.O. Box 264, 6488 Euismod Avenue', 'Los Angeles', '210-220-4305', 'J6H 9S9', 'Apartamento', 33141, 'No asignado', '0', NULL),
	(49, 'Ap #694-1472 Orci Ave', 'New York', '362-652-3567', '63897', 'Apartamento', 88980, 'No asignado', '0', NULL),
	(50, 'P.O. Box 354, 6477 Eget St.', 'Los Angeles', '593-092-8585', '90970-060', 'Casa', 35831, 'No asignado', '0', NULL),
	(51, '128-8013 Imperdiet Avenue', 'New York', '611-764-9648', '727883', 'Casa de Campo', 99230, 'No asignado', '0', NULL),
	(52, 'Ap #394-8201 Pede. St.', 'New York', '057-000-7888', '6390', 'Apartamento', 82679, 'No asignado', '0', NULL),
	(53, 'Ap #210-1906 Mauris St.', 'New York', '742-185-0661', '4116', 'Casa', 96998, 'No asignado', '0', NULL),
	(54, '228-2036 Tincidunt Road', 'Orlando', '565-750-7079', '7217', 'Casa', 54710, 'No asignado', '0', NULL),
	(55, '681-117 Facilisis Street', 'Washington', '695-936-1302', '83809', 'Casa', 96281, 'No asignado', '0', NULL),
	(56, 'P.O. Box 665, 3825 Nec St.', 'Houston', '859-638-8140', '843642', 'Casa', 3829, 'No asignado', '0', NULL),
	(57, 'Ap #800-4147 In Street', 'Los Angeles', '324-489-2139', '66013', 'Casa de Campo', 70069, 'No asignado', '0', NULL),
	(58, '297-8960 Libero. Rd.', 'Los Angeles', '626-297-1082', '9133', 'Casa de Campo', 26514, 'No asignado', '0', NULL),
	(59, '5605 Nisi Ave', 'Orlando', '842-236-6720', '188876', 'Casa', 68927, 'No asignado', '0', NULL),
	(60, 'P.O. Box 870, 9855 Tristique Avenue', 'Miami', '114-453-9481', '64899', 'Casa', 67772, 'No asignado', '0', NULL),
	(61, 'Ap #214-5963 Metus Road', 'Houston', '337-930-6310', '5290KA', 'Casa', 71048, 'No asignado', '0', NULL),
	(62, '869 Tempus St.', 'New York', '235-726-7602', 'Y4V 5A1', 'Casa de Campo', 90138, 'No asignado', '0', NULL),
	(63, 'P.O. Box 916, 4350 In Avenue', 'New York', '292-391-9640', '26271', 'Casa de Campo', 70212, 'No asignado', '0', NULL),
	(64, 'Ap #768-2635 Eget, Avenue', 'Miami', '909-006-0105', '93246', 'Casa', 74320, 'No asignado', '0', NULL),
	(65, 'Ap #581-5945 Ullamcorper Road', 'Orlando', '820-970-3451', '35826', 'Apartamento', 15782, 'No asignado', '0', NULL),
	(66, 'Ap #298-502 Dolor. Ave', 'Orlando', '339-015-5616', '8625GM', 'Casa de Campo', 27530, 'No asignado', '0', NULL),
	(67, '569-3972 Malesuada Street', 'Miami', '712-181-4815', '857132', 'Casa de Campo', 56359, 'No asignado', '0', NULL),
	(68, 'Ap #378-8818 Molestie Ave', 'Los Angeles', '286-311-5133', '39945', 'Casa de Campo', 29789, 'No asignado', '0', NULL),
	(69, '766 Consequat, St.', 'Los Angeles', '790-137-7352', '71804', 'Casa', 57408, 'No asignado', '0', NULL),
	(70, '729-3081 Cubilia Rd.', 'Washington', '888-946-8086', 'F7 0YF', 'Casa', 87871, 'No asignado', '0', NULL),
	(71, '457-7987 Curae; Rd.', 'Washington', '760-938-1297', '19418', 'Casa', 43727, 'No asignado', '0', NULL),
	(72, '6158 Tempor Rd.', 'Houston', '690-850-4520', 'L18 9SC', 'Casa de Campo', 30425, 'No asignado', '0', NULL),
	(73, 'Ap #693-2983 Class St.', 'New York', '213-536-0655', '21712', 'Casa', 23311, 'No asignado', '0', NULL),
	(74, '841 Scelerisque Rd.', 'Houston', '367-551-7660', 'YY0A 3TD', 'Casa de Campo', 72611, 'No asignado', '0', NULL),
	(75, '792-7569 Dolor Rd.', 'New York', '261-470-7647', '14844', 'Casa', 98815, 'No asignado', '0', NULL),
	(76, '444-5718 Ut Rd.', 'Washington', '041-009-6788', '8230', 'Casa', 50861, 'No asignado', '0', NULL),
	(77, 'Ap #377-8404 Ipsum Street', 'New York', '534-916-5827', '37234', 'Casa de Campo', 87808, 'No asignado', '0', NULL),
	(78, '2425 Rutrum Street', 'Los Angeles', '494-431-4661', 'IC54 7IK', 'Casa', 93263, 'No asignado', '0', NULL),
	(79, '344-8412 Nisl. St.', 'Houston', '050-082-4431', '99-113', 'Apartamento', 99947, 'No asignado', '0', NULL),
	(80, '9399 Sem Ave', 'Houston', '909-320-3004', '03082', 'Casa', 69922, 'No asignado', '0', NULL),
	(81, 'P.O. Box 284, 8629 Egestas. St.', 'Orlando', '196-562-2718', 'A8Z 9N1', 'Casa', 25541, 'No asignado', '0', NULL),
	(82, '283-2290 Aliquam Street', 'New York', '272-977-8230', 'G1C 0L5', 'Apartamento', 97152, 'No asignado', '0', NULL),
	(83, 'P.O. Box 787, 1352 Mollis Rd.', 'New York', '580-328-0397', '63477', 'Casa', 70429, 'No asignado', '0', NULL),
	(84, '571-3448 Ipsum. St.', 'New York', '451-067-8082', '1688', 'Casa de Campo', 9426, 'No asignado', '0', NULL),
	(85, '626-4183 Eros. Road', 'New York', '818-932-2502', '3977', 'Apartamento', 82655, 'No asignado', '0', NULL),
	(86, 'Ap #500-446 Accumsan Ave', 'Los Angeles', '453-561-4737', '3773', 'Casa de Campo', 29354, 'No asignado', '0', NULL),
	(87, '3703 Quisque Rd.', 'Orlando', '020-821-1050', '54983', 'Apartamento', 96267, 'No asignado', '0', NULL),
	(88, '5946 Consectetuer St.', 'New York', '773-538-6408', 'Q28 3PO', 'Casa', 61691, 'No asignado', '0', NULL),
	(89, 'P.O. Box 556, 1951 Vulputate Av.', 'Houston', '670-572-1780', '4484KP', 'Casa', 95859, 'No asignado', '0', NULL),
	(90, '727-198 A Road', 'Houston', '821-444-9824', '5962', 'Apartamento', 82504, 'No asignado', '0', NULL),
	(91, 'Ap #271-6835 Tempus St.', 'Washington', '601-485-1049', '703157', 'Casa', 80965, 'No asignado', '0', NULL),
	(92, 'P.O. Box 519, 981 Nostra, Avenue', 'Miami', '440-469-6769', '61790-368', 'Casa de Campo', 49957, 'No asignado', '0', NULL),
	(93, '2759 Faucibus St.', 'Washington', '510-056-8508', '612383', 'Casa', 23498, 'No asignado', '0', NULL),
	(94, '5720 Urna, Street', 'Miami', '581-094-0717', 'X45 0FA', 'Casa de Campo', 8187, 'No asignado', '0', NULL),
	(95, '283-1453 Amet, Avenue', 'Los Angeles', '751-107-3929', 'R1B 4Y7', 'Apartamento', 32660, 'No asignado', '0', NULL),
	(96, 'P.O. Box 169, 7235 Quisque Road', 'Los Angeles', '782-078-8565', '86541', 'Casa', 39721, 'No asignado', '0', NULL),
	(97, '6840 Rhoncus. Ave', 'Miami', '845-500-3131', '7112', 'Casa de Campo', 97135, 'No asignado', '0', NULL),
	(98, '967-7675 A, Rd.', 'Los Angeles', '751-125-7876', '34981', 'Apartamento', 6672, 'No asignado', '0', NULL),
	(99, '227-6771 Ut Street', 'Houston', '262-186-7762', '7131', 'Casa de Campo', 17160, 'No asignado', '0', NULL),
	(100, 'P.O. Box 432, 4652 Proin Ave', 'Washington', '113-637-2816', '598072', 'Casa', 42804, 'No asignado', '0', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
