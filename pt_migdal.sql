-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Jun-2018 às 21:19
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pt_migdal`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `login_save` (INOUT `id_user` SMALLINT(4), INOUT `email` VARCHAR(300), INOUT `password` VARCHAR(200))  NO SQL
INSERT INTO login VALUES(NULL,id_user, email, password)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `show_notifications` (IN `id_user` SMALLINT(4) UNSIGNED ZEROFILL)  NO SQL
SELECT * from notification as n INNER JOIN notification_offence as o on o.id_notification = n.id_notification where n.id_user = id_user$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `user_save` (INOUT `first_name` VARCHAR(15), INOUT `last_name` VARCHAR(15), INOUT `nick_name` VARCHAR(10), INOUT `cell_phone` VARCHAR(20), INOUT `public_place` VARCHAR(200), INOUT `type_public_place` SMALLINT(4) UNSIGNED ZEROFILL, INOUT `postal_code` VARCHAR(15), INOUT `public_place_number` INT(6), INOUT `id_state` SMALLINT(4) UNSIGNED ZEROFILL, INOUT `id_religion` SMALLINT(4) UNSIGNED ZEROFILL, INOUT `id_gender` SMALLINT(4) UNSIGNED ZEROFILL, INOUT `sex` INT(1), INOUT `id_type` SMALLINT(4) UNSIGNED ZEROFILL, INOUT `id_entity` SMALLINT(4) UNSIGNED ZEROFILL)  NO SQL
INSERT INTO user 
    VALUES(null,`first_name`, `last_name`,`nick_name`,`cell_phone`,`public_place`,`type_public_place`,`postal_code`,`public_place_number`,`id_state`,`id_religion`,`id_gender`,`sex`,`id_type`,`id_entity`)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `country`
--

CREATE TABLE `country` (
  `id` smallint(4) NOT NULL,
  `name` varchar(25) NOT NULL,
  `alpha_2` char(2) DEFAULT NULL,
  `alpha_3` char(3) DEFAULT NULL,
  `numeric_code` int(5) DEFAULT NULL,
  `latitude` varchar(15) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `national_language` varchar(20) NOT NULL,
  `largest_city` smallint(4) DEFAULT NULL,
  `capital` smallint(4) DEFAULT NULL,
  `calling_code` varchar(5) DEFAULT NULL,
  `internet_TLD` varchar(5) DEFAULT NULL,
  `demonym` varchar(15) DEFAULT NULL,
  `short_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `country`
--

INSERT INTO `country` (`id`, `name`, `alpha_2`, `alpha_3`, `numeric_code`, `latitude`, `longitude`, `national_language`, `largest_city`, `capital`, `calling_code`, `internet_TLD`, `demonym`, `short_description`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 4, '33', '65', '', NULL, NULL, NULL, NULL, NULL, ''),
(2, 'Albania', 'AL', 'ALB', 8, '41', '20', '', NULL, NULL, NULL, NULL, NULL, ''),
(3, 'Algeria', 'DZ', 'DZA', 12, '28', '3', '', NULL, NULL, NULL, NULL, NULL, ''),
(4, 'American Samoa', 'AS', 'ASM', 16, '-14.3333', '-170', '', NULL, NULL, NULL, NULL, NULL, ''),
(5, 'Andorra', 'AD', 'AND', 20, '42.5', '1.6', '', NULL, NULL, NULL, NULL, NULL, ''),
(6, 'Angola', 'AO', 'AGO', 24, '-12.5', '18.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(7, 'Anguilla', 'AI', 'AIA', 660, '18.25', '-63.1667', '', NULL, NULL, NULL, NULL, NULL, ''),
(8, 'Antarctica', 'AQ', 'ATA', 10, '-90', '0', '', NULL, NULL, NULL, NULL, NULL, ''),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 28, '17.05', '-61.8', '', NULL, NULL, NULL, NULL, NULL, ''),
(10, 'Argentina', 'AR', 'ARG', 32, '-34', '-64', '', NULL, NULL, NULL, NULL, NULL, ''),
(11, 'Armenia', 'AM', 'ARM', 51, '40', '45', '', NULL, NULL, NULL, NULL, NULL, ''),
(12, 'Aruba', 'AW', 'ABW', 533, '12.5', '-69.9667', '', NULL, NULL, NULL, NULL, NULL, ''),
(13, 'Australia', 'AU', 'AUS', 36, '-27', '133', '', NULL, NULL, NULL, NULL, NULL, ''),
(14, 'Austria', 'AT', 'AUT', 40, '47.3333', '13.3333', '', NULL, NULL, NULL, NULL, NULL, ''),
(15, 'Azerbaijan', 'AZ', 'AUT', 31, '40.5', '47.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(16, 'Bahamas', 'BS', 'BHS', 44, '24.25', '-76', '', NULL, NULL, NULL, NULL, NULL, ''),
(17, 'Bahrain', 'BH', 'BHR', 48, '26', '50.55', '', NULL, NULL, NULL, NULL, NULL, ''),
(18, 'Bangladesh', 'BD', 'BGD', 50, '24', '90', '', NULL, NULL, NULL, NULL, NULL, ''),
(19, 'Barbados', 'BB', 'BRB', 52, '13.1667', '-59.5333', '', NULL, NULL, NULL, NULL, NULL, ''),
(20, 'Belarus', 'BY', 'BLR', 112, '53', '28', '', NULL, NULL, NULL, NULL, NULL, ''),
(21, 'Belgium', 'BE', 'BEL', 56, '50.8333', '4', '', NULL, NULL, NULL, NULL, NULL, ''),
(22, 'Belize', 'BZ', 'BLZ', 84, '17.25', '-88.75', '', NULL, NULL, NULL, NULL, NULL, ''),
(23, 'Benin', 'BJ', 'BEN', 204, '9.5', '2.25', '', NULL, NULL, NULL, NULL, NULL, ''),
(24, 'Bermuda', 'BM', 'BMU', 60, '32.3333', '-64.75', '', NULL, NULL, NULL, NULL, NULL, ''),
(25, 'Bhutan', 'BT', 'BTN', 64, '27.5', '90.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(26, 'Bolivia, Plurinational St', 'BO', 'BOL', 68, '-17', '-65', '', NULL, NULL, NULL, NULL, NULL, ''),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', 70, '44', '18', '', NULL, NULL, NULL, NULL, NULL, ''),
(28, 'Botswana', 'BW', 'BWA', 72, '-22', '24', '', NULL, NULL, NULL, NULL, NULL, ''),
(29, 'Bouvet Island', 'BV', 'BVT', 74, '-54.4333', '3.4', '', NULL, NULL, NULL, NULL, NULL, ''),
(30, 'Brazil', 'BR', 'BRA', 76, '-10', '-55', '', NULL, NULL, NULL, NULL, NULL, ''),
(31, 'British Indian Ocean Terr', 'IO', 'IOT', 86, '-6', '71.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(32, 'Brunei Darussalam', 'BN', 'BRN', 96, '4.5', '114.6667', '', NULL, NULL, NULL, NULL, NULL, ''),
(33, 'Bulgaria', 'BG', 'BGR', 100, '43', '25', '', NULL, NULL, NULL, NULL, NULL, ''),
(34, 'Burkina Faso', 'BF', 'BFA', 854, '13', '-2', '', NULL, NULL, NULL, NULL, NULL, ''),
(35, 'Burundi', 'BI', 'BDI', 108, '-3.5', '30', '', NULL, NULL, NULL, NULL, NULL, ''),
(36, 'Cambodia', 'KH', 'KHM', 116, '13', '105', '', NULL, NULL, NULL, NULL, NULL, ''),
(37, 'Cameroon', 'CM', 'CMR', 120, '6', '12', '', NULL, NULL, NULL, NULL, NULL, ''),
(38, 'Canada', 'CA', 'CAN', 124, '60', '-95', '', NULL, NULL, NULL, NULL, NULL, ''),
(39, 'Cape Verde', 'CV', 'CPV', 132, '16', '-24', '', NULL, NULL, NULL, NULL, NULL, ''),
(40, 'Cayman Islands', 'KY', 'CYM', 136, '19.5', '-80.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(41, 'Central African Republic', 'CF', 'CAF', 140, '7', '21', '', NULL, NULL, NULL, NULL, NULL, ''),
(42, 'Chad', 'TD', 'TCD', 148, '15', '19', '', NULL, NULL, NULL, NULL, NULL, ''),
(43, 'Chile', 'CL', 'CHL', 152, '-30', '-71', '', NULL, NULL, NULL, NULL, NULL, ''),
(44, 'China', 'CN', 'CHN', 156, '35', '105', '', NULL, NULL, NULL, NULL, NULL, ''),
(45, 'Christmas Island', 'CX', 'CXR', 162, '-10.5', '105.6667', '', NULL, NULL, NULL, NULL, NULL, ''),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 166, '-12.5', '96.8333', '', NULL, NULL, NULL, NULL, NULL, ''),
(47, 'Colombia', 'CO', 'COL', 170, '4', '-72', '', NULL, NULL, NULL, NULL, NULL, ''),
(48, 'Comoros', 'KM', 'COM', 174, '-12.1667', '44.25', '', NULL, NULL, NULL, NULL, NULL, ''),
(49, 'Congo', 'CG', 'COG', 178, '-1', '15', '', NULL, NULL, NULL, NULL, NULL, ''),
(50, 'Congo, the Democratic Rep', 'CD', 'COD', 180, '0', '25', '', NULL, NULL, NULL, NULL, NULL, ''),
(51, 'Cook Islands', 'CK', 'COK', 184, '-21.2333', '-159.7667', '', NULL, NULL, NULL, NULL, NULL, ''),
(52, 'Costa Rica', 'CR', 'CRI', 188, '10', '-84', '', NULL, NULL, NULL, NULL, NULL, ''),
(53, 'Côte d\'Ivoire', 'CI', 'CIV', 384, '8', '-5', '', NULL, NULL, NULL, NULL, NULL, ''),
(54, 'Croatia', 'HR', 'HRV', 191, '45.1667', '15.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(55, 'Cuba', 'CU', 'CUB', 192, '21.5', '-80', '', NULL, NULL, NULL, NULL, NULL, ''),
(56, 'Cyprus', 'CY', 'CYP', 196, '35', '33', '', NULL, NULL, NULL, NULL, NULL, ''),
(57, 'Czech Republic', 'CZ', 'CZE', 203, '49.75', '15.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(58, 'Denmark', 'DK', 'DNK', 208, '56', '10', '', NULL, NULL, NULL, NULL, NULL, ''),
(59, 'Djibouti', 'DJ', 'DJI', 262, '11.5', '43', '', NULL, NULL, NULL, NULL, NULL, ''),
(60, 'Dominica', 'DM', 'DMA', 212, '15.4167', '-61.3333', '', NULL, NULL, NULL, NULL, NULL, ''),
(61, 'Dominican Republic', 'DO', 'DOM', 214, '19', '-70.6667', '', NULL, NULL, NULL, NULL, NULL, ''),
(62, 'Ecuador', 'EC', 'ECU', 218, '-2', '-77.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(63, 'Egypt', 'EG', 'EGY', 818, '27', '30', '', NULL, NULL, NULL, NULL, NULL, ''),
(64, 'El Salvador', 'SV', 'SLV', 222, '13.8333', '-88.9167', '', NULL, NULL, NULL, NULL, NULL, ''),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 226, '2', '10', '', NULL, NULL, NULL, NULL, NULL, ''),
(66, 'Eritrea', 'ER', 'ERI', 232, '15', '39', '', NULL, NULL, NULL, NULL, NULL, ''),
(67, 'Estonia', 'EE', 'EST', 233, '59', '26', '', NULL, NULL, NULL, NULL, NULL, ''),
(68, 'Ethiopia', 'ET', 'ETH', 231, '8', '38', '', NULL, NULL, NULL, NULL, NULL, ''),
(69, 'Falkland Islands (Malvina', 'FK', 'FLK', 238, '-51.75', '-59', '', NULL, NULL, NULL, NULL, NULL, ''),
(70, 'Faroe Islands', 'FO', 'FRO', 234, '62', '-7', '', NULL, NULL, NULL, NULL, NULL, ''),
(71, 'Fiji', 'FJ', 'FJI', 242, '-18', '175', '', NULL, NULL, NULL, NULL, NULL, ''),
(72, 'Finland', 'FI', 'FIN', 246, '64', '26', '', NULL, NULL, NULL, NULL, NULL, ''),
(73, 'France', 'FR', 'FRA', 250, '46', '2', '', NULL, NULL, NULL, NULL, NULL, ''),
(74, 'French Guiana', 'GF', 'GUF', 254, '4', '-53', '', NULL, NULL, NULL, NULL, NULL, ''),
(75, 'French Polynesia', 'PF', 'PYF', 258, '-15', '-140', '', NULL, NULL, NULL, NULL, NULL, ''),
(76, 'French Southern Territori', 'TF', 'ATF', 260, '-43', '67', '', NULL, NULL, NULL, NULL, NULL, ''),
(77, 'Gabon', 'GA', 'GAB', 266, '-1', '11.75', '', NULL, NULL, NULL, NULL, NULL, ''),
(78, 'Gambia', 'GM', 'GMB', 270, '13.4667', '-16.5667', '', NULL, NULL, NULL, NULL, NULL, ''),
(79, 'Georgia', 'GE', 'GEO', 268, '42', '43.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(80, 'Germany', 'DE', 'DEU', 276, '51', '9', '', NULL, NULL, NULL, NULL, NULL, ''),
(81, 'Ghana', 'GH', 'GHA', 288, '8', '-2', '', NULL, NULL, NULL, NULL, NULL, ''),
(82, 'Gibraltar', 'GI', 'GIB', 292, '36.1833', '-5.3667', '', NULL, NULL, NULL, NULL, NULL, ''),
(83, 'Greece', 'GR', 'GRC', 300, '39', '22', '', NULL, NULL, NULL, NULL, NULL, ''),
(84, 'Greenland', 'GL', 'GRL', 304, '72', '-40', '', NULL, NULL, NULL, NULL, NULL, ''),
(85, 'Grenada', 'GD', 'GRD', 308, '12.1167', '-61.6667', '', NULL, NULL, NULL, NULL, NULL, ''),
(86, 'Guadeloupe', 'GP', 'GLP', 312, '16.25', '-61.5833', '', NULL, NULL, NULL, NULL, NULL, ''),
(87, 'Guam', 'GU', 'GUM', 316, '13.4667', '144.7833', '', NULL, NULL, NULL, NULL, NULL, ''),
(88, 'Guatemala', 'GT', 'GTM', 320, '15.5', '-90.25', '', NULL, NULL, NULL, NULL, NULL, ''),
(89, 'Guernsey', 'GG', 'GGY', 831, '49.5', '-2.56', '', NULL, NULL, NULL, NULL, NULL, ''),
(90, 'Guinea', 'GN', 'GIN', 324, '11', '-10', '', NULL, NULL, NULL, NULL, NULL, ''),
(91, 'Guinea-Bissau', 'GW', 'GNB', 624, '12', '-15', '', NULL, NULL, NULL, NULL, NULL, ''),
(92, 'Guyana', 'GY', 'GUY', 328, '5', '-59', '', NULL, NULL, NULL, NULL, NULL, ''),
(93, 'Haiti', 'HT', 'HTI', 332, '19', '-72.4167', '', NULL, NULL, NULL, NULL, NULL, ''),
(94, 'Heard Island and McDonald', 'HM', 'HMD', 334, '-53.1', '72.5167', '', NULL, NULL, NULL, NULL, NULL, ''),
(95, 'Holy See (Vatican City St', 'VA', 'VAT', 336, '41.9', '12.45', '', NULL, NULL, NULL, NULL, NULL, ''),
(96, 'Honduras', 'HN', 'HND', 340, '15', '-86.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(97, 'Hong Kong', 'HK', 'HKG', 344, '22.25', '114.1667', '', NULL, NULL, NULL, NULL, NULL, ''),
(98, 'Hungary', 'HU', 'HUN', 348, '47', '20', '', NULL, NULL, NULL, NULL, NULL, ''),
(99, 'Iceland', 'IS', 'ISL', 352, '65', '-18', '', NULL, NULL, NULL, NULL, NULL, ''),
(100, 'India', 'IN', 'IND', 356, '20', '77', '', NULL, NULL, NULL, NULL, NULL, ''),
(101, 'Indonesia', 'ID', 'IDN', 360, '-5', '120', '', NULL, NULL, NULL, NULL, NULL, ''),
(102, 'Iran, Islamic Republic of', 'IR', 'IRN', 364, '32', '53', '', NULL, NULL, NULL, NULL, NULL, ''),
(103, 'Iraq', 'IQ', 'IRQ', 368, '33', '44', '', NULL, NULL, NULL, NULL, NULL, ''),
(104, 'Ireland', 'IE', 'IRL', 372, '53', '-8', '', NULL, NULL, NULL, NULL, NULL, ''),
(105, 'Isle of Man', 'IM', 'IMN', 833, '54.23', '-4.55', '', NULL, NULL, NULL, NULL, NULL, ''),
(106, 'Israel', 'IL', 'ISR', 376, '31.5', '34.75', '', NULL, NULL, NULL, NULL, NULL, ''),
(107, 'Italy', 'IT', 'ITA', 380, '42.8333', '12.8333', '', NULL, NULL, NULL, NULL, NULL, ''),
(108, 'Jamaica', 'JM', 'JAM', 388, '18.25', '-77.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(109, 'Japan', 'JP', 'JPN', 392, '36', '138', '', NULL, NULL, NULL, NULL, NULL, ''),
(110, 'Jersey', 'JE', 'JEY', 832, '49.21', '-2.13', '', NULL, NULL, NULL, NULL, NULL, ''),
(111, 'Jordan', 'JO', 'JOR', 400, '31', '36', '', NULL, NULL, NULL, NULL, NULL, ''),
(112, 'Kazakhstan', 'KZ', 'KAZ', 398, '48', '68', '', NULL, NULL, NULL, NULL, NULL, ''),
(113, 'Kenya', 'KE', 'KEN', 404, '1', '38', '', NULL, NULL, NULL, NULL, NULL, ''),
(114, 'Kiribati', 'KI', 'KIR', 296, '1.4167', '173', '', NULL, NULL, NULL, NULL, NULL, ''),
(115, 'Korea, Democratic People\'', 'KP', 'PRK', 408, '40', '127', '', NULL, NULL, NULL, NULL, NULL, ''),
(116, 'Korea, Republic of', 'KR', 'KOR', 410, '37', '127.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(117, 'Kuwait', 'KW', 'KWT', 414, '29.3375', '47.6581', '', NULL, NULL, NULL, NULL, NULL, ''),
(118, 'Kyrgyzstan', 'KG', 'KGZ', 417, '41', '75', '', NULL, NULL, NULL, NULL, NULL, ''),
(119, 'Lao People\'s Democratic R', 'LA', 'LAO', 418, '18', '105', '', NULL, NULL, NULL, NULL, NULL, ''),
(120, 'Latvia', 'LV', 'LVA', 428, '57', '25', '', NULL, NULL, NULL, NULL, NULL, ''),
(121, 'Lebanon', 'LB', 'LBN', 422, '33.8333', '35.8333', '', NULL, NULL, NULL, NULL, NULL, ''),
(122, 'Lesotho', 'LS', 'LSO', 426, '-29.5', '28.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(123, 'Liberia', 'LR', 'LBR', 430, '6.5', '-9.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(124, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 434, '25', '17', '', NULL, NULL, NULL, NULL, NULL, ''),
(125, 'Liechtenstein', 'LI', 'LIE', 438, '47.1667', '9.5333', '', NULL, NULL, NULL, NULL, NULL, ''),
(126, 'Lithuania', 'LT', 'LTU', 440, '56', '24', '', NULL, NULL, NULL, NULL, NULL, ''),
(127, 'Luxembourg', 'LU', 'LUX', 442, '49.75', '6.1667', '', NULL, NULL, NULL, NULL, NULL, ''),
(128, 'Macao', 'MO', 'MAC', 446, '22.1667', '113.55', '', NULL, NULL, NULL, NULL, NULL, ''),
(129, 'Macedonia, the former Yug', 'MK', 'MKD', 807, '41.8333', '22', '', NULL, NULL, NULL, NULL, NULL, ''),
(130, 'Madagascar', 'MG', 'MDG', 450, '-20', '47', '', NULL, NULL, NULL, NULL, NULL, ''),
(131, 'Malawi', 'MW', 'MWI', 454, '-13.5', '34', '', NULL, NULL, NULL, NULL, NULL, ''),
(132, 'Malaysia', 'MY', 'MYS', 458, '2.5', '112.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(133, 'Maldives', 'MV', 'MDV', 462, '3.25', '73', '', NULL, NULL, NULL, NULL, NULL, ''),
(134, 'Mali', 'ML', 'MLI', 466, '17', '-4', '', NULL, NULL, NULL, NULL, NULL, ''),
(135, 'Malta', 'MT', 'MLT', 470, '35.8333', '14.5833', '', NULL, NULL, NULL, NULL, NULL, ''),
(136, 'Marshall Islands', 'MH', 'MHL', 584, '9', '168', '', NULL, NULL, NULL, NULL, NULL, ''),
(137, 'Martinique', 'MQ', 'MTQ', 474, '14.6667', '-61', '', NULL, NULL, NULL, NULL, NULL, ''),
(138, 'Mauritania', 'MR', 'MRT', 478, '20', '-12', '', NULL, NULL, NULL, NULL, NULL, ''),
(139, 'Mauritius', 'MU', 'MUS', 480, '-20.2833', '57.55', '', NULL, NULL, NULL, NULL, NULL, ''),
(140, 'Mayotte', 'YT', 'MYT', 175, '-12.8333', '45.1667', '', NULL, NULL, NULL, NULL, NULL, ''),
(141, 'Mexico', 'MX', 'MEX', 484, '23', '-102', '', NULL, NULL, NULL, NULL, NULL, ''),
(142, 'Micronesia, Federated Sta', 'FM', 'FSM', 583, '6.9167', '158.25', '', NULL, NULL, NULL, NULL, NULL, ''),
(143, 'Moldova, Republic of', 'MD', 'MDA', 498, '47', '29', '', NULL, NULL, NULL, NULL, NULL, ''),
(144, 'Monaco', 'MC', 'MCO', 492, '43.7333', '7.4', '', NULL, NULL, NULL, NULL, NULL, ''),
(145, 'Mongolia', 'MN', 'MNG', 496, '46', '105', '', NULL, NULL, NULL, NULL, NULL, ''),
(146, 'Montenegro', 'ME', 'MNE', 499, '42', '19', '', NULL, NULL, NULL, NULL, NULL, ''),
(147, 'Montserrat', 'MS', 'MSR', 500, '16.75', '-62.2', '', NULL, NULL, NULL, NULL, NULL, ''),
(148, 'Morocco', 'MA', 'MAR', 504, '32', '-5', '', NULL, NULL, NULL, NULL, NULL, ''),
(149, 'Mozambique', 'MZ', 'MOZ', 508, '-18.25', '35', '', NULL, NULL, NULL, NULL, NULL, ''),
(150, 'Myanmar', 'MM', 'MMR', 104, '22', '98', '', NULL, NULL, NULL, NULL, NULL, ''),
(151, 'Namibia', 'NA', 'NAM', 516, '-22', '17', '', NULL, NULL, NULL, NULL, NULL, ''),
(152, 'Nauru', 'NR', 'NRU', 520, '-0.5333', '166.9167', '', NULL, NULL, NULL, NULL, NULL, ''),
(153, 'Nepal', 'NP', 'NPL', 524, '28', '84', '', NULL, NULL, NULL, NULL, NULL, ''),
(154, 'Netherlands', 'NL', 'NLD', 528, '52.5', '5.75', '', NULL, NULL, NULL, NULL, NULL, ''),
(155, 'Netherlands Antilles', 'AN', 'ANT', 530, '12.25', '-68.75', '', NULL, NULL, NULL, NULL, NULL, ''),
(156, 'New Caledonia', 'NC', 'NCL', 540, '-21.5', '165.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(157, 'New Zealand', 'NZ', 'NZL', 554, '-41', '174', '', NULL, NULL, NULL, NULL, NULL, ''),
(158, 'Nicaragua', 'NI', 'NIC', 558, '13', '-85', '', NULL, NULL, NULL, NULL, NULL, ''),
(159, 'Niger', 'NE', 'NER', 562, '16', '8', '', NULL, NULL, NULL, NULL, NULL, ''),
(160, 'Nigeria', 'NG', 'NGA', 566, '10', '8', '', NULL, NULL, NULL, NULL, NULL, ''),
(161, 'Niue', 'NU', 'NIU', 570, '-19.0333', '-169.8667', '', NULL, NULL, NULL, NULL, NULL, ''),
(162, 'Norfolk Island', 'NF', 'NFK', 574, '-29.0333', '167.95', '', NULL, NULL, NULL, NULL, NULL, ''),
(163, 'Northern Mariana Islands', 'MP', 'MNP', 580, '15.2', '145.75', '', NULL, NULL, NULL, NULL, NULL, ''),
(164, 'Norway', 'NO', 'NOR', 578, '62', '10', '', NULL, NULL, NULL, NULL, NULL, ''),
(165, 'Oman', 'OM', 'OMN', 512, '21', '57', '', NULL, NULL, NULL, NULL, NULL, ''),
(166, 'Pakistan', 'PK', 'PAK', 586, '30', '70', '', NULL, NULL, NULL, NULL, NULL, ''),
(167, 'Palau', 'PW', 'PLW', 585, '7.5', '134.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(168, 'Palestinian Territory, Oc', 'PS', 'PSE', 275, '32', '35.25', '', NULL, NULL, NULL, NULL, NULL, ''),
(169, 'Panama', 'PA', 'PAN', 591, '9', '-80', '', NULL, NULL, NULL, NULL, NULL, ''),
(170, 'Papua New Guinea', 'PG', 'PNG', 598, '-6', '147', '', NULL, NULL, NULL, NULL, NULL, ''),
(171, 'Paraguay', 'PY', 'PRY', 600, '-23', '-58', '', NULL, NULL, NULL, NULL, NULL, ''),
(172, 'Peru', 'PE', 'PER', 604, '-10', '-76', '', NULL, NULL, NULL, NULL, NULL, ''),
(173, 'Philippines', 'PH', 'PHL', 608, '13', '122', '', NULL, NULL, NULL, NULL, NULL, ''),
(174, 'Pitcairn', 'PN', 'PCN', 612, '-24.7', '-127.4', '', NULL, NULL, NULL, NULL, NULL, ''),
(175, 'Poland', 'PL', 'POL', 616, '52', '20', '', NULL, NULL, NULL, NULL, NULL, ''),
(176, 'Portugal', 'PT', 'PRT', 620, '39.5', '-8', '', NULL, NULL, NULL, NULL, NULL, ''),
(177, 'Puerto Rico', 'PR', 'PRI', 630, '18.25', '-66.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(178, 'Qatar', 'QA', 'QAT', 634, '25.5', '51.25', '', NULL, NULL, NULL, NULL, NULL, ''),
(179, 'Réunion', 'RE', 'REU', 638, '-21.1', '55.6', '', NULL, NULL, NULL, NULL, NULL, ''),
(180, 'Romania', 'RO', 'ROU', 642, '46', '25', '', NULL, NULL, NULL, NULL, NULL, ''),
(181, 'Russian Federation', 'RU', 'RUS', 643, '60', '100', '', NULL, NULL, NULL, NULL, NULL, ''),
(182, 'Rwanda', 'RW', 'RWA', 646, '-2', '30', '', NULL, NULL, NULL, NULL, NULL, ''),
(183, 'Saint Helena, Ascension a', 'SH', 'SHN', 654, '-15.9333', '-5.7', '', NULL, NULL, NULL, NULL, NULL, ''),
(184, 'Saint Kitts and Nevis', 'KN', 'KNA', 659, '17.3333', '-62.75', '', NULL, NULL, NULL, NULL, NULL, ''),
(185, 'Saint Lucia', 'LC', 'LCA', 662, '13.8833', '-61.1333', '', NULL, NULL, NULL, NULL, NULL, ''),
(186, 'Saint Pierre and Miquelon', 'PM', 'SPM', 666, '46.8333', '-56.3333', '', NULL, NULL, NULL, NULL, NULL, ''),
(187, 'Saint Vincent and the Gre', 'VC', 'VCT', 670, '13.25', '-61.2', '', NULL, NULL, NULL, NULL, NULL, ''),
(188, 'Samoa', 'WS', 'WSM', 882, '-13.5833', '-172.3333', '', NULL, NULL, NULL, NULL, NULL, ''),
(189, 'San Marino', 'SM', 'SMR', 674, '43.7667', '12.4167', '', NULL, NULL, NULL, NULL, NULL, ''),
(190, 'Sao Tome and Principe', 'ST', 'STP', 678, '1', '7', '', NULL, NULL, NULL, NULL, NULL, ''),
(191, 'Saudi Arabia', 'SA', 'SAU', 682, '25', '45', '', NULL, NULL, NULL, NULL, NULL, ''),
(192, 'Senegal', 'SN', 'SEN', 686, '14', '-14', '', NULL, NULL, NULL, NULL, NULL, ''),
(193, 'Serbia', 'RS', 'SRB', 688, '44', '21', '', NULL, NULL, NULL, NULL, NULL, ''),
(194, 'Seychelles', 'SC', 'SYC', 690, '-4.5833', '55.6667', '', NULL, NULL, NULL, NULL, NULL, ''),
(195, 'Sierra Leone', 'SL', 'SLE', 694, '8.5', '-11.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(196, 'Singapore', 'SG', 'SGP', 702, '1.3667', '103.8', '', NULL, NULL, NULL, NULL, NULL, ''),
(197, 'Slovakia', 'SK', 'SVK', 703, '48.6667', '19.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(198, 'Slovenia', 'SI', 'SVN', 705, '46', '15', '', NULL, NULL, NULL, NULL, NULL, ''),
(199, 'Solomon Islands', 'SB', 'SLB', 90, '-8', '159', '', NULL, NULL, NULL, NULL, NULL, ''),
(200, 'Somalia', 'SO', 'SOM', 706, '10', '49', '', NULL, NULL, NULL, NULL, NULL, ''),
(201, 'South Africa', 'ZA', 'ZAF', 710, '-29', '24', '', NULL, NULL, NULL, NULL, NULL, ''),
(202, 'South Georgia and the Sou', 'GS', 'SGS', 239, '-54.5', '-37', '', NULL, NULL, NULL, NULL, NULL, ''),
(203, 'Spain', 'ES', 'ESP', 724, '40', '-4', '', NULL, NULL, NULL, NULL, NULL, ''),
(204, 'Sri Lanka', 'LK', 'LKA', 144, '7', '81', '', NULL, NULL, NULL, NULL, NULL, ''),
(205, 'Sudan', 'SD', 'SDN', 736, '15', '30', '', NULL, NULL, NULL, NULL, NULL, ''),
(206, 'Suriname', 'SR', 'SUR', 740, '4', '-56', '', NULL, NULL, NULL, NULL, NULL, ''),
(207, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 744, '78', '20', '', NULL, NULL, NULL, NULL, NULL, ''),
(208, 'Swaziland', 'SZ', 'SWZ', 748, '-26.5', '31.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(209, 'Sweden', 'SE', 'SWE', 752, '62', '15', '', NULL, NULL, NULL, NULL, NULL, ''),
(210, 'Switzerland', 'CH', 'CHE', 756, '47', '8', '', NULL, NULL, NULL, NULL, NULL, ''),
(211, 'Syrian Arab Republic', 'SY', 'SYR', 760, '35', '38', '', NULL, NULL, NULL, NULL, NULL, ''),
(212, 'Taiwan, Province of China', 'TW', 'TWN', 158, '23.5', '121', '', NULL, NULL, NULL, NULL, NULL, ''),
(213, 'Tajikistan', 'TJ', 'TJK', 762, '39', '71', '', NULL, NULL, NULL, NULL, NULL, ''),
(214, 'Tanzania, United Republic', 'TZ', 'TZA', 834, '-6', '35', '', NULL, NULL, NULL, NULL, NULL, ''),
(215, 'Thailand', 'TH', 'THA', 764, '15', '100', '', NULL, NULL, NULL, NULL, NULL, ''),
(216, 'Timor-Leste', 'TL', 'TLS', 626, '-8.55', '125.5167', '', NULL, NULL, NULL, NULL, NULL, ''),
(217, 'Togo', 'TG', 'TGO', 768, '8', '1.1667', '', NULL, NULL, NULL, NULL, NULL, ''),
(218, 'Tokelau', 'TK', 'TKL', 772, '-9', '-172', '', NULL, NULL, NULL, NULL, NULL, ''),
(219, 'Tonga', 'TO', 'TON', 776, '-20', '-175', '', NULL, NULL, NULL, NULL, NULL, ''),
(220, 'Trinidad and Tobago', 'TT', 'TTO', 780, '11', '-61', '', NULL, NULL, NULL, NULL, NULL, ''),
(221, 'Tunisia', 'TN', 'TUN', 788, '34', '9', '', NULL, NULL, NULL, NULL, NULL, ''),
(222, 'Turkey', 'TR', 'TUR', 792, '39', '35', '', NULL, NULL, NULL, NULL, NULL, ''),
(223, 'Turkmenistan', 'TM', 'TKM', 795, '40', '60', '', NULL, NULL, NULL, NULL, NULL, ''),
(224, 'Turks and Caicos Islands', 'TC', 'TCA', 796, '21.75', '-71.5833', '', NULL, NULL, NULL, NULL, NULL, ''),
(225, 'Tuvalu', 'TV', 'TUV', 798, '-8', '178', '', NULL, NULL, NULL, NULL, NULL, ''),
(226, 'Uganda', 'UG', 'UGA', 800, '1', '32', '', NULL, NULL, NULL, NULL, NULL, ''),
(227, 'Ukraine', 'UA', 'UKR', 804, '49', '32', '', NULL, NULL, NULL, NULL, NULL, ''),
(228, 'United Arab Emirates', 'AE', 'ARE', 784, '24', '54', '', NULL, NULL, NULL, NULL, NULL, ''),
(229, 'United Kingdom', 'GB', 'GBR', 826, '54', '-2', '', NULL, NULL, NULL, NULL, NULL, ''),
(230, 'United States', 'US', 'USA', 840, '38', '-97', '', NULL, NULL, NULL, NULL, NULL, ''),
(231, 'United States Minor Outly', 'UM', 'UMI', 581, '19.2833', '166.6', '', NULL, NULL, NULL, NULL, NULL, ''),
(232, 'Uruguay', 'UY', 'URY', 858, '-33', '-56', '', NULL, NULL, NULL, NULL, NULL, ''),
(233, 'Uzbekistan', 'UZ', 'UZB', 860, '41', '64', '', NULL, NULL, NULL, NULL, NULL, ''),
(234, 'Vanuatu', 'VU', 'VUT', 548, '-16', '167', '', NULL, NULL, NULL, NULL, NULL, ''),
(235, 'Venezuela, Bolivarian Rep', 'VE', 'VEN', 862, '8', '-66', '', NULL, NULL, NULL, NULL, NULL, ''),
(236, 'Viet Nam', 'VN', 'VNM', 704, '16', '106', '', NULL, NULL, NULL, NULL, NULL, ''),
(237, 'Virgin Islands, British', 'VG', 'VGB', 92, '18.5', '-64.5', '', NULL, NULL, NULL, NULL, NULL, ''),
(238, 'Virgin Islands, U.S.', 'VI', 'VIR', 850, '18.3333', '-64.8333', '', NULL, NULL, NULL, NULL, NULL, ''),
(239, 'Wallis and Futuna', 'WF', 'WLF', 876, '-13.3', '-176.2', '', NULL, NULL, NULL, NULL, NULL, ''),
(240, 'Western Sahara', 'EH', 'ESH', 732, '24.5', '-13', '', NULL, NULL, NULL, NULL, NULL, ''),
(241, 'Yemen', 'YE', 'YEM', 887, '15', '48', '', NULL, NULL, NULL, NULL, NULL, ''),
(242, 'Zambia', 'ZM', 'ZMB', 894, '-15', '30', '', NULL, NULL, NULL, NULL, NULL, ''),
(243, 'Zimbabwe', 'ZW', 'ZWE', 716, '-20', '30', '', NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `division`
--

CREATE TABLE `division` (
  `id` smallint(4) NOT NULL,
  `name` varchar(30) NOT NULL,
  `parent` smallint(4) NOT NULL,
  `type` smallint(4) NOT NULL,
  `latitude` varchar(15) DEFAULT NULL,
  `longitude` varchar(15) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `calling_code` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `division_type`
--

CREATE TABLE `division_type` (
  `id` smallint(4) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `entity`
--

CREATE TABLE `entity` (
  `id_entity` smallint(4) NOT NULL,
  `id_country` smallint(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `level` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `follow`
--

CREATE TABLE `follow` (
  `id_follow` smallint(4) NOT NULL,
  `id_user_follower` smallint(4) NOT NULL,
  `id_user_followed` smallint(4) NOT NULL,
  `status` int(1) NOT NULL,
  `id_relationship` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `follow`
--

INSERT INTO `follow` (`id_follow`, `id_user_follower`, `id_user_followed`, `status`, `id_relationship`) VALUES
(1, 1, 2, 1, 1),
(2, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gender`
--

CREATE TABLE `gender` (
  `id_gender` smallint(4) NOT NULL,
  `label` varchar(15) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` smallint(4) NOT NULL,
  `id_user` smallint(4) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `id_user`, `email`, `password`) VALUES
(1, 1, 'ibraim.caiofabio@gmail.com', '2586be60a0d0fb7281e13db6cae2ba98'),
(2, 3, 'teste@gmail.com', '698dc19d489c4e4db73e28a713eab07b');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notification`
--

CREATE TABLE `notification` (
  `id_notification` smallint(4) NOT NULL,
  `id_user` smallint(4) NOT NULL,
  `id_type_notification` smallint(4) NOT NULL,
  `dt_notification` date NOT NULL,
  `description` text NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `notification`
--

INSERT INTO `notification` (`id_notification`, `id_user`, `id_type_notification`, `dt_notification`, `description`, `latitude`, `longitude`, `status`) VALUES
(1, 1, 1, '2018-06-14', 'registred by sistem', '-22.8959904', '-43.1830963', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notification_offence`
--

CREATE TABLE `notification_offence` (
  `id_notification_offence` smallint(4) NOT NULL,
  `id_offence` smallint(4) NOT NULL,
  `id_notification` smallint(4) NOT NULL,
  `id_country` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `notification_offence`
--

INSERT INTO `notification_offence` (`id_notification_offence`, `id_offence`, `id_notification`, `id_country`) VALUES
(1, 1, 1, 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notification_views`
--

CREATE TABLE `notification_views` (
  `id_notification_views` smallint(4) NOT NULL,
  `id_notification` smallint(4) NOT NULL,
  `id_user` smallint(4) NOT NULL,
  `dt_view` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `notification_views`
--

INSERT INTO `notification_views` (`id_notification_views`, `id_notification`, `id_user`, `dt_view`) VALUES
(1, 1, 1, '2018-06-14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `occurrence`
--

CREATE TABLE `occurrence` (
  `id_occurrence` smallint(4) NOT NULL,
  `id_place` smallint(4) UNSIGNED ZEROFILL NOT NULL,
  `id_offence` smallint(4) NOT NULL,
  `dt_occurrence` date NOT NULL,
  `description` text NOT NULL,
  `id_user` smallint(6) NOT NULL COMMENT 'author'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `offence`
--

CREATE TABLE `offence` (
  `id_offence` smallint(4) NOT NULL,
  `id_country` smallint(4) NOT NULL,
  `crime_code` varchar(5) NOT NULL,
  `description` text NOT NULL,
  `level_1` int(30) DEFAULT NULL,
  `level_2` int(30) DEFAULT NULL,
  `level_3` int(30) DEFAULT NULL,
  `level_4` int(30) DEFAULT NULL,
  `level_5` int(30) DEFAULT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `offence`
--

INSERT INTO `offence` (`id_offence`, `id_country`, `crime_code`, `description`, `level_1`, `level_2`, `level_3`, `level_4`, `level_5`, `notes`) VALUES
(1, 30, '', 'Homicídio', NULL, NULL, NULL, NULL, NULL, 'Art. 121. Matar alguem:\r\n\r\nPena - reclusão, de seis a vinte anos.'),
(2, 30, '', 'LEI Nº 11.343, Drogas', NULL, NULL, NULL, NULL, NULL, 'https://www.jusbrasil.com.br/artigos/busca?q=CAPAZES+DE+CAUSAR+DEPENDENCIA\r\n\r\nhttp://www.planalto.gov.br/ccivil_03/_ato2004-2006/2006/lei/l11343.htm');

-- --------------------------------------------------------

--
-- Estrutura da tabela `place`
--

CREATE TABLE `place` (
  `id_place` smallint(4) UNSIGNED ZEROFILL NOT NULL,
  `id_country` smallint(4) NOT NULL,
  `id_division` smallint(4) NOT NULL,
  `name` varchar(60) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `dangerous_level` int(11) NOT NULL COMMENT '>= 0 less >=5 more',
  `class` char(1) NOT NULL COMMENT 'A-Z'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relationship`
--

CREATE TABLE `relationship` (
  `id_relationship` smallint(4) NOT NULL,
  `label` varchar(15) NOT NULL,
  `level_intimacy` int(2) NOT NULL COMMENT '0 >= ''closest'' >5 ''friend'''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `relationship`
--

INSERT INTO `relationship` (`id_relationship`, `label`, `level_intimacy`) VALUES
(1, 'parent', 0),
(2, 'brother', 1),
(3, 'neighbor', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `religion`
--

CREATE TABLE `religion` (
  `id` smallint(4) NOT NULL,
  `code` varchar(15) NOT NULL,
  `name` varchar(60) NOT NULL,
  `heritage` varchar(30) NOT NULL,
  `area_of_origin` varchar(15) NOT NULL,
  `founded` varchar(15) NOT NULL,
  `founder` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `god` varchar(15) NOT NULL,
  `afterlife` varchar(30) NOT NULL,
  `holy_texts` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `religion`
--

INSERT INTO `religion` (`id`, `code`, `name`, `heritage`, `area_of_origin`, `founded`, `founder`, `description`, `god`, `afterlife`, `holy_texts`) VALUES
(1, '9101e4d16b76041', 'agnosticism', 'Natural thought', 'Prehistoric/uni', '', '', 'Belief that (1) God, if it exists, is by nature unknowable and will always be unknowable, or, (2) that the individual being asked cannot conclude if god exists or not for lack of evidence one way or the other', 'Atheist/monothe', 'Not defined', 'None	'),
(2, '13691053504c3d1', 'Amish', 'Christianity', 'Switzerland', '1693 CE', 'Jakob Ammann and his followers split from the Anabaptists', ' Peaceful Christian fundamentalist group famous for its rejection of technology and strict adherence to OT and NT laws', 'Monotheist', 'Heaven or hell', 'The Bible	'),
(3, '575f4fde1cc5e90', 'ancestor worship', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'Belief that good relations need to be kept with tribal ancestor spirits. Often a form of Shamanism', 'Not defined', 'Yes', 'None	'),
(4, 'b2c48b4da592b4c', 'animism', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'The belief that all objects contain spirits. More a traditional form of belief than a \'religion\' in the Western sense', 'Not defined', 'Not defined', 'None	'),
(5, '51bde6c53bcc5fa', 'Asatrú', 'Scandinavian folklore', 'Iceland', '1972 CE', '', 'A modern uptake of Nordic religion', 'Polytheist', 'Other', 'None	'),
(6, 'd337c9792bf9af4', 'atheism', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'Either (1) the active and extrinsic disbelief that God exists, or (2) an intrinsic lack of belief due to lack of knowledge about god(s) in local culture', 'Atheist', 'Not defined', 'None	'),
(7, '4ed501969a61b71', 'Aum Shinrikyo', 'Christianity and Far Eastern r', 'Japan', '1984 CE', 'Shoko Asahara', 'Dangerous and violent religious community responsible for the 1995 Sarin gas attack on Tokyo\'s subway and other crimes. Eventually they apologized, stopped using the Bible, and formed the more prosaic group called Aleph', 'Theist', 'Yes', 'The Bible and other	'),
(8, 'cae48bdfd501602', '  Bahá\'\'í Faith', 'Shi\'a Islam', 'Iran', '18634 CE', 'By Bahá\'u\'lláh', ' Belief that a series of prophets have come from God, and that Bahá\'í is the latest religion founded by God. A liberal offshoot of Islam, but persecuted in Iran', 'Monotheist', 'Yes', 'Writings of Baha\'u\'llah and Ab'),
(9, 'e8230c2270aa4ec', 'Brahma Kumari', 'Hinduism', 'India', '1930s CE', 'Lekhraj Kripalani (called Brahma Baba)', 'This group are preparing to rule the world after a coming apocalypse, and embrace many practices which are now called New Age', 'Monotheist', '', 'Writings of founder and leader'),
(10, '76bdbfbbd8de6f0', 'Branch Davidians', 'Christianity', 'USA', '1930 CE', 'Benjamin Roden', ' Apocalyptic suicide cult famed for its dramatic armed fight against authorities in the town of Waco, USA, in 1993', 'Theist', 'Heaven or hell', 'The Bible	'),
(11, '22dc94687119738', 'Buddhism', 'Hinduism', 'India', '1st millennium ', 'Traditions based on teachings attributed to Siddhartha Gauta', ' The belief that meditation and good living can break the cycle of reincarnation and result in enlightenment', 'Atheist', 'Reincarnation until escape', 'Multifaceted	'),
(12, '86aeb02d4ea8a42', 'Celtic Paganism', 'Prehistoric', 'UK', 'prehistoric', '', 'Modern reconstructions of Celtic paganism form part of the neo-pagan range of religions', 'Not known', '', 'None	'),
(13, '13c9011ac1f4303', 'Chen Tao', 'Christianity and Buddhism', 'Taiwan', '1996 CE', 'By Hon Ming Chen', 'A series of civilisations on Earth have arisen but destroyed themselves in nuclear war. Each time, some faithful believers were rescued by flying saucers and put back on Earth', 'Theist', 'Yes', '	'),
(14, '95615579647faa8', 'Chinese Religion', 'Prehistoric', 'China', 'prehistoric', '', 'A varied cultural religion practiced traditionally on a town-by-town and region-by-region basis', 'Atheist', 'Reincarnation until escape', 'None	'),
(15, '9ac99b06cc6d454', 'Christadelphians', 'Christianity', 'USA', '1840s CE', 'By Dr John Thomas', ' Bible-based Christianity', 'Monotheist', 'Heaven or hell', 'The Bible	'),
(16, 'b8480bdb23ac77b', 'Christian Apostolic Church In Zion ', 'Christianity', 'USA', '1895 CE', 'John Alexander Dowie', ' Fundamentalist Anti-science flat-earth Christian cult, who also predicted the End of the World would occur 4 different times', 'Theist', 'Heaven or hell', 'The Bible	'),
(17, 'bcf58b19077aa77', 'Christianity', 'Judaism6 and paganism7', 'Roman Empire', '1st-3rd century', 'Multiple Greek writers. St Paul', ' Belief that a single creator god had a son, Jesus Christ, born to a human mother, and that Jesus crucifixion by the Romans brings salvation', 'Monotheist', 'Heaven or hell', 'The Bible	'),
(18, 'dfbcf9072d34a1c', 'Concerned Christians', 'Christianity', 'USA', '1980s CE', 'Monte Kim Miller', ' Fundamentalist Christians active in USA, Israel and Greece who expected the end of the world in year 2000, starting with a nuclear attack on the USA, which they appeared to be trying to instigate themselves', 'Theist', 'Heaven or hell', 'The Bible	'),
(19, 'a2fcab23dee2433', 'Confucianism', 'Chinese religion', 'China', '-551 to 479 BCE', 'By Confucius', ' A collection of ethical and moral teachings', 'Atheist', '', 'None	'),
(20, '3e0eb0f5f9dc18e', 'Dami Xuanjiao', 'Christianity', 'South Korea', '1980s CE', '', 'A millenarian cult based on the belief that Jesus would return to judge survivors in 1999. Suspected of being on the verge of mass suicide after predictions of the end of the world failed in year 2000', 'Theist', 'Yes', '	'),
(21, 'ea7b62203faf067', 'deism', 'theism', 'Prehistoric/uni', 'prehistoric', '', 'Belief in a single creator god who is not \'personal\' and does not have human emotions, and which many believers say does not interact with the world', 'Monotheist', 'Not defined', 'None	'),
(22, '50c04e702880665', 'Divine Lightmission', 'Hinduism', 'India', '1960 CE', 'Indian guru Shri Hans Ju Maharaj', 'A self-help religious group involving meditation, with few fixed beliefs', 'Hard to tell', '', 'None	'),
(23, '6b91ce0ab8a4c72', 'Druidism', 'Prehistoric', 'UK', 'prehistoric', '', 'Celtic religion in prehistoric England. Modern reconstructed Druidism is part of the neo-pagan range of religions', 'Not known/polyt', 'Reincarnation', 'None	'),
(24, '4c31747ebc30746', 'Druze', 'Islam', 'Egypt', '11th century', '', 'A semi-secretive esoteric religion with features of a Mystery Religion', 'Monotheist', '', 'Qur\'an, Rasa\'il al-hikma (Epis'),
(25, '9237be40d1b0bda', 'dualism', 'Natural thought', 'Prehistoric/uni', '', '', 'Belief that either (1) There is a good and evil god of equal, or almost-equal power, or (2) there are two gods, such as a male and female one', 'Dualist', 'Not defined', 'Multifaceted	'),
(26, '149a208c25fbf41', 'Ebionites', 'Judaism', 'Judea (now Isra', '1st century', '', '1st century Jewish Christians, possibly the earliest form of Christianity to exist', 'Monotheist', '', 'Early version of the Gospel of'),
(27, '2e4981731a3677a', 'Eckankar', 'New Age', 'USA', '1965 CE', 'By Paul Twitchell', ' New Age religion, a mix of Sant Mat, Theosophy and Scientology', 'Monotheist', 'Reincarnation until escape', 'Shariyat-Ki-Sugmad9	'),
(28, '215294c6abc7d6c', 'Gnosticism', 'Prehistoric', 'Greece', 'prehistoric (1s', '', 'The belief that we must escape from this world, which was created and is ruled by an inferior and unworthy god, and reunite with the true god', 'Polytheist', '', 'Multifaceted	'),
(29, '4bffdc7238a172b', 'Hare Krishna', 'Hinduism', 'USA', '1966 CE', 'By A. C. Bhaktivedanta Swami Prabhupada', 'The embracing of Krishna through correct living, honesty, spiritual life and austerity', 'Polytheist', 'Reincarnation until escape', 'Various Indian scriptures	'),
(30, '3d34a77eb9bd76a', 'Heathenism', 'Asatru', 'Scandinavia', '', '', 'Modern uptake of Nordic religion. Part of the neo-pagan range of religions', 'Polytheist', '', 'None	'),
(31, 'c5e01e2a5eebbda', 'Heaven\'s Gate', 'Christianity and New Age', 'USA', '1970s CE', 'Marshall Applewhite and Bonnie Nettles', ' Apocalyptic suicide cult who combined Biblical eschatology with New Age and ideas about UFOs. All 39 members committed suicide in San Diego, USA in 1997', 'Theist', 'Yes', '	'),
(32, 'ca4a34a958569bd', 'Hinduism', 'Prehistoric', 'India', 'prehistoric', '', ' Cultural religion of India which was historically decentralized and disparate and not a single belief system. Western influence made it into a single religion, an identity which Hindus now accept', 'Polytheist', 'Reincarnation until escape', 'Multifaceted	'),
(33, '1f850af8943fea5', 'Hookers For Jesus / The Family Of God', 'Christianity', 'USA', '1968 CE', 'David Berg', ' Sexually promiscuous group who fell foul of police suspicion. As is often the case, increasing pressure from outside resulted in the group retreating even further into insanity, and they became The Family, predicting the end of the world', 'Theist', 'Heaven or hell', 'The Bible	'),
(34, '1176c5879ab3452', 'Humanism', 'The enlightenment', 'Europe', 'The Enlightenme', 'Enlightenment thinkers', 'An organized form of atheism where moral and ethical goodness is emphasized', 'Atheist', 'None', 'None	'),
(35, '9466a8389a403f2', 'Islam', 'Judaism', 'Saudi Arabia', '0610 CE', 'By Muhammad', ' Strict monotheism taught by Muhammad, the world\'s 2nd largest religion', 'Monotheist', 'Heaven or hell', 'Qur\'an and Hadiths	'),
(36, '4ba505a27acd060', 'Jainism', 'Prehistoric', 'India', 'prehistoric', '', ' Beliefs include non-violence and equality of all living things', 'Atheist', 'Reincarnation until escape', 'Multifaceted	'),
(37, 'da3c688b63ac9e5', 'Jedi Knights', 'Science fiction', 'UK', '2001 CE', 'Campaign for UK Census', 'A campaign saw many put this down as their religion on the UK census in 2001. Midichlorians exist in all living beings, which create a \'living force\' that can be interacted with', 'Animist', 'Select few', 'None	'),
(38, 'daa9b9a2f990a2d', 'Jehovah\'s Witnesses', 'Christianity', 'USA', '1870s CE', 'By Charles Taze Russell', ' A 140-year-old Christian fundamentalist/literalist organisation famous for preaching that the world is about to end (nowadays - because of the existence of the United Nations)', 'Monotheist', 'Other', 'The Bible	'),
(39, '2f986eaf65a5fe7', 'Judaism', 'Prehistoric', 'Babylon (mostly', '1st millennium ', 'Combination of prehistoric practices which became organized ', ' Organized Judaism emerged from Babylonian writings. Belief that God has a special contract with a Hebrew tribe, involving many specific rules of behaviour', 'Monotheist', 'Yes', 'Tanakh and Talmud	'),
(40, 'def409384226ed7', 'Mennonite', 'Christianity', 'Central Europe', '', '', ' A Protestant Christian denomination', 'Monotheist', 'Heaven or hell', 'The Bible	'),
(41, '9f4ec6af2eef243', 'Mithraism', 'Roman mystery religions', 'Greece', '-50 BCE to 50 C', '', 'Roman mystery religion that believed that the Son of the Sun was a saviour who was sacrificed for the good of all', 'Monotheist', 'Yes', 'Not known	'),
(42, '0bcf7f1ba0b5fe4', 'monotheism', 'Natural thought', 'Prehistoric/uni', '', '', 'Belief in a single creator god', 'Theist', 'Not defined', 'Multifaceted	'),
(43, '918cc147a063df2', 'Mysticism', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'The belief that God is unknowable but accessible, and that doctrinal religion hampers spiritual growth', 'Not defined', 'Not defined', 'Multifaceted	'),
(44, '570a96a975b419f', 'Native American Church', 'The Peyote religion', 'Mexico', '1880s CE', 'By Quanah Parker', 'Beliefs vary from tribe to tribe and are sometimes noticeably Christian', 'Monotheist', '', 'None	'),
(45, '3d48eb4b9df8fec', 'New Age', 'Counterculture', 'The West', '1850s CE', 'Popular beliefs from the 1850s, attaining identification in ', 'A disparate and diverse collection of popular beliefs and practices', 'Not defined', 'Other', 'None	'),
(46, '0b1456cff63199e', 'no religion', 'Natural thought', 'Prehistoric/uni', '', '', 'The rise secularisation has seen public and private religion decline throughout the developed world', 'Not defined', 'Not defined', 'None	'),
(47, 'f1633ae0eb21608', 'occultism', 'Counterculture', 'Prehistoric/uni', '', '', 'Normally existing within other belief systems, occult systems concentrate on esoteric meanings in texts, often with magical undertones', 'Not defined', 'Not defined', 'Multifaceted	'),
(48, '1a32829d9c07c5a', 'Order Of The Solar Temple', 'Christianity and New Age', 'France', '1984 CE', 'Joseph Di Mambro & Luc Jouret', 'Apocalyptic suicide cult, with mass suicides in Switzerland, France and Quebec, in preparation for Jesus second coming', 'Theist', 'Yes', 'The Bible and other	'),
(49, '881a16ccd9c2c57', 'Paganism', 'Counterculture', 'The West', '19th century', 'Romantic revival of interest in Celtic, Greek and pre-Christ', 'Part of the neo-pagan range of religions', 'Polytheist', 'Yes', 'None	'),
(50, 'a8f67c1b812d92b', 'pantheism', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'God is everywhere, and everything, but is not transcendent and may have no distinct consciousness', 'Monotheist', '', 'None	'),
(51, '79e621ca9261cb8', 'Pastafarianism', 'Parody', 'USA', '2005 CE', 'By Bobby Henderson', 'A parody religion based on worship of the Flying Spaghetti Monster', 'Monotheist', 'Heaven or hell', 'Gospel of the Flying Spaghetti'),
(52, '564f9dd39ae0343', 'People\'s Temple', 'Christianity', 'USA', '1960s CE', 'Rev. James (Jim) Warren Jones', ' Apocalyptic suicide cult that imploded, resulting in the deaths of over 600 adults and 276 children', 'Theist', 'Heaven or hell', 'The Bible	'),
(53, '1fdeb621618a885', 'polytheism', 'Natural thought', 'Prehistoric/uni', '', '', 'Belief in multiple gods, often in some form of hierarchy', 'Theist', 'Not defined', 'Multifaceted	'),
(54, '448a078164c7894', 'Raja Yoga', 'Hinduism', 'India', '', '', 'An astika school of Hindu philosophy based around mastering and quieting the mind, involving meditation', 'Polytheist', '', 'The Yoga Sutras of Patanjali	'),
(55, '01cd1575df27167', 'Rastafarian', 'Christianity', 'Jamaica', '1930s CE', '', ' God (called Jah) fathered a black Jesus; marijuana use in rituals', 'Monotheist', '', 'The Bible (generally)	'),
(56, 'effaafb08944bb9', 'Ravidassia', 'Hinduism and Sikhism', 'India', '14th century', 'By the guru Ravidass', 'Souls are part of the divine and proper living allows us to realize God', 'Monotheist', '', 'Amritbani Guru Ravidass Ji	'),
(57, '924a1961d570850', 'Salvation Army', 'Christianity (Methodist)', 'UK', '1865 CE', 'By Methodist minister William Booth', ' Christian organisation of evangelists organised along military lines, famous for charity work', 'Monotheist', 'Heaven or hell', 'The Bible	'),
(58, '0198e60b7e97410', 'Santería', 'Christianity and West African ', 'Cuba', '', '', 'A combination of West African, Caribbean beliefs with some elements of Roman Catholicism', 'Monotheist', '', 'None	'),
(59, '0baae3b6d32033f', 'Satanism', 'Atheism', 'USA', '1966 CE', 'By Anton Lavey', ' An atheist religion that uses dark and evil symbology for self-development and anti-religious purposes - Satan itself is not a real being, just a symbol', 'Atheist', 'None', 'Writings of founder and leader'),
(60, '695f0a17c665233', 'Scientology', 'Science fiction', 'USA', '1952 CE', 'By L. Ron Hubbard', 'Derived from the writings of science fiction author L. Ron Hubbard, a series of practices called Dianetics is used to clear minds of alien influences and attain a state of mental perfection', 'Atheist', 'Reincarnation', 'Writings of founder and leader'),
(61, '88a7491dae693ab', 'Shamanism', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'Belief that Shamans need to keep good relations with tribal ancestor spirits for the good fortune of the whole tribe', 'Not defined', 'Yes', 'None	'),
(62, 'f129563e30b4dc9', 'Shinto', 'Japanese culture', 'Japan', '3rd century BCE', 'Gradually formed', ' Official collection of practices in Japan, more cultural than religious', 'Atheist', '', 'Various	'),
(63, 'a76ec6fa52a31fd', 'Sikhism', 'Hinduism', 'India', '15th century', 'By Guru Nanak', ' Prayer, meditation and self control to become a soldier of God', 'Monotheist', 'Reincarnation until escape', 'Sri Guru Granth Sahib and othe'),
(64, 'a7f9a59364db537', 'Spiritualism', 'Christianity and New Age', 'USA', '1848 CE', 'By fraudsters Kate and Margaret Fox', 'The belief that the souls of the dead communicate with the living, mostly through Mediums, but, suffered serious credibility problems with the original founders admitted to fraudulently inventing the \'rappings\' that formed the communications', 'Not defined', 'Yes', 'None	'),
(65, '16d41e777f50e18', 'sun worship', 'Prehistoric', 'Universal', 'prehistoric', '', 'The basis of much symbology used in many subsequent religions', 'Not defined', 'Not defined', 'None	'),
(66, 'b69cc5c18e4f713', 'Taoism', 'Chinese philosophy', 'China', '3rd century BCE', 'Based on teachings attributed to Lao Tzu', ' A relaxed and peaceful religion based on following and accepting the flow of life', 'Atheist', 'None', 'Tao Te Ching	'),
(67, '777b81ecdfc6ed6', 'theism', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'The belief in god(s)', '', '', 'Multifaceted	'),
(68, 'abb92bb90bb8d98', 'Thelema', 'Occultism', 'UK', '1904 CE', 'By Aleister Crowley', 'A magical system of discerning True Will with inspiration from a host of Egyptian gods', 'Polytheist', '', 'Book of the Law	'),
(69, '4e38d9cd4478224', 'Theosophy', 'Spiritualism and Westernized I', 'USA', '1875 CE', 'By Madame Blavatsky', 'Mired in fraud arrests and exposés, the Spiritualism scene had soured, so Madame Blavatsky reinvented her routine as a new religion, using an Indian theme', '', 'Yes', '	'),
(70, '782a98917aa61e6', 'Traditional African Church', 'Christianity and African cultu', 'Africa', '', '', 'A range of Churches ranging from mostly Christian, to those mostly encapsulating native African spirituality', 'Monotheist', '', 'The Bible	'),
(71, 'beb75c04b264907', 'Unification Church', 'Christianity', 'South Korea', '1954 CE', 'By Sun Myung Moon', 'Sun Myung Moon embodied the Second Coming of Christ, and his commercialist church runs a media empire', 'Monotheist', 'Heaven or hell', 'The Bible and The Exposition o'),
(72, '3cd193addc8b3bf', 'Unitarianism', 'Christianity', 'Poland, Lithuan', '16th century', '', 'A liberal and non-Trinitarian Christian church', 'Monotheist', 'Heaven', 'The Bible	'),
(73, '7f4891d56c327f8', 'Unitarian-universalism', 'Christianity', 'USA', '19th century', '', ' A liberal and diverse pluralist religion accepting of believers without needing them to leave their current religions', 'Not defined', 'Heaven', 'Multifaceted	'),
(74, '565c6e8f440f630', 'Unitas Fratrum', 'Christianity (Protestant)', 'Bohemia (now Cz', '1457 CE', '', ' A Protestant Christian denomination', 'Monotheist', 'Heaven or hell', 'The Bible	'),
(75, '2b125acf18cab74', 'universalism', 'Natural thought', 'Prehistoric/uni', '', '', 'Belief that all people go to heaven', 'Theist', 'Heaven', 'Multifaceted	'),
(76, '739b7f4a4db62ec', 'Voodoo', 'African traditional theology', 'Africa', 'prehistoric', '', 'A traditional religion from Haiti with an ethical focus on combating greed and promoting honour', 'Deist', '', 'None	'),
(77, '6ba810868f7efaa', 'Wicca', 'Counterculture', 'UK', '1954 CE', 'By Gerald Gardner', 'Neo-pagan organisation based around reconstructed elements of folklore', 'Dualist', 'Not defined', 'None	'),
(78, '766b9d97ca70247', 'Witchcraft', 'Natural thought', 'Prehistoric/uni', '', '', 'A description of various cultural practices, which are often part of a parent belief system', 'Not defined', 'Not defined', 'Multifaceted	'),
(79, 'a3a9fdfef8243cf', 'Yezidism', 'Zoroastrianism and ancient Mes', 'Assyria (now Ir', '12th century', 'By Abi ibn Musafir', 'An ancient religion. Malek Taus looks after the world with 6 other angels. Heavily persecuted by Muslims and accused of Devil Worship', 'Monotheist', 'Reincarnation', 'Yezidi Book of Revelation & Bl'),
(80, 'e734352451595e9', 'Zhu Shen Jiao', 'The Shouters', 'China', '1993 CE', '', 'As this group got more and more excited about establishing a Kingdom of God, in the approach to year 2000, its leaders were arrested amid fears that it would turn into a suicide cult', 'Theist', 'Yes', '	'),
(81, '01e9dd5b9caf71a', 'Zoroastrianism', 'Prehistoric', 'Persia (now Ira', 'before 5th cent', 'By Zoroaster', 'An ancient dualistic religion from Iran with one good god (Ahura Mazda) and one evil one (Ahriman)', 'Dualist', '', 'Avesta	');

-- --------------------------------------------------------

--
-- Estrutura da tabela `state`
--

CREATE TABLE `state` (
  `id` smallint(4) NOT NULL,
  `id_country` smallint(4) NOT NULL,
  `name` varchar(300) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `longitude` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `state`
--

INSERT INTO `state` (`id`, `id_country`, `name`, `latitude`, `longitude`) VALUES
(1, 30, 'Rio de Janeiro', '-22.9035', '-43.2096 22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `type_notification`
--

CREATE TABLE `type_notification` (
  `id_type_notification` smallint(4) NOT NULL,
  `label` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `level` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `type_notification`
--

INSERT INTO `type_notification` (`id_type_notification`, `label`, `description`, `level`) VALUES
(1, 'offence', 'Common law offences are crimes under English criminal law and the related criminal law of other Commonwealth countries. They are offences under the common law, developed entirely by the law courts, and therefore have no specific bases in statute.', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `type_public_place`
--

CREATE TABLE `type_public_place` (
  `id` smallint(4) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `type_public_place`
--

INSERT INTO `type_public_place` (`id`, `name`) VALUES
(1, 'street'),
(2, 'avenue');

-- --------------------------------------------------------

--
-- Estrutura da tabela `type_user`
--

CREATE TABLE `type_user` (
  `id_type_user` smallint(4) NOT NULL,
  `label` varchar(20) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id_user` smallint(4) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `nick_name` varchar(10) NOT NULL,
  `cell_phone` varchar(20) NOT NULL,
  `public_place` varchar(200) DEFAULT NULL,
  `type_public_place` smallint(4) DEFAULT NULL,
  `postal_code` varchar(15) DEFAULT NULL,
  `public_place_number` int(6) DEFAULT NULL,
  `id_state` smallint(4) NOT NULL,
  `id_religion` smallint(4) DEFAULT NULL,
  `id_gender` smallint(4) NOT NULL,
  `sex` int(1) NOT NULL COMMENT '0 : famele, 1 : male',
  `id_type` smallint(4) NOT NULL COMMENT 'Type of user',
  `id_entity` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id_user`, `first_name`, `last_name`, `nick_name`, `cell_phone`, `public_place`, `type_public_place`, `postal_code`, `public_place_number`, `id_state`, `id_religion`, `id_gender`, `sex`, `id_type`, `id_entity`) VALUES
(1, 'Caio', 'Ibraim', 'JF$#S**WTG', '+55 21 96863 - 9055', NULL, 1, NULL, NULL, 1, 39, 0, 0, 0, 0),
(2, 'Yuri', 'Ibraim', 'ATW#SJ@U@D', '+55 21 96863 - 9000', 'Rua Arnaldo Tavares', 1, '24467620', 1818, 1, 1, 0, 0, 0, 0),
(3, 'Teste', 'Ibraim', '8', '21 2605-9692', 'Av. Marechal Deodoro', 2, '', 0, 1, 1, 1, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `division_type`
--
ALTER TABLE `division_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entity`
--
ALTER TABLE `entity`
  ADD PRIMARY KEY (`id_entity`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id_follow`),
  ADD KEY `id_user_follower` (`id_user_follower`),
  ADD KEY `id_user_followed` (`id_user_followed`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id_gender`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notification`),
  ADD KEY `id_type_notification` (`id_type_notification`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `notification_offence`
--
ALTER TABLE `notification_offence`
  ADD PRIMARY KEY (`id_notification_offence`),
  ADD KEY `id_notification` (`id_notification`),
  ADD KEY `id_country` (`id_country`),
  ADD KEY `id_offence` (`id_offence`);

--
-- Indexes for table `notification_views`
--
ALTER TABLE `notification_views`
  ADD PRIMARY KEY (`id_notification_views`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `occurrence`
--
ALTER TABLE `occurrence`
  ADD PRIMARY KEY (`id_occurrence`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_offence` (`id_offence`),
  ADD KEY `id_place` (`id_place`);

--
-- Indexes for table `offence`
--
ALTER TABLE `offence`
  ADD PRIMARY KEY (`id_offence`),
  ADD KEY `id_country` (`id_country`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id_place`),
  ADD KEY `id_country` (`id_country`),
  ADD KEY `id_division` (`id_division`);

--
-- Indexes for table `relationship`
--
ALTER TABLE `relationship`
  ADD PRIMARY KEY (`id_relationship`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country` (`id_country`);

--
-- Indexes for table `type_notification`
--
ALTER TABLE `type_notification`
  ADD PRIMARY KEY (`id_type_notification`);

--
-- Indexes for table `type_public_place`
--
ALTER TABLE `type_public_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_user`
--
ALTER TABLE `type_user`
  ADD PRIMARY KEY (`id_type_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `nick` (`nick_name`),
  ADD UNIQUE KEY `cell_phone` (`cell_phone`),
  ADD KEY `id_religion` (`id_religion`),
  ADD KEY `type_public_place` (`type_public_place`),
  ADD KEY `id_gender` (`id_gender`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `division_type`
--
ALTER TABLE `division_type`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entity`
--
ALTER TABLE `entity`
  MODIFY `id_entity` smallint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id_follow` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id_gender` smallint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id_notification` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_offence`
--
ALTER TABLE `notification_offence`
  MODIFY `id_notification_offence` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_views`
--
ALTER TABLE `notification_views`
  MODIFY `id_notification_views` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `occurrence`
--
ALTER TABLE `occurrence`
  MODIFY `id_occurrence` smallint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offence`
--
ALTER TABLE `offence`
  MODIFY `id_offence` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id_place` smallint(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relationship`
--
ALTER TABLE `relationship`
  MODIFY `id_relationship` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `type_notification`
--
ALTER TABLE `type_notification`
  MODIFY `id_type_notification` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `type_public_place`
--
ALTER TABLE `type_public_place`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type_user`
--
ALTER TABLE `type_user`
  MODIFY `id_type_user` smallint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`id_user_follower`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`id_user_followed`) REFERENCES `user` (`id_user`);

--
-- Limitadores para a tabela `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Limitadores para a tabela `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`id_type_notification`) REFERENCES `type_notification` (`id_type_notification`),
  ADD CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Limitadores para a tabela `notification_offence`
--
ALTER TABLE `notification_offence`
  ADD CONSTRAINT `notification_offence_ibfk_1` FOREIGN KEY (`id_notification`) REFERENCES `notification` (`id_notification`),
  ADD CONSTRAINT `notification_offence_ibfk_2` FOREIGN KEY (`id_country`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `notification_offence_ibfk_3` FOREIGN KEY (`id_offence`) REFERENCES `offence` (`id_offence`);

--
-- Limitadores para a tabela `notification_views`
--
ALTER TABLE `notification_views`
  ADD CONSTRAINT `notification_views_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Limitadores para a tabela `occurrence`
--
ALTER TABLE `occurrence`
  ADD CONSTRAINT `occurrence_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `occurrence_ibfk_2` FOREIGN KEY (`id_offence`) REFERENCES `offence` (`id_offence`),
  ADD CONSTRAINT `occurrence_ibfk_3` FOREIGN KEY (`id_place`) REFERENCES `place` (`id_place`);

--
-- Limitadores para a tabela `offence`
--
ALTER TABLE `offence`
  ADD CONSTRAINT `offence_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `country` (`id`);

--
-- Limitadores para a tabela `place`
--
ALTER TABLE `place`
  ADD CONSTRAINT `place_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `place_ibfk_2` FOREIGN KEY (`id_division`) REFERENCES `division` (`id`);

--
-- Limitadores para a tabela `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `country` (`id`);

--
-- Limitadores para a tabela `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_religion`) REFERENCES `religion` (`id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`type_public_place`) REFERENCES `type_public_place` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
