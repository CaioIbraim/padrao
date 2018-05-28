-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Maio-2018 às 20:24
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
