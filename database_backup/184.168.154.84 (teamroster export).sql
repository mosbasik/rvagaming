
-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 184.168.154.84
-- Generation Time: Mar 25, 2014 at 10:04 PM
-- Server version: 5.0.96
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `information_schema`
--
CREATE DATABASE `information_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `information_schema`;

-- --------------------------------------------------------

--
-- Table structure for table `CHARACTER_SETS`
--

CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATE_NAME` varchar(64) NOT NULL default '',
  `DESCRIPTION` varchar(60) NOT NULL default '',
  `MAXLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CHARACTER_SETS`
--

INSERT INTO `CHARACTER_SETS` VALUES('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2);
INSERT INTO `CHARACTER_SETS` VALUES('dec8', 'dec8_swedish_ci', 'DEC West European', 1);
INSERT INTO `CHARACTER_SETS` VALUES('cp850', 'cp850_general_ci', 'DOS West European', 1);
INSERT INTO `CHARACTER_SETS` VALUES('hp8', 'hp8_english_ci', 'HP West European', 1);
INSERT INTO `CHARACTER_SETS` VALUES('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1);
INSERT INTO `CHARACTER_SETS` VALUES('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1);
INSERT INTO `CHARACTER_SETS` VALUES('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1);
INSERT INTO `CHARACTER_SETS` VALUES('swe7', 'swe7_swedish_ci', '7bit Swedish', 1);
INSERT INTO `CHARACTER_SETS` VALUES('ascii', 'ascii_general_ci', 'US ASCII', 1);
INSERT INTO `CHARACTER_SETS` VALUES('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3);
INSERT INTO `CHARACTER_SETS` VALUES('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2);
INSERT INTO `CHARACTER_SETS` VALUES('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1);
INSERT INTO `CHARACTER_SETS` VALUES('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1);
INSERT INTO `CHARACTER_SETS` VALUES('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2);
INSERT INTO `CHARACTER_SETS` VALUES('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1);
INSERT INTO `CHARACTER_SETS` VALUES('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2);
INSERT INTO `CHARACTER_SETS` VALUES('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1);
INSERT INTO `CHARACTER_SETS` VALUES('cp1250', 'cp1250_general_ci', 'Windows Central European', 1);
INSERT INTO `CHARACTER_SETS` VALUES('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2);
INSERT INTO `CHARACTER_SETS` VALUES('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1);
INSERT INTO `CHARACTER_SETS` VALUES('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1);
INSERT INTO `CHARACTER_SETS` VALUES('utf8', 'utf8_general_ci', 'UTF-8 Unicode', 3);
INSERT INTO `CHARACTER_SETS` VALUES('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2);
INSERT INTO `CHARACTER_SETS` VALUES('cp866', 'cp866_general_ci', 'DOS Russian', 1);
INSERT INTO `CHARACTER_SETS` VALUES('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1);
INSERT INTO `CHARACTER_SETS` VALUES('macce', 'macce_general_ci', 'Mac Central European', 1);
INSERT INTO `CHARACTER_SETS` VALUES('macroman', 'macroman_general_ci', 'Mac West European', 1);
INSERT INTO `CHARACTER_SETS` VALUES('cp852', 'cp852_general_ci', 'DOS Central European', 1);
INSERT INTO `CHARACTER_SETS` VALUES('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1);
INSERT INTO `CHARACTER_SETS` VALUES('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1);
INSERT INTO `CHARACTER_SETS` VALUES('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1);
INSERT INTO `CHARACTER_SETS` VALUES('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1);
INSERT INTO `CHARACTER_SETS` VALUES('binary', 'binary', 'Binary pseudo charset', 1);
INSERT INTO `CHARACTER_SETS` VALUES('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1);
INSERT INTO `CHARACTER_SETS` VALUES('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2);
INSERT INTO `CHARACTER_SETS` VALUES('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3);

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_STATISTICS`
--

CREATE TEMPORARY TABLE `CLIENT_STATISTICS` (
  `CLIENT` varchar(64) NOT NULL default '',
  `TOTAL_CONNECTIONS` bigint(21) NOT NULL default '0',
  `CONCURRENT_CONNECTIONS` bigint(21) NOT NULL default '0',
  `CONNECTED_TIME` bigint(21) NOT NULL default '0',
  `BUSY_TIME` bigint(21) NOT NULL default '0',
  `CPU_TIME` bigint(21) NOT NULL default '0',
  `BYTES_RECEIVED` bigint(21) NOT NULL default '0',
  `BYTES_SENT` bigint(21) NOT NULL default '0',
  `BINLOG_BYTES_WRITTEN` bigint(21) NOT NULL default '0',
  `ROWS_FETCHED` bigint(21) NOT NULL default '0',
  `ROWS_UPDATED` bigint(21) NOT NULL default '0',
  `TABLE_ROWS_READ` bigint(21) NOT NULL default '0',
  `SELECT_COMMANDS` bigint(21) NOT NULL default '0',
  `UPDATE_COMMANDS` bigint(21) NOT NULL default '0',
  `OTHER_COMMANDS` bigint(21) NOT NULL default '0',
  `COMMIT_TRANSACTIONS` bigint(21) NOT NULL default '0',
  `ROLLBACK_TRANSACTIONS` bigint(21) NOT NULL default '0',
  `DENIED_CONNECTIONS` bigint(21) NOT NULL default '0',
  `LOST_CONNECTIONS` bigint(21) NOT NULL default '0',
  `ACCESS_DENIED` bigint(21) NOT NULL default '0',
  `EMPTY_QUERIES` bigint(21) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CLIENT_STATISTICS`
--

-- in use (#1227 - Access denied; you need the PROCESS,SUPER privilege for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `COLLATIONS`
--

CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `ID` bigint(11) NOT NULL default '0',
  `IS_DEFAULT` varchar(3) NOT NULL default '',
  `IS_COMPILED` varchar(3) NOT NULL default '',
  `SORTLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATIONS`
--

INSERT INTO `COLLATIONS` VALUES('big5_chinese_ci', 'big5', 1, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('big5_bin', 'big5', 84, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('dec8_swedish_ci', 'dec8', 3, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('dec8_bin', 'dec8', 69, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp850_general_ci', 'cp850', 4, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp850_bin', 'cp850', 80, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('hp8_english_ci', 'hp8', 6, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('hp8_bin', 'hp8', 72, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('koi8r_general_ci', 'koi8r', 7, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('koi8r_bin', 'koi8r', 74, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin1_german1_ci', 'latin1', 5, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin1_swedish_ci', 'latin1', 8, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin1_danish_ci', 'latin1', 15, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin1_german2_ci', 'latin1', 31, '', 'Yes', 2);
INSERT INTO `COLLATIONS` VALUES('latin1_bin', 'latin1', 47, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin1_general_ci', 'latin1', 48, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin1_general_cs', 'latin1', 49, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin1_spanish_ci', 'latin1', 94, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin2_czech_cs', 'latin2', 2, '', 'Yes', 4);
INSERT INTO `COLLATIONS` VALUES('latin2_general_ci', 'latin2', 9, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin2_hungarian_ci', 'latin2', 21, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin2_croatian_ci', 'latin2', 27, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin2_bin', 'latin2', 77, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('swe7_swedish_ci', 'swe7', 10, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('swe7_bin', 'swe7', 82, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('ascii_general_ci', 'ascii', 11, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('ascii_bin', 'ascii', 65, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('ujis_japanese_ci', 'ujis', 12, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('ujis_bin', 'ujis', 91, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('sjis_japanese_ci', 'sjis', 13, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('sjis_bin', 'sjis', 88, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('hebrew_general_ci', 'hebrew', 16, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('hebrew_bin', 'hebrew', 71, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('tis620_thai_ci', 'tis620', 18, 'Yes', 'Yes', 4);
INSERT INTO `COLLATIONS` VALUES('tis620_bin', 'tis620', 89, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('euckr_korean_ci', 'euckr', 19, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('euckr_bin', 'euckr', 85, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('koi8u_general_ci', 'koi8u', 22, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('koi8u_bin', 'koi8u', 75, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('gb2312_chinese_ci', 'gb2312', 24, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('gb2312_bin', 'gb2312', 86, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('greek_general_ci', 'greek', 25, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('greek_bin', 'greek', 70, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1250_general_ci', 'cp1250', 26, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1250_czech_cs', 'cp1250', 34, '', 'Yes', 2);
INSERT INTO `COLLATIONS` VALUES('cp1250_croatian_ci', 'cp1250', 44, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1250_bin', 'cp1250', 66, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('gbk_chinese_ci', 'gbk', 28, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('gbk_bin', 'gbk', 87, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin5_turkish_ci', 'latin5', 30, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin5_bin', 'latin5', 78, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('armscii8_general_ci', 'armscii8', 32, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('armscii8_bin', 'armscii8', 64, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('utf8_general_ci', 'utf8', 33, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('utf8_bin', 'utf8', 83, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('utf8_unicode_ci', 'utf8', 192, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_icelandic_ci', 'utf8', 193, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_latvian_ci', 'utf8', 194, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_romanian_ci', 'utf8', 195, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_slovenian_ci', 'utf8', 196, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_polish_ci', 'utf8', 197, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_estonian_ci', 'utf8', 198, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_spanish_ci', 'utf8', 199, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_swedish_ci', 'utf8', 200, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_turkish_ci', 'utf8', 201, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_czech_ci', 'utf8', 202, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_danish_ci', 'utf8', 203, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_lithuanian_ci', 'utf8', 204, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_slovak_ci', 'utf8', 205, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_spanish2_ci', 'utf8', 206, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_roman_ci', 'utf8', 207, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_persian_ci', 'utf8', 208, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_esperanto_ci', 'utf8', 209, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('utf8_hungarian_ci', 'utf8', 210, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_general_ci', 'ucs2', 35, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('ucs2_bin', 'ucs2', 90, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('ucs2_unicode_ci', 'ucs2', 128, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_icelandic_ci', 'ucs2', 129, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_latvian_ci', 'ucs2', 130, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_romanian_ci', 'ucs2', 131, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_slovenian_ci', 'ucs2', 132, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_polish_ci', 'ucs2', 133, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_estonian_ci', 'ucs2', 134, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_spanish_ci', 'ucs2', 135, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_swedish_ci', 'ucs2', 136, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_turkish_ci', 'ucs2', 137, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_czech_ci', 'ucs2', 138, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_danish_ci', 'ucs2', 139, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_lithuanian_ci', 'ucs2', 140, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_slovak_ci', 'ucs2', 141, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_spanish2_ci', 'ucs2', 142, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_roman_ci', 'ucs2', 143, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_persian_ci', 'ucs2', 144, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_esperanto_ci', 'ucs2', 145, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('ucs2_hungarian_ci', 'ucs2', 146, '', 'Yes', 8);
INSERT INTO `COLLATIONS` VALUES('cp866_general_ci', 'cp866', 36, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp866_bin', 'cp866', 68, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('keybcs2_general_ci', 'keybcs2', 37, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('keybcs2_bin', 'keybcs2', 73, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('macce_general_ci', 'macce', 38, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('macce_bin', 'macce', 43, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('macroman_general_ci', 'macroman', 39, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('macroman_bin', 'macroman', 53, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp852_general_ci', 'cp852', 40, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp852_bin', 'cp852', 81, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin7_estonian_cs', 'latin7', 20, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin7_general_ci', 'latin7', 41, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin7_general_cs', 'latin7', 42, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('latin7_bin', 'latin7', 79, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1251_bulgarian_ci', 'cp1251', 14, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1251_ukrainian_ci', 'cp1251', 23, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1251_bin', 'cp1251', 50, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1251_general_ci', 'cp1251', 51, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1251_general_cs', 'cp1251', 52, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1256_general_ci', 'cp1256', 57, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1256_bin', 'cp1256', 67, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1257_lithuanian_ci', 'cp1257', 29, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1257_bin', 'cp1257', 58, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp1257_general_ci', 'cp1257', 59, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('binary', 'binary', 63, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('geostd8_general_ci', 'geostd8', 92, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('geostd8_bin', 'geostd8', 93, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp932_japanese_ci', 'cp932', 95, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('cp932_bin', 'cp932', 96, '', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('eucjpms_japanese_ci', 'eucjpms', 97, 'Yes', 'Yes', 1);
INSERT INTO `COLLATIONS` VALUES('eucjpms_bin', 'eucjpms', 98, '', 'Yes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('big5_chinese_ci', 'big5');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('big5_bin', 'big5');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('dec8_swedish_ci', 'dec8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('dec8_bin', 'dec8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp850_general_ci', 'cp850');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp850_bin', 'cp850');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('hp8_english_ci', 'hp8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('hp8_bin', 'hp8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('koi8r_general_ci', 'koi8r');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('koi8r_bin', 'koi8r');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin1_german1_ci', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin1_swedish_ci', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin1_danish_ci', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin1_german2_ci', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin1_bin', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin1_general_ci', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin1_general_cs', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin1_spanish_ci', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin2_czech_cs', 'latin2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin2_general_ci', 'latin2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin2_hungarian_ci', 'latin2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin2_croatian_ci', 'latin2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin2_bin', 'latin2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('swe7_swedish_ci', 'swe7');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('swe7_bin', 'swe7');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ascii_general_ci', 'ascii');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ascii_bin', 'ascii');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ujis_japanese_ci', 'ujis');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ujis_bin', 'ujis');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('sjis_japanese_ci', 'sjis');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('sjis_bin', 'sjis');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('hebrew_general_ci', 'hebrew');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('hebrew_bin', 'hebrew');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('tis620_thai_ci', 'tis620');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('tis620_bin', 'tis620');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('euckr_korean_ci', 'euckr');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('euckr_bin', 'euckr');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('koi8u_general_ci', 'koi8u');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('koi8u_bin', 'koi8u');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('gb2312_chinese_ci', 'gb2312');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('gb2312_bin', 'gb2312');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('greek_general_ci', 'greek');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('greek_bin', 'greek');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1250_general_ci', 'cp1250');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1250_czech_cs', 'cp1250');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1250_croatian_ci', 'cp1250');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1250_bin', 'cp1250');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('gbk_chinese_ci', 'gbk');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('gbk_bin', 'gbk');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin5_turkish_ci', 'latin5');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin5_bin', 'latin5');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('armscii8_general_ci', 'armscii8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('armscii8_bin', 'armscii8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_general_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_bin', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_unicode_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_icelandic_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_latvian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_romanian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_slovenian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_polish_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_estonian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_spanish_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_swedish_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_turkish_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_czech_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_danish_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_lithuanian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_slovak_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_spanish2_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_roman_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_persian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_esperanto_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('utf8_hungarian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_general_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_bin', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_unicode_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_icelandic_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_latvian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_romanian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_slovenian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_polish_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_estonian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_spanish_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_swedish_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_turkish_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_czech_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_danish_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_lithuanian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_slovak_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_spanish2_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_roman_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_persian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_esperanto_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('ucs2_hungarian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp866_general_ci', 'cp866');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp866_bin', 'cp866');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('keybcs2_general_ci', 'keybcs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('keybcs2_bin', 'keybcs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('macce_general_ci', 'macce');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('macce_bin', 'macce');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('macroman_general_ci', 'macroman');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('macroman_bin', 'macroman');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp852_general_ci', 'cp852');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp852_bin', 'cp852');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin7_estonian_cs', 'latin7');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin7_general_ci', 'latin7');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin7_general_cs', 'latin7');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('latin7_bin', 'latin7');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1251_bulgarian_ci', 'cp1251');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1251_ukrainian_ci', 'cp1251');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1251_bin', 'cp1251');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1251_general_ci', 'cp1251');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1251_general_cs', 'cp1251');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1256_general_ci', 'cp1256');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1256_bin', 'cp1256');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1257_lithuanian_ci', 'cp1257');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1257_bin', 'cp1257');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp1257_general_ci', 'cp1257');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('binary', 'binary');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('geostd8_general_ci', 'geostd8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('geostd8_bin', 'geostd8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp932_japanese_ci', 'cp932');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('cp932_bin', 'cp932');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('eucjpms_japanese_ci', 'eucjpms');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES('eucjpms_bin', 'eucjpms');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMNS`
--

CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(21) NOT NULL default '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL default '',
  `DATA_TYPE` varchar(64) NOT NULL default '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) default NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) default NULL,
  `NUMERIC_PRECISION` bigint(21) default NULL,
  `NUMERIC_SCALE` bigint(21) default NULL,
  `CHARACTER_SET_NAME` varchar(64) default NULL,
  `COLLATION_NAME` varchar(64) default NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL default '',
  `EXTRA` varchar(20) NOT NULL default '',
  `PRIVILEGES` varchar(80) NOT NULL default '',
  `COLUMN_COMMENT` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMNS`
--

INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', 3, '', 'NO', 'varchar', 60, 180, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CHARACTER_SETS', 'MAXLEN', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'CLIENT', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'TOTAL_CONNECTIONS', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'CONCURRENT_CONNECTIONS', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'CONNECTED_TIME', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'BUSY_TIME', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'CPU_TIME', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'BYTES_RECEIVED', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'BYTES_SENT', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'BINLOG_BYTES_WRITTEN', 9, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'ROWS_FETCHED', 10, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'ROWS_UPDATED', 11, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'TABLE_ROWS_READ', 12, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'SELECT_COMMANDS', 13, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'UPDATE_COMMANDS', 14, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'OTHER_COMMANDS', 15, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'COMMIT_TRANSACTIONS', 16, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'ROLLBACK_TRANSACTIONS', 17, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'DENIED_CONNECTIONS', 18, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'LOST_CONNECTIONS', 19, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'ACCESS_DENIED', 20, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'EMPTY_QUERIES', 21, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLLATIONS', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLLATIONS', 'ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLLATIONS', 'IS_DEFAULT', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLLATIONS', 'IS_COMPILED', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLLATIONS', 'SORTLEN', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'COLUMN_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', 6, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'IS_NULLABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'DATA_TYPE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'COLLATION_NAME', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'COLUMN_TYPE', 15, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'COLUMN_KEY', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'EXTRA', 17, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'PRIVILEGES', 18, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'BLOCK_NUM', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'SPACE', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'OFFSET', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'RECORDS', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'DATASIZE', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'FLUSH_TYPE', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'FIX_COUNT', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'LRU_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'PAGE_TYPE_ID', 9, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'PAGE_TYPE', 10, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'INDEX_NAME', 11, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'TABLE_SCHEMA', 12, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'TABLE_NAME', 13, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INDEX_STATISTICS', 'TABLE_SCHEMA', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INDEX_STATISTICS', 'TABLE_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INDEX_STATISTICS', 'INDEX_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INDEX_STATISTICS', 'ROWS_READ', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROCESSLIST', 'ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROCESSLIST', 'USER', 2, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROCESSLIST', 'HOST', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROCESSLIST', 'DB', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROCESSLIST', 'COMMAND', 5, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROCESSLIST', 'TIME', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(7)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROCESSLIST', 'STATE', 7, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROCESSLIST', 'INFO', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROCESSLIST', 'TIME_MS', 9, '0.000', 'NO', 'decimal', NULL, NULL, 22, 3, NULL, NULL, 'decimal(22,3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'QUERY_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'SEQ', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'STATE', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'DURATION', 4, '0.000000', 'NO', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'CPU_USER', 5, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'CPU_SYSTEM', 6, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', 7, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'MESSAGES_SENT', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'SWAPS', 15, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', 16, NULL, 'YES', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'SOURCE_FILE', 17, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'PROFILING', 'SOURCE_LINE', 18, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', 5, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_BODY', 7, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', 9, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', 11, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', 12, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', 13, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'SQL_PATH', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'SECURITY_TYPE', 15, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'CREATED', 16, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'LAST_ALTERED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', 19, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'ROUTINES', 'DEFINER', 20, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'SCHEMATA', 'CATALOG_NAME', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'SCHEMATA', 'SQL_PATH', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'NON_UNIQUE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(1)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'INDEX_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(2)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'COLUMN_NAME', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'COLLATION', 9, NULL, 'YES', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'CARDINALITY', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'SUB_PART', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'PACKED', 12, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'NULLABLE', 13, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'INDEX_TYPE', 14, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'STATISTICS', 'COMMENT', 15, NULL, 'YES', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'TABLE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'ENGINE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'VERSION', 6, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'ROW_FORMAT', 7, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'TABLE_ROWS', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'DATA_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'INDEX_LENGTH', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'DATA_FREE', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'AUTO_INCREMENT', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'CREATE_TIME', 15, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'UPDATE_TIME', 16, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'CHECK_TIME', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'TABLE_COLLATION', 18, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'CHECKSUM', 19, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'CREATE_OPTIONS', 20, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLES', 'TABLE_COMMENT', 21, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_STATISTICS', 'TABLE_SCHEMA', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_STATISTICS', 'TABLE_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_STATISTICS', 'ROWS_READ', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_STATISTICS', 'ROWS_CHANGED', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TABLE_STATISTICS', 'ROWS_CHANGED_X_INDEXES', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', 4, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORDER', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', 10, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', 11, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'ACTION_TIMING', 12, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', 15, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'CREATED', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'TRIGGERS', 'DEFINER', 19, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'USER', 1, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'TOTAL_CONNECTIONS', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'CONCURRENT_CONNECTIONS', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'CONNECTED_TIME', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'BUSY_TIME', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'CPU_TIME', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'BYTES_RECEIVED', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'BYTES_SENT', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'BINLOG_BYTES_WRITTEN', 9, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'ROWS_FETCHED', 10, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'ROWS_UPDATED', 11, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'TABLE_ROWS_READ', 12, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'SELECT_COMMANDS', 13, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'UPDATE_COMMANDS', 14, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'OTHER_COMMANDS', 15, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'COMMIT_TRANSACTIONS', 16, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'ROLLBACK_TRANSACTIONS', 17, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'DENIED_CONNECTIONS', 18, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'LOST_CONNECTIONS', 19, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'ACCESS_DENIED', 20, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'EMPTY_QUERIES', 21, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'VIEWS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'VIEWS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'VIEWS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'VIEWS', 'VIEW_DEFINITION', 4, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'VIEWS', 'CHECK_OPTION', 5, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'VIEWS', 'IS_UPDATABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'VIEWS', 'DEFINER', 7, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'VIEWS', 'SECURITY_TYPE', 8, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_IO_PATTERN', 'SPACE', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_IO_PATTERN', 'OFFSET', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_IO_PATTERN', 'INDEX_ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_IO_PATTERN', 'TABLE_NAME', 4, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_IO_PATTERN', 'INDEX_NAME', 5, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_IO_PATTERN', 'N_READ', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_IO_PATTERN', 'N_WRITE', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_RSEG', 'RSEG_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_RSEG', 'SPACE_ID', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_RSEG', 'PAGE_NO', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_RSEG', 'MAX_SIZE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'information_schema', 'INNODB_RSEG', 'CURR_SIZE', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'User Page', 'personkey', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'User Page', 'fullname', 2, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'User Page', 'facebookid', 3, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'User Page', 'steamname', 4, NULL, 'NO', 'varchar', 25, 75, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(25)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'User Page', 'steamid', 5, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'User Page', 'dotabuffid', 6, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'User Page', 'matchforeignkey', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'facebook', 'facebookid', 1, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', 'PRI', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'facebook', 'personforeignkey', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'heroes', 'name', 1, NULL, 'NO', 'varchar', 25, 75, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(25)', 'PRI', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'heroes', 'path', 2, NULL, 'NO', 'tinytext', 255, 255, NULL, NULL, 'utf8', 'utf8_general_ci', 'tinytext', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'justpeople', 'fullname', 1, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'justpeople', 'backupname', 2, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'justpeople', 'personkey', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'match_winrate', 'total', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'match_winrate', 'won', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'match_winrate', 'rate', 3, NULL, 'YES', 'decimal', NULL, NULL, 24, 1, NULL, NULL, 'decimal(24,1)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'matches', 'numbermembers', 1, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'matches', 'outcome', 2, NULL, 'NO', 'tinytext', 255, 255, NULL, NULL, 'utf8', 'utf8_general_ci', 'tinytext', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'matches', 'type', 3, NULL, 'NO', 'tinytext', 255, 255, NULL, NULL, 'utf8', 'utf8_general_ci', 'tinytext', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'matches', 'mode', 4, NULL, 'NO', 'tinytext', 255, 255, NULL, NULL, 'utf8', 'utf8_general_ci', 'tinytext', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'matches', 'region', 5, NULL, 'NO', 'tinytext', 255, 255, NULL, NULL, 'utf8', 'utf8_general_ci', 'tinytext', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'matches', 'duration', 6, NULL, 'NO', 'tinytext', 255, 255, NULL, NULL, 'utf8', 'utf8_general_ci', 'tinytext', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'matches', 'date', 7, NULL, 'NO', 'tinytext', 255, 255, NULL, NULL, 'utf8', 'utf8_general_ci', 'tinytext', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'matches', 'id', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'people', 'Full Name', 1, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'people', 'Facebook ID', 2, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'people', 'Steam ID', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'people', 'Steam Name', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'people', 'Dotabuff ID', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'people', 'Logoff', 6, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'people', 'Person Key', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'peoplematchesheroes', 'personmatchherokey', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'peoplematchesheroes', 'matchforeignkey', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'peoplematchesheroes', 'personforeignkey', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'peoplematchesheroes', 'heroforeignkey', 4, NULL, 'NO', 'varchar', 25, 75, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(25)', 'MUL', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'steamdotabuff', 'steamdotabuffkey', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'steamdotabuff', 'personforeignkey', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'steamdotabuff', 'steamname', 3, NULL, 'NO', 'varchar', 25, 75, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(25)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'steamdotabuff', 'steamid', 4, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'steamdotabuff', 'ismain', 5, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'steamdotabuff', 'dotabuffid', 6, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'total_matches', 'total', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` VALUES(NULL, 'teamroster', 'won_matches', 'won', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select,insert,update', '');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMN_PRIVILEGES`
--

CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMN_PRIVILEGES`
--


-- --------------------------------------------------------

--
-- Table structure for table `INNODB_BUFFER_POOL_CONTENT`
--

CREATE TEMPORARY TABLE `INNODB_BUFFER_POOL_CONTENT` (
  `BLOCK_NUM` bigint(21) NOT NULL default '0',
  `SPACE` bigint(21) NOT NULL default '0',
  `OFFSET` bigint(21) NOT NULL default '0',
  `RECORDS` bigint(21) NOT NULL default '0',
  `DATASIZE` bigint(21) NOT NULL default '0',
  `FLUSH_TYPE` bigint(21) NOT NULL default '0',
  `FIX_COUNT` bigint(21) NOT NULL default '0',
  `LRU_POSITION` bigint(21) NOT NULL default '0',
  `PAGE_TYPE_ID` bigint(21) NOT NULL default '0',
  `PAGE_TYPE` varchar(64) NOT NULL default '',
  `INDEX_NAME` varchar(64) NOT NULL default '',
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `INNODB_BUFFER_POOL_CONTENT`
--

-- in use (#1227 - Access denied; you need the PROCESS privilege for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INDEX_STATISTICS`
--

CREATE TEMPORARY TABLE `INDEX_STATISTICS` (
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `INDEX_NAME` varchar(64) NOT NULL default '',
  `ROWS_READ` bigint(21) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `INDEX_STATISTICS`
--

INSERT INTO `INDEX_STATISTICS` VALUES('teamroster', 'steamdotabuff', 'PRIMARY', 400420);
INSERT INTO `INDEX_STATISTICS` VALUES('teamroster', 'justpeople', 'PRIMARY', 55848);
INSERT INTO `INDEX_STATISTICS` VALUES('teamroster', 'peoplematchesheroes', 'personforeignkey', 154453432);
INSERT INTO `INDEX_STATISTICS` VALUES('teamroster', 'steamdotabuff', 'personforeignkey', 34652);
INSERT INTO `INDEX_STATISTICS` VALUES('teamroster', 'matches', 'PRIMARY', 81629);
INSERT INTO `INDEX_STATISTICS` VALUES('teamroster', 'peoplematchesheroes', 'matchforeignkey', 4528);

-- --------------------------------------------------------

--
-- Table structure for table `KEY_COLUMN_USAGE`
--

CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(10) NOT NULL default '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) default NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) default NULL,
  `REFERENCED_TABLE_NAME` varchar(64) default NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KEY_COLUMN_USAGE`
--

INSERT INTO `KEY_COLUMN_USAGE` VALUES(NULL, 'teamroster', 'PRIMARY', NULL, 'teamroster', 'facebook', 'facebookid', 1, NULL, NULL, NULL, NULL);
INSERT INTO `KEY_COLUMN_USAGE` VALUES(NULL, 'teamroster', 'facebook_ibfk_1', NULL, 'teamroster', 'facebook', 'personforeignkey', 1, 1, 'teamroster', 'justpeople', 'personkey');
INSERT INTO `KEY_COLUMN_USAGE` VALUES(NULL, 'teamroster', 'PRIMARY', NULL, 'teamroster', 'heroes', 'name', 1, NULL, NULL, NULL, NULL);
INSERT INTO `KEY_COLUMN_USAGE` VALUES(NULL, 'teamroster', 'PRIMARY', NULL, 'teamroster', 'justpeople', 'personkey', 1, NULL, NULL, NULL, NULL);
INSERT INTO `KEY_COLUMN_USAGE` VALUES(NULL, 'teamroster', 'PRIMARY', NULL, 'teamroster', 'matches', 'id', 1, NULL, NULL, NULL, NULL);
INSERT INTO `KEY_COLUMN_USAGE` VALUES(NULL, 'teamroster', 'PRIMARY', NULL, 'teamroster', 'people', 'Person Key', 1, NULL, NULL, NULL, NULL);
INSERT INTO `KEY_COLUMN_USAGE` VALUES(NULL, 'teamroster', 'PRIMARY', NULL, 'teamroster', 'peoplematchesheroes', 'personmatchherokey', 1, NULL, NULL, NULL, NULL);
INSERT INTO `KEY_COLUMN_USAGE` VALUES(NULL, 'teamroster', 'peoplematchesheroes_ibfk_4', NULL, 'teamroster', 'peoplematchesheroes', 'matchforeignkey', 1, 1, 'teamroster', 'matches', 'id');
INSERT INTO `KEY_COLUMN_USAGE` VALUES(NULL, 'teamroster', 'peoplematchesheroes_ibfk_5', NULL, 'teamroster', 'peoplematchesheroes', 'personforeignkey', 1, 1, 'teamroster', 'people', 'Person Key');
INSERT INTO `KEY_COLUMN_USAGE` VALUES(NULL, 'teamroster', 'peoplematchesheroes_ibfk_6', NULL, 'teamroster', 'peoplematchesheroes', 'heroforeignkey', 1, 1, 'teamroster', 'heroes', 'name');
INSERT INTO `KEY_COLUMN_USAGE` VALUES(NULL, 'teamroster', 'PRIMARY', NULL, 'teamroster', 'steamdotabuff', 'steamdotabuffkey', 1, NULL, NULL, NULL, NULL);
INSERT INTO `KEY_COLUMN_USAGE` VALUES(NULL, 'teamroster', 'steamdotabuff_ibfk_1', NULL, 'teamroster', 'steamdotabuff', 'personforeignkey', 1, 1, 'teamroster', 'justpeople', 'personkey');

-- --------------------------------------------------------

--
-- Table structure for table `PROCESSLIST`
--

CREATE TEMPORARY TABLE `PROCESSLIST` (
  `ID` bigint(4) NOT NULL default '0',
  `USER` varchar(16) NOT NULL default '',
  `HOST` varchar(64) NOT NULL default '',
  `DB` varchar(64) default NULL,
  `COMMAND` varchar(16) NOT NULL default '',
  `TIME` bigint(7) NOT NULL default '0',
  `STATE` varchar(64) default NULL,
  `INFO` longtext,
  `TIME_MS` decimal(22,3) NOT NULL default '0.000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROCESSLIST`
--

INSERT INTO `PROCESSLIST` VALUES(3962373, 'teamroster', '72.167.233.37:35931', NULL, 'Query', 0, 'executing', 'SELECT * FROM `information_schema`.`PROCESSLIST`', 1.592);

-- --------------------------------------------------------

--
-- Table structure for table `PROFILING`
--

CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` bigint(20) NOT NULL default '0',
  `SEQ` bigint(20) NOT NULL default '0',
  `STATE` varchar(30) NOT NULL default '',
  `DURATION` decimal(9,6) NOT NULL default '0.000000',
  `CPU_USER` decimal(9,6) default NULL,
  `CPU_SYSTEM` decimal(9,6) default NULL,
  `CONTEXT_VOLUNTARY` bigint(20) default NULL,
  `CONTEXT_INVOLUNTARY` bigint(20) default NULL,
  `BLOCK_OPS_IN` bigint(20) default NULL,
  `BLOCK_OPS_OUT` bigint(20) default NULL,
  `MESSAGES_SENT` bigint(20) default NULL,
  `MESSAGES_RECEIVED` bigint(20) default NULL,
  `PAGE_FAULTS_MAJOR` bigint(20) default NULL,
  `PAGE_FAULTS_MINOR` bigint(20) default NULL,
  `SWAPS` bigint(20) default NULL,
  `SOURCE_FUNCTION` varchar(30) default NULL,
  `SOURCE_FILE` varchar(20) default NULL,
  `SOURCE_LINE` bigint(20) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROFILING`
--


-- --------------------------------------------------------

--
-- Table structure for table `ROUTINES`
--

CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_CATALOG` varchar(512) default NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL default '',
  `ROUTINE_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_TYPE` varchar(9) NOT NULL default '',
  `DTD_IDENTIFIER` varchar(64) default NULL,
  `ROUTINE_BODY` varchar(8) NOT NULL default '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) default NULL,
  `EXTERNAL_LANGUAGE` varchar(64) default NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL default '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL default '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(64) default NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL default '',
  `CREATED` datetime NOT NULL default '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL default '0000-00-00 00:00:00',
  `SQL_MODE` longtext NOT NULL,
  `ROUTINE_COMMENT` varchar(64) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ROUTINES`
--


-- --------------------------------------------------------

--
-- Table structure for table `SCHEMATA`
--

CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) default NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATION_NAME` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(512) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMATA`
--

INSERT INTO `SCHEMATA` VALUES(NULL, 'information_schema', 'utf8', 'utf8_general_ci', NULL);
INSERT INTO `SCHEMATA` VALUES(NULL, 'teamroster', 'utf8', 'utf8_general_ci', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMA_PRIVILEGES`
--

CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMA_PRIVILEGES`
--

INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'SELECT', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'INSERT', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'UPDATE', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'DELETE', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'CREATE', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'DROP', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'INDEX', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'ALTER', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'CREATE TEMPORARY TABLES', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'LOCK TABLES', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'EXECUTE', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'CREATE VIEW', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'SHOW VIEW', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'CREATE ROUTINE', 'NO');
INSERT INTO `SCHEMA_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'teamroster', 'ALTER ROUTINE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `STATISTICS`
--

CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `NON_UNIQUE` bigint(1) NOT NULL default '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL default '',
  `INDEX_NAME` varchar(64) NOT NULL default '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL default '0',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `COLLATION` varchar(1) default NULL,
  `CARDINALITY` bigint(21) default NULL,
  `SUB_PART` bigint(3) default NULL,
  `PACKED` varchar(10) default NULL,
  `NULLABLE` varchar(3) NOT NULL default '',
  `INDEX_TYPE` varchar(16) NOT NULL default '',
  `COMMENT` varchar(16) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STATISTICS`
--

INSERT INTO `STATISTICS` VALUES(NULL, 'teamroster', 'facebook', 0, 'teamroster', 'PRIMARY', 1, 'facebookid', 'A', 14, NULL, NULL, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES(NULL, 'teamroster', 'facebook', 1, 'teamroster', 'personforeignkey', 1, 'personforeignkey', 'A', 14, NULL, NULL, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES(NULL, 'teamroster', 'heroes', 0, 'teamroster', 'PRIMARY', 1, 'name', 'A', 105, NULL, NULL, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES(NULL, 'teamroster', 'justpeople', 0, 'teamroster', 'PRIMARY', 1, 'personkey', 'A', 14, NULL, NULL, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES(NULL, 'teamroster', 'matches', 0, 'teamroster', 'PRIMARY', 1, 'id', 'A', 799, NULL, NULL, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES(NULL, 'teamroster', 'people', 0, 'teamroster', 'PRIMARY', 1, 'Person Key', 'A', 14, NULL, NULL, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES(NULL, 'teamroster', 'peoplematchesheroes', 0, 'teamroster', 'PRIMARY', 1, 'personmatchherokey', 'A', 1449, NULL, NULL, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES(NULL, 'teamroster', 'peoplematchesheroes', 1, 'teamroster', 'matchforeignkey', 1, 'matchforeignkey', 'A', 1449, NULL, NULL, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES(NULL, 'teamroster', 'peoplematchesheroes', 1, 'teamroster', 'personforeignkey', 1, 'personforeignkey', 'A', 17, NULL, NULL, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES(NULL, 'teamroster', 'peoplematchesheroes', 1, 'teamroster', 'heroforeignkey', 1, 'heroforeignkey', 'A', 207, NULL, NULL, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES(NULL, 'teamroster', 'steamdotabuff', 0, 'teamroster', 'PRIMARY', 1, 'steamdotabuffkey', 'A', 21, NULL, NULL, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES(NULL, 'teamroster', 'steamdotabuff', 1, 'teamroster', 'personforeignkey', 1, 'personforeignkey', 'A', 21, NULL, NULL, '', 'BTREE', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLES`
--

CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `TABLE_TYPE` varchar(64) NOT NULL default '',
  `ENGINE` varchar(64) default NULL,
  `VERSION` bigint(21) default NULL,
  `ROW_FORMAT` varchar(10) default NULL,
  `TABLE_ROWS` bigint(21) default NULL,
  `AVG_ROW_LENGTH` bigint(21) default NULL,
  `DATA_LENGTH` bigint(21) default NULL,
  `MAX_DATA_LENGTH` bigint(21) default NULL,
  `INDEX_LENGTH` bigint(21) default NULL,
  `DATA_FREE` bigint(21) default NULL,
  `AUTO_INCREMENT` bigint(21) default NULL,
  `CREATE_TIME` datetime default NULL,
  `UPDATE_TIME` datetime default NULL,
  `CHECK_TIME` datetime default NULL,
  `TABLE_COLLATION` varchar(64) default NULL,
  `CHECKSUM` bigint(21) default NULL,
  `CREATE_OPTIONS` varchar(255) default NULL,
  `TABLE_COMMENT` varchar(80) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLES`
--

INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 576, 0, 8388288, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=14563', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'CLIENT_STATISTICS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 354, 0, 8388384, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=23696', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 423, 0, 8388513, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=19831', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 387, 0, 8388225, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=21675', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2014-03-25 22:04:32', '2014-03-25 22:04:32', NULL, 'utf8_general_ci', NULL, 'max_rows=2178', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2565, 0, 8387550, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3270', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'INNODB_BUFFER_POOL_CONTENT', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 845, 0, 8388315, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=9927', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'INDEX_STATISTICS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 588, 0, 8388408, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=14266', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 4637, 0, 8388333, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=1809', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'PROCESSLIST', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2014-03-25 22:04:32', '2014-03-25 22:04:32', NULL, 'utf8_general_ci', NULL, 'max_rows=11699', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 356, 0, 8388428, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=23563', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2014-03-25 22:04:32', '2014-03-25 22:04:32', NULL, 'utf8_general_ci', NULL, 'max_rows=2293', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3656, 0, 8386864, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=2294', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2179, 0, 8386971, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3849', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2679, 0, 8387949, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3131', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3641, 0, 8385223, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=2303', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2504, 0, 8388400, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3350', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2372, 0, 8387392, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3536', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'TABLE_STATISTICS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 411, 0, 8388510, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=20410', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2014-03-25 22:04:32', '2014-03-25 22:04:32', NULL, 'utf8_general_ci', NULL, 'max_rows=1913', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 1986, 0, 8386878, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4223', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'USER_STATISTICS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 210, 0, 8388450, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=39945', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2014-03-25 22:04:32', '2014-03-25 22:04:32', NULL, 'utf8_general_ci', NULL, 'max_rows=3768', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'INNODB_IO_PATTERN', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 235, 0, 8388560, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=35696', '');
INSERT INTO `TABLES` VALUES(NULL, 'information_schema', 'INNODB_RSEG', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 41, 0, 8388600, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=204600', '');
INSERT INTO `TABLES` VALUES(NULL, 'teamroster', 'User Page', 'VIEW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VIEW');
INSERT INTO `TABLES` VALUES(NULL, 'teamroster', 'facebook', 'BASE TABLE', 'InnoDB', 10, 'Compact', 14, 1170, 16384, 0, 16384, 0, NULL, '2013-09-25 02:07:34', NULL, NULL, 'utf8_general_ci', NULL, '', 'One record for each Facebook profile owned by a member of th; InnoDB free: 0 kB;');
INSERT INTO `TABLES` VALUES(NULL, 'teamroster', 'heroes', 'BASE TABLE', 'InnoDB', 10, 'Compact', 105, 156, 16384, 0, 0, 0, NULL, '2013-09-23 17:14:35', NULL, NULL, 'utf8_general_ci', NULL, '', 'One record for every hero in the game.; InnoDB free: 0 kB');
INSERT INTO `TABLES` VALUES(NULL, 'teamroster', 'justpeople', 'BASE TABLE', 'InnoDB', 10, 'Compact', 14, 1170, 16384, 0, 0, 0, 15, '2013-09-25 02:01:12', NULL, NULL, 'utf8_general_ci', NULL, '', 'One record for every member of the group.; InnoDB free: 0 kB');
INSERT INTO `TABLES` VALUES(NULL, 'teamroster', 'match_winrate', 'VIEW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VIEW');
INSERT INTO `TABLES` VALUES(NULL, 'teamroster', 'matches', 'BASE TABLE', 'InnoDB', 10, 'Compact', 664, 148, 98304, 0, 0, 0, NULL, '2013-09-25 01:39:56', NULL, NULL, 'utf8_general_ci', NULL, '', 'Each record is a match with at least 1 member playing in it.; InnoDB free: 0 kB');
INSERT INTO `TABLES` VALUES(NULL, 'teamroster', 'people', 'BASE TABLE', 'InnoDB', 10, 'Compact', 14, 1170, 16384, 0, 0, 0, 15, '2013-09-12 01:44:13', NULL, NULL, 'utf8_general_ci', NULL, '', 'Has one record for every unique player in our group.; InnoDB free: 0 kB');
INSERT INTO `TABLES` VALUES(NULL, 'teamroster', 'peoplematchesheroes', 'BASE TABLE', 'InnoDB', 10, 'Compact', 1657, 59, 98304, 0, 147456, 0, 15345, '2013-09-24 20:43:52', NULL, NULL, 'utf8_general_ci', NULL, '', 'Has one record for every existing person/match/hero set.; InnoDB free: 0 kB; (`m');
INSERT INTO `TABLES` VALUES(NULL, 'teamroster', 'steamdotabuff', 'BASE TABLE', 'InnoDB', 10, 'Compact', 21, 780, 16384, 0, 16384, 0, 22, '2013-10-05 01:09:16', NULL, NULL, 'utf8_general_ci', NULL, '', 'One record for each Steam/Dotabuff account owned by a group ; InnoDB free: 0 kB;');
INSERT INTO `TABLES` VALUES(NULL, 'teamroster', 'total_matches', 'VIEW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VIEW');
INSERT INTO `TABLES` VALUES(NULL, 'teamroster', 'won_matches', 'VIEW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VIEW');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_CONSTRAINTS`
--

INSERT INTO `TABLE_CONSTRAINTS` VALUES(NULL, 'teamroster', 'PRIMARY', 'teamroster', 'facebook', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES(NULL, 'teamroster', 'facebook_ibfk_1', 'teamroster', 'facebook', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES(NULL, 'teamroster', 'PRIMARY', 'teamroster', 'heroes', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES(NULL, 'teamroster', 'PRIMARY', 'teamroster', 'justpeople', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES(NULL, 'teamroster', 'PRIMARY', 'teamroster', 'matches', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES(NULL, 'teamroster', 'PRIMARY', 'teamroster', 'people', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES(NULL, 'teamroster', 'PRIMARY', 'teamroster', 'peoplematchesheroes', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES(NULL, 'teamroster', 'peoplematchesheroes_ibfk_4', 'teamroster', 'peoplematchesheroes', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES(NULL, 'teamroster', 'peoplematchesheroes_ibfk_5', 'teamroster', 'peoplematchesheroes', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES(NULL, 'teamroster', 'peoplematchesheroes_ibfk_6', 'teamroster', 'peoplematchesheroes', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES(NULL, 'teamroster', 'PRIMARY', 'teamroster', 'steamdotabuff', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES(NULL, 'teamroster', 'steamdotabuff_ibfk_1', 'teamroster', 'steamdotabuff', 'FOREIGN KEY');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_PRIVILEGES`
--

CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_PRIVILEGES`
--


-- --------------------------------------------------------

--
-- Table structure for table `TABLE_STATISTICS`
--

CREATE TEMPORARY TABLE `TABLE_STATISTICS` (
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `ROWS_READ` bigint(21) NOT NULL default '0',
  `ROWS_CHANGED` bigint(21) NOT NULL default '0',
  `ROWS_CHANGED_X_INDEXES` bigint(21) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_STATISTICS`
--

INSERT INTO `TABLE_STATISTICS` VALUES('teamroster', 'justpeople', 55848, 0, 0);
INSERT INTO `TABLE_STATISTICS` VALUES('teamroster', 'matches', 81629, 0, 0);
INSERT INTO `TABLE_STATISTICS` VALUES('teamroster', 'peoplematchesheroes', 154457960, 0, 0);
INSERT INTO `TABLE_STATISTICS` VALUES('teamroster', 'steamdotabuff', 435072, 9, 18);

-- --------------------------------------------------------

--
-- Table structure for table `TRIGGERS`
--

CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) default NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL default '',
  `TRIGGER_NAME` varchar(64) NOT NULL default '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL default '',
  `EVENT_OBJECT_CATALOG` varchar(512) default NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL default '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL default '',
  `ACTION_ORDER` bigint(4) NOT NULL default '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL default '',
  `ACTION_TIMING` varchar(6) NOT NULL default '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL default '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL default '',
  `CREATED` datetime default NULL,
  `SQL_MODE` longtext NOT NULL,
  `DEFINER` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TRIGGERS`
--


-- --------------------------------------------------------

--
-- Table structure for table `USER_PRIVILEGES`
--

CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` VALUES('''teamroster''@''%''', NULL, 'USAGE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `USER_STATISTICS`
--

CREATE TEMPORARY TABLE `USER_STATISTICS` (
  `USER` varchar(16) NOT NULL default '',
  `TOTAL_CONNECTIONS` bigint(21) NOT NULL default '0',
  `CONCURRENT_CONNECTIONS` bigint(21) NOT NULL default '0',
  `CONNECTED_TIME` bigint(21) NOT NULL default '0',
  `BUSY_TIME` bigint(21) NOT NULL default '0',
  `CPU_TIME` bigint(21) NOT NULL default '0',
  `BYTES_RECEIVED` bigint(21) NOT NULL default '0',
  `BYTES_SENT` bigint(21) NOT NULL default '0',
  `BINLOG_BYTES_WRITTEN` bigint(21) NOT NULL default '0',
  `ROWS_FETCHED` bigint(21) NOT NULL default '0',
  `ROWS_UPDATED` bigint(21) NOT NULL default '0',
  `TABLE_ROWS_READ` bigint(21) NOT NULL default '0',
  `SELECT_COMMANDS` bigint(21) NOT NULL default '0',
  `UPDATE_COMMANDS` bigint(21) NOT NULL default '0',
  `OTHER_COMMANDS` bigint(21) NOT NULL default '0',
  `COMMIT_TRANSACTIONS` bigint(21) NOT NULL default '0',
  `ROLLBACK_TRANSACTIONS` bigint(21) NOT NULL default '0',
  `DENIED_CONNECTIONS` bigint(21) NOT NULL default '0',
  `LOST_CONNECTIONS` bigint(21) NOT NULL default '0',
  `ACCESS_DENIED` bigint(21) NOT NULL default '0',
  `EMPTY_QUERIES` bigint(21) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_STATISTICS`
--

-- in use (#1227 - Access denied; you need the PROCESS,SUPER privilege for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `VIEWS`
--

CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL default '',
  `IS_UPDATABLE` varchar(3) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default '',
  `SECURITY_TYPE` varchar(7) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `VIEWS`
--

INSERT INTO `VIEWS` VALUES(NULL, 'teamroster', 'User Page', '/* ALGORITHM=UNDEFINED */ select `teamroster`.`justpeople`.`personkey` AS `personkey`,`teamroster`.`justpeople`.`fullname` AS `fullname`,`teamroster`.`facebook`.`facebookid` AS `facebookid`,`teamroster`.`steamdotabuff`.`steamname` AS `steamname`,`teamroster`.`steamdotabuff`.`steamid` AS `steamid`,`teamroster`.`steamdotabuff`.`dotabuffid` AS `dotabuffid`,`s1`.`matchforeignkey` AS `matchforeignkey` from (((`teamroster`.`peoplematchesheroes` `s1` join `teamroster`.`justpeople` on((`teamroster`.`justpeople`.`personkey` = `s1`.`personforeignkey`))) join `teamroster`.`facebook` on((`teamroster`.`justpeople`.`personkey` = `teamroster`.`facebook`.`personforeignkey`))) join `teamroster`.`steamdotabuff` on((`teamroster`.`justpeople`.`personkey` = `teamroster`.`steamdotabuff`.`personforeignkey`))) where (`s1`.`matchforeignkey` = (select max(`s2`.`matchforeignkey`) AS `MAX(s2.matchforeignkey)` from `teamroster`.`peoplematchesheroes` `s2` where (`s1`.`personforeignkey` = `s2`.`personforeignkey`))) order by `s1`.`matchforeignkey` desc', 'NONE', 'YES', 'teamroster@%', 'DEFINER');
INSERT INTO `VIEWS` VALUES(NULL, 'teamroster', 'match_winrate', '/* ALGORITHM=UNDEFINED */ select `t`.`total` AS `total`,`w`.`won` AS `won`,round(((`w`.`won` * 100.0) / `t`.`total`),1) AS `rate` from (`teamroster`.`total_matches` `t` join `teamroster`.`won_matches` `w`)', 'NONE', 'YES', 'teamroster@%', 'DEFINER');
INSERT INTO `VIEWS` VALUES(NULL, 'teamroster', 'total_matches', '/* ALGORITHM=UNDEFINED */ select count(`teamroster`.`matches`.`id`) AS `total` from `teamroster`.`matches`', 'NONE', 'NO', 'teamroster@%', 'DEFINER');
INSERT INTO `VIEWS` VALUES(NULL, 'teamroster', 'won_matches', '/* ALGORITHM=UNDEFINED */ select count(`teamroster`.`matches`.`id`) AS `won` from `teamroster`.`matches` where (`teamroster`.`matches`.`outcome` = _utf8''Win'')', 'NONE', 'NO', 'teamroster@%', 'DEFINER');

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_IO_PATTERN`
--

CREATE TEMPORARY TABLE `INNODB_IO_PATTERN` (
  `SPACE` bigint(11) NOT NULL default '0',
  `OFFSET` bigint(11) NOT NULL default '0',
  `INDEX_ID` bigint(11) NOT NULL default '0',
  `TABLE_NAME` varchar(32) NOT NULL default '',
  `INDEX_NAME` varchar(32) NOT NULL default '',
  `N_READ` bigint(11) NOT NULL default '0',
  `N_WRITE` bigint(11) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `INNODB_IO_PATTERN`
--

-- in use (#1227 - Access denied; you need the PROCESS privilege for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_RSEG`
--

CREATE TEMPORARY TABLE `INNODB_RSEG` (
  `RSEG_ID` bigint(21) NOT NULL default '0',
  `SPACE_ID` bigint(21) NOT NULL default '0',
  `PAGE_NO` bigint(21) NOT NULL default '0',
  `MAX_SIZE` bigint(21) NOT NULL default '0',
  `CURR_SIZE` bigint(21) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `INNODB_RSEG`
--

-- in use (#1227 - Access denied; you need the PROCESS privilege for this operation)
--
-- Database: `teamroster`
--
CREATE DATABASE `teamroster` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `teamroster`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `User Page`
--
CREATE TABLE `User Page` (
`personkey` int(11)
,`fullname` text
,`facebookid` bigint(20)
,`steamname` varchar(25)
,`steamid` bigint(20)
,`dotabuffid` bigint(20)
,`matchforeignkey` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `facebook`
--

CREATE TABLE `facebook` (
  `facebookid` bigint(20) NOT NULL,
  `personforeignkey` int(11) NOT NULL,
  PRIMARY KEY  (`facebookid`),
  KEY `personforeignkey` (`personforeignkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='One record for each Facebook profile owned by a member of th';

--
-- Dumping data for table `facebook`
--

INSERT INTO `facebook` VALUES(706220710, 1);
INSERT INTO `facebook` VALUES(614729877, 2);
INSERT INTO `facebook` VALUES(533647351, 3);
INSERT INTO `facebook` VALUES(100000922283336, 4);
INSERT INTO `facebook` VALUES(737676269, 5);
INSERT INTO `facebook` VALUES(1219200690, 6);
INSERT INTO `facebook` VALUES(754439301, 7);
INSERT INTO `facebook` VALUES(100000554720199, 8);
INSERT INTO `facebook` VALUES(786583634, 9);
INSERT INTO `facebook` VALUES(694470214, 10);
INSERT INTO `facebook` VALUES(746292284, 11);
INSERT INTO `facebook` VALUES(100006463112161, 12);
INSERT INTO `facebook` VALUES(794569035, 13);
INSERT INTO `facebook` VALUES(549413320, 14);

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `name` varchar(25) NOT NULL,
  `path` tinytext NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='One record for every hero in the game.';

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` VALUES('Abaddon', 'images/heroes/abaddon_sb.png');
INSERT INTO `heroes` VALUES('Alchemist', 'images/heroes/alchemist_sb.png');
INSERT INTO `heroes` VALUES('Ancient Apparition', 'images/heroes/ancient_apparition_sb.png');
INSERT INTO `heroes` VALUES('Anti-Mage', 'images/heroes/anti-mage_sb.png');
INSERT INTO `heroes` VALUES('Axe', 'images/heroes/axe_sb.png');
INSERT INTO `heroes` VALUES('Bane', 'images/heroes/bane_sb.png');
INSERT INTO `heroes` VALUES('Batrider', 'images/heroes/batrider_sb.png');
INSERT INTO `heroes` VALUES('Beastmaster', 'images/heroes/beastmaster_sb.png');
INSERT INTO `heroes` VALUES('Bloodseeker', 'images/heroes/bloodseeker_sb.png');
INSERT INTO `heroes` VALUES('Bounty Hunter', 'images/heroes/bounty_hunter_sb.png');
INSERT INTO `heroes` VALUES('Brewmaster', 'images/heroes/brewmaster_sb.png');
INSERT INTO `heroes` VALUES('Bristleback', 'images/heroes/bristleback_sb.png');
INSERT INTO `heroes` VALUES('Broodmother', 'images/heroes/broodmother_sb.png');
INSERT INTO `heroes` VALUES('Centaur Warrunner', 'images/heroes/centaur_warrunner_sb.png');
INSERT INTO `heroes` VALUES('Chaos Knight', 'images/heroes/chaos_knight_sb.png');
INSERT INTO `heroes` VALUES('Chen', 'images/heroes/chen_sb.png');
INSERT INTO `heroes` VALUES('Clinkz', 'images/heroes/clinkz_sb.png');
INSERT INTO `heroes` VALUES('Clockwerk', 'images/heroes/clockwerk_sb.png');
INSERT INTO `heroes` VALUES('Crystal Maiden', 'images/heroes/crystal_maiden_sb.png');
INSERT INTO `heroes` VALUES('Dark Seer', 'images/heroes/dark_seer_sb.png');
INSERT INTO `heroes` VALUES('Dazzle', 'images/heroes/dazzle_sb.png');
INSERT INTO `heroes` VALUES('Death Prophet', 'images/heroes/death_prophet_sb.png');
INSERT INTO `heroes` VALUES('Disruptor', 'images/heroes/disruptor_sb.png');
INSERT INTO `heroes` VALUES('Doom', 'images/heroes/doom_sb.png');
INSERT INTO `heroes` VALUES('Dragon Knight', 'images/heroes/dragon_knight_sb.png');
INSERT INTO `heroes` VALUES('Drow Ranger', 'images/heroes/drow_ranger_sb.png');
INSERT INTO `heroes` VALUES('Earth Spirit', '');
INSERT INTO `heroes` VALUES('Earthshaker', 'images/heroes/earthshaker_sb.png');
INSERT INTO `heroes` VALUES('Elder Titan', 'images/heroes/elder_titan_sb.png');
INSERT INTO `heroes` VALUES('Ember Spirit', '');
INSERT INTO `heroes` VALUES('Enchantress', 'images/heroes/enchantress_sb.png');
INSERT INTO `heroes` VALUES('Enigma', 'images/heroes/enigma_sb.png');
INSERT INTO `heroes` VALUES('Faceless Void', 'images/heroes/faceless_void_sb.png');
INSERT INTO `heroes` VALUES('Gyrocopter', 'images/heroes/gyrocopter_sb.png');
INSERT INTO `heroes` VALUES('Huskar', 'images/heroes/huskar_sb.png');
INSERT INTO `heroes` VALUES('Invoker', 'images/heroes/invoker_sb.png');
INSERT INTO `heroes` VALUES('Io', 'images/heroes/io_sb.png');
INSERT INTO `heroes` VALUES('Jakiro', 'images/heroes/jakiro_sb.png');
INSERT INTO `heroes` VALUES('Juggernaut', 'images/heroes/juggernaut_sb.png');
INSERT INTO `heroes` VALUES('Keeper of the Light', 'images/heroes/keeper_of_the_light_sb.png');
INSERT INTO `heroes` VALUES('Kunkka', 'images/heroes/kunkka_sb.png');
INSERT INTO `heroes` VALUES('Legion Commander', '');
INSERT INTO `heroes` VALUES('Leshrac', 'images/heroes/leshrac_sb.png');
INSERT INTO `heroes` VALUES('Lich', 'images/heroes/lich_sb.png');
INSERT INTO `heroes` VALUES('Lifestealer', 'images/heroes/lifestealer_sb.png');
INSERT INTO `heroes` VALUES('Lina', 'images/heroes/lina_sb.png');
INSERT INTO `heroes` VALUES('Lion', 'images/heroes/lion_sb.png');
INSERT INTO `heroes` VALUES('Lone Druid', 'images/heroes/lone_druid_sb.png');
INSERT INTO `heroes` VALUES('Luna', 'images/heroes/luna_sb.png');
INSERT INTO `heroes` VALUES('Lycan', 'images/heroes/lycanthrope_sb.png');
INSERT INTO `heroes` VALUES('Magnus', 'images/heroes/magnus_sb.png');
INSERT INTO `heroes` VALUES('Medusa', 'images/heroes/medusa_sb.png');
INSERT INTO `heroes` VALUES('Meepo', 'images/heroes/meepo_sb.png');
INSERT INTO `heroes` VALUES('Mirana', 'images/heroes/mirana_sb.png');
INSERT INTO `heroes` VALUES('Morphling', 'images/heroes/morphling_sb.png');
INSERT INTO `heroes` VALUES('Naga Siren', 'images/heroes/naga_siren_sb.png');
INSERT INTO `heroes` VALUES('Natures Prophet', 'images/heroes/natures_prophet_sb.png');
INSERT INTO `heroes` VALUES('Necrophos', 'images/heroes/necrolyte_sb.png');
INSERT INTO `heroes` VALUES('Night Stalker', 'images/heroes/night_stalker_sb.png');
INSERT INTO `heroes` VALUES('Nyx Assassin', 'images/heroes/nyx_assassin_sb.png');
INSERT INTO `heroes` VALUES('Ogre Magi', 'images/heroes/ogre_magi_sb.png');
INSERT INTO `heroes` VALUES('Omniknight', 'images/heroes/omniknight_sb.png');
INSERT INTO `heroes` VALUES('Outworld Devourer', 'images/heroes/outworld_devourer_sb.png');
INSERT INTO `heroes` VALUES('Phantom Assassin', 'images/heroes/phantom_assassin_sb.png');
INSERT INTO `heroes` VALUES('Phantom Lancer', 'images/heroes/phantom_lancer_sb.png');
INSERT INTO `heroes` VALUES('Puck', 'images/heroes/puck_sb.png');
INSERT INTO `heroes` VALUES('Pudge', 'images/heroes/pudge_sb.png');
INSERT INTO `heroes` VALUES('Pugna', 'images/heroes/pugna_sb.png');
INSERT INTO `heroes` VALUES('Queen of Pain', 'images/heroes/queen_of_pain_sb.png');
INSERT INTO `heroes` VALUES('Razor', 'images/heroes/razor_sb.png');
INSERT INTO `heroes` VALUES('Riki', 'images/heroes/riki_sb.png');
INSERT INTO `heroes` VALUES('Rubick', 'images/heroes/rubick_sb.png');
INSERT INTO `heroes` VALUES('Sand King', 'images/heroes/sand_king_sb.png');
INSERT INTO `heroes` VALUES('Shadow Demon', 'images/heroes/shadow_demon_sb.png');
INSERT INTO `heroes` VALUES('Shadow Fiend', 'images/heroes/shadow_fiend_sb.png');
INSERT INTO `heroes` VALUES('Shadow Shaman', 'images/heroes/shadow_shaman_sb.png');
INSERT INTO `heroes` VALUES('Silencer', 'images/heroes/silencer_sb.png');
INSERT INTO `heroes` VALUES('Skeleton King', 'images/heroes/skeleton_king_sb.png');
INSERT INTO `heroes` VALUES('Skywrath Mage', 'images/heroes/skywrath_mage_sb.png');
INSERT INTO `heroes` VALUES('Slardar', 'images/heroes/slardar_sb.png');
INSERT INTO `heroes` VALUES('Slark', 'images/heroes/slark_sb.png');
INSERT INTO `heroes` VALUES('Sniper', 'images/heroes/sniper_sb.png');
INSERT INTO `heroes` VALUES('Spectre', 'images/heroes/spectre_sb.png');
INSERT INTO `heroes` VALUES('Spirit Breaker', 'images/heroes/spirit_breaker_sb.png');
INSERT INTO `heroes` VALUES('Storm Spirit', 'images/heroes/storm_spirit_sb.png');
INSERT INTO `heroes` VALUES('Sven', 'images/heroes/sven_sb.png');
INSERT INTO `heroes` VALUES('Templar Assassin', 'images/heroes/templar_assassin_sb.png');
INSERT INTO `heroes` VALUES('Tidehunter', 'images/heroes/tidehunter_sb.png');
INSERT INTO `heroes` VALUES('Timbersaw', 'images/heroes/timbersaw_sb.png');
INSERT INTO `heroes` VALUES('Tinker', 'images/heroes/tinker_sb.png');
INSERT INTO `heroes` VALUES('Tiny', 'images/heroes/tiny_sb.png');
INSERT INTO `heroes` VALUES('Treant Protector', 'images/heroes/treant_protector_sb.png');
INSERT INTO `heroes` VALUES('Troll Warlord', 'images/heroes/troll_warlord_sb.png');
INSERT INTO `heroes` VALUES('Tusk', 'images/heroes/tusk_sb.png');
INSERT INTO `heroes` VALUES('Undying', 'images/heroes/undying_sb.png');
INSERT INTO `heroes` VALUES('Ursa', 'images/heroes/ursa_sb.png');
INSERT INTO `heroes` VALUES('Vengeful Spirit', 'images/heroes/vengeful_spirit_sb.png');
INSERT INTO `heroes` VALUES('Venomancer', 'images/heroes/venomancer_sb.png');
INSERT INTO `heroes` VALUES('Viper', 'images/heroes/viper_sb.png');
INSERT INTO `heroes` VALUES('Visage', 'images/heroes/visage_sb.png');
INSERT INTO `heroes` VALUES('Warlock', 'images/heroes/warlock_sb.png');
INSERT INTO `heroes` VALUES('Weaver', 'images/heroes/weaver_sb.png');
INSERT INTO `heroes` VALUES('Windranger', 'images/heroes/windrunner_sb.png');
INSERT INTO `heroes` VALUES('Witch Doctor', 'images/heroes/witch_doctor_sb.png');
INSERT INTO `heroes` VALUES('Zeus', 'images/heroes/zeus_sb.png');

-- --------------------------------------------------------

--
-- Table structure for table `justpeople`
--

CREATE TABLE `justpeople` (
  `fullname` text NOT NULL,
  `backupname` text NOT NULL,
  `personkey` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`personkey`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='One record for every member of the group.' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `justpeople`
--

INSERT INTO `justpeople` VALUES('Christopher Poenaru', 'Christopher Poenaru', 1);
INSERT INTO `justpeople` VALUES('Harim Ahn', 'Harim Ahn', 2);
INSERT INTO `justpeople` VALUES('David Park', 'David Park', 3);
INSERT INTO `justpeople` VALUES('Sam Cho', 'Sam Cho', 4);
INSERT INTO `justpeople` VALUES('Peter Henry', 'Peter Henry', 5);
INSERT INTO `justpeople` VALUES('Joshua Manu', 'Joshua Manu', 6);
INSERT INTO `justpeople` VALUES('Lance Nordmeyer', 'Lance Nordmeyer', 7);
INSERT INTO `justpeople` VALUES('Tim Nykamp', 'Tim Nykamp', 8);
INSERT INTO `justpeople` VALUES('Jacob Gaudaur', 'Jacob Gaudaur', 9);
INSERT INTO `justpeople` VALUES('Junhaeng Lee', 'Junhaeng Lee', 10);
INSERT INTO `justpeople` VALUES('Yechan Lim', 'Yechan Lim', 11);
INSERT INTO `justpeople` VALUES('Peter Park', 'Peter Park', 12);
INSERT INTO `justpeople` VALUES('Carl Otuke', 'Carl Otuke', 13);
INSERT INTO `justpeople` VALUES('Patrick Collins', 'Patrick Collins', 14);

-- --------------------------------------------------------

--
-- Stand-in structure for view `match_winrate`
--
CREATE TABLE `match_winrate` (
`total` bigint(21)
,`won` bigint(21)
,`rate` decimal(24,1)
);
-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `numbermembers` tinyint(4) NOT NULL,
  `outcome` tinytext NOT NULL,
  `type` tinytext NOT NULL,
  `mode` tinytext NOT NULL,
  `region` tinytext NOT NULL,
  `duration` tinytext NOT NULL,
  `date` tinytext NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Each record is a match with at least 1 member playing in it.';

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Unknown', 'US West', '1:01:46', '2012-09-15T20:36:42Z', 41021507);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Unknown', 'Europe West', '37:46', '2012-09-15T21:23:00Z', 41036987);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Unknown', 'US West', '1:02:03', '2012-09-15T22:53:59Z', 41049901);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Unknown', 'Europe West', '41:29', '2012-09-15T23:46:40Z', 41061616);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Unknown', 'Europe West', '36:57', '2012-09-16T04:52:07Z', 41104362);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Unknown', 'US West', '48:32', '2012-10-13T20:42:08Z', 49317233);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'All Pick', 'US East', '30:43', '2013-06-01T21:52:59Z', 209286740);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'All Pick', 'US East', '35:33', '2013-06-01T22:38:11Z', 209309321);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US East', '32:35', '2013-06-05T19:18:15Z', 212409422);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Random', 'US East', '45:23', '2013-06-06T02:43:28Z', 212598510);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Random', 'US East', '48:07', '2013-06-10T11:18:11Z', 216109757);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US East', '51:19', '2013-06-10T12:21:47Z', 216148951);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Random', 'US West', '25:21', '2013-06-11T09:58:58Z', 216843053);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US East', '49:24', '2013-06-11T21:59:12Z', 217330898);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe West', '33:14', '2013-06-23T13:20:17Z', 226215845);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'Captains Mode', 'US East', '09:35', '2013-08-22T15:01:49Z', 283361217);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'Captains Mode', 'US East', '35:28', '2013-08-22T15:57:32Z', 283392255);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'All Pick', 'US East', '49:07', '2013-08-24T04:07:21Z', 284977445);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'Captains Mode', 'US East', '27:33', '2013-08-24T05:00:50Z', 285004473);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'All Pick', 'US East', '53:10', '2013-08-24T15:18:23Z', 285486352);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Pick', 'US West', '37:40', '2013-08-25T11:16:51Z', 286458440);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'All Pick', 'US West', '56:26', '2013-08-25T13:10:39Z', 286558903);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Pick', 'US West', '29:54', '2013-08-27T03:40:43Z', 288440877);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'All Pick', 'US East', '21:43', '2013-08-27T04:09:06Z', 288458228);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'All Pick', 'US East', '36:22', '2013-08-31T16:20:48Z', 293901342);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US West', '20:46', '2013-09-04T07:05:50Z', 297828928);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Single Draft', 'US East', '40:18', '2013-09-05T07:51:30Z', 298853661);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '39:54', '2013-09-05T13:10:48Z', 299109525);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US West', '36:45', '2013-09-05T13:53:21Z', 299166238);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Single Draft', 'US West', '43:01', '2013-09-05T22:06:30Z', 299627913);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Single Draft', 'US East', '47:47', '2013-09-06T22:07:55Z', 300766713);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Pick', 'US East', '40:53', '2013-09-08T16:46:51Z', 303139553);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US West', '47:05', '2013-09-11T15:55:03Z', 306484028);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US West', '50:04', '2013-09-12T16:17:44Z', 307492070);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US East', '35:31', '2013-09-13T06:03:20Z', 308004939);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '29:02', '2013-09-13T06:43:21Z', 308030277);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US West', '33:51', '2013-09-13T16:18:58Z', 308605905);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Single Draft', 'US East', '44:19', '2013-09-13T17:08:33Z', 308655582);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '47:18', '2013-09-14T07:09:03Z', 309258955);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'All Pick', 'US East', '49:14', '2013-09-18T04:39:13Z', 313818997);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US East', '38:40', '2013-09-18T11:11:41Z', 314056982);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US West', '46:32', '2013-09-19T13:08:40Z', 315260464);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'All Pick', 'US West', '45:07', '2013-09-19T14:02:25Z', 315326287);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'All Pick', 'US East', '59:43', '2013-09-20T05:05:30Z', 315989917);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'All Pick', 'US East', '36:12', '2013-09-22T03:49:01Z', 318508712);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'All Pick', 'US East', '48:19', '2013-09-22T04:46:11Z', 318534170);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'All Pick', 'US East', '41:49', '2013-09-22T18:42:56Z', 319431304);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'All Pick', 'US East', '35:59', '2013-09-22T19:24:51Z', 319479504);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'All Pick', 'US East', '32:23', '2013-09-22T20:02:48Z', 319513938);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Pick', 'Europe West', '33:43', '2013-09-22T20:40:20Z', 319542076);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Pick', 'US East', '35:31', '2013-09-23T03:47:28Z', 319735439);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '35:40', '2013-09-23T07:04:03Z', 319827971);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US West', '36:44', '2013-09-23T07:51:13Z', 319852597);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Pick', 'US East', '22:05', '2013-09-23T10:06:27Z', 319950890);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Pick', 'Europe East', '45:10', '2013-09-23T10:57:30Z', 319972136);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe West', '28:28', '2013-09-23T15:44:38Z', 320314011);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'All Random', 'US East', '44:32', '2013-09-24T04:17:33Z', 320743589);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'Single Draft', 'US East', '42:11', '2013-09-24T06:47:12Z', 320810517);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'Single Draft', 'US West', '30:40', '2013-09-24T07:48:21Z', 320847531);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'Random Draft', 'US East', '49:03', '2013-09-24T14:35:56Z', 321173192);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Random Draft', 'US East', '42:11', '2013-09-24T18:24:53Z', 321416254);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe West', '44:56', '2013-09-24T21:07:31Z', 321555416);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe East', '34:24', '2013-09-24T21:45:30Z', 321583727);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe West', '51:17', '2013-09-24T22:41:38Z', 321603768);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'All Pick', 'US East', '29:53', '2013-09-25T03:39:08Z', 321728562);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Single Draft', 'US East', '44:49', '2013-09-25T07:20:55Z', 321832090);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Single Draft', 'US East', '39:49', '2013-09-25T08:18:05Z', 321867635);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'Random Draft', 'US West', '1:06:27', '2013-09-25T11:14:33Z', 321969939);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Random', 'US East', '36:54', '2013-09-25T21:16:19Z', 322629985);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'All Pick', 'US East', '28:30', '2013-09-26T02:54:40Z', 322769725);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'Captains Mode', 'US East', '41:36', '2013-09-26T03:57:22Z', 322788892);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'Europe West', '1:00:16', '2013-09-26T15:13:15Z', 323304924);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Random Draft', 'US East', '53:58', '2013-09-26T16:16:01Z', 323388711);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'Random Draft', 'US East', '37:06', '2013-09-27T01:43:41Z', 323801232);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'Random Draft', 'US East', '38:52', '2013-09-27T02:49:02Z', 323822883);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'Captains Mode', 'US East', '51:58', '2013-09-27T03:53:34Z', 323841413);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '43:49', '2013-09-27T14:24:26Z', 324311633);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US East', '23:25', '2013-09-28T00:08:13Z', 324904954);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Random', 'US East', '1:03:35', '2013-09-28T01:15:10Z', 324916176);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'Single Draft', 'US West', '31:33', '2013-09-28T02:36:44Z', 324970988);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'Single Draft', 'US East', '50:17', '2013-09-28T04:53:06Z', 325044307);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'All Pick', 'US East', '44:00', '2013-09-28T05:46:34Z', 325085667);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Random Draft', 'US East', '52:29', '2013-09-28T15:12:27Z', 325722204);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe West', '35:00', '2013-09-28T15:52:00Z', 325808946);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'All Pick', 'US East', '1:01:39', '2013-09-28T20:16:57Z', 326119875);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'All Pick', 'US East', '41:39', '2013-09-28T21:04:47Z', 326188632);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US East', '51:09', '2013-09-29T04:25:22Z', 326447964);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'All Random', 'US West', '37:09', '2013-09-29T05:34:41Z', 326505292);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'Random Draft', 'US East', '35:52', '2013-09-29T23:59:03Z', 327637040);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'Random Draft', 'US East', '39:31', '2013-09-30T00:45:29Z', 327653674);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'All Pick', 'US East', '34:21', '2013-09-30T01:25:57Z', 327671667);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'All Pick', 'US East', '45:20', '2013-09-30T02:23:50Z', 327690286);
INSERT INTO `matches` VALUES(5, 'Loss', 'Normal', 'All Pick', 'US East', '20:17', '2013-09-30T02:53:27Z', 327714068);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'All Random', 'US East', '45:45', '2013-09-30T03:42:39Z', 327725237);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Random Draft', 'US East', '26:07', '2013-09-30T06:43:59Z', 327828068);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US West', '40:31', '2013-09-30T14:49:41Z', 328266765);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '28:55', '2013-09-30T15:35:48Z', 328343082);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'Europe West', '39:55', '2013-09-30T16:22:24Z', 328390637);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '47:06', '2013-09-30T17:19:18Z', 328451764);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'All Pick', 'US East', '52:31', '2013-10-01T04:30:03Z', 328881107);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US West', '52:38', '2013-10-01T06:28:16Z', 328946778);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'Europe East', '34:51', '2013-10-01T15:28:41Z', 329461954);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Random Draft', 'Europe East', '52:33', '2013-10-01T16:28:34Z', 329514283);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US East', '1:00:26', '2013-10-01T17:28:27Z', 329577712);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US East', '33:57', '2013-10-01T17:07:28Z', 329583950);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '28:12', '2013-10-03T14:17:51Z', 331600042);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '43:01', '2013-10-03T19:02:26Z', 331900685);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US East', '24:31', '2013-10-03T19:35:15Z', 331950901);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Pick', 'US East', '38:19', '2013-10-04T02:22:20Z', 332158018);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'All Pick', 'US East', '57:32', '2013-10-04T03:30:24Z', 332182362);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '50:20', '2013-10-04T16:26:38Z', 332907747);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '38:18', '2013-10-04T17:13:28Z', 332971424);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '37:07', '2013-10-04T21:09:44Z', 333235460);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'All Pick', 'US East', '37:23', '2013-10-04T21:33:56Z', 333253727);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US East', '33:25', '2013-10-04T23:54:43Z', 333340856);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'All Pick', 'US East', '39:04', '2013-10-05T02:39:24Z', 333416758);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'All Pick', 'US East', '43:59', '2013-10-05T03:29:42Z', 333443010);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'All Pick', 'US East', '1:11:33', '2013-10-05T04:53:45Z', 333477343);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Random Draft', 'US West', '37:56', '2013-10-05T06:23:58Z', 333561916);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US West', '34:30', '2013-10-05T16:11:49Z', 334278045);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'Single Draft', 'US East', '35:26', '2013-10-05T19:05:21Z', 334505785);
INSERT INTO `matches` VALUES(5, 'Loss', 'Normal', 'Random Draft', 'US East', '31:15', '2013-10-05T19:42:02Z', 334551693);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'All Random', 'US East', '39:43', '2013-10-05T20:26:02Z', 334591050);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'All Random', 'US East', '36:58', '2013-10-05T21:16:49Z', 334638461);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'All Pick', 'US East', '50:26', '2013-10-06T04:31:00Z', 334885610);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'All Pick', 'US East', '42:14', '2013-10-06T05:21:02Z', 334923965);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Captains Draft', 'US West', '57:05', '2013-10-06T06:53:29Z', 334980815);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US East', '37:10', '2013-10-06T13:18:03Z', 335441264);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US East', '44:32', '2013-10-06T18:06:24Z', 335821682);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'Single Draft', 'US East', '40:02', '2013-10-06T18:52:08Z', 335880045);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'All Random', 'US East', '27:45', '2013-10-06T19:28:09Z', 335931072);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'Random Draft', 'US East', '1:13:27', '2013-10-06T20:48:41Z', 335961380);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'Single Draft', 'US East', '31:39', '2013-10-06T21:26:20Z', 336023995);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'All Pick', 'US East', '35:59', '2013-10-06T22:12:34Z', 336049423);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Pick', 'US East', '35:15', '2013-10-06T23:00:03Z', 336073787);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '34:20', '2013-10-07T03:59:59Z', 336205047);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Random', 'US East', '43:06', '2013-10-07T12:43:45Z', 336581194);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US East', '29:29', '2013-10-07T19:40:54Z', 337070161);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US East', '42:56', '2013-10-08T02:10:37Z', 337246996);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'All Random', 'US East', '38:52', '2013-10-08T02:56:51Z', 337264351);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'Single Draft', 'US East', '44:39', '2013-10-08T03:45:07Z', 337280801);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'All Pick', 'US East', '54:51', '2013-10-08T04:47:20Z', 337301548);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US East', '29:40', '2013-10-08T08:24:16Z', 337421171);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '26:19', '2013-10-08T13:58:06Z', 337717097);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Random Draft', 'US West', '27:08', '2013-10-08T17:53:12Z', 337988810);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '39:51', '2013-10-09T00:05:43Z', 338236124);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'Random Draft', 'US East', '51:09', '2013-10-09T03:32:47Z', 338311566);
INSERT INTO `matches` VALUES(5, 'Loss', 'Normal', 'All Random', 'US East', '43:15', '2013-10-09T04:23:41Z', 338338635);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Random Draft', 'US West', '50:15', '2013-10-09T06:51:56Z', 338409282);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'All Pick', 'US East', '56:37', '2013-10-10T01:55:22Z', 339341370);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'Single Draft', 'US East', '38:17', '2013-10-10T02:42:13Z', 339367056);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'Random Draft', 'US East', '50:19', '2013-10-10T03:44:33Z', 339388728);
INSERT INTO `matches` VALUES(5, 'Loss', 'Normal', 'Captains Mode', 'US East', '12:36', '2013-10-10T04:16:32Z', 339417238);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '51:58', '2013-10-10T13:58:15Z', 339830927);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'All Random', 'US East', '27:51', '2013-10-10T14:23:14Z', 339895371);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Single Draft', 'Unknown', '29:18', '2013-10-10T14:56:43Z', 339935818);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Random Draft', 'Unknown', '39:00', '2013-10-10T15:44:14Z', 339981113);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Random Draft', 'US East', '32:05', '2013-10-10T16:21:57Z', 340034446);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US East', '33:20', '2013-10-10T17:56:22Z', 340136120);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US East', '35:45', '2013-10-10T20:33:31Z', 340277023);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '24:17', '2013-10-10T21:04:39Z', 340306945);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'Random Draft', 'US East', '48:53', '2013-10-11T02:05:19Z', 340428150);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Random', 'US East', '32:24', '2013-10-11T05:01:02Z', 340518812);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'All Pick', 'US West', '39:21', '2013-10-11T07:17:07Z', 340592588);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Pick', 'US West', '35:41', '2013-10-11T07:58:33Z', 340621370);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'Europe East', '24:12', '2013-10-11T14:35:14Z', 341033087);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe East', '27:11', '2013-10-11T15:09:04Z', 341071626);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'Europe West', '1:10:27', '2013-10-11T16:25:05Z', 341112165);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '58:52', '2013-10-11T17:28:34Z', 341208337);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Random', 'US East', '1:02:36', '2013-10-11T21:14:45Z', 341451274);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Random', 'US East', '44:25', '2013-10-12T00:34:12Z', 341586350);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US West', '48:18', '2013-10-12T01:28:28Z', 341608757);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'All Random', 'US East', '37:49', '2013-10-12T03:00:54Z', 341658857);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'All Random', 'US East', '27:16', '2013-10-12T03:32:51Z', 341684004);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'All Random', 'US East', '53:58', '2013-10-12T04:40:54Z', 341707005);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'All Pick', 'US East', '42:29', '2013-10-12T05:31:57Z', 341747983);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US East', '14:14', '2013-10-12T09:26:12Z', 341972892);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Random', 'US West', '34:34', '2013-10-12T10:08:41Z', 341996694);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Random', 'US East', '28:14', '2013-10-12T10:47:00Z', 342046078);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'All Random', 'US West', '44:19', '2013-10-12T11:51:14Z', 342103412);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US West', '02:44', '2013-10-12T12:00:34Z', 342167314);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US West', '44:26', '2013-10-12T14:09:41Z', 342290156);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US West', '42:20', '2013-10-13T04:25:03Z', 343096454);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US West', '52:38', '2013-10-13T09:19:53Z', 343362290);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US West', '21:58', '2013-10-13T20:31:42Z', 344198728);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'Europe East', '33:22', '2013-10-13T21:13:11Z', 344220675);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US West', '45:26', '2013-10-13T21:26:21Z', 344222330);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'Europe West', '35:59', '2013-10-13T21:56:29Z', 344249016);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US West', '35:33', '2013-10-14T03:13:12Z', 344391287);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '56:18', '2013-10-14T11:20:41Z', 344688167);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'Europe West', '42:30', '2013-10-14T12:07:38Z', 344746531);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'Unknown', '46:39', '2013-10-14T13:02:13Z', 344804659);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe East', '42:01', '2013-10-14T13:51:00Z', 344874307);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe East', '39:24', '2013-10-14T14:37:19Z', 344941873);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe East', '49:51', '2013-10-14T15:33:38Z', 345004749);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'All Pick', 'US East', '16:23', '2013-10-15T01:57:53Z', 345542186);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Random', 'US East', '37:27', '2013-10-15T02:44:14Z', 345553540);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Random', 'US East', '46:29', '2013-10-15T03:35:27Z', 345573010);
INSERT INTO `matches` VALUES(5, 'Loss', 'Normal', 'Random Draft', 'US East', '24:47', '2013-10-15T04:11:51Z', 345600366);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Random Draft', 'US East', '45:51', '2013-10-15T06:23:13Z', 345659699);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US East', '39:06', '2013-10-15T11:59:53Z', 345913697);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '38:49', '2013-10-15T14:26:44Z', 346092606);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'Random Draft', 'US East', '35:03', '2013-10-15T17:27:04Z', 346321123);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'Random Draft', 'US East', '32:47', '2013-10-15T18:06:39Z', 346367968);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'All Pick', 'US East', '56:43', '2013-10-16T03:32:18Z', 346678127);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'All Pick', 'US East', '39:51', '2013-10-16T04:18:50Z', 346706316);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe West', '52:51', '2013-10-16T13:16:30Z', 347079764);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe West', '42:54', '2013-10-16T19:27:35Z', 347541919);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '32:59', '2013-10-16T20:04:59Z', 347585424);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '45:43', '2013-10-16T20:56:45Z', 347616451);
INSERT INTO `matches` VALUES(5, 'Loss', 'Normal', 'Single Draft', 'US East', '41:19', '2013-10-17T03:19:28Z', 347789182);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'All Pick', 'US East', '55:03', '2013-10-17T04:24:41Z', 347813849);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '36:07', '2013-10-17T11:24:24Z', 348099892);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Random Draft', 'US East', '44:24', '2013-10-17T12:01:58Z', 348127753);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe West', '19:19', '2013-10-17T11:50:35Z', 348143239);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US East', '46:40', '2013-10-17T17:41:31Z', 348552122);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'Single Draft', 'US East', '37:30', '2013-10-17T18:24:05Z', 348609733);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '42:53', '2013-10-18T01:28:25Z', 348879526);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US East', '32:23', '2013-10-18T01:31:07Z', 348883888);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'Single Draft', 'US East', '42:26', '2013-10-18T02:28:31Z', 348902559);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'All Random', 'US East', '07:55', '2013-10-18T02:41:10Z', 348924850);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'Single Draft', 'US East', '57:23', '2013-10-18T03:45:52Z', 348931969);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Random Draft', 'US East', '1:08:01', '2013-10-18T07:43:46Z', 349057313);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'Europe West', '46:38', '2013-10-18T11:07:24Z', 349233840);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'Europe East', '39:08', '2013-10-18T11:52:09Z', 349289141);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'Europe West', '36:04', '2013-10-18T12:35:57Z', 349345533);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'All Random', 'US East', '53:21', '2013-10-18T16:14:59Z', 349634187);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'All Pick', 'US East', '39:12', '2013-10-18T16:58:53Z', 349717045);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'Europe West', '45:22', '2013-10-18T17:54:04Z', 349782238);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe West', '47:33', '2013-10-18T18:48:22Z', 349848227);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'Single Draft', 'US East', '47:46', '2013-10-18T20:03:46Z', 349887053);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Random', 'US East', '51:58', '2013-10-19T02:25:27Z', 350135232);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US East', '44:33', '2013-10-19T02:25:20Z', 350138522);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'All Pick', 'US East', '42:32', '2013-10-19T03:13:31Z', 350167729);
INSERT INTO `matches` VALUES(5, 'Loss', 'Normal', 'Captains Mode', 'US East', '32:05', '2013-10-19T04:10:15Z', 350206038);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'Captains Mode', 'US East', '37:48', '2013-10-19T05:20:24Z', 350249274);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '43:18', '2013-10-19T06:14:59Z', 350292618);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'Single Draft', 'US West', '30:27', '2013-10-19T06:54:04Z', 350336982);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US East', '58:27', '2013-10-19T11:33:25Z', 350614463);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'Europe West', '42:02', '2013-10-19T12:24:13Z', 350703300);
INSERT INTO `matches` VALUES(2, 'Loss', 'Normal', 'Single Draft', 'US East', '43:30', '2013-10-19T16:43:55Z', 351095946);
INSERT INTO `matches` VALUES(5, 'Loss', 'Normal', 'All Pick', 'US East', '52:00', '2013-10-19T17:46:04Z', 351174687);
INSERT INTO `matches` VALUES(5, 'Loss', 'Normal', 'All Random', 'US East', '22:02', '2013-10-19T18:17:35Z', 351261865);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'Random Draft', 'US East', '22:40', '2013-10-19T18:53:18Z', 351306117);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'Single Draft', 'US East', '48:37', '2013-10-19T22:43:26Z', 351512934);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '48:50', '2013-10-20T02:12:29Z', 351629051);
INSERT INTO `matches` VALUES(4, 'Win', 'Normal', 'All Random', 'US East', '28:45', '2013-10-20T02:54:11Z', 351664588);
INSERT INTO `matches` VALUES(4, 'Loss', 'Normal', 'Single Draft', 'US East', '35:42', '2013-10-20T03:36:30Z', 351686775);
INSERT INTO `matches` VALUES(5, 'Win', 'Normal', 'All Pick', 'US East', '50:04', '2013-10-20T04:44:06Z', 351721642);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Europe West', '40:10', '2013-10-20T12:35:11Z', 352240911);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'Unknown', '23:12', '2013-10-20T13:05:31Z', 352307021);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '36:48', '2013-10-20T13:53:25Z', 352356102);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'Single Draft', 'US East', '31:16', '2013-10-21T01:03:47Z', 352991543);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US East', '31:26', '2013-10-21T01:39:42Z', 353005206);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '36:52', '2013-10-21T02:33:58Z', 353024272);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'Single Draft', 'US East', '24:02', '2013-10-21T03:09:51Z', 353045016);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Random', 'US East', '43:57', '2013-10-21T03:51:44Z', 353054875);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'All Pick', 'US East', '31:36', '2013-10-21T04:08:59Z', 353067261);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US East', '32:53', '2013-10-21T19:53:34Z', 353994093);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US West', '31:22', '2013-10-21T20:50:28Z', 354050033);
INSERT INTO `matches` VALUES(1, 'Loss', 'Normal', 'All Pick', 'US East', '28:28', '2013-10-22T02:16:55Z', 354223092);
INSERT INTO `matches` VALUES(2, 'Win', 'Normal', 'All Random', 'US East', '37:18', '2013-10-22T02:58:11Z', 354237660);
INSERT INTO `matches` VALUES(3, 'Loss', 'Normal', 'All Pick', 'US East', '52:50', '2013-10-22T03:59:07Z', 354258833);
INSERT INTO `matches` VALUES(3, 'Win', 'Normal', 'All Pick', 'US East', '39:48', '2013-10-22T04:52:09Z', 354293607);
INSERT INTO `matches` VALUES(1, 'Win', 'Normal', 'All Pick', 'US West', '35:21', '2013-10-22T10:09:02Z', 354511021);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'Single Draft', 'US East', '30:24', '2013-10-23T03:22:04Z', 355464400);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'Single Draft', 'US East', '41:37', '2013-10-23T04:09:58Z', 355480531);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '12:07', '2013-10-24T00:40:58Z', 356531002);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US West', '50:36', '2013-10-24T02:38:35Z', 356562212);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '59:26', '2013-10-24T04:20:48Z', 356604488);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'Single Draft', 'US East', '40:18', '2013-10-24T05:07:15Z', 356636545);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US West', '27:51', '2013-10-24T19:35:51Z', 357490720);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US West', '42:22', '2013-10-25T05:00:10Z', 357766935);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US East', '46:04', '2013-10-25T22:13:45Z', 358816211);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '46:11', '2013-10-26T02:59:00Z', 358961999);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'Single Draft', 'US East', '1:08:19', '2013-10-26T04:15:32Z', 358987456);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Single Draft', 'US West', '39:15', '2013-10-26T06:39:26Z', 359080892);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '32:00', '2013-10-26T15:51:14Z', 359732010);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US East', '43:15', '2013-10-27T03:29:54Z', 360371327);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'Single Draft', 'US East', '27:00', '2013-10-27T04:16:16Z', 360412998);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Random', 'US East', '36:09', '2013-10-27T04:57:30Z', 360434804);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US East', '38:00', '2013-10-28T01:57:57Z', 361754147);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '38:29', '2013-10-28T03:21:50Z', 361791840);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '52:58', '2013-10-28T04:22:11Z', 361813509);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '42:53', '2013-10-28T21:06:37Z', 362787545);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '38:51', '2013-10-29T03:29:10Z', 362983522);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '57:26', '2013-10-29T04:33:19Z', 363004711);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '45:11', '2013-10-29T15:01:51Z', 363557642);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '37:06', '2013-10-30T03:19:14Z', 364127648);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'Single Draft', 'US East', '37:30', '2013-10-30T04:16:28Z', 364154681);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'Single Draft', 'US East', '12:37', '2013-10-30T04:34:10Z', 364175649);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Random', 'US East', '35:20', '2013-11-02T04:02:54Z', 367738423);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '46:35', '2013-11-03T04:35:58Z', 369196571);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '41:55', '2013-11-03T23:59:13Z', 370475790);
INSERT INTO `matches` VALUES(2, 'Loss', 'Unknown', 'All Pick', 'US East', '30:56', '2013-11-04T00:45:57Z', 370503072);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US East', '29:48', '2013-11-04T01:22:22Z', 370519802);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '38:23', '2013-11-04T02:12:05Z', 370537534);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '36:10', '2013-11-04T02:57:46Z', 370558910);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Random', 'US East', '43:45', '2013-11-05T04:59:04Z', 371811341);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Single Draft', 'US East', '34:29', '2013-11-05T05:42:24Z', 371841909);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US West', '1:00:30', '2013-11-05T08:47:22Z', 371949141);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US West', '57:01', '2013-11-06T00:12:31Z', 372834633);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '28:35', '2013-11-06T00:47:29Z', 372860718);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Random', 'US East', '51:00', '2013-11-06T04:26:39Z', 372945339);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Random', 'US East', '47:42', '2013-11-06T05:28:29Z', 372979594);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '28:28', '2013-11-06T07:30:12Z', 373065113);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Random', 'US East', '49:16', '2013-11-07T04:35:42Z', 374112099);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Random', 'US East', '36:09', '2013-11-07T05:16:55Z', 374141694);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '29:53', '2013-11-07T19:19:00Z', 374992806);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Single Draft', 'US West', '33:35', '2013-11-07T23:43:03Z', 375180247);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Random Draft', 'US West', '36:11', '2013-11-08T00:30:44Z', 375199383);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Random', 'US East', '50:22', '2013-11-08T04:22:58Z', 375288968);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '48:41', '2013-11-08T05:16:18Z', 375315651);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '50:00', '2013-11-09T01:28:30Z', 376467643);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '49:17', '2013-11-09T02:27:35Z', 376495393);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Random', 'US East', '58:33', '2013-11-09T03:35:39Z', 376529381);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '48:11', '2013-11-09T04:31:22Z', 376569191);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '38:01', '2013-11-09T05:15:38Z', 376604808);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US West', '46:08', '2013-11-09T23:19:57Z', 377849574);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '53:45', '2013-11-10T00:23:59Z', 377886042);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US East', '30:06', '2013-11-10T03:52:16Z', 378018850);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '50:22', '2013-11-10T04:54:12Z', 378045700);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'Captains Mode', 'US East', '38:08', '2013-11-10T05:50:50Z', 378087249);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '42:59', '2013-11-11T03:27:39Z', 379356815);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '1:01:35', '2013-11-11T03:59:44Z', 379362808);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '1:15:50', '2013-11-11T05:22:22Z', 379395031);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '36:21', '2013-11-12T04:31:46Z', 380501547);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Random', 'US East', '39:38', '2013-11-12T05:17:48Z', 380523816);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '59:56', '2013-11-12T18:34:37Z', 381235357);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Random', 'US East', '43:27', '2013-11-13T04:40:45Z', 381609729);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '54:50', '2013-11-13T05:41:28Z', 381635956);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '36:26', '2013-11-14T04:35:07Z', 382727473);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '38:39', '2013-11-15T05:13:27Z', 383878320);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '39:26', '2013-11-15T06:00:01Z', 383928281);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Random', 'US East', '54:53', '2013-11-16T00:37:15Z', 385438669);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '32:25', '2013-11-16T01:18:22Z', 385485820);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Random', 'US East', '43:33', '2013-11-16T04:26:01Z', 385623068);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Random', 'US East', '46:28', '2013-11-16T05:41:56Z', 385698882);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '38:34', '2013-11-16T06:26:46Z', 385757061);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '52:20', '2013-11-17T03:40:08Z', 387715823);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '33:18', '2013-11-17T04:37:46Z', 387784551);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '29:16', '2013-11-17T05:13:13Z', 387823255);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '22:13', '2013-11-18T02:42:08Z', 389424399);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '36:08', '2013-11-18T03:25:10Z', 389441026);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Random', 'US East', '47:39', '2013-11-18T03:55:50Z', 389452420);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '51:35', '2013-11-18T05:06:37Z', 389491284);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Random', 'US East', '28:58', '2013-11-19T04:01:28Z', 390809429);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '17:15', '2013-11-19T04:23:34Z', 390828456);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '40:29', '2013-11-19T05:20:22Z', 390848485);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '41:29', '2013-11-19T07:37:53Z', 390936462);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Single Draft', 'US East', '22:02', '2013-11-19T13:45:54Z', 391328873);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US West', '38:43', '2013-11-19T14:37:36Z', 391381020);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '40:23', '2013-11-20T04:32:36Z', 392103895);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Random', 'US East', '52:13', '2013-11-20T05:29:42Z', 392129756);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '52:31', '2013-11-20T12:35:38Z', 392460565);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '50:27', '2013-11-20T16:24:52Z', 392760093);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Random', 'US East', '42:13', '2013-11-21T03:50:19Z', 393294146);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Random', 'US East', '30:47', '2013-11-21T04:26:51Z', 393320755);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '42:41', '2013-11-22T04:27:54Z', 394523572);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '35:54', '2013-11-22T05:10:27Z', 394551849);
INSERT INTO `matches` VALUES(2, 'Loss', 'Unknown', 'Single Draft', 'US East', '39:35', '2013-11-22T06:15:49Z', 394588558);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '30:39', '2013-11-22T09:09:18Z', 394715322);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US West', '53:49', '2013-11-22T10:10:58Z', 394746830);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Random Draft', 'US West', '39:28', '2013-11-22T11:03:14Z', 394804520);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'Europe West', '37:42', '2013-11-22T16:45:49Z', 395263647);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'Europe West', '15:51', '2013-11-22T17:30:26Z', 395355447);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'Europe West', '30:25', '2013-11-22T18:14:27Z', 395393776);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'Europe West', '50:57', '2013-11-22T19:23:50Z', 395454907);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '46:40', '2013-11-22T21:00:54Z', 395565086);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '20:52', '2013-11-22T21:27:05Z', 395613742);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '40:27', '2013-11-23T01:21:26Z', 395752944);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '40:21', '2013-11-23T02:33:26Z', 395791375);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '38:38', '2013-11-23T03:41:15Z', 395833677);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '46:06', '2013-11-23T04:34:27Z', 395864749);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '35:48', '2013-11-23T06:09:10Z', 395937540);
INSERT INTO `matches` VALUES(2, 'Loss', 'Unknown', 'All Pick', 'Europe West', '40:34', '2013-11-23T20:32:31Z', 397002004);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '25:31', '2013-11-23T20:23:06Z', 397009414);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Random', 'US East', '35:33', '2013-11-23T21:15:17Z', 397054658);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Random', 'US East', '29:58', '2013-11-24T03:43:24Z', 397319075);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '47:41', '2013-11-24T04:40:12Z', 397343507);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '23:08', '2013-11-24T05:09:50Z', 397384992);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US East', '37:15', '2013-11-24T12:47:47Z', 397889134);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '44:07', '2013-11-25T02:41:04Z', 398674598);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '56:34', '2013-11-25T03:55:46Z', 398701853);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Random Draft', 'US West', '40:16', '2013-11-25T10:08:26Z', 398930531);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Captains Draft', 'US West', '47:42', '2013-11-25T11:58:56Z', 399015520);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Captains Mode', 'US West', '40:02', '2013-11-25T13:17:32Z', 399097709);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US West', '48:08', '2013-11-25T14:20:12Z', 399181102);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '42:52', '2013-11-25T15:42:08Z', 399290950);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '31:12', '2013-11-25T16:22:08Z', 399356367);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US East', '33:17', '2013-11-26T03:02:16Z', 399823259);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Random', 'US East', '33:37', '2013-11-26T04:04:32Z', 399851648);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '41:47', '2013-11-26T04:52:33Z', 399870751);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US West', '45:18', '2013-11-26T13:10:58Z', 400237128);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '45:15', '2013-11-27T04:19:24Z', 400983428);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '32:13', '2013-11-27T04:56:44Z', 401010909);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '48:34', '2013-11-27T06:16:14Z', 401049655);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '53:36', '2013-11-28T05:03:24Z', 402136941);
INSERT INTO `matches` VALUES(2, 'Loss', 'Unknown', 'All Pick', 'South Korea', '43:53', '2013-11-28T16:46:00Z', 402721491);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '48:06', '2013-11-29T04:58:54Z', 403203968);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '44:08', '2013-11-29T05:54:21Z', 403238079);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '29:47', '2013-11-30T03:18:41Z', 404273152);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '46:36', '2013-11-30T04:16:32Z', 404294402);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '17:01', '2013-11-30T04:40:40Z', 404326015);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '26:56', '2013-11-30T05:13:01Z', 404340758);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '51:44', '2013-11-30T06:20:54Z', 404369299);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '14:21', '2013-11-30T06:43:55Z', 404413808);
INSERT INTO `matches` VALUES(2, 'Loss', 'Unknown', 'Random Draft', 'US East', '39:51', '2013-11-30T16:03:07Z', 405029548);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US West', '30:57', '2013-11-30T16:39:43Z', 405092561);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US East', '32:13', '2013-11-30T17:22:52Z', 405148059);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '41:29', '2013-11-30T20:28:45Z', 405320108);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '32:57', '2013-11-30T21:07:42Z', 405361313);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '48:11', '2013-11-30T22:00:33Z', 405393226);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '1:01:16', '2013-12-01T02:01:42Z', 405538220);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '36:32', '2013-12-01T02:43:55Z', 405574187);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '38:43', '2013-12-01T05:21:07Z', 405668712);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US East', '29:00', '2013-12-01T05:56:01Z', 405701631);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Random Draft', 'US East', '54:07', '2013-12-01T10:35:17Z', 405944922);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US West', '35:21', '2013-12-01T11:21:28Z', 406018070);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US West', '13:39', '2013-12-01T11:43:26Z', 406069531);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Random Draft', 'US West', '35:04', '2013-12-01T12:27:42Z', 406094504);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Random Draft', 'US West', '43:06', '2013-12-01T13:20:07Z', 406150077);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Random Draft', 'US West', '28:40', '2013-12-01T13:59:13Z', 406221029);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Random', 'US East', '52:28', '2013-12-02T02:08:03Z', 406843751);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '41:27', '2013-12-02T03:00:37Z', 406870180);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '47:02', '2013-12-02T03:59:44Z', 406893953);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US West', '54:27', '2013-12-02T04:43:41Z', 406910813);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '39:32', '2013-12-02T08:04:32Z', 407023734);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Single Draft', 'South Korea', '25:52', '2013-12-02T08:37:57Z', 407053069);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '42:50', '2013-12-02T16:15:34Z', 407478982);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '54:07', '2013-12-03T05:12:58Z', 407979779);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US East', '42:44', '2013-12-03T06:02:06Z', 408010931);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Random', 'US West', '28:53', '2013-12-03T23:01:27Z', 408868357);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US East', '38:41', '2013-12-03T23:48:04Z', 408884415);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '46:57', '2013-12-04T05:05:00Z', 408988209);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '1:01:09', '2013-12-04T06:11:02Z', 409014484);
INSERT INTO `matches` VALUES(2, 'Loss', 'Unknown', 'All Pick', 'US East', '39:45', '2013-12-05T02:53:09Z', 410000210);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '36:48', '2013-12-05T03:41:13Z', 410024298);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Random', 'US East', '42:19', '2013-12-05T04:38:17Z', 410048755);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '32:20', '2013-12-05T05:16:29Z', 410073852);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Random', 'US East', '26:53', '2013-12-05T22:20:20Z', 410984228);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '43:36', '2013-12-06T04:33:53Z', 411136772);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '25:51', '2013-12-06T05:06:36Z', 411162555);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Single Draft', 'Europe West', '45:51', '2013-12-06T23:47:47Z', 412233745);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Single Draft', 'Europe West', '42:18', '2013-12-07T00:36:40Z', 412263047);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '23:32', '2013-12-07T01:34:11Z', 412298285);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '29:07', '2013-12-07T02:06:30Z', 412311170);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '36:59', '2013-12-07T02:50:36Z', 412330345);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '55:58', '2013-12-07T04:15:11Z', 412368835);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '31:18', '2013-12-07T05:01:37Z', 412413892);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '19:18', '2013-12-07T05:29:59Z', 412441863);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '30:54', '2013-12-07T06:04:11Z', 412458761);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '37:22', '2013-12-07T22:11:20Z', 413587139);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '30:38', '2013-12-07T22:48:52Z', 413622579);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '57:52', '2013-12-08T00:20:53Z', 413664857);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '31:27', '2013-12-08T03:15:04Z', 413775155);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '35:19', '2013-12-08T03:23:07Z', 413777843);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '50:52', '2013-12-08T04:43:22Z', 413818705);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '31:56', '2013-12-08T05:27:13Z', 413863010);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '29:09', '2013-12-08T06:03:25Z', 413893863);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '31:02', '2013-12-08T21:35:32Z', 414934438);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '42:30', '2013-12-09T03:42:43Z', 415109293);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '24:52', '2013-12-09T04:13:58Z', 415132080);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '37:51', '2013-12-09T08:12:14Z', 415257338);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '47:22', '2013-12-09T09:07:18Z', 415287118);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '38:32', '2013-12-10T03:31:49Z', 416227063);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '33:31', '2013-12-10T04:11:41Z', 416249408);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '36:07', '2013-12-10T05:06:50Z', 416277287);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '49:16', '2013-12-11T04:08:22Z', 417334710);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US East', '31:40', '2013-12-11T04:52:00Z', 417366359);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Single Draft', 'US East', '38:16', '2013-12-11T20:30:00Z', 418237514);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '38:28', '2013-12-12T04:33:43Z', 418489088);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '54:00', '2013-12-12T05:37:00Z', 418511847);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '42:10', '2013-12-12T19:45:21Z', 419338369);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '48:57', '2013-12-12T20:42:00Z', 419382966);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '31:37', '2013-12-12T21:21:38Z', 419427471);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '36:11', '2013-12-12T22:04:36Z', 419454756);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '33:23', '2013-12-13T05:07:26Z', 419753315);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '47:53', '2013-12-13T20:46:45Z', 421021730);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Least Played', 'US East', '44:16', '2013-12-14T03:58:24Z', 421526873);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '41:58', '2013-12-14T05:10:51Z', 421596967);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '47:22', '2013-12-14T06:07:03Z', 421668976);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Random Draft', 'US East', '48:52', '2013-12-14T06:55:52Z', 421738912);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '29:42', '2013-12-14T19:10:21Z', 423137236);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '39:41', '2013-12-15T21:01:55Z', 425456386);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '29:22', '2013-12-15T22:04:06Z', 425534099);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '37:39', '2013-12-16T03:17:38Z', 425747199);
INSERT INTO `matches` VALUES(2, 'Loss', 'Unknown', 'All Pick', 'US East', '46:25', '2013-12-16T04:09:52Z', 425777668);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '33:55', '2013-12-17T01:22:35Z', 427231745);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '36:28', '2013-12-17T02:45:21Z', 427254356);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '39:51', '2013-12-17T03:51:04Z', 427294032);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '30:44', '2013-12-17T04:28:07Z', 427326033);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '26:17', '2013-12-17T04:58:57Z', 427352656);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '46:30', '2013-12-17T06:12:42Z', 427394939);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '35:54', '2013-12-17T21:54:00Z', 428582775);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '53:31', '2013-12-18T05:12:30Z', 428855958);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '47:46', '2013-12-18T06:32:06Z', 428924085);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '30:49', '2013-12-18T19:58:28Z', 429804544);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '29:43', '2013-12-18T20:33:51Z', 429844621);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '44:26', '2013-12-18T23:46:25Z', 429988790);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '37:17', '2013-12-19T00:31:24Z', 430019278);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US East', '35:48', '2013-12-19T04:36:23Z', 430181744);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '30:50', '2013-12-19T22:49:55Z', 431319877);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '34:39', '2013-12-19T23:33:01Z', 431345888);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '49:02', '2013-12-20T06:33:59Z', 431578134);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '34:02', '2013-12-21T14:08:21Z', 433768657);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '31:03', '2013-12-21T14:46:50Z', 433842335);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US East', '58:31', '2013-12-22T09:00:44Z', 435036496);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US East', '43:57', '2013-12-22T09:56:50Z', 435131557);
INSERT INTO `matches` VALUES(2, 'Loss', 'Unknown', 'All Pick', 'US West', '17:16', '2013-12-22T10:20:50Z', 435197325);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US West', '47:39', '2013-12-22T11:07:09Z', 435220790);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '34:14', '2013-12-22T23:15:35Z', 436214022);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '45:27', '2013-12-23T00:06:02Z', 436240444);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '50:54', '2013-12-23T20:21:02Z', 437485742);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '30:58', '2013-12-23T22:51:44Z', 437637197);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '41:50', '2013-12-23T23:41:51Z', 437663634);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '52:10', '2013-12-24T17:34:55Z', 438700940);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '28:01', '2013-12-25T02:13:21Z', 439159551);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '25:49', '2013-12-25T02:48:24Z', 439177508);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '26:17', '2013-12-25T06:25:58Z', 439315096);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '49:17', '2013-12-26T16:13:13Z', 440860137);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '40:47', '2013-12-26T17:04:24Z', 440941575);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'South Korea', '27:26', '2013-12-27T14:21:37Z', 442175754);
INSERT INTO `matches` VALUES(2, 'Loss', 'Unknown', 'All Pick', 'South Korea', '43:42', '2013-12-27T15:14:29Z', 442231889);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'South Korea', '27:17', '2013-12-27T15:49:43Z', 442309633);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '30:08', '2013-12-27T16:35:13Z', 442373908);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '38:56', '2013-12-27T17:22:20Z', 442430274);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '49:33', '2013-12-30T00:43:20Z', 446057792);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '31:46', '2013-12-30T06:11:19Z', 446289927);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '42:45', '2013-12-30T08:43:22Z', 446428875);
INSERT INTO `matches` VALUES(2, 'Loss', 'Unknown', 'All Pick', 'US East', '25:40', '2013-12-30T14:23:27Z', 446897892);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '33:34', '2013-12-30T15:09:59Z', 446959299);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '38:38', '2013-12-30T15:54:43Z', 447021666);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '36:47', '2013-12-31T02:12:59Z', 447684393);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '34:14', '2013-12-31T02:57:01Z', 447713754);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '39:38', '2013-12-31T03:43:59Z', 447740665);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US West', '35:51', '2014-01-01T07:04:27Z', 449303748);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '40:55', '2014-01-02T03:35:53Z', 450596280);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '32:38', '2014-01-02T04:32:06Z', 450636115);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '41:57', '2014-01-02T05:25:24Z', 450665790);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '45:29', '2014-01-02T06:17:45Z', 450701018);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '48:37', '2014-01-02T19:55:05Z', 451729989);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '40:51', '2014-01-03T02:28:39Z', 452083290);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '38:51', '2014-01-03T03:14:44Z', 452113574);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '37:20', '2014-01-03T05:23:25Z', 452181256);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '44:41', '2014-01-03T06:22:18Z', 452213609);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '32:03', '2014-01-03T14:06:28Z', 452755771);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '33:51', '2014-01-03T14:57:15Z', 452835338);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '31:57', '2014-01-04T02:05:22Z', 453589055);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '31:56', '2014-01-04T02:46:18Z', 453613920);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '53:11', '2014-01-04T03:45:49Z', 453640964);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '36:05', '2014-01-04T04:29:56Z', 453684495);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '45:00', '2014-01-04T08:30:42Z', 453852613);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '28:05', '2014-01-04T09:17:19Z', 453922007);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '36:04', '2014-01-04T14:50:30Z', 454396156);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '36:46', '2014-01-04T15:34:54Z', 454470788);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '34:17', '2014-01-04T15:58:11Z', 454514826);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '35:39', '2014-01-04T16:48:30Z', 454596046);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '46:54', '2014-01-05T00:28:45Z', 455150396);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '51:34', '2014-01-05T01:39:31Z', 455197173);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '1:05:16', '2014-01-05T03:45:35Z', 455275040);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '32:49', '2014-01-05T04:33:29Z', 455335635);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '41:36', '2014-01-05T05:31:11Z', 455376301);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '36:24', '2014-01-05T16:14:12Z', 456235161);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '24:07', '2014-01-05T19:34:30Z', 456534035);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '44:58', '2014-01-05T21:14:59Z', 456635700);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '45:20', '2014-01-06T00:47:49Z', 456834554);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '40:54', '2014-01-06T01:34:44Z', 456868292);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '37:19', '2014-01-06T02:18:45Z', 456898830);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '52:57', '2014-01-06T03:20:23Z', 456928202);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '35:26', '2014-01-06T04:08:39Z', 456970201);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Random Draft', 'US West', '45:24', '2014-01-06T04:29:59Z', 456976656);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '37:29', '2014-01-06T05:20:09Z', 457017048);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '43:51', '2014-01-06T06:15:01Z', 457051296);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Random Draft', 'US East', '40:13', '2014-01-06T06:55:28Z', 457082953);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Random Draft', 'US East', '38:30', '2014-01-06T07:43:16Z', 457122472);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '51:40', '2014-01-06T14:47:05Z', 457616935);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '40:13', '2014-01-06T15:33:22Z', 457707855);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '36:35', '2014-01-07T05:59:46Z', 458500174);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '11:46', '2014-01-07T15:56:11Z', 459154008);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '36:14', '2014-01-07T16:46:12Z', 459182527);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '37:01', '2014-01-07T21:05:11Z', 459478421);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '46:52', '2014-01-08T04:44:10Z', 459760602);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '47:16', '2014-01-08T05:39:18Z', 459792621);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '35:48', '2014-01-08T14:53:51Z', 460370319);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '37:41', '2014-01-08T16:06:23Z', 460469004);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '50:50', '2014-01-09T05:25:13Z', 461115445);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '44:14', '2014-01-09T06:26:22Z', 461158669);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Random Draft', 'US West', '33:10', '2014-01-09T09:49:09Z', 461330473);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '41:49', '2014-01-09T12:06:19Z', 461468421);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '30:02', '2014-01-09T12:46:21Z', 461534395);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '34:47', '2014-01-09T13:37:29Z', 461598043);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '33:40', '2014-01-09T14:16:58Z', 461656375);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '33:59', '2014-01-09T19:54:41Z', 462072699);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Captains Mode', 'US East', '40:05', '2014-01-09T22:00:56Z', 462177688);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '33:09', '2014-01-10T01:30:01Z', 462317031);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '55:16', '2014-01-10T02:36:14Z', 462336197);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '26:09', '2014-01-10T03:28:30Z', 462381673);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '35:13', '2014-01-10T04:13:33Z', 462402120);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '34:31', '2014-01-10T05:05:46Z', 462427711);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '56:32', '2014-01-10T05:28:08Z', 462428125);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US West', '41:58', '2014-01-10T05:52:42Z', 462452504);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '41:06', '2014-01-10T06:40:33Z', 462485234);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '43:29', '2014-01-10T16:25:27Z', 463143161);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '36:41', '2014-01-10T17:08:05Z', 463210026);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US East', '34:51', '2014-01-10T21:56:35Z', 463547502);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '24:31', '2014-01-11T05:08:13Z', 463840403);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '20:43', '2014-01-11T05:44:42Z', 463872368);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '28:55', '2014-01-11T05:54:28Z', 463874119);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '1:02:00', '2014-01-11T06:51:29Z', 463894487);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '54:57', '2014-01-11T16:55:54Z', 464670805);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '33:52', '2014-01-11T17:44:14Z', 464772626);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Random Draft', 'US West', '38:37', '2014-01-11T19:58:37Z', 464942051);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Random', 'US West', '35:20', '2014-01-11T20:44:21Z', 465003508);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '26:04', '2014-01-11T20:44:08Z', 465013272);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '36:51', '2014-01-12T00:32:30Z', 465232342);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US West', '36:19', '2014-01-12T00:44:55Z', 465240581);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '48:30', '2014-01-12T01:26:32Z', 465259455);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '35:02', '2014-01-12T03:42:52Z', 465352630);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US West', '33:56', '2014-01-12T04:16:28Z', 465377229);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '30:28', '2014-01-12T04:17:44Z', 465380714);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '14:16', '2014-01-12T04:37:56Z', 465407750);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '33:05', '2014-01-12T04:58:53Z', 465409436);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US West', '43:51', '2014-01-12T05:26:12Z', 465422506);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '27:21', '2014-01-12T05:57:28Z', 465462717);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '40:41', '2014-01-12T06:44:19Z', 465493187);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '31:15', '2014-01-12T15:12:40Z', 466154024);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '45:52', '2014-01-12T16:24:18Z', 466237502);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US West', '1:00:15', '2014-01-12T21:11:13Z', 466542227);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '25:58', '2014-01-13T03:58:27Z', 466805519);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '39:40', '2014-01-13T04:54:46Z', 466829428);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '43:06', '2014-01-13T05:42:41Z', 466855935);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Random', 'US West', '36:56', '2014-01-13T22:18:42Z', 467865596);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Random', 'US West', '34:52', '2014-01-13T22:57:20Z', 467892426);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '53:45', '2014-01-14T04:42:22Z', 468069294);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '45:22', '2014-01-14T05:56:41Z', 468120934);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Random', 'US West', '22:11', '2014-01-14T17:57:15Z', 468896233);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '48:57', '2014-01-15T03:09:50Z', 469256220);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '1:00:15', '2014-01-15T05:16:37Z', 469319643);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '39:32', '2014-01-15T15:17:43Z', 469898819);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '40:33', '2014-01-16T03:29:07Z', 470513542);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '52:32', '2014-01-16T04:39:14Z', 470546566);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '44:34', '2014-01-16T05:32:58Z', 470582741);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '29:22', '2014-01-16T13:51:10Z', 471060622);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '38:16', '2014-01-16T14:38:30Z', 471115260);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '53:42', '2014-01-16T22:39:27Z', 471658336);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '58:13', '2014-01-17T04:06:48Z', 471835332);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '30:14', '2014-01-17T03:53:41Z', 471843783);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '54:17', '2014-01-17T04:55:31Z', 471866089);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US West', '13:41', '2014-01-17T04:24:41Z', 471871853);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '58:53', '2014-01-17T05:27:26Z', 471882646);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Random', 'US West', '19:57', '2014-01-17T04:50:54Z', 471884728);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Captains Draft', 'US East', '30:32', '2014-01-17T06:13:04Z', 471927804);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '43:18', '2014-01-17T13:46:58Z', 472362924);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '30:12', '2014-01-17T14:25:41Z', 472440284);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '25:03', '2014-01-17T14:57:34Z', 472494894);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '33:09', '2014-01-17T16:14:39Z', 472594517);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '39:52', '2014-01-17T17:03:01Z', 472655381);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '29:10', '2014-01-17T16:55:06Z', 472658497);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '42:06', '2014-01-17T18:22:46Z', 472754799);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Captains Draft', 'US East', '32:40', '2014-01-17T20:43:47Z', 472921922);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '34:42', '2014-01-18T01:58:04Z', 473146671);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '41:44', '2014-01-18T02:47:10Z', 473169711);
INSERT INTO `matches` VALUES(3, 'Loss', 'Unknown', 'All Pick', 'US East', '50:58', '2014-01-18T03:47:21Z', 473200301);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '30:37', '2014-01-18T13:39:44Z', 473832025);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '41:23', '2014-01-18T15:46:50Z', 474012284);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '30:18', '2014-01-18T18:02:29Z', 474230906);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '50:51', '2014-01-18T19:00:06Z', 474280042);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Captains Draft', 'US East', '32:22', '2014-01-18T20:46:41Z', 474428487);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Captains Draft', 'US East', '43:31', '2014-01-19T00:17:10Z', 474614280);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '38:29', '2014-01-19T01:50:40Z', 474677241);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'Captains Draft', 'US East', '37:16', '2014-01-19T03:22:50Z', 474732735);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '51:53', '2014-01-19T05:08:11Z', 474797855);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '41:53', '2014-01-19T05:59:48Z', 474846166);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '35:40', '2014-01-19T08:25:08Z', 474996847);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '33:43', '2014-01-19T09:06:29Z', 475047032);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '27:35', '2014-01-19T09:39:00Z', 475092647);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '30:28', '2014-01-19T13:44:36Z', 475427293);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'Captains Draft', 'US West', '30:11', '2014-01-19T19:01:53Z', 475851752);
INSERT INTO `matches` VALUES(2, 'Win', 'Unknown', 'All Pick', 'US East', '46:48', '2014-01-19T19:43:31Z', 475881927);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '23:12', '2014-01-19T19:40:20Z', 475901353);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '36:48', '2014-01-20T02:58:08Z', 476191662);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '34:09', '2014-01-20T03:46:32Z', 476221347);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '1:07:10', '2014-01-20T04:59:52Z', 476245398);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US West', '40:31', '2014-01-20T09:54:19Z', 476487785);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'South Korea', '28:24', '2014-01-20T14:15:49Z', 476812452);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '56:56', '2014-01-20T15:21:29Z', 476867018);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '40:38', '2014-01-21T04:21:33Z', 477582961);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '40:25', '2014-01-21T05:09:32Z', 477611743);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '37:45', '2014-01-21T13:01:45Z', 478033839);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '38:03', '2014-01-21T13:47:33Z', 478097226);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'Europe West', '29:55', '2014-01-22T00:05:08Z', 478782511);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'Europe West', '40:11', '2014-01-22T00:49:24Z', 478794470);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '39:00', '2014-01-22T04:19:30Z', 478915136);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '39:09', '2014-01-22T05:08:07Z', 478944565);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US West', '29:56', '2014-01-22T18:23:16Z', 479809507);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '41:04', '2014-01-22T19:09:11Z', 479850612);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '41:44', '2014-01-23T00:18:51Z', 480093626);
INSERT INTO `matches` VALUES(5, 'Loss', 'Unknown', 'All Pick', 'US East', '32:46', '2014-01-23T04:13:32Z', 480222195);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '36:35', '2014-01-23T04:56:32Z', 480245273);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '45:27', '2014-01-23T14:17:05Z', 480768820);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '37:04', '2014-01-23T15:20:28Z', 480876197);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '29:47', '2014-01-23T20:13:30Z', 481257339);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '55:41', '2014-01-23T23:17:53Z', 481383972);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '26:24', '2014-01-24T01:15:20Z', 481461795);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '51:02', '2014-01-24T03:53:40Z', 481534152);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '49:30', '2014-01-24T04:48:49Z', 481568035);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '48:27', '2014-01-24T05:52:52Z', 481609733);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '37:30', '2014-01-24T15:24:25Z', 482258858);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'South Korea', '36:03', '2014-01-24T16:11:37Z', 482330373);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '24:33', '2014-01-24T19:22:16Z', 482595379);
INSERT INTO `matches` VALUES(1, 'Win', 'Unknown', 'All Pick', 'US East', '32:49', '2014-01-24T22:17:27Z', 482765531);
INSERT INTO `matches` VALUES(1, 'Loss', 'Unknown', 'All Pick', 'US East', '36:31', '2014-01-24T23:31:17Z', 482820154);
INSERT INTO `matches` VALUES(3, 'Win', 'Unknown', 'All Pick', 'US East', '28:08', '2014-01-25T02:55:50Z', 482936778);
INSERT INTO `matches` VALUES(4, 'Win', 'Unknown', 'All Pick', 'US East', '46:41', '2014-01-25T03:48:13Z', 482958547);
INSERT INTO `matches` VALUES(4, 'Loss', 'Unknown', 'All Pick', 'US East', '52:58', '2014-01-25T04:47:36Z', 482993734);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '30:15', '2014-01-25T05:24:36Z', 483036583);
INSERT INTO `matches` VALUES(5, 'Win', 'Unknown', 'All Pick', 'US East', '45:48', '2014-01-25T06:25:51Z', 483073265);

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `Full Name` text NOT NULL,
  `Facebook ID` text NOT NULL,
  `Steam ID` text NOT NULL,
  `Steam Name` text NOT NULL,
  `Dotabuff ID` text NOT NULL,
  `Logoff` text NOT NULL,
  `Person Key` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`Person Key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Has one record for every unique player in our group.' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `people`
--

INSERT INTO `people` VALUES('Christopher Poenaru', '706220710', '76561198027956481', 'Ozymandias', '67690753', '1380381383', 1);
INSERT INTO `people` VALUES('Harim Ahn', '614729877', '76561198053661202', 'libaax', '93395474', '1380387567', 2);
INSERT INTO `people` VALUES('David Park', '533647351', '76561198064492570', 'FergieTime', '104226842', '1380393438', 3);
INSERT INTO `people` VALUES('Sam Cho', '100000922283336', '76561198061876137', 'Baba Ghanoush', '101610409', '1380256667', 4);
INSERT INTO `people` VALUES('Peter Henry', '737676269', '76561198062133508', 'marseilles', '101867780', '1380398309', 5);
INSERT INTO `people` VALUES('Joshua Manu', '1219200690', '76561198047777536', 'redsurfable', '87511808', '1380260639', 6);
INSERT INTO `people` VALUES('Lance Nordmeyer', '754439301', '76561198035749996', 'DjiboutiKing', '75484268', '1380353751', 7);
INSERT INTO `people` VALUES('Tim Nykamp', '100000554720199', '76561198059533974', '[SMH] TimTheBomb', '', '1380039432', 8);
INSERT INTO `people` VALUES('Jacob Gaudaur', '786583634', '76561198071998721', 'Pacific Ideas', '111732993', '1380377413', 9);
INSERT INTO `people` VALUES('Junhaeng Lee', '694470214', '76561198068578603', 'haeng1', '108312875', '1380101356', 10);
INSERT INTO `people` VALUES('Yechan Lim', '746292284', '76561198086878114', 'Limish', '', '1380388423', 11);
INSERT INTO `people` VALUES('Peter Park', '100006463112161', '76561198074037060', 'Mean Machine', '113771332', '1379167811', 12);
INSERT INTO `people` VALUES('Carl Otuke', '794569035', '76561198089679629', 'markusmadness', '', '1379943588', 13);
INSERT INTO `people` VALUES('Patrick Collins', '549413320', '76561198072244259', 'pathalo45', '', '1380349430', 14);

-- --------------------------------------------------------

--
-- Table structure for table `peoplematchesheroes`
--

CREATE TABLE `peoplematchesheroes` (
  `personmatchherokey` int(11) NOT NULL auto_increment,
  `matchforeignkey` int(11) NOT NULL,
  `personforeignkey` int(11) NOT NULL,
  `heroforeignkey` varchar(25) NOT NULL,
  PRIMARY KEY  (`personmatchherokey`),
  KEY `matchforeignkey` (`matchforeignkey`),
  KEY `personforeignkey` (`personforeignkey`),
  KEY `heroforeignkey` (`heroforeignkey`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Has one record for every existing person/match/hero set.' AUTO_INCREMENT=15345 ;

--
-- Dumping data for table `peoplematchesheroes`
--

INSERT INTO `peoplematchesheroes` VALUES(581, 321728562, 9, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(582, 321728562, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(583, 321728562, 7, 'Abaddon');
INSERT INTO `peoplematchesheroes` VALUES(584, 320743589, 1, 'Enchantress');
INSERT INTO `peoplematchesheroes` VALUES(585, 320743589, 9, 'Phantom Assassin');
INSERT INTO `peoplematchesheroes` VALUES(586, 319479504, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(587, 319479504, 6, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(588, 319479504, 1, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(589, 319479504, 9, 'Gyrocopter');
INSERT INTO `peoplematchesheroes` VALUES(590, 319431304, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(591, 319431304, 6, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(592, 319431304, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(593, 319431304, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(594, 318534170, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(595, 318534170, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(596, 318534170, 1, 'Viper');
INSERT INTO `peoplematchesheroes` VALUES(597, 318508712, 3, 'Undying');
INSERT INTO `peoplematchesheroes` VALUES(598, 318508712, 9, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(599, 318508712, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(600, 315989917, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(601, 315989917, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(602, 315989917, 9, 'Kunkka');
INSERT INTO `peoplematchesheroes` VALUES(603, 315989917, 1, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(604, 321416254, 2, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(605, 320847531, 2, 'Ursa');
INSERT INTO `peoplematchesheroes` VALUES(606, 320847531, 5, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(607, 320810517, 2, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(608, 320810517, 5, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(609, 319972136, 2, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(610, 319972136, 6, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(611, 319950890, 2, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(612, 319950890, 6, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(613, 319852597, 2, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(614, 319827971, 2, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(615, 319735439, 9, 'Naga Siren');
INSERT INTO `peoplematchesheroes` VALUES(616, 319735439, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(617, 319542076, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(618, 319542076, 6, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(619, 319513938, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(620, 319513938, 6, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(621, 321867635, 5, 'Brewmaster');
INSERT INTO `peoplematchesheroes` VALUES(622, 321832090, 5, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(623, 321603768, 6, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(624, 321583727, 6, 'Clinkz');
INSERT INTO `peoplematchesheroes` VALUES(625, 321555416, 6, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(626, 321173192, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(627, 321173192, 6, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(628, 320314011, 6, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(629, 315326287, 10, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(630, 315326287, 2, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(631, 315260464, 10, 'Sniper');
INSERT INTO `peoplematchesheroes` VALUES(632, 314056982, 10, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(633, 303139553, 10, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(634, 303139553, 2, 'Omniknight');
INSERT INTO `peoplematchesheroes` VALUES(635, 299166238, 10, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(636, 299109525, 10, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(637, 293901342, 10, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(638, 293901342, 12, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(639, 309258955, 12, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(640, 308655582, 12, 'Skeleton King');
INSERT INTO `peoplematchesheroes` VALUES(641, 308605905, 12, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(642, 308030277, 12, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(643, 308004939, 12, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(644, 307492070, 12, 'Ursa');
INSERT INTO `peoplematchesheroes` VALUES(645, 306484028, 12, 'Ursa');
INSERT INTO `peoplematchesheroes` VALUES(646, 321969939, 2, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(647, 321969939, 6, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(648, 322629985, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(649, 322769725, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(650, 322769725, 6, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(651, 322769725, 1, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(652, 322769725, 9, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(653, 322788892, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(654, 322788892, 6, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(655, 322788892, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(656, 322788892, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(657, 322788892, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(658, 323304924, 6, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(659, 323388711, 6, 'Chen');
INSERT INTO `peoplematchesheroes` VALUES(660, 323801232, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(661, 323801232, 4, 'Omniknight');
INSERT INTO `peoplematchesheroes` VALUES(662, 323801232, 6, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(663, 323822883, 1, 'Skywrath Mage');
INSERT INTO `peoplematchesheroes` VALUES(664, 323822883, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(665, 323822883, 6, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(666, 323822883, 3, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(667, 323822883, 9, 'Ogre Magi');
INSERT INTO `peoplematchesheroes` VALUES(668, 323841413, 1, 'Queen of Pain');
INSERT INTO `peoplematchesheroes` VALUES(669, 323841413, 4, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(670, 323841413, 6, 'Visage');
INSERT INTO `peoplematchesheroes` VALUES(671, 323841413, 3, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(672, 323841413, 9, 'Treant Protector');
INSERT INTO `peoplematchesheroes` VALUES(673, 324311633, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(674, 324904954, 9, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(675, 324916176, 9, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(676, 324970988, 3, 'Sand King');
INSERT INTO `peoplematchesheroes` VALUES(677, 324970988, 6, 'Sniper');
INSERT INTO `peoplematchesheroes` VALUES(679, 325044307, 1, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(680, 325044307, 6, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(681, 325044307, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(682, 325044307, 9, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(683, 325085667, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(684, 325085667, 6, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(685, 325085667, 7, 'Abaddon');
INSERT INTO `peoplematchesheroes` VALUES(686, 325085667, 9, 'Gyrocopter');
INSERT INTO `peoplematchesheroes` VALUES(687, 325722204, 6, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(688, 325808946, 6, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(689, 326119875, 7, 'Lycan');
INSERT INTO `peoplematchesheroes` VALUES(690, 326119875, 6, 'Batrider');
INSERT INTO `peoplematchesheroes` VALUES(691, 326119875, 9, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(692, 326119875, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(707, 326188632, 7, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(708, 326188632, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(709, 326188632, 6, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(710, 326188632, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(711, 326188632, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(712, 297828928, 5, 'Treant Protector');
INSERT INTO `peoplematchesheroes` VALUES(713, 217330898, 5, 'Undying');
INSERT INTO `peoplematchesheroes` VALUES(714, 216843053, 5, 'Ursa');
INSERT INTO `peoplematchesheroes` VALUES(715, 216148951, 5, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(716, 216109757, 5, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(717, 212598510, 5, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(718, 212409422, 5, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(719, 313818997, 4, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(720, 313818997, 9, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(721, 313818997, 7, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(722, 288458228, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(723, 288458228, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(724, 288458228, 7, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(725, 288440877, 4, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(726, 288440877, 7, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(727, 285004473, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(728, 285004473, 12, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(729, 285004473, 10, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(730, 285004473, 7, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(731, 284977445, 4, 'Clinkz');
INSERT INTO `peoplematchesheroes` VALUES(732, 284977445, 10, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(733, 284977445, 7, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(734, 283392255, 4, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(735, 283392255, 7, 'Bane');
INSERT INTO `peoplematchesheroes` VALUES(736, 283392255, 2, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(737, 283392255, 5, 'Viper');
INSERT INTO `peoplematchesheroes` VALUES(738, 283361217, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(739, 283361217, 10, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(740, 283361217, 2, 'Chaos Knight');
INSERT INTO `peoplematchesheroes` VALUES(741, 283361217, 7, 'Bane');
INSERT INTO `peoplematchesheroes` VALUES(742, 326447964, 5, 'Zeus');
INSERT INTO `peoplematchesheroes` VALUES(743, 326505292, 2, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(744, 326505292, 3, 'Shadow Fiend');
INSERT INTO `peoplematchesheroes` VALUES(745, 326505292, 7, 'Medusa');
INSERT INTO `peoplematchesheroes` VALUES(746, 326505292, 5, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(747, 327637040, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(748, 327637040, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(749, 327637040, 6, 'Chen');
INSERT INTO `peoplematchesheroes` VALUES(750, 327653674, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(751, 327653674, 4, 'Beastmaster');
INSERT INTO `peoplematchesheroes` VALUES(752, 327653674, 6, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(753, 327653674, 7, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(754, 327671667, 6, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(755, 327671667, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(756, 327671667, 7, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(757, 327690286, 6, 'Batrider');
INSERT INTO `peoplematchesheroes` VALUES(758, 327690286, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(759, 327690286, 7, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(760, 327690286, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(761, 327714068, 6, 'Batrider');
INSERT INTO `peoplematchesheroes` VALUES(762, 327714068, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(763, 327714068, 7, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(764, 327714068, 9, 'Kunkka');
INSERT INTO `peoplematchesheroes` VALUES(765, 327714068, 1, 'Skywrath Mage');
INSERT INTO `peoplematchesheroes` VALUES(766, 327725237, 1, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(767, 327725237, 7, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(768, 327725237, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(769, 327725237, 6, 'Invoker');
INSERT INTO `peoplematchesheroes` VALUES(770, 327828068, 2, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(771, 299166238, 2, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(772, 299109525, 2, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(773, 293901342, 2, 'Morphling');
INSERT INTO `peoplematchesheroes` VALUES(774, 286558903, 2, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(775, 286558903, 10, 'Sniper');
INSERT INTO `peoplematchesheroes` VALUES(776, 286558903, 12, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(777, 286458440, 10, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(778, 286458440, 2, 'Zeus');
INSERT INTO `peoplematchesheroes` VALUES(779, 285486352, 2, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(780, 285486352, 10, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(781, 328451764, 6, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(782, 328390637, 6, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(783, 328343082, 6, 'Centaur Warrunner');
INSERT INTO `peoplematchesheroes` VALUES(784, 328266765, 6, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(785, 226215845, 6, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(786, 209309321, 4, 'Medusa');
INSERT INTO `peoplematchesheroes` VALUES(787, 209309321, 6, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(788, 209309321, 7, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(789, 209286740, 4, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(790, 209286740, 6, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(791, 209286740, 7, 'Slardar');
INSERT INTO `peoplematchesheroes` VALUES(792, 328881107, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(793, 328881107, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(794, 328881107, 7, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(795, 328881107, 9, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(796, 328881107, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(797, 328946778, 2, 'Death Prophet');
INSERT INTO `peoplematchesheroes` VALUES(798, 329461954, 6, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(799, 329514283, 6, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(800, 329583950, 6, 'Chen');
INSERT INTO `peoplematchesheroes` VALUES(801, 329577712, 2, 'Lifestealer');
INSERT INTO `peoplematchesheroes` VALUES(802, 331600042, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(803, 331900685, 9, 'Sand King');
INSERT INTO `peoplematchesheroes` VALUES(804, 331950901, 9, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(805, 332158018, 4, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(806, 332158018, 9, 'Treant Protector');
INSERT INTO `peoplematchesheroes` VALUES(807, 332182362, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(808, 332182362, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(809, 332182362, 3, 'Queen of Pain');
INSERT INTO `peoplematchesheroes` VALUES(810, 332907747, 9, 'Bane');
INSERT INTO `peoplematchesheroes` VALUES(811, 332971424, 9, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(812, 333235460, 3, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(813, 333253727, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(814, 333253727, 9, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(815, 333340856, 1, 'Undying');
INSERT INTO `peoplematchesheroes` VALUES(816, 333416758, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(817, 333416758, 1, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(818, 333416758, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(819, 333443010, 9, 'Ogre Magi');
INSERT INTO `peoplematchesheroes` VALUES(820, 333443010, 1, 'Queen of Pain');
INSERT INTO `peoplematchesheroes` VALUES(821, 333443010, 3, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(822, 333477343, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(823, 333477343, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(824, 333477343, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(825, 333561916, 5, 'Lifestealer');
INSERT INTO `peoplematchesheroes` VALUES(826, 334278045, 7, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(827, 334505785, 4, 'Omniknight');
INSERT INTO `peoplematchesheroes` VALUES(828, 334505785, 6, 'Treant Protector');
INSERT INTO `peoplematchesheroes` VALUES(829, 334505785, 9, 'Bloodseeker');
INSERT INTO `peoplematchesheroes` VALUES(830, 334505785, 1, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(831, 334505785, 2, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(832, 334551693, 4, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(833, 334551693, 6, 'Visage');
INSERT INTO `peoplematchesheroes` VALUES(834, 334551693, 9, 'Gyrocopter');
INSERT INTO `peoplematchesheroes` VALUES(835, 334551693, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(836, 334551693, 2, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(837, 334591050, 4, 'Beastmaster');
INSERT INTO `peoplematchesheroes` VALUES(838, 334591050, 6, 'Chen');
INSERT INTO `peoplematchesheroes` VALUES(839, 334591050, 9, 'Kunkka');
INSERT INTO `peoplematchesheroes` VALUES(840, 334591050, 1, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(841, 334591050, 7, 'Centaur Warrunner');
INSERT INTO `peoplematchesheroes` VALUES(842, 334638461, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(843, 334638461, 6, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(844, 334638461, 9, 'Sand King');
INSERT INTO `peoplematchesheroes` VALUES(845, 334638461, 7, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(846, 334885610, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(847, 334885610, 9, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(848, 334885610, 7, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(849, 334885610, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(850, 334923965, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(851, 334923965, 9, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(852, 334923965, 7, 'Omniknight');
INSERT INTO `peoplematchesheroes` VALUES(853, 334923965, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(854, 334980815, 2, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(855, 335441264, 2, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(856, 335821682, 6, 'Brewmaster');
INSERT INTO `peoplematchesheroes` VALUES(857, 335880045, 4, 'Juggernaut');
INSERT INTO `peoplematchesheroes` VALUES(858, 335880045, 7, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(859, 335880045, 9, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(860, 335880045, 6, 'Queen of Pain');
INSERT INTO `peoplematchesheroes` VALUES(861, 335931072, 4, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(862, 335931072, 7, 'Medusa');
INSERT INTO `peoplematchesheroes` VALUES(863, 335931072, 9, 'Naga Siren');
INSERT INTO `peoplematchesheroes` VALUES(864, 335931072, 6, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(865, 335961380, 4, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(866, 335961380, 7, 'Puck');
INSERT INTO `peoplematchesheroes` VALUES(867, 335961380, 6, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(868, 336049423, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(869, 336049423, 7, 'Axe');
INSERT INTO `peoplematchesheroes` VALUES(870, 336049423, 6, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(871, 336023995, 4, 'Brewmaster');
INSERT INTO `peoplematchesheroes` VALUES(872, 336023995, 7, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(873, 336023995, 6, 'Juggernaut');
INSERT INTO `peoplematchesheroes` VALUES(874, 336073787, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(875, 336073787, 6, 'Centaur Warrunner');
INSERT INTO `peoplematchesheroes` VALUES(876, 336205047, 9, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(877, 336581194, 2, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(878, 337070161, 9, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(879, 337246996, 1, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(880, 337264351, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(881, 337264351, 9, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(882, 337264351, 1, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(883, 337264351, 7, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(884, 337280801, 4, 'Axe');
INSERT INTO `peoplematchesheroes` VALUES(885, 337280801, 9, 'Sand King');
INSERT INTO `peoplematchesheroes` VALUES(886, 337280801, 1, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(887, 337280801, 7, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(888, 337301548, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(889, 337301548, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(890, 337301548, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(891, 337301548, 7, 'Abaddon');
INSERT INTO `peoplematchesheroes` VALUES(892, 337421171, 2, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(893, 337717097, 9, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(894, 337988810, 2, 'Lycan');
INSERT INTO `peoplematchesheroes` VALUES(895, 338236124, 1, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(896, 338311566, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(897, 338311566, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(898, 338311566, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(899, 338311566, 7, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(900, 338311566, 5, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(901, 338338635, 1, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(902, 338338635, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(903, 338338635, 4, 'Axe');
INSERT INTO `peoplematchesheroes` VALUES(904, 338338635, 7, 'Omniknight');
INSERT INTO `peoplematchesheroes` VALUES(905, 338338635, 5, 'Treant Protector');
INSERT INTO `peoplematchesheroes` VALUES(906, 338409282, 2, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(907, 339341370, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(908, 339341370, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(909, 339341370, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(910, 339367056, 1, 'Lifestealer');
INSERT INTO `peoplematchesheroes` VALUES(911, 339367056, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(912, 339367056, 9, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(913, 339388728, 1, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(914, 339388728, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(915, 339388728, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(916, 339388728, 3, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(917, 339417238, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(918, 339417238, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(919, 339417238, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(920, 339417238, 7, 'Abaddon');
INSERT INTO `peoplematchesheroes` VALUES(921, 339417238, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(922, 339830927, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(923, 339895371, 9, 'Enchantress');
INSERT INTO `peoplematchesheroes` VALUES(924, 339895371, 6, 'Queen of Pain');
INSERT INTO `peoplematchesheroes` VALUES(925, 339935818, 6, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(926, 339981113, 6, 'Slardar');
INSERT INTO `peoplematchesheroes` VALUES(927, 340034446, 6, 'Beastmaster');
INSERT INTO `peoplematchesheroes` VALUES(928, 340136120, 2, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(929, 340277023, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(930, 340306945, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(931, 340428150, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(932, 340428150, 1, 'Skywrath Mage');
INSERT INTO `peoplematchesheroes` VALUES(933, 340428150, 7, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(934, 340428150, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(935, 340518812, 2, 'Templar Assassin');
INSERT INTO `peoplematchesheroes` VALUES(936, 340592588, 2, 'Omniknight');
INSERT INTO `peoplematchesheroes` VALUES(937, 340592588, 5, 'Huskar');
INSERT INTO `peoplematchesheroes` VALUES(938, 340621370, 2, 'Storm Spirit');
INSERT INTO `peoplematchesheroes` VALUES(939, 340621370, 5, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(940, 341033087, 6, 'Chen');
INSERT INTO `peoplematchesheroes` VALUES(941, 341071626, 6, 'Chen');
INSERT INTO `peoplematchesheroes` VALUES(942, 341112165, 6, 'Chen');
INSERT INTO `peoplematchesheroes` VALUES(943, 341208337, 6, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(944, 341451274, 5, 'Ogre Magi');
INSERT INTO `peoplematchesheroes` VALUES(945, 341586350, 9, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(946, 341608757, 9, 'Templar Assassin');
INSERT INTO `peoplematchesheroes` VALUES(947, 341658857, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(948, 341658857, 1, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(949, 341658857, 9, 'Bloodseeker');
INSERT INTO `peoplematchesheroes` VALUES(950, 341658857, 6, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(951, 341658857, 7, 'Slardar');
INSERT INTO `peoplematchesheroes` VALUES(952, 341684004, 4, 'Night Stalker');
INSERT INTO `peoplematchesheroes` VALUES(953, 341684004, 1, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(954, 341684004, 9, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(955, 341684004, 6, 'Chen');
INSERT INTO `peoplematchesheroes` VALUES(956, 341684004, 7, 'Drow Ranger');
INSERT INTO `peoplematchesheroes` VALUES(957, 341707005, 1, 'Chaos Knight');
INSERT INTO `peoplematchesheroes` VALUES(958, 341707005, 4, 'Zeus');
INSERT INTO `peoplematchesheroes` VALUES(959, 341707005, 6, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(960, 341707005, 9, 'Tinker');
INSERT INTO `peoplematchesheroes` VALUES(961, 341707005, 7, 'Io');
INSERT INTO `peoplematchesheroes` VALUES(962, 341747983, 1, 'Huskar');
INSERT INTO `peoplematchesheroes` VALUES(963, 341747983, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(964, 341747983, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(965, 341747983, 7, 'Abaddon');
INSERT INTO `peoplematchesheroes` VALUES(966, 341747983, 6, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(967, 49317233, 8, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(968, 41104362, 8, 'Puck');
INSERT INTO `peoplematchesheroes` VALUES(969, 41061616, 8, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(970, 41049901, 8, 'Invoker');
INSERT INTO `peoplematchesheroes` VALUES(971, 41036987, 8, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(972, 41021507, 8, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(973, 341972892, 5, 'Huskar');
INSERT INTO `peoplematchesheroes` VALUES(974, 341996694, 5, 'Naga Siren');
INSERT INTO `peoplematchesheroes` VALUES(975, 342046078, 5, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(976, 342103412, 5, 'Enchantress');
INSERT INTO `peoplematchesheroes` VALUES(977, 342103412, 2, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(978, 342167314, 5, 'Puck');
INSERT INTO `peoplematchesheroes` VALUES(979, 342290156, 2, 'Ancient Apparition');
INSERT INTO `peoplematchesheroes` VALUES(980, 343096454, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(981, 343362290, 5, 'Beastmaster');
INSERT INTO `peoplematchesheroes` VALUES(982, 344198728, 5, 'Omniknight');
INSERT INTO `peoplematchesheroes` VALUES(983, 344220675, 6, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(984, 344222330, 5, 'Io');
INSERT INTO `peoplematchesheroes` VALUES(985, 344249016, 6, 'Enchantress');
INSERT INTO `peoplematchesheroes` VALUES(986, 344391287, 2, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(987, 344688167, 6, 'Bloodseeker');
INSERT INTO `peoplematchesheroes` VALUES(988, 344746531, 6, 'Brewmaster');
INSERT INTO `peoplematchesheroes` VALUES(989, 344804659, 6, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(990, 344874307, 6, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(991, 344941873, 6, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(992, 345004749, 6, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(993, 345542186, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(994, 345542186, 1, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(995, 345542186, 9, 'Bloodseeker');
INSERT INTO `peoplematchesheroes` VALUES(996, 345553540, 4, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(997, 345553540, 9, 'Tusk');
INSERT INTO `peoplematchesheroes` VALUES(998, 345573010, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(999, 345573010, 9, 'Bloodseeker');
INSERT INTO `peoplematchesheroes` VALUES(1000, 345600366, 4, 'Juggernaut');
INSERT INTO `peoplematchesheroes` VALUES(1001, 345600366, 9, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(1002, 345600366, 7, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(1003, 345600366, 1, 'Tusk');
INSERT INTO `peoplematchesheroes` VALUES(1004, 345600366, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1005, 345659699, 2, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1006, 345913697, 2, 'Omniknight');
INSERT INTO `peoplematchesheroes` VALUES(1007, 346092606, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1008, 346321123, 3, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1009, 346321123, 6, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(1010, 346367968, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(1011, 346367968, 6, 'Invoker');
INSERT INTO `peoplematchesheroes` VALUES(1012, 346678127, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1013, 346678127, 1, 'Shadow Fiend');
INSERT INTO `peoplematchesheroes` VALUES(1014, 346678127, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1015, 346678127, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(1016, 346706316, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1017, 346706316, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(1018, 346706316, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(1019, 347079764, 6, 'Naga Siren');
INSERT INTO `peoplematchesheroes` VALUES(1020, 347541919, 6, 'Naga Siren');
INSERT INTO `peoplematchesheroes` VALUES(1021, 347585424, 6, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(1022, 347616451, 6, 'Viper');
INSERT INTO `peoplematchesheroes` VALUES(1023, 347789182, 4, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(1024, 347789182, 1, 'Lifestealer');
INSERT INTO `peoplematchesheroes` VALUES(1025, 347789182, 7, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1026, 347789182, 9, 'Death Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1027, 347789182, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(1028, 347813849, 4, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(1029, 347813849, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1030, 347813849, 7, 'Sand King');
INSERT INTO `peoplematchesheroes` VALUES(1031, 347813849, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(1032, 347813849, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(1033, 348099892, 6, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1034, 348143239, 6, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1035, 348127753, 2, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(1036, 348552122, 9, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(1037, 348609733, 9, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(1038, 348609733, 3, 'Doom');
INSERT INTO `peoplematchesheroes` VALUES(1039, 348879526, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1040, 348883888, 1, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(1041, 348902559, 1, 'Enchantress');
INSERT INTO `peoplematchesheroes` VALUES(1042, 348902559, 4, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(1043, 348902559, 9, 'Faceless Void');
INSERT INTO `peoplematchesheroes` VALUES(1044, 348924850, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(1045, 348924850, 4, 'Magnus');
INSERT INTO `peoplematchesheroes` VALUES(1046, 348924850, 9, 'Sniper');
INSERT INTO `peoplematchesheroes` VALUES(1047, 348924850, 7, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1048, 348931969, 1, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(1049, 348931969, 4, 'Doom');
INSERT INTO `peoplematchesheroes` VALUES(1050, 348931969, 9, 'Skywrath Mage');
INSERT INTO `peoplematchesheroes` VALUES(1051, 348931969, 7, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(1052, 349057313, 2, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(1053, 349233840, 6, 'Storm Spirit');
INSERT INTO `peoplematchesheroes` VALUES(1054, 349289141, 6, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(1055, 349345533, 6, 'Skeleton King');
INSERT INTO `peoplematchesheroes` VALUES(1056, 349634187, 9, 'Centaur Warrunner');
INSERT INTO `peoplematchesheroes` VALUES(1057, 349634187, 6, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1058, 349717045, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1059, 349717045, 6, 'Brewmaster');
INSERT INTO `peoplematchesheroes` VALUES(1060, 349782238, 6, 'Brewmaster');
INSERT INTO `peoplematchesheroes` VALUES(1061, 349848227, 6, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1062, 349887053, 3, 'Naga Siren');
INSERT INTO `peoplematchesheroes` VALUES(1063, 349887053, 9, 'Beastmaster');
INSERT INTO `peoplematchesheroes` VALUES(1064, 349887053, 6, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(1065, 350135232, 7, 'Chaos Knight');
INSERT INTO `peoplematchesheroes` VALUES(1066, 350135232, 1, 'Lifestealer');
INSERT INTO `peoplematchesheroes` VALUES(1067, 350138522, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1068, 350167729, 7, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1069, 350167729, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(1070, 350167729, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1071, 350206038, 6, 'Visage');
INSERT INTO `peoplematchesheroes` VALUES(1072, 350206038, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(1073, 350206038, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(1074, 350206038, 3, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(1075, 350206038, 7, 'Abaddon');
INSERT INTO `peoplematchesheroes` VALUES(1076, 350249274, 6, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1077, 350249274, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1078, 350249274, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(1079, 350249274, 7, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(1080, 350249274, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1081, 350292618, 6, 'Omniknight');
INSERT INTO `peoplematchesheroes` VALUES(1082, 350336982, 2, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1083, 350336982, 6, 'Juggernaut');
INSERT INTO `peoplematchesheroes` VALUES(1084, 350614463, 6, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(1085, 350703300, 6, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1086, 351095946, 4, 'Juggernaut');
INSERT INTO `peoplematchesheroes` VALUES(1087, 351095946, 2, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(1088, 351174687, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1089, 351174687, 2, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(1090, 351174687, 6, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1091, 351174687, 7, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(1092, 351174687, 9, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(1093, 351261865, 4, 'Riki');
INSERT INTO `peoplematchesheroes` VALUES(1094, 351261865, 7, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(1095, 351261865, 9, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(1096, 351261865, 1, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(1097, 351261865, 6, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(1098, 351306117, 4, 'Bane');
INSERT INTO `peoplematchesheroes` VALUES(1099, 351306117, 6, 'Centaur Warrunner');
INSERT INTO `peoplematchesheroes` VALUES(1100, 351512934, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1101, 351512934, 3, 'Night Stalker');
INSERT INTO `peoplematchesheroes` VALUES(1102, 351629051, 9, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1103, 351664588, 4, 'Sniper');
INSERT INTO `peoplematchesheroes` VALUES(1104, 351664588, 9, 'Ogre Magi');
INSERT INTO `peoplematchesheroes` VALUES(1105, 351664588, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1106, 351664588, 7, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(1107, 351686775, 4, 'Doom');
INSERT INTO `peoplematchesheroes` VALUES(1108, 351686775, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(1109, 351686775, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(1110, 351686775, 7, 'Enchantress');
INSERT INTO `peoplematchesheroes` VALUES(1111, 351721642, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1112, 351721642, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1113, 351721642, 7, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(1114, 351721642, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(1115, 351721642, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1116, 352240911, 6, 'Brewmaster');
INSERT INTO `peoplematchesheroes` VALUES(1117, 352307021, 6, 'Brewmaster');
INSERT INTO `peoplematchesheroes` VALUES(1118, 352356102, 6, 'Brewmaster');
INSERT INTO `peoplematchesheroes` VALUES(1119, 352991543, 4, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(1120, 353005206, 4, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(1121, 353024272, 9, 'Tinker');
INSERT INTO `peoplematchesheroes` VALUES(1122, 353045016, 9, 'Chaos Knight');
INSERT INTO `peoplematchesheroes` VALUES(1123, 353054875, 9, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1124, 353067261, 1, 'Zeus');
INSERT INTO `peoplematchesheroes` VALUES(1125, 353067261, 7, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(1126, 353067261, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1127, 353994093, 9, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1128, 354050033, 5, 'Viper');
INSERT INTO `peoplematchesheroes` VALUES(1129, 354223092, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1130, 354237660, 4, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1131, 354237660, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1132, 354258833, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1133, 354258833, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1134, 354258833, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1135, 354293607, 4, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1136, 354293607, 2, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(1137, 354293607, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(1138, 354511021, 5, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1139, 358987456, 9, 'Centaur Warrunner');
INSERT INTO `peoplematchesheroes` VALUES(1140, 358987456, 7, 'Sand King');
INSERT INTO `peoplematchesheroes` VALUES(1141, 358987456, 1, 'Huskar');
INSERT INTO `peoplematchesheroes` VALUES(1142, 358961999, 9, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1143, 358961999, 7, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(1144, 358961999, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1145, 356636545, 4, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1146, 356636545, 9, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1147, 356636545, 1, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(1148, 356604488, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1149, 356604488, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(1150, 356604488, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(1151, 355480531, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(1152, 355480531, 9, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(1153, 355480531, 1, 'Ogre Magi');
INSERT INTO `peoplematchesheroes` VALUES(1154, 355464400, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1155, 355464400, 9, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(1156, 355464400, 1, 'Omniknight');
INSERT INTO `peoplematchesheroes` VALUES(1157, 358816211, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1158, 358816211, 9, 'Batrider');
INSERT INTO `peoplematchesheroes` VALUES(1159, 357766935, 5, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1160, 357490720, 5, 'Slardar');
INSERT INTO `peoplematchesheroes` VALUES(1161, 356562212, 5, 'Night Stalker');
INSERT INTO `peoplematchesheroes` VALUES(1162, 356531002, 5, 'Night Stalker');
INSERT INTO `peoplematchesheroes` VALUES(1163, 300766713, 5, 'Phantom Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1164, 299627913, 5, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1165, 298853661, 5, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(1166, 359080892, 5, 'Magnus');
INSERT INTO `peoplematchesheroes` VALUES(1167, 359732010, 2, 'Undying');
INSERT INTO `peoplematchesheroes` VALUES(1168, 360371327, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1169, 360371327, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1170, 360412998, 4, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(1171, 360412998, 9, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1172, 360412998, 7, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(1173, 360412998, 2, 'Night Stalker');
INSERT INTO `peoplematchesheroes` VALUES(1174, 360434804, 4, 'Juggernaut');
INSERT INTO `peoplematchesheroes` VALUES(1175, 360434804, 9, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1176, 360434804, 7, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1177, 361754147, 9, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(1178, 361791840, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(1179, 361791840, 7, 'Lycan');
INSERT INTO `peoplematchesheroes` VALUES(1180, 361791840, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1181, 361791840, 9, 'Bloodseeker');
INSERT INTO `peoplematchesheroes` VALUES(1182, 361813509, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(1183, 361813509, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1184, 361813509, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1185, 362787545, 9, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1186, 362983522, 9, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(1187, 363004711, 9, 'Zeus');
INSERT INTO `peoplematchesheroes` VALUES(1188, 363557642, 9, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1189, 364127648, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1190, 364127648, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1191, 364127648, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1192, 364154681, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1193, 364154681, 1, 'Shadow Fiend');
INSERT INTO `peoplematchesheroes` VALUES(1194, 364154681, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1195, 364175649, 4, 'Enchantress');
INSERT INTO `peoplematchesheroes` VALUES(1196, 364175649, 1, 'Sand King');
INSERT INTO `peoplematchesheroes` VALUES(1197, 364175649, 9, 'Templar Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1198, 364175649, 7, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(1199, 370558910, 1, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(1200, 370558910, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1201, 370558910, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(1202, 370537534, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1203, 370537534, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1204, 370537534, 7, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1205, 370537534, 9, 'Beastmaster');
INSERT INTO `peoplematchesheroes` VALUES(1206, 370519802, 1, 'Slardar');
INSERT INTO `peoplematchesheroes` VALUES(1207, 370519802, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1208, 370503072, 1, 'Queen of Pain');
INSERT INTO `peoplematchesheroes` VALUES(1209, 370503072, 4, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1210, 370475790, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1211, 369196571, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(1212, 369196571, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1213, 369196571, 9, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1214, 367738423, 1, 'Enchantress');
INSERT INTO `peoplematchesheroes` VALUES(1215, 367738423, 4, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(1216, 367738423, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1217, 367738423, 7, 'Treant Protector');
INSERT INTO `peoplematchesheroes` VALUES(1218, 371841909, 9, 'Sand King');
INSERT INTO `peoplematchesheroes` VALUES(1219, 371811341, 9, 'Axe');
INSERT INTO `peoplematchesheroes` VALUES(1220, 371949141, 5, 'Batrider');
INSERT INTO `peoplematchesheroes` VALUES(1221, 372860718, 5, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1222, 372834633, 5, 'Zeus');
INSERT INTO `peoplematchesheroes` VALUES(1223, 372979594, 1, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(1224, 372979594, 4, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(1225, 372979594, 9, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(1226, 372979594, 7, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1227, 372945339, 1, 'Axe');
INSERT INTO `peoplematchesheroes` VALUES(1228, 372945339, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(1229, 372945339, 9, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(1230, 373065113, 5, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1231, 374112099, 9, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1232, 374112099, 1, 'Drow Ranger');
INSERT INTO `peoplematchesheroes` VALUES(1233, 374112099, 4, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(1234, 374141694, 9, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(1235, 374141694, 1, 'Batrider');
INSERT INTO `peoplematchesheroes` VALUES(1236, 374141694, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1237, 374992806, 9, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(1238, 375180247, 5, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(1239, 375199383, 5, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(1240, 375288968, 9, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1241, 375288968, 4, 'Broodmother');
INSERT INTO `peoplematchesheroes` VALUES(1242, 375315651, 9, 'Gyrocopter');
INSERT INTO `peoplematchesheroes` VALUES(1243, 375315651, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1244, 375315651, 1, 'Puck');
INSERT INTO `peoplematchesheroes` VALUES(1245, 376467643, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1246, 376495393, 9, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1247, 376529381, 1, 'Shadow Fiend');
INSERT INTO `peoplematchesheroes` VALUES(1248, 376529381, 4, 'Medusa');
INSERT INTO `peoplematchesheroes` VALUES(1249, 376529381, 9, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(1250, 376569191, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1251, 376569191, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1252, 376569191, 9, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(1253, 376604808, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1254, 376604808, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1255, 376604808, 9, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(1256, 377849574, 5, 'Ursa');
INSERT INTO `peoplematchesheroes` VALUES(1257, 377886042, 5, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(1258, 378018850, 9, 'Viper');
INSERT INTO `peoplematchesheroes` VALUES(1259, 378045700, 1, 'Death Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1260, 378045700, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1261, 378045700, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1262, 378045700, 7, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(1263, 378045700, 3, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(1264, 378087249, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1265, 378087249, 4, 'Juggernaut');
INSERT INTO `peoplematchesheroes` VALUES(1266, 378087249, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1267, 378087249, 7, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1268, 378087249, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1269, 379356815, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1270, 379362808, 9, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1271, 379395031, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(1272, 379395031, 7, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(1273, 379395031, 3, 'Naga Siren');
INSERT INTO `peoplematchesheroes` VALUES(1274, 379395031, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1275, 379395031, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(1276, 380501547, 4, 'Medusa');
INSERT INTO `peoplematchesheroes` VALUES(1277, 380501547, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1278, 380501547, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1279, 380523816, 4, 'Tusk');
INSERT INTO `peoplematchesheroes` VALUES(1280, 380523816, 1, 'Zeus');
INSERT INTO `peoplematchesheroes` VALUES(1281, 380523816, 9, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(1282, 380523816, 7, 'Lycan');
INSERT INTO `peoplematchesheroes` VALUES(1283, 381235357, 9, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(1284, 381609729, 9, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1285, 381609729, 1, 'Axe');
INSERT INTO `peoplematchesheroes` VALUES(1286, 381609729, 4, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1287, 381635956, 9, 'Kunkka');
INSERT INTO `peoplematchesheroes` VALUES(1288, 381635956, 1, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(1289, 381635956, 4, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(1290, 382727473, 1, 'Ursa');
INSERT INTO `peoplematchesheroes` VALUES(1291, 382727473, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1292, 382727473, 7, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(1293, 382727473, 3, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(1294, 382727473, 9, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(1295, 383878320, 4, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1296, 383878320, 7, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1297, 383878320, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1298, 383878320, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1299, 383878320, 9, 'Gyrocopter');
INSERT INTO `peoplematchesheroes` VALUES(1300, 383928281, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1301, 383928281, 7, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(1302, 383928281, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1303, 383928281, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1304, 383928281, 9, 'Centaur Warrunner');
INSERT INTO `peoplematchesheroes` VALUES(1305, 385438669, 9, 'Ursa');
INSERT INTO `peoplematchesheroes` VALUES(1306, 385485820, 9, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1307, 385623068, 9, 'Skywrath Mage');
INSERT INTO `peoplematchesheroes` VALUES(1308, 385698882, 4, 'Clinkz');
INSERT INTO `peoplematchesheroes` VALUES(1309, 385698882, 1, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(1310, 385698882, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1311, 385757061, 4, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1312, 385757061, 1, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(1313, 385757061, 9, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(1314, 387715823, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1315, 387715823, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1316, 387715823, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(1317, 387715823, 2, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(1318, 387784551, 4, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1319, 387784551, 9, 'Gyrocopter');
INSERT INTO `peoplematchesheroes` VALUES(1320, 387784551, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(1321, 387784551, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(1322, 387823255, 4, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(1323, 387823255, 9, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(1324, 387823255, 3, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1325, 387823255, 1, 'Queen of Pain');
INSERT INTO `peoplematchesheroes` VALUES(1326, 389424399, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1327, 389441026, 9, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1328, 389452420, 4, 'Lifestealer');
INSERT INTO `peoplematchesheroes` VALUES(1329, 389452420, 1, 'Meepo');
INSERT INTO `peoplematchesheroes` VALUES(1330, 389452420, 7, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1331, 389491284, 9, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1332, 390809429, 4, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(1333, 390809429, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1334, 390828456, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1335, 390828456, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1336, 390828456, 7, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(1337, 390828456, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(1338, 390848485, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(1339, 390848485, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1340, 390848485, 7, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(1341, 390848485, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(1342, 390936462, 2, 'Undying');
INSERT INTO `peoplematchesheroes` VALUES(1343, 391328873, 5, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1344, 391381020, 5, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(1345, 392103895, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1346, 392103895, 7, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(1347, 392103895, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1348, 392103895, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1349, 392129756, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(1350, 392129756, 7, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(1351, 392129756, 4, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(1352, 392129756, 9, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(1353, 392460565, 5, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1354, 392760093, 2, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(1355, 393294146, 4, 'Medusa');
INSERT INTO `peoplematchesheroes` VALUES(1356, 393294146, 1, 'Clinkz');
INSERT INTO `peoplematchesheroes` VALUES(1357, 393294146, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1358, 393320755, 4, 'Lifestealer');
INSERT INTO `peoplematchesheroes` VALUES(1359, 393320755, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(1360, 393320755, 9, 'Undying');
INSERT INTO `peoplematchesheroes` VALUES(1361, 393320755, 7, 'Naga Siren');
INSERT INTO `peoplematchesheroes` VALUES(1362, 394523572, 4, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1363, 394523572, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1364, 394523572, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(1365, 394523572, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1366, 394551849, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1367, 394551849, 9, 'Gyrocopter');
INSERT INTO `peoplematchesheroes` VALUES(1368, 394551849, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1369, 394551849, 3, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(1370, 394551849, 7, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(1371, 394588558, 2, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(1372, 394588558, 5, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(1373, 394715322, 5, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1374, 394746830, 5, 'Bane');
INSERT INTO `peoplematchesheroes` VALUES(1375, 394804520, 5, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(1376, 395263647, 6, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(1377, 395355447, 6, 'Skeleton King');
INSERT INTO `peoplematchesheroes` VALUES(1378, 395393776, 6, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(1379, 395454907, 6, 'Puck');
INSERT INTO `peoplematchesheroes` VALUES(1380, 395565086, 3, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(1381, 395613742, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1382, 395752944, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1383, 395791375, 9, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1384, 395833677, 9, 'Sand King');
INSERT INTO `peoplematchesheroes` VALUES(1385, 395864749, 9, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1386, 395937540, 3, 'Tusk');
INSERT INTO `peoplematchesheroes` VALUES(1387, 395937540, 9, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(1388, 395937540, 7, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(1389, 395937540, 1, 'Chaos Knight');
INSERT INTO `peoplematchesheroes` VALUES(1390, 397009414, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1391, 397002004, 6, 'Brewmaster');
INSERT INTO `peoplematchesheroes` VALUES(1392, 397002004, 1, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1393, 397054658, 6, 'Slark');
INSERT INTO `peoplematchesheroes` VALUES(1394, 397054658, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(1395, 397054658, 3, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(1396, 397319075, 4, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(1397, 397319075, 9, 'Slark');
INSERT INTO `peoplematchesheroes` VALUES(1398, 397319075, 7, 'Juggernaut');
INSERT INTO `peoplematchesheroes` VALUES(1399, 397319075, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(1706, 397384992, 4, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(1707, 397384992, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1708, 397384992, 7, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(1709, 397384992, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(1710, 397343507, 4, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1711, 397343507, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1712, 397343507, 7, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(1713, 397343507, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1714, 397343507, 2, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(1715, 397889134, 5, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(1716, 398674598, 4, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1717, 398674598, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1718, 398674598, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(1719, 398701853, 4, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(1720, 398701853, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1721, 398701853, 3, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(1722, 398701853, 7, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(1723, 398930531, 5, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1724, 399015520, 5, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(1725, 399097709, 5, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1726, 399181102, 5, 'Ember Spirit');
INSERT INTO `peoplematchesheroes` VALUES(1727, 399290950, 2, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1728, 399356367, 2, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(1729, 399823259, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1730, 399823259, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1731, 399851648, 4, 'Doom');
INSERT INTO `peoplematchesheroes` VALUES(1732, 399851648, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(1733, 399851648, 7, 'Broodmother');
INSERT INTO `peoplematchesheroes` VALUES(1734, 399851648, 1, 'Queen of Pain');
INSERT INTO `peoplematchesheroes` VALUES(1735, 399870751, 4, 'Medusa');
INSERT INTO `peoplematchesheroes` VALUES(1736, 399870751, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1737, 399870751, 7, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(1738, 399870751, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1739, 400237128, 5, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(1740, 400983428, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1741, 400983428, 1, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(1742, 400983428, 7, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1743, 400983428, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1744, 401010909, 4, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(1745, 401010909, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1746, 401010909, 7, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(1747, 401010909, 9, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(1748, 401049655, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1749, 401049655, 7, 'Axe');
INSERT INTO `peoplematchesheroes` VALUES(1750, 401049655, 1, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(1751, 401049655, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1752, 401049655, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1753, 402136941, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1754, 402721491, 2, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1755, 402721491, 5, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(1756, 403203968, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1757, 403203968, 9, 'Beastmaster');
INSERT INTO `peoplematchesheroes` VALUES(1758, 403203968, 1, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(1759, 403238079, 4, 'Medusa');
INSERT INTO `peoplematchesheroes` VALUES(1760, 403238079, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(1761, 403238079, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1762, 403238079, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1763, 404273152, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1764, 404273152, 1, 'Gyrocopter');
INSERT INTO `peoplematchesheroes` VALUES(1765, 404273152, 2, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(1766, 404294402, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1767, 404294402, 1, 'Puck');
INSERT INTO `peoplematchesheroes` VALUES(1768, 404294402, 2, 'Undying');
INSERT INTO `peoplematchesheroes` VALUES(1769, 404294402, 7, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(1770, 404294402, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1771, 404326015, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1772, 404326015, 1, 'Slardar');
INSERT INTO `peoplematchesheroes` VALUES(1773, 404326015, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1774, 404326015, 7, 'Beastmaster');
INSERT INTO `peoplematchesheroes` VALUES(1775, 404340758, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1776, 404340758, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(1777, 404340758, 7, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1778, 404340758, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1779, 404369299, 9, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1780, 404413808, 9, 'Huskar');
INSERT INTO `peoplematchesheroes` VALUES(1781, 405029548, 2, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(1782, 405029548, 5, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(1783, 405092561, 2, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(1784, 405092561, 5, 'Puck');
INSERT INTO `peoplematchesheroes` VALUES(1785, 405148059, 2, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(1786, 405148059, 5, 'Shadow Fiend');
INSERT INTO `peoplematchesheroes` VALUES(1787, 405361313, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1788, 405361313, 6, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(1789, 405361313, 1, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(1790, 405320108, 4, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1791, 405320108, 6, 'Brewmaster');
INSERT INTO `peoplematchesheroes` VALUES(1792, 405320108, 1, 'Chaos Knight');
INSERT INTO `peoplematchesheroes` VALUES(1793, 405393226, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1794, 405393226, 6, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(1795, 405393226, 1, 'Phantom Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1796, 405538220, 1, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(1797, 405538220, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(1798, 405538220, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1799, 405538220, 7, 'Io');
INSERT INTO `peoplematchesheroes` VALUES(1800, 405574187, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1801, 405574187, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(1802, 405574187, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1803, 405574187, 7, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(1804, 405668712, 9, 'Tusk');
INSERT INTO `peoplematchesheroes` VALUES(1805, 405701631, 9, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(1806, 405944922, 5, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1807, 406018070, 5, 'Skeleton King');
INSERT INTO `peoplematchesheroes` VALUES(1808, 406069531, 5, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1809, 406094504, 5, 'Abaddon');
INSERT INTO `peoplematchesheroes` VALUES(1810, 406150077, 5, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1811, 406221029, 5, 'Storm Spirit');
INSERT INTO `peoplematchesheroes` VALUES(1812, 406843751, 9, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(1813, 406870180, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1814, 406893953, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(1815, 406893953, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(1816, 406893953, 7, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1817, 406893953, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1818, 406893953, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(1819, 406910813, 5, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(1820, 407023734, 2, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(1821, 407053069, 2, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(1822, 407478982, 2, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(1823, 407979779, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(1824, 407979779, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1825, 407979779, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1826, 407979779, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1827, 407979779, 7, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(1828, 408010931, 9, 'Medusa');
INSERT INTO `peoplematchesheroes` VALUES(1829, 408868357, 5, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(1830, 408884415, 5, 'Storm Spirit');
INSERT INTO `peoplematchesheroes` VALUES(1831, 408988209, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1832, 409014484, 9, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1833, 410000210, 9, 'Sand King');
INSERT INTO `peoplematchesheroes` VALUES(1834, 410000210, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(1835, 410024298, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1836, 410048755, 9, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(1837, 410048755, 1, 'Slardar');
INSERT INTO `peoplematchesheroes` VALUES(1838, 410048755, 7, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1839, 410048755, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1840, 410073852, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(1841, 410073852, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(1842, 410073852, 7, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1843, 410073852, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1844, 410984228, 5, 'Invoker');
INSERT INTO `peoplematchesheroes` VALUES(1845, 411136772, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(1846, 411136772, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1847, 411136772, 3, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(1848, 411162555, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1849, 411162555, 9, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1850, 411162555, 3, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(1851, 412233745, 6, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(1852, 412263047, 6, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1853, 412298285, 9, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1854, 412311170, 9, 'Skywrath Mage');
INSERT INTO `peoplematchesheroes` VALUES(1855, 412330345, 9, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(1856, 412368835, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1857, 412413892, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1858, 412413892, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1859, 412413892, 7, 'Abaddon');
INSERT INTO `peoplematchesheroes` VALUES(1860, 412441863, 4, 'Juggernaut');
INSERT INTO `peoplematchesheroes` VALUES(1861, 412441863, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1862, 412441863, 7, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(1863, 412441863, 1, 'Viper');
INSERT INTO `peoplematchesheroes` VALUES(1864, 412441863, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(1865, 412458761, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(1866, 412458761, 9, 'Ogre Magi');
INSERT INTO `peoplematchesheroes` VALUES(1867, 412458761, 7, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1868, 412458761, 1, 'Slardar');
INSERT INTO `peoplematchesheroes` VALUES(1869, 412458761, 3, 'Tusk');
INSERT INTO `peoplematchesheroes` VALUES(1870, 413587139, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1871, 413587139, 7, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1872, 413587139, 6, 'Slardar');
INSERT INTO `peoplematchesheroes` VALUES(1873, 413587139, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(1874, 413622579, 4, 'Doom');
INSERT INTO `peoplematchesheroes` VALUES(1875, 413622579, 7, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(1876, 413622579, 6, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(1877, 413622579, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1878, 413664857, 4, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1879, 413664857, 9, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(1880, 413664857, 1, 'Puck');
INSERT INTO `peoplematchesheroes` VALUES(1881, 413664857, 6, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(1882, 413775155, 9, 'Skywrath Mage');
INSERT INTO `peoplematchesheroes` VALUES(1883, 413777843, 1, 'Tinker');
INSERT INTO `peoplematchesheroes` VALUES(1884, 413818705, 1, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(1885, 413818705, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(1886, 413818705, 4, 'Medusa');
INSERT INTO `peoplematchesheroes` VALUES(1887, 413818705, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1888, 413863010, 3, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(1889, 413863010, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1890, 413863010, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1891, 413863010, 1, 'Death Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1892, 413893863, 3, 'Naga Siren');
INSERT INTO `peoplematchesheroes` VALUES(1893, 413893863, 9, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(1894, 413893863, 4, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1895, 413893863, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1896, 414934438, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(1897, 414934438, 6, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(1898, 414934438, 3, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(1899, 415109293, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1900, 415109293, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(1901, 415109293, 7, 'Faceless Void');
INSERT INTO `peoplematchesheroes` VALUES(1902, 415109293, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1903, 415109293, 1, 'Huskar');
INSERT INTO `peoplematchesheroes` VALUES(1904, 415132080, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1905, 415132080, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1906, 415132080, 7, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1907, 415132080, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1908, 415132080, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1909, 415257338, 2, 'Tusk');
INSERT INTO `peoplematchesheroes` VALUES(1910, 415287118, 2, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(1911, 416227063, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1912, 416227063, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(1913, 416227063, 1, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(1914, 416227063, 7, 'Bane');
INSERT INTO `peoplematchesheroes` VALUES(1915, 416249408, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1916, 416249408, 9, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(1917, 416249408, 1, 'Skywrath Mage');
INSERT INTO `peoplematchesheroes` VALUES(1918, 416249408, 7, 'Clinkz');
INSERT INTO `peoplematchesheroes` VALUES(1919, 416277287, 9, 'Phantom Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1920, 417334710, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1921, 417334710, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1922, 417334710, 7, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(1923, 417366359, 4, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(1924, 417366359, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1925, 418237514, 9, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1926, 418489088, 4, 'Shadow Demon');
INSERT INTO `peoplematchesheroes` VALUES(1927, 418489088, 1, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(1928, 418489088, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1929, 418511847, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1930, 418511847, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(1931, 418511847, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1932, 418511847, 7, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(1933, 418511847, 1, 'Templar Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1934, 419338369, 9, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(1935, 419382966, 9, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(1936, 419427471, 9, 'Phantom Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1937, 419454756, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1938, 419753315, 4, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(1939, 419753315, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1940, 419753315, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(1941, 421021730, 9, 'Phantom Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1942, 421526873, 5, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1943, 421596967, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1944, 421596967, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(1945, 421596967, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(1946, 421596967, 3, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(1947, 421596967, 7, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1948, 421668976, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(1949, 421668976, 7, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1950, 421668976, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(1951, 421668976, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1952, 421668976, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(1953, 421738912, 5, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(1954, 423137236, 9, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(1955, 425456386, 4, 'Doom');
INSERT INTO `peoplematchesheroes` VALUES(1956, 425456386, 7, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(1957, 425456386, 6, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(1958, 425534099, 4, 'Clinkz');
INSERT INTO `peoplematchesheroes` VALUES(1959, 425534099, 7, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(1960, 425534099, 6, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(1961, 425534099, 1, 'Death Prophet');
INSERT INTO `peoplematchesheroes` VALUES(1962, 425747199, 4, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(1963, 425747199, 7, 'Abaddon');
INSERT INTO `peoplematchesheroes` VALUES(1964, 425747199, 9, 'Ogre Magi');
INSERT INTO `peoplematchesheroes` VALUES(1965, 425777668, 4, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(1966, 425777668, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(1967, 427231745, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(1968, 427254356, 9, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(1969, 427294032, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(1970, 427294032, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(1971, 427294032, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(1972, 427326033, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(1973, 427326033, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(1974, 427326033, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(1975, 427352656, 3, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(1976, 427352656, 4, 'Omniknight');
INSERT INTO `peoplematchesheroes` VALUES(1977, 427352656, 9, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(1978, 427394939, 4, 'Doom');
INSERT INTO `peoplematchesheroes` VALUES(1979, 427394939, 9, 'Ogre Magi');
INSERT INTO `peoplematchesheroes` VALUES(1980, 427394939, 3, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(1981, 428582775, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(1982, 428855958, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(1983, 428924085, 3, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(1984, 428924085, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(1985, 428924085, 4, 'Omniknight');
INSERT INTO `peoplematchesheroes` VALUES(1986, 429804544, 7, 'Abaddon');
INSERT INTO `peoplematchesheroes` VALUES(1987, 429844621, 7, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(14894, 446897892, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(14895, 446897892, 2, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(14896, 442430274, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(14897, 442430274, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(14898, 442430274, 2, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(14899, 442373908, 4, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(14900, 442373908, 3, 'Faceless Void');
INSERT INTO `peoplematchesheroes` VALUES(14901, 442373908, 2, 'Axe');
INSERT INTO `peoplematchesheroes` VALUES(14902, 440941575, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(14903, 440941575, 2, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(14904, 440941575, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(14905, 440860137, 4, 'Doom');
INSERT INTO `peoplematchesheroes` VALUES(14906, 440860137, 2, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(14907, 440860137, 3, 'Tusk');
INSERT INTO `peoplematchesheroes` VALUES(14908, 439315096, 2, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(14909, 438700940, 2, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(14910, 447021666, 2, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(14911, 446959299, 2, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(14912, 442309633, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(14913, 442309633, 2, 'Tusk');
INSERT INTO `peoplematchesheroes` VALUES(14914, 442309633, 3, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(14915, 442231889, 2, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(14916, 442231889, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(14917, 442175754, 2, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(14918, 442175754, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(14919, 433842335, 2, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(14920, 433768657, 2, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(14921, 447713754, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(14922, 447713754, 9, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(14923, 447713754, 3, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(14924, 447684393, 4, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(14925, 447684393, 9, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(14926, 447684393, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(14927, 439177508, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(14928, 439159551, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(14929, 437663634, 4, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(14930, 437637197, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(14931, 437485742, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(14932, 436240444, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(14933, 436214022, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(14934, 446057792, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(14935, 446057792, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(14936, 446057792, 3, 'Faceless Void');
INSERT INTO `peoplematchesheroes` VALUES(14937, 446057792, 5, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(14938, 430019278, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(14939, 430019278, 7, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(14940, 430019278, 6, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(14941, 430019278, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(14942, 429988790, 4, 'Magnus');
INSERT INTO `peoplematchesheroes` VALUES(14943, 429988790, 7, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(14944, 429988790, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(14945, 429988790, 6, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(14946, 431578134, 4, 'Juggernaut');
INSERT INTO `peoplematchesheroes` VALUES(14947, 431578134, 3, 'Tusk');
INSERT INTO `peoplematchesheroes` VALUES(14948, 431578134, 9, 'Ogre Magi');
INSERT INTO `peoplematchesheroes` VALUES(14949, 431578134, 7, 'Bane');
INSERT INTO `peoplematchesheroes` VALUES(14950, 431345888, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(14951, 431345888, 7, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(14952, 431345888, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(14953, 431319877, 4, 'Magnus');
INSERT INTO `peoplematchesheroes` VALUES(14954, 431319877, 7, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(14955, 431319877, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(14956, 430181744, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(14957, 430181744, 7, 'Abaddon');
INSERT INTO `peoplematchesheroes` VALUES(14958, 435220790, 2, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(14959, 435220790, 10, 'Bloodseeker');
INSERT INTO `peoplematchesheroes` VALUES(14960, 435197325, 2, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(14961, 435197325, 10, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(14962, 435131557, 2, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(14963, 435131557, 10, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(14964, 435036496, 2, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(14965, 435036496, 10, 'Riki');
INSERT INTO `peoplematchesheroes` VALUES(14966, 446428875, 12, 'Ember Spirit');
INSERT INTO `peoplematchesheroes` VALUES(14967, 446289927, 12, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(14968, 447740665, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(14969, 447740665, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(14970, 447740665, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(14971, 449303748, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(14972, 450596280, 9, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(14973, 450636115, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(14974, 450665790, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(14975, 450665790, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(14976, 450665790, 1, 'Slardar');
INSERT INTO `peoplematchesheroes` VALUES(14977, 450665790, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(14978, 450701018, 4, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(14979, 450701018, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(14980, 450701018, 1, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(14981, 450701018, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(14982, 451729989, 1, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(14983, 452083290, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(14984, 452083290, 3, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(14985, 452083290, 1, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(14986, 452113574, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(14987, 452113574, 3, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(14988, 452113574, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(14989, 452181256, 4, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(14990, 452181256, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(14991, 452181256, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(14992, 452213609, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(14993, 452213609, 1, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(14994, 452213609, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(14995, 452755771, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(14996, 452835338, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(14997, 453589055, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(14998, 453589055, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(14999, 453589055, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(15000, 453613920, 1, 'Chaos Knight');
INSERT INTO `peoplematchesheroes` VALUES(15001, 453613920, 4, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(15002, 453613920, 9, 'Io');
INSERT INTO `peoplematchesheroes` VALUES(15003, 453613920, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(15004, 453640964, 1, 'Lifestealer');
INSERT INTO `peoplematchesheroes` VALUES(15005, 453640964, 4, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(15006, 453640964, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15007, 453640964, 9, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(15008, 453684495, 1, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(15009, 453684495, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(15010, 453684495, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(15011, 453684495, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(15012, 453852613, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15013, 453922007, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15014, 454396156, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15015, 454470788, 3, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(15016, 454514826, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(15017, 454596046, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(15018, 455150396, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(15019, 455197173, 9, 'Batrider');
INSERT INTO `peoplematchesheroes` VALUES(15020, 455275040, 1, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(15021, 455335635, 4, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15022, 455335635, 1, 'Phantom Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15023, 455335635, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15024, 455376301, 4, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(15025, 455376301, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(15026, 455376301, 9, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(15027, 456235161, 3, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(15028, 456534035, 1, 'Queen of Pain');
INSERT INTO `peoplematchesheroes` VALUES(15029, 456635700, 1, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(15030, 456834554, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(15031, 456868292, 4, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(15032, 456868292, 9, 'Treant Protector');
INSERT INTO `peoplematchesheroes` VALUES(15033, 456868292, 7, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(15034, 456898830, 4, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(15035, 456898830, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(15036, 456898830, 7, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(15037, 456928202, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15038, 456928202, 9, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15039, 456928202, 7, 'Abaddon');
INSERT INTO `peoplematchesheroes` VALUES(15040, 456970201, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15041, 456970201, 7, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(15042, 456970201, 1, 'Death Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15043, 456970201, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(15044, 456976656, 5, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(15045, 457017048, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(15046, 457017048, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(15047, 457017048, 7, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(15048, 457017048, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15049, 457017048, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(15050, 457051296, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(15051, 457051296, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(15052, 457051296, 7, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(15053, 457051296, 4, 'Medusa');
INSERT INTO `peoplematchesheroes` VALUES(15054, 457051296, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(15055, 457082953, 5, 'Beastmaster');
INSERT INTO `peoplematchesheroes` VALUES(15056, 457122472, 5, 'Magnus');
INSERT INTO `peoplematchesheroes` VALUES(15057, 457616935, 2, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(15058, 457707855, 2, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(15059, 458500174, 1, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(15060, 459154008, 2, 'Ancient Apparition');
INSERT INTO `peoplematchesheroes` VALUES(15061, 459154008, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(15062, 459154008, 3, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(15063, 459182527, 2, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(15064, 459182527, 9, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(15065, 459182527, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15066, 459478421, 9, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(15067, 459760602, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15068, 459760602, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(15069, 459760602, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(15070, 459760602, 3, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(15071, 459760602, 7, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(15072, 459792621, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(15073, 459792621, 7, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(15074, 459792621, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(15075, 459792621, 1, 'Kunkka');
INSERT INTO `peoplematchesheroes` VALUES(15076, 459792621, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(15077, 460370319, 2, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(15078, 460469004, 2, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(15079, 461115445, 1, 'Queen of Pain');
INSERT INTO `peoplematchesheroes` VALUES(15080, 461115445, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15081, 461115445, 7, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(15082, 461115445, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(15083, 461158669, 1, 'Viper');
INSERT INTO `peoplematchesheroes` VALUES(15084, 461158669, 3, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(15085, 461158669, 7, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(15086, 461158669, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(15087, 461158669, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(15088, 461330473, 5, 'Ursa');
INSERT INTO `peoplematchesheroes` VALUES(15089, 461468421, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15090, 461534395, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15091, 461598043, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15092, 461656375, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15093, 462072699, 1, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(15094, 462177688, 1, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(15095, 462317031, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(15096, 462336197, 1, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(15097, 462381673, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(15098, 462381673, 1, 'Weaver');
INSERT INTO `peoplematchesheroes` VALUES(15099, 462381673, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15100, 462402120, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15101, 462402120, 1, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15102, 462402120, 9, 'Skywrath Mage');
INSERT INTO `peoplematchesheroes` VALUES(15103, 462427711, 10, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(15104, 462428125, 4, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(15105, 462428125, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(15106, 462428125, 1, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(15107, 462452504, 10, 'Phantom Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15108, 462485234, 10, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(15109, 463143161, 2, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(15110, 463210026, 2, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(15111, 463547502, 9, 'Centaur Warrunner');
INSERT INTO `peoplematchesheroes` VALUES(15112, 463547502, 1, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(15113, 463840403, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15114, 463872368, 10, 'Axe');
INSERT INTO `peoplematchesheroes` VALUES(15115, 463872368, 2, 'Ancient Apparition');
INSERT INTO `peoplematchesheroes` VALUES(15116, 463872368, 4, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(15117, 463874119, 9, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(15118, 463894487, 2, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(15119, 463894487, 10, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(15120, 463894487, 4, 'Juggernaut');
INSERT INTO `peoplematchesheroes` VALUES(15121, 464670805, 9, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(15122, 464772626, 9, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(15123, 464942051, 5, 'Dark Seer');
INSERT INTO `peoplematchesheroes` VALUES(15124, 465013272, 1, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(15125, 465003508, 5, 'Ogre Magi');
INSERT INTO `peoplematchesheroes` VALUES(15126, 465232342, 4, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(15127, 465232342, 1, 'Undying');
INSERT INTO `peoplematchesheroes` VALUES(15128, 465232342, 9, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(15129, 465240581, 5, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(15130, 465259455, 4, 'Doom');
INSERT INTO `peoplematchesheroes` VALUES(15131, 465259455, 1, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(15132, 465259455, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(15133, 465352630, 4, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(15134, 465352630, 1, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(15135, 465352630, 9, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(15136, 465352630, 7, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(15137, 465380714, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15138, 465380714, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(15139, 465380714, 9, 'Bounty Hunter');
INSERT INTO `peoplematchesheroes` VALUES(15140, 465380714, 7, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(15141, 465377229, 10, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(15142, 465407750, 10, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(15143, 465409436, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15144, 465409436, 1, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(15145, 465409436, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(15146, 465409436, 7, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(15147, 465422506, 10, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(15148, 465462717, 10, 'Bloodseeker');
INSERT INTO `peoplematchesheroes` VALUES(15149, 465493187, 10, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(15150, 466154024, 2, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(15151, 466237502, 2, 'Tusk');
INSERT INTO `peoplematchesheroes` VALUES(15152, 466542227, 5, 'Faceless Void');
INSERT INTO `peoplematchesheroes` VALUES(15153, 466805519, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15154, 466805519, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(15155, 466805519, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15156, 466805519, 7, 'Leshrac');
INSERT INTO `peoplematchesheroes` VALUES(15157, 466805519, 1, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(15158, 466829428, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(15159, 466829428, 9, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(15160, 466829428, 1, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(15161, 466855935, 4, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(15162, 466855935, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15163, 466855935, 1, 'Kunkka');
INSERT INTO `peoplematchesheroes` VALUES(15164, 467865596, 5, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(15165, 467892426, 5, 'Bloodseeker');
INSERT INTO `peoplematchesheroes` VALUES(15166, 468069294, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15167, 468069294, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(15168, 468069294, 1, 'Chaos Knight');
INSERT INTO `peoplematchesheroes` VALUES(15169, 468069294, 3, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(15170, 468120934, 3, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(15171, 468896233, 5, 'Meepo');
INSERT INTO `peoplematchesheroes` VALUES(15172, 469256220, 9, 'Gyrocopter');
INSERT INTO `peoplematchesheroes` VALUES(15173, 469319643, 4, 'Naga Siren');
INSERT INTO `peoplematchesheroes` VALUES(15174, 469319643, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(15175, 469319643, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(15176, 469319643, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(15177, 469319643, 7, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(15178, 469898819, 2, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(15179, 470513542, 1, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(15180, 470513542, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(15181, 470513542, 3, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(15182, 470546566, 1, 'Troll Warlord');
INSERT INTO `peoplematchesheroes` VALUES(15183, 470546566, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15184, 470546566, 3, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(15185, 470582741, 1, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(15186, 470582741, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15187, 470582741, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(15188, 470582741, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(15189, 471060622, 2, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(15190, 471115260, 2, 'Lina');
INSERT INTO `peoplematchesheroes` VALUES(15191, 471658336, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15192, 471843783, 4, 'Phantom Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15193, 471843783, 9, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(15194, 471843783, 1, 'Batrider');
INSERT INTO `peoplematchesheroes` VALUES(15195, 471843783, 3, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(15196, 471835332, 10, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(15197, 471871853, 10, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(15198, 471866089, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15199, 471866089, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(15200, 471866089, 1, 'Death Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15201, 471866089, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(15202, 471884728, 5, 'Drow Ranger');
INSERT INTO `peoplematchesheroes` VALUES(15203, 471882646, 10, 'Earthshaker');
INSERT INTO `peoplematchesheroes` VALUES(15204, 471927804, 5, 'Visage');
INSERT INTO `peoplematchesheroes` VALUES(15205, 472362924, 2, 'Zeus');
INSERT INTO `peoplematchesheroes` VALUES(15206, 472440284, 2, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(15207, 472494894, 2, 'Jakiro');
INSERT INTO `peoplematchesheroes` VALUES(15208, 472594517, 2, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(15209, 472658497, 9, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(15210, 472655381, 2, 'Witch Doctor');
INSERT INTO `peoplematchesheroes` VALUES(15211, 472754799, 9, 'Venomancer');
INSERT INTO `peoplematchesheroes` VALUES(15212, 472921922, 5, 'Chaos Knight');
INSERT INTO `peoplematchesheroes` VALUES(15213, 473146671, 1, 'Sniper');
INSERT INTO `peoplematchesheroes` VALUES(15214, 473146671, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15215, 473146671, 4, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(15216, 473169711, 1, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(15217, 473169711, 9, 'Kunkka');
INSERT INTO `peoplematchesheroes` VALUES(15218, 473169711, 4, 'Outworld Devourer');
INSERT INTO `peoplematchesheroes` VALUES(15219, 473200301, 1, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(15220, 473200301, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(15221, 473200301, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15222, 473832025, 2, 'Tidehunter');
INSERT INTO `peoplematchesheroes` VALUES(15223, 474012284, 2, 'Ancient Apparition');
INSERT INTO `peoplematchesheroes` VALUES(15224, 474230906, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(15225, 474230906, 9, 'Slark');
INSERT INTO `peoplematchesheroes` VALUES(15226, 474230906, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15227, 474230906, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(15228, 474280042, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15229, 474280042, 9, 'Slark');
INSERT INTO `peoplematchesheroes` VALUES(15230, 474280042, 4, 'Juggernaut');
INSERT INTO `peoplematchesheroes` VALUES(15231, 474280042, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(15232, 474428487, 5, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(15233, 474614280, 5, 'Bane');
INSERT INTO `peoplematchesheroes` VALUES(15234, 474677241, 9, 'Storm Spirit');
INSERT INTO `peoplematchesheroes` VALUES(15235, 474732735, 5, 'Necrophos');
INSERT INTO `peoplematchesheroes` VALUES(15236, 474797855, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(15237, 474846166, 9, 'Clockwerk');
INSERT INTO `peoplematchesheroes` VALUES(15238, 474996847, 2, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(15239, 475047032, 2, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(15240, 475092647, 2, 'Ancient Apparition');
INSERT INTO `peoplematchesheroes` VALUES(15241, 475427293, 2, 'Viper');
INSERT INTO `peoplematchesheroes` VALUES(15242, 475851752, 5, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15243, 475881927, 1, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(15244, 475881927, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(15245, 475901353, 5, 'Slardar');
INSERT INTO `peoplematchesheroes` VALUES(15246, 476191662, 4, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(15247, 476191662, 9, 'Ogre Magi');
INSERT INTO `peoplematchesheroes` VALUES(15248, 476191662, 7, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(15249, 476191662, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15250, 476221347, 4, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(15251, 476221347, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15252, 476221347, 7, 'Spirit Breaker');
INSERT INTO `peoplematchesheroes` VALUES(15253, 476221347, 9, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(15259, 476245398, 9, 'Phantom Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15260, 476245398, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15261, 476245398, 11, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(15262, 476245398, 7, 'Lycan');
INSERT INTO `peoplematchesheroes` VALUES(15263, 476245398, 1, 'Bristleback');
INSERT INTO `peoplematchesheroes` VALUES(15264, 476487785, 5, 'Death Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15265, 476812452, 2, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(15266, 476867018, 2, 'Disruptor');
INSERT INTO `peoplematchesheroes` VALUES(15267, 477582961, 4, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(15268, 477582961, 7, 'Warlock');
INSERT INTO `peoplematchesheroes` VALUES(15269, 477582961, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(15270, 477582961, 3, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(15271, 477582961, 1, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(15272, 477611743, 4, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(15273, 477611743, 7, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(15274, 477611743, 9, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(15275, 477611743, 3, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(15276, 477611743, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(15277, 478033839, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(15278, 478097226, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(15279, 478782511, 11, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15280, 478794470, 11, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15281, 478915136, 1, 'Faceless Void');
INSERT INTO `peoplematchesheroes` VALUES(15282, 478915136, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(15283, 478915136, 11, 'Dazzle');
INSERT INTO `peoplematchesheroes` VALUES(15284, 478915136, 4, 'Doom');
INSERT INTO `peoplematchesheroes` VALUES(15285, 478944565, 1, 'Dragon Knight');
INSERT INTO `peoplematchesheroes` VALUES(15286, 478944565, 9, 'Slark');
INSERT INTO `peoplematchesheroes` VALUES(15287, 478944565, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(15288, 478944565, 4, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15289, 478944565, 7, 'Vengeful Spirit');
INSERT INTO `peoplematchesheroes` VALUES(15290, 479809507, 11, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15291, 479850612, 11, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15292, 480093626, 11, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(15293, 480222195, 4, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(15294, 480222195, 11, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(15295, 480222195, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(15296, 480222195, 9, 'Timbersaw');
INSERT INTO `peoplematchesheroes` VALUES(15297, 480222195, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15298, 480245273, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15299, 480245273, 11, 'Lion');
INSERT INTO `peoplematchesheroes` VALUES(15300, 480245273, 1, 'Pugna');
INSERT INTO `peoplematchesheroes` VALUES(15301, 480245273, 9, 'Alchemist');
INSERT INTO `peoplematchesheroes` VALUES(15302, 480245273, 3, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15303, 480768820, 2, 'Medusa');
INSERT INTO `peoplematchesheroes` VALUES(15304, 480876197, 7, 'Crystal Maiden');
INSERT INTO `peoplematchesheroes` VALUES(15305, 481257339, 7, 'Enigma');
INSERT INTO `peoplematchesheroes` VALUES(15306, 481383972, 1, 'Luna');
INSERT INTO `peoplematchesheroes` VALUES(15307, 481461795, 1, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(15308, 481534152, 9, 'Lifestealer');
INSERT INTO `peoplematchesheroes` VALUES(15309, 481568035, 4, 'Phantom Lancer');
INSERT INTO `peoplematchesheroes` VALUES(15310, 481568035, 3, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15311, 481568035, 1, 'Death Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15312, 481568035, 9, 'Elder Titan');
INSERT INTO `peoplematchesheroes` VALUES(15313, 481568035, 11, 'Keeper of the Light');
INSERT INTO `peoplematchesheroes` VALUES(15314, 481609733, 4, 'Magnus');
INSERT INTO `peoplematchesheroes` VALUES(15315, 481609733, 3, 'Lich');
INSERT INTO `peoplematchesheroes` VALUES(15316, 481609733, 1, 'Brewmaster');
INSERT INTO `peoplematchesheroes` VALUES(15317, 481609733, 9, 'Mirana');
INSERT INTO `peoplematchesheroes` VALUES(15318, 481609733, 11, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(15319, 482258858, 2, 'Razor');
INSERT INTO `peoplematchesheroes` VALUES(15320, 482330373, 2, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(15321, 482595379, 11, 'Anti-Mage');
INSERT INTO `peoplematchesheroes` VALUES(15322, 482765531, 1, 'Sven');
INSERT INTO `peoplematchesheroes` VALUES(15323, 482820154, 1, 'Windranger');
INSERT INTO `peoplematchesheroes` VALUES(15324, 482936778, 4, 'Natures Prophet');
INSERT INTO `peoplematchesheroes` VALUES(15325, 482936778, 2, 'Ancient Apparition');
INSERT INTO `peoplematchesheroes` VALUES(15326, 482936778, 9, 'Ogre Magi');
INSERT INTO `peoplematchesheroes` VALUES(15327, 482958547, 4, 'Sniper');
INSERT INTO `peoplematchesheroes` VALUES(15328, 482958547, 2, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(15329, 482958547, 9, 'Centaur Warrunner');
INSERT INTO `peoplematchesheroes` VALUES(15330, 482958547, 11, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(15331, 482993734, 4, 'Legion Commander');
INSERT INTO `peoplematchesheroes` VALUES(15332, 482993734, 2, 'Undying');
INSERT INTO `peoplematchesheroes` VALUES(15333, 482993734, 9, 'Earth Spirit');
INSERT INTO `peoplematchesheroes` VALUES(15334, 482993734, 11, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(15335, 483036583, 4, 'Spectre');
INSERT INTO `peoplematchesheroes` VALUES(15336, 483036583, 2, 'Silencer');
INSERT INTO `peoplematchesheroes` VALUES(15337, 483036583, 9, 'Nyx Assassin');
INSERT INTO `peoplematchesheroes` VALUES(15338, 483036583, 11, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(15339, 483036583, 1, 'Pudge');
INSERT INTO `peoplematchesheroes` VALUES(15340, 483073265, 4, 'Magnus');
INSERT INTO `peoplematchesheroes` VALUES(15341, 483073265, 11, 'Shadow Shaman');
INSERT INTO `peoplematchesheroes` VALUES(15342, 483073265, 9, 'Rubick');
INSERT INTO `peoplematchesheroes` VALUES(15343, 483073265, 1, 'Tiny');
INSERT INTO `peoplematchesheroes` VALUES(15344, 483073265, 3, 'Nyx Assassin');

-- --------------------------------------------------------

--
-- Table structure for table `steamdotabuff`
--

CREATE TABLE `steamdotabuff` (
  `steamdotabuffkey` int(11) NOT NULL auto_increment,
  `personforeignkey` int(11) NOT NULL,
  `steamname` varchar(25) NOT NULL,
  `steamid` bigint(20) NOT NULL,
  `ismain` tinyint(1) NOT NULL,
  `dotabuffid` bigint(20) NOT NULL,
  PRIMARY KEY  (`steamdotabuffkey`),
  KEY `personforeignkey` (`personforeignkey`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='One record for each Steam/Dotabuff account owned by a group ' AUTO_INCREMENT=22 ;

--
-- Dumping data for table `steamdotabuff`
--

INSERT INTO `steamdotabuff` VALUES(1, 1, 'Swambulance', 76561198027956481, 1, 67690753);
INSERT INTO `steamdotabuff` VALUES(2, 2, 'libaax', 76561198053661202, 1, 93395474);
INSERT INTO `steamdotabuff` VALUES(3, 3, 'FergieTime', 76561198064492570, 1, 104226842);
INSERT INTO `steamdotabuff` VALUES(4, 4, 'Malfurion', 76561198061876137, 0, 101610409);
INSERT INTO `steamdotabuff` VALUES(5, 5, 'marseilles', 76561198062133508, 1, 101867780);
INSERT INTO `steamdotabuff` VALUES(6, 6, 'redsurfable', 76561198047777536, 1, 87511808);
INSERT INTO `steamdotabuff` VALUES(7, 7, 'DjiboutiKing', 76561198035749996, 1, 75484268);
INSERT INTO `steamdotabuff` VALUES(8, 8, '[SMH] TimTheBomb', 76561198059533974, 1, 99268246);
INSERT INTO `steamdotabuff` VALUES(9, 9, 'SugarPova', 76561198071998721, 1, 111732993);
INSERT INTO `steamdotabuff` VALUES(10, 10, 'haeng1', 76561198068578603, 1, 108312875);
INSERT INTO `steamdotabuff` VALUES(11, 11, 'Limish', 76561198086878114, 1, 126612386);
INSERT INTO `steamdotabuff` VALUES(12, 12, 'Mean Machine', 76561198074037060, 1, 113771332);
INSERT INTO `steamdotabuff` VALUES(13, 13, 'markusmadness', 76561198089679629, 1, 0);
INSERT INTO `steamdotabuff` VALUES(14, 14, 'pathalo45', 76561198072244259, 1, 0);
INSERT INTO `steamdotabuff` VALUES(15, 4, 'Baba Ghanoush', 76561198093224629, 1, 132958901);
INSERT INTO `steamdotabuff` VALUES(16, 7, 'ZORBACK', 76561198093227398, 0, 132961670);
INSERT INTO `steamdotabuff` VALUES(17, 5, 'chiioke', 76561198079504092, 0, 119238364);
INSERT INTO `steamdotabuff` VALUES(18, 2, 'lyon', 76561198098384814, 0, 138119086);
INSERT INTO `steamdotabuff` VALUES(19, 6, 'redsurfaced', 76561198093233420, 0, 132967692);
INSERT INTO `steamdotabuff` VALUES(20, 5, 'applejuiceracket', 76561198105947873, 0, 145682145);
INSERT INTO `steamdotabuff` VALUES(21, 5, 'oncogenes', 76561198097860027, 0, 137594299);

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_matches`
--
CREATE TABLE `total_matches` (
`total` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `won_matches`
--
CREATE TABLE `won_matches` (
`won` bigint(21)
);
-- --------------------------------------------------------

--
-- Structure for view `User Page`
--
DROP TABLE IF EXISTS `User Page`;

CREATE ALGORITHM=UNDEFINED DEFINER=`teamroster`@`%` SQL SECURITY DEFINER VIEW `teamroster`.`User Page` AS select `teamroster`.`justpeople`.`personkey` AS `personkey`,`teamroster`.`justpeople`.`fullname` AS `fullname`,`teamroster`.`facebook`.`facebookid` AS `facebookid`,`teamroster`.`steamdotabuff`.`steamname` AS `steamname`,`teamroster`.`steamdotabuff`.`steamid` AS `steamid`,`teamroster`.`steamdotabuff`.`dotabuffid` AS `dotabuffid`,`s1`.`matchforeignkey` AS `matchforeignkey` from (((`teamroster`.`peoplematchesheroes` `s1` join `teamroster`.`justpeople` on((`teamroster`.`justpeople`.`personkey` = `s1`.`personforeignkey`))) join `teamroster`.`facebook` on((`teamroster`.`justpeople`.`personkey` = `teamroster`.`facebook`.`personforeignkey`))) join `teamroster`.`steamdotabuff` on((`teamroster`.`justpeople`.`personkey` = `teamroster`.`steamdotabuff`.`personforeignkey`))) where (`s1`.`matchforeignkey` = (select max(`s2`.`matchforeignkey`) AS `MAX(s2.matchforeignkey)` from `teamroster`.`peoplematchesheroes` `s2` where (`s1`.`personforeignkey` = `s2`.`personforeignkey`))) order by `s1`.`matchforeignkey` desc;

-- --------------------------------------------------------

--
-- Structure for view `match_winrate`
--
DROP TABLE IF EXISTS `match_winrate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`teamroster`@`%` SQL SECURITY DEFINER VIEW `teamroster`.`match_winrate` AS select `t`.`total` AS `total`,`w`.`won` AS `won`,round(((`w`.`won` * 100.0) / `t`.`total`),1) AS `rate` from (`teamroster`.`total_matches` `t` join `teamroster`.`won_matches` `w`);

-- --------------------------------------------------------

--
-- Structure for view `total_matches`
--
DROP TABLE IF EXISTS `total_matches`;

CREATE ALGORITHM=UNDEFINED DEFINER=`teamroster`@`%` SQL SECURITY DEFINER VIEW `teamroster`.`total_matches` AS select count(`teamroster`.`matches`.`id`) AS `total` from `teamroster`.`matches`;

-- --------------------------------------------------------

--
-- Structure for view `won_matches`
--
DROP TABLE IF EXISTS `won_matches`;

CREATE ALGORITHM=UNDEFINED DEFINER=`teamroster`@`%` SQL SECURITY DEFINER VIEW `teamroster`.`won_matches` AS select count(`teamroster`.`matches`.`id`) AS `won` from `teamroster`.`matches` where (`teamroster`.`matches`.`outcome` = _utf8'Win');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `facebook`
--
ALTER TABLE `facebook`
  ADD CONSTRAINT `facebook_ibfk_1` FOREIGN KEY (`personforeignkey`) REFERENCES `justpeople` (`personkey`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `peoplematchesheroes`
--
ALTER TABLE `peoplematchesheroes`
  ADD CONSTRAINT `peoplematchesheroes_ibfk_4` FOREIGN KEY (`matchforeignkey`) REFERENCES `matches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peoplematchesheroes_ibfk_5` FOREIGN KEY (`personforeignkey`) REFERENCES `people` (`Person Key`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peoplematchesheroes_ibfk_6` FOREIGN KEY (`heroforeignkey`) REFERENCES `heroes` (`name`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `steamdotabuff`
--
ALTER TABLE `steamdotabuff`
  ADD CONSTRAINT `steamdotabuff_ibfk_1` FOREIGN KEY (`personforeignkey`) REFERENCES `justpeople` (`personkey`) ON DELETE CASCADE ON UPDATE CASCADE;
