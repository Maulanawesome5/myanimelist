-- MariaDB dump 10.19  Distrib 10.4.20-MariaDB, for Win64 (AMD64)

--

-- Host: localhost    Database: my_anime_list

-- ------------------------------------------------------

-- Server version	10.4.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!40101 SET NAMES utf8mb4 */

;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */

;

/*!40103 SET TIME_ZONE='+00:00' */

;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */

;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */

;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */

;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */

;

--

-- Table structure for table `anime_studio`

--

-- DROP TABLE IF EXISTS `anime_studio`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!40101 SET character_set_client = utf8 */

;

-- CREATE TABLE `anime_studio` (

--   `id` int(11) NOT NULL AUTO_INCREMENT,

--   `studio_name` varchar(50) DEFAULT NULL,

--   `country` varchar(20) DEFAULT NULL,

--   PRIMARY KEY (`id`),

--   UNIQUE KEY `uk_studio` (`studio_name`)

-- ) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Table structure for table `animelist_anime`

--

DROP TABLE IF EXISTS `animelist_anime`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!40101 SET character_set_client = utf8 */

;

CREATE TABLE
    `animelist_anime` (
        `id` bigint(20) NOT NULL AUTO_INCREMENT,
        `mal_id` int(11) DEFAULT NULL,
        `anime_title` varchar(100) DEFAULT NULL,
        `anime_rating` float NOT NULL DEFAULT 0,
        `airing_time` varchar(20) DEFAULT NULL,
        `studio` text DEFAULT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY `mal_id` (`mal_id`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 201 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Dumping data for table `animelist_anime`

--

LOCK TABLES `animelist_anime` WRITE;

/*!40000 ALTER TABLE `animelist_anime` DISABLE KEYS */

;

INSERT INTO `animelist_anime`
VALUES (
        1,
        22199,
        'Akame ga Kill !',
        7.47,
        'Summer 2014',
        'White Fox'
    ), (
        2,
        6987,
        'Aki-Sora',
        5.89,
        'Fall 2009',
        'Hoods Entertainment'
    ), (
        3,
        8577,
        'Aki-Sora - Yume no Naka',
        6,
        'Summer 2010',
        'Hoods Entertainment'
    ), (
        4,
        10490,
        'Blood C',
        6.53,
        'Summer 2011',
        'Production I.G'
    ), (
        5,
        10681,
        'Blood C - The Last Dark',
        7.17,
        'Spring 2012',
        'Production I.G'
    ), (
        6,
        38790,
        'Itai no wa Iya nano de Bougyoryoku ni Kyokufuri Shitai to Omoimasu',
        7.56,
        'Winter 2020',
        'SILVER LINK.'
    ), (
        7,
        1575,
        'Code Geass R1 - Hangyaku no Lelouch',
        8.7,
        'Fall 2006',
        'Sunrise'
    ), (
        8,
        2904,
        'Code Geass R2 - Hangyaku no Lelouch',
        8.91,
        'Spring 2008',
        'Sunrise'
    ), (
        9,
        8888,
        'Code Geass Boukoku no Akito 1 (Yokuryuu wa Maiorita)',
        7.36,
        'Summer 2012',
        'Sunrise'
    ), (
        10,
        15197,
        'Code Geass Boukoku no Akito 2 (Hikisakareshi Yokuryuu)',
        7.48,
        'Summer 2013',
        'Sunrise'
    ), (
        11,
        15199,
        'Code Geass Boukoku no Akito 3 (Kagayaku Mono Ten yori Otsu)',
        7.29,
        'Spring 2015',
        'Sunrise'
    ), (
        12,
        15201,
        'Code Geass Boukoku no Akito 4 (Nikushimi no Kioku kara)',
        7.23,
        'Summer 2015',
        'Sunrise'
    ), (
        13,
        30711,
        'Code Geass Boukoku no Akito 5 (Itoshiki Mono-tachi e)',
        7.13,
        'Winter 2016',
        'Sunrise'
    ), (
        14,
        34437,
        'Code Geass Fukkatsu no Lelouch',
        7.92,
        'Winter 2019',
        'Sunrise'
    ), (
        15,
        15037,
        'Corpse Party - Bougyakusareta Tamashii no Jukyou',
        6.46,
        'Summer 2013',
        'asread'
    ), (
        16,
        13807,
        'Corpse Party - Missing Footage',
        5.99,
        'Summer 2012',
        'asred'
    ), (
        17,
        12549,
        'Dakara Boku wa, H ga Dekinai',
        6.57,
        'Summer 2012',
        'feel.'
    ), (
        18,
        35849,
        'Darling in the FranXX',
        7.24,
        'Winter 2018',
        'A-1 Pictures, Trigger, CloverWorks'
    ), (
        19,
        15583,
        'Date A Live 1',
        7.17,
        'Spring 2013',
        'AIC PLUS+'
    ), (
        20,
        19163,
        'Date A Live 2',
        7.2,
        'Spring 2014',
        'Production IMS'
    ), (
        21,
        36633,
        'Date A Live 3',
        7.18,
        'Winter 2019',
        'J.C.Staff'
    ), (
        22,
        41461,
        'Date A Live 4',
        7.85,
        'Spring 2022',
        'GEEK TOYS'
    ), (
        23,
        24655,
        'Date A Live Movie: Mayuri Judgement',
        7.34,
        'Summer 2015',
        'Production IMS'
    ), (
        24,
        40416,
        'Date A Bullet 1 - Dead or Bullet\'s',
        7.56,
        'Summer 2020',
        'GEEK TOYS'
    ), (
        25,
        42423,
        'Date A Bullet 2 - Queen\'s or Nightmare',
        7.62,
        'Fall 2020',
        'GEEK TOYS'
    ), (
        26,
        226,
        'Elfen Lied',
        7.51,
        'Summer 2004',
        'Arms'
    ), (
        27,
        30,
        'Neon Genesis Evangelion',
        8.34,
        'Fall 1995',
        'GAINAX & Production I.G'
    ), (
        28,
        32,
        'Neon Genesis Evangelion: The End of Evangelion',
        8.55,
        'Summer 1997',
        'GAINAX & Production I.G'
    ), (
        29,
        2759,
        'Evangelion 1.0 You Are (Not) Alone',
        8.02,
        'Summer 2007',
        'Khara'
    ), (
        30,
        3784,
        'Evangelion 2.0 You Can (Not) Advance',
        8.32,
        'Summer 2009',
        'Khara'
    ), (
        31,
        3785,
        'Evangelion 3.0 You Can (Not) Redo',
        7.62,
        'Fall 2012',
        'Khara'
    ), (
        32,
        3786,
        'Evangelion 3.0 + 1.0 Thrice Upon a Time',
        8.64,
        'Winter 2021',
        'Khara'
    ), (
        33,
        34662,
        'Fate Apocrypha',
        7.18,
        'Summer 2017',
        'A-1 Pictures'
    ), (
        34,
        38085,
        'Fate Grand Order - Shinsei Entaku Ryouiki Camelot 1 Wandering Agateram',
        6.84,
        'Fall 2020',
        'Signal.MD'
    ), (
        35,
        38086,
        'Fate Grand Order - Shinsei Entaku Ryouiki Camelot 2 Paladin Agateram',
        7.58,
        'Spring 2021',
        'Production I.G'
    ), (
        36,
        38084,
        'Fate Grand Order - Zettai Majuu Sensen Babylonia',
        7.94,
        'Fall 2019',
        'CloverWorks'
    ), (
        37,
        41497,
        'Fate Grand Order - Shuukyoku Tokuiten Kani Jikan Shinden Solomon',
        8.09,
        'Summer 2021',
        'CloverWorks'
    ), (
        38,
        356,
        'Fate Stay Night',
        7.29,
        'Winter 2006',
        'Studio Deen'
    ), (
        39,
        22297,
        'Fate Stay Night - Unlimited Blade Works 1',
        8.19,
        'Fall 2014',
        'ufotable'
    ), (
        40,
        28701,
        'Fate Stay Night - Unlimited Blade Works 2',
        8.32,
        'Spring 2015',
        'ufotable'
    ), (
        41,
        25537,
        'Fate Stay Night - Heaven\'s Feel 1 Pressage Flower',
        8.2,
        'Fall 2017',
        'ufotable'
    ), (
        42,
        33049,
        'Fate Stay Night - Heaven\'s Feel 2 Lost Butterfly',
        8.54,
        'Winter 2019',
        'ufotable'
    ), (
        43,
        33050,
        'Fate Stay Night - Heaven\'s Feel 3 Spring Song',
        8.72,
        'Summer 2020',
        'ufotable'
    ), (
        44,
        10087,
        'Fate Zero 1',
        8.3,
        'Fall 2011',
        'ufotable'
    ), (
        45,
        11741,
        'Fate Zero 2',
        8.57,
        'Spring 2012',
        'ufotable'
    ), (
        46,
        48760,
        'Gaikotsu Kishi-sama, Tadaima Isekai e Odekakechuu',
        7.23,
        'Spring 2022',
        'Studio Kai, HORNETS'
    ), (
        47,
        2775,
        'Genocyber',
        5.81,
        'Winter 1994',
        'Artmic'
    ), (
        48,
        43,
        'Koukaku Kidoutai',
        8.28,
        'Fall 1995',
        'Production I.G'
    ), (
        49,
        468,
        'Koukaku Kidoutai 2 - Innocence',
        7.8,
        'Winter 2004',
        'Production I.G'
    ), (
        50,
        37349,
        'Goblin Slayer',
        7.42,
        'Fall 2018',
        'White Fox'
    ), (
        51,
        39576,
        'Goblin Slayer - Goblin\'s Crown',
        7.25,
        'Winter 2020',
        'White Fox'
    ), (
        52,
        268,
        'Golden Boy',
        8.02,
        'Fall 1996',
        'APPP'
    ), (
        53,
        38101,
        'Gotoubun no Hanayome (Season 1)',
        7.68,
        'Winter 2019',
        'Tezuka Productions'
    ), (
        54,
        39783,
        'Gotoubun no Hanayome (Season 2)',
        8.12,
        'Winter 2021',
        'Bilbury Animation Studios'
    ), (
        55,
        10793,
        'Guilty Crown',
        7.44,
        'Fall 2011',
        'Production I.G'
    ), (
        56,
        41911,
        'Hanyou no Yashahime - Sengoku Otogizoushi',
        6.72,
        'Fall 2020',
        'Sunrise'
    ), (
        57,
        48505,
        'Hanyou no Yashahime - Sengoku Otogizoushi Ni Shou',
        7.09,
        'Fall 2021',
        'Sunrise'
    ), (
        58,
        15809,
        'Hataraku Maou-sama',
        7.78,
        'Spring 2013',
        'White Fox'
    ), (
        59,
        48413,
        'Hataraku Maou-sama 2',
        7.78,
        'Summer 2022',
        '3Hz'
    ), (
        60,
        270,
        'Hellsing',
        7.49,
        'Fall 2001',
        'Gonzo'
    ), (
        61,
        11077,
        'Hellsing The Dawn',
        7.15,
        'Summer 2011',
        'Graphinica'
    ), (
        62,
        777,
        'Hellsing Ultimate',
        8.36,
        'Winter 2006',
        'Madhouse, Satelight, Graphinica'
    ), (
        63,
        11617,
        'High School DxD 1',
        7.35,
        'Winter 2012',
        'TNK'
    ), (
        64,
        15451,
        'High School DxD 2 New',
        7.49,
        'Summer 2013',
        'TNK'
    ), (
        65,
        24703,
        'High School DxD 3 Born',
        7.43,
        'Spring 2015',
        'TNK'
    ), (
        66,
        34281,
        'High School DxD 4 Hero',
        7.26,
        'Spring 2018',
        'PASSIONE'
    ), (
        67,
        8074,
        'Highschool Of The Dead',
        7.08,
        'Summer 2010',
        'Madhouse'
    ), (
        68,
        934,
        'Higurashi no Naku Koro ni',
        7.9,
        'Spring 2006',
        'Studio Deen'
    ), (
        69,
        1889,
        'Higurashi no Naku Koro ni Kai',
        8.37,
        'Winter 2007',
        'Geneon Universal Entertainment'
    ), (
        70,
        3652,
        'Higurashi no Naku Koro ni Rei',
        7.41,
        'Winter 2009',
        'Studio Deen'
    ), (
        71,
        41006,
        'Higurashi no Naku Koro ni Gou',
        7.2,
        'Fall 2020',
        'PASSIONE'
    ), (
        72,
        48488,
        'Higurashi no Naku Koro ni Sotsu',
        6.77,
        'Summer 2021',
        'PASSIONE'
    ), (
        73,
        8277,
        'Hyakka Ryouran - Samurai Girls',
        6.78,
        'Fall 2010',
        'Arms'
    ), (
        74,
        15377,
        'Hyakka Ryouran - Samurai Bride',
        6.73,
        'Spring 2013',
        'Arms'
    ), (
        75,
        9041,
        'Infinite Stratos 1',
        6.65,
        'Winter 2011',
        '8bit'
    ), (
        76,
        10794,
        'Infinite Stratos 1 Encore - Koi ni Kogareru Rokujuusou',
        6.86,
        'Fall 2011',
        '8bit'
    ), (
        77,
        18247,
        'Infinite Stratos 2',
        6.48,
        'Fall 2013',
        '8bit'
    ), (
        78,
        20045,
        'Infinite Stratos 2 - Hitonatsu no Omoide',
        6.88,
        'Fall 2013',
        '8bit'
    ), (
        79,
        21653,
        'Infinite Stratos 2 - World Purge-hen',
        6.88,
        'Fall 2014',
        '8bit'
    ), (
        80,
        33242,
        'Infinite Stratos 2 - Infinite Wedding',
        6.39,
        'Spring 2016',
        '8bit'
    ), (
        81,
        249,
        'InuYasha',
        7.85,
        'Fall 2000',
        'Sunrise'
    ), (
        82,
        452,
        'InuYasha Movie 1 - Toki wo Koeru Omoi',
        7.56,
        'Fall 2001',
        'Sunrise'
    ), (
        83,
        450,
        'InuYasha Movie 2 - Kagami no Naka no Mugenjo',
        7.67,
        'Fall 2002',
        'Sunrise'
    ), (
        84,
        451,
        'InuYasha Movie 3 - Tenka Hadou no Ken',
        7.8,
        'Fall 2003',
        'Sunrise'
    ), (
        85,
        449,
        'InuYasha Movie 4 - Guren no Houraijima',
        7.55,
        'Fall 2004',
        'Sunrise'
    ), (
        86,
        6811,
        'InuYasha The Final Act',
        8.2,
        'Fall 2009',
        'Sunrise'
    ), (
        87,
        44524,
        'Isekai Meikyuu de Harem wo',
        6.61,
        'Summer 2022',
        'Passione'
    ), (
        88,
        635,
        'Juubee-chan 1: Lovely Gantai no Himitsu',
        6.67,
        'Spring 1999',
        'Madhouse'
    ), (
        89,
        636,
        'Juubee-chan 2: Siberia Yagyuu no Gyakushuu',
        6.85,
        'Winter 2004',
        'Madhouse'
    ), (
        90,
        40750,
        'Kaifuku Jutsushi no Yarinaoshi',
        6.33,
        'Winter 2021',
        'TNK'
    ), (
        91,
        40839,
        'Kanojo Okarishimasu',
        7.23,
        'Summer 2020',
        'TMS Entertainment'
    ), (
        92,
        42963,
        'Kanojo Okarishimasu 2',
        6.88,
        'Summer 2022',
        'TMS Entertainment'
    ), (
        93,
        45613,
        'Kawaii dake ja Nai Shikimori-san',
        6.69,
        'Spring 2022',
        'Doga Kobo'
    ), (
        94,
        1606,
        'Kekkaishi',
        7.6,
        'Fall 2006',
        'Sunrise'
    ), (
        95,
        40908,
        'Kemono Jihen',
        7.42,
        'Winter 2021',
        'Ajia-Do'
    ), (
        96,
        34964,
        'Killing Bites',
        6.58,
        'Winter 2018',
        'LIDENFILMS'
    ), (
        97,
        38000,
        'Kimetsu no Yaiba 1',
        8.55,
        'Spring 2019',
        'Ufotable'
    ), (
        98,
        49926,
        'Kimetsu no Yaiba 1 - Mugen Ressha hen',
        8.39,
        'Fall 2021',
        'Ufotable'
    ), (
        99,
        47778,
        'Kimetsu no Yaiba 2 - Yuukaku hen',
        8.87,
        'Winter 2022',
        'Ufotable'
    ), (
        100,
        51213,
        'Kinsou no Vermeil to Mahou Sekai no Tsukisusumu',
        7.33,
        'Summer 2022',
        'Staple Entertainment'
    ), (
        101,
        22535,
        'Kiseijuu Sei no Kakuritsu',
        8.35,
        'Fall 2014',
        'Madhouse'
    ), (
        102,
        30381,
        'Kono Subarashii Sekai ni Syukufuku Wo 1',
        8.12,
        'Winter 2016',
        'Studio Deen'
    ), (
        103,
        32937,
        'Kono Subarashii Sekai ni Syukufuku Wo 2',
        8.28,
        'Winter 2017',
        'Studio Deen'
    ), (
        104,
        38040,
        'Konosuba Movie - Kurenai Densetsu',
        8.47,
        'Summer 2019',
        'J.C.Staff'
    ), (
        105,
        8841,
        'Kore wa Zombie Desu ka 1',
        7.37,
        'Winter 2011',
        'Studio Deen'
    ), (
        106,
        10790,
        'Kore wa Zombie Desu ka 2',
        7.51,
        'Spring 2012',
        'Studio Deen'
    ), (
        107,
        10620,
        'Mirai Nikki',
        7.45,
        'Fall 2011',
        'asread'
    ), (
        108,
        14833,
        'Maoyuu Maou Yuusha',
        7.26,
        'Winter 2013',
        'Arms'
    ), (
        109,
        5081,
        'Bakemonogatari',
        8.34,
        'Summer 2009',
        'SHAFT'
    ), (
        110,
        9260,
        'Kizumonogatari 1 - Tekketsu hen',
        8.38,
        'Winter 2016',
        'SHAFT'
    ), (
        111,
        31757,
        'Kizumonogatari 2 - Nekketsu hen',
        8.59,
        'Summer 2016',
        'SHAFT'
    ), (
        112,
        31758,
        'Kizumonogatari 3 - Reiketsu hen',
        8.8,
        'Winter 2017',
        'SHAFT'
    ), (
        113,
        32268,
        'Koyomimonogatari',
        7.64,
        'Winter 2016',
        'SHAFT'
    ), (
        114,
        17074,
        'Monogatari Series 2nd Season',
        8.78,
        'Summer 2013',
        'SHAFT'
    ), (
        115,
        15689,
        'Nekomonogatari - Kuro',
        7.49,
        'Fall 2012',
        'SHAFT'
    ), (
        116,
        11597,
        'Nisemonogatari',
        8.15,
        'Winter 2012',
        'SHAFT'
    ), (
        117,
        31181,
        'Owarimonogatari',
        8.46,
        'Fall 2015',
        'SHAFT'
    ), (
        118,
        35247,
        'Owarimonogatari 2',
        8.9,
        'Summer 2017',
        'SHAFT'
    ), (
        119,
        28025,
        'Tsukimonogatari',
        8.11,
        'Fall 2014',
        'SHAFT'
    ), (
        120,
        40708,
        'Monster Musume no Oisha-san',
        6.25,
        'Summer 2020',
        'Arvo Animation'
    ), (
        121,
        617,
        'Juubee Ninpuuchou',
        7.61,
        'Spring 1993',
        'Madhouse'
    ), (
        122,
        618,
        'Juubee Ninpuuchou - Ryuuhougyoku hen',
        6.68,
        'Spring 2003',
        'Madhouse'
    ), (
        123,
        18897,
        'Nisekoi 1',
        7.59,
        'Winter 2014',
        'SHAFT'
    ), (
        124,
        27787,
        'Nisekoi 2',
        7.36,
        'Spring 2015',
        'SHAFT'
    ), (
        125,
        24227,
        'Nisekoi OVA',
        7.37,
        'Fall 2014',
        'SHAFT'
    ), (
        126,
        41345,
        'Nobless',
        6.87,
        'Fall 2020',
        'Production I.G'
    ), (
        127,
        28819,
        'Okusama ga Seitokaichou',
        6.6,
        'Summer 2015',
        'Seven'
    ), (
        128,
        32603,
        'Okusama ga Seitokaichou +',
        6.6,
        'Fall 2016',
        'Seven'
    ), (
        129,
        41899,
        'Ore dake Haireru Kakushi Dungeon',
        6.3,
        'Winter 2021',
        'Okuruto Noboru'
    ), (
        130,
        29803,
        'Overlord I',
        7.92,
        'Summer 2015',
        'Madhouse'
    ), (
        131,
        35073,
        'Overlord II',
        7.76,
        'Winter 2018',
        'Madhouse'
    ), (
        132,
        37675,
        'Overlord III',
        7.92,
        'Summer 2018',
        'Madhouse'
    ), (
        133,
        48895,
        'Overlord IV',
        8.33,
        'Summer 2022',
        'Madhouse'
    ), (
        134,
        30240,
        'Prison School',
        7.62,
        'Summer 2015',
        'J.C.Staff'
    ), (
        135,
        2993,
        'Rosario to Vampire 1',
        6.77,
        'Winter 2008',
        'Gonzo'
    ), (
        136,
        4214,
        'Rosario to Vampire 2',
        6.91,
        'Fall 2008',
        'Gonzo'
    ), (
        137,
        23277,
        'Saenai Heroine no Sodatekata 1',
        7.5,
        'Winter 2015',
        'A-1 Pictures'
    ), (
        138,
        30727,
        'Saenai Heroine no Sodatekata 2',
        7.78,
        'Spring 2017',
        'A-1 Pictures'
    ), (
        139,
        30749,
        'Saijaku Muhai no Bahamut',
        6.55,
        'Winter 2016',
        'Lerche'
    ), (
        140,
        2476,
        'School Days',
        5.55,
        'Summer 2007',
        'TNK'
    ), (
        141,
        4063,
        'Sekirei 1',
        7.06,
        'Summer 2008',
        'Seven Arcs'
    ), (
        142,
        5277,
        'Sekirei 2 - Pure Engagement',
        7.3,
        'Summer 2010',
        'Seven Arcs'
    ), (
        143,
        29786,
        'Shimoneta to lu Gainen ga Sonzai Shinai Taikutsu na Sekai',
        7.27,
        'Summer 2015',
        'J.C.Staff'
    ), (
        144,
        21843,
        'Shingeki no Bahamut - Genesis',
        7.63,
        'Fall 2014',
        'MAPPA'
    ), (
        145,
        169,
        'Shingetsutan Tsukihime',
        6.89,
        'Fall 2003',
        'J.C.Staff'
    ), (
        146,
        23233,
        'Shinmai Maou no Testament 1',
        6.73,
        'Winter 2015',
        'Production IMS'
    ), (
        147,
        29027,
        'Shinmai Maou no Testament 1 OVA - Toujou Basara no Hard Sweet na Nichijou',
        6.93,
        'Spring 2015',
        'Production IMS'
    ), (
        148,
        30363,
        'Shinmai Maou no Testament 2 Burst',
        6.83,
        'Fall 2015',
        'Production IMS'
    ), (
        149,
        30365,
        'Shinmai Maou no Testament 2 Burst - Toujou Basara no Shigoku Heiwa na Nichijou',
        6.77,
        'Winter 2016',
        'Production IMS'
    ), (
        150,
        36688,
        'Shinmai Maou no Testament - Departure',
        6.92,
        'Winter 2018',
        'Production IMS'
    ), (
        151,
        41946,
        'Shuumatsu no Harem',
        5.99,
        'Fall 2021',
        'Studio Gokumi, AXsiZ'
    ), (
        152,
        40586,
        'Slime Taoshite 300-nen, Shiranai Uchi ni Level Max ni Nattemashita',
        6.97,
        'Spring 2021',
        'Revoroot'
    ), (
        153,
        9253,
        'Steins Gate',
        9.08,
        'Spring 2011',
        'White Fox'
    ), (
        154,
        11577,
        'Steins Gate Movie - Load Region of Deja Vu',
        8.46,
        'Fall 2013',
        'White Fox'
    ), (
        155,
        30484,
        'Steins Gate 0',
        8.52,
        'Spring 2018',
        'White Fox'
    ), (
        156,
        18277,
        'Strike The Blood 1',
        7.07,
        'Fall 2013',
        'SILVER LINK., Connect'
    ), (
        157,
        30321,
        'Strike The Blood 1 OVA: Valkyria no Oukoku-hen',
        7.25,
        'Fall 2015',
        'Barnum Studio, SILVER LINK., Connect'
    ), (
        158,
        33286,
        'Strike The Blood 2',
        7,
        'Fall 2016',
        'SILVER LINK., Connect'
    ), (
        159,
        37449,
        'Strike The Blood 3',
        7.02,
        'Fall 2018',
        'Connect'
    ), (
        160,
        40486,
        'Strike The Blood 3 OVA: Kieta Seisou-hen',
        6.93,
        'Winter 2020',
        'Connect'
    ), (
        161,
        40485,
        'Strike The Blood 4',
        7,
        'Spring 2020',
        'Connect'
    ), (
        162,
        49316,
        'Strike The Blood 5',
        7.25,
        'Winter 2022',
        'Connect'
    ), (
        163,
        11757,
        'Sword Art Online 1',
        7.2,
        'Summer 2012',
        'A-1 Pictures'
    ), (
        164,
        21881,
        'Sword Art Online 2',
        6.71,
        'Summer 2014',
        'A-1 Pictures'
    ), (
        165,
        36474,
        'Sword Art Online 3 - Alicization',
        7.56,
        'Fall 2018',
        'A-1 Pictures'
    ), (
        166,
        39597,
        'Sword Art Online 3 - Alicization War of Underworld I',
        7.58,
        'Fall 2019',
        'A-1 Pictures'
    ), (
        167,
        40540,
        'Sword Art Online 3 - Alicization War of Underworld II',
        7.46,
        'Summer 2020',
        'A-1 Pictures'
    ), (
        168,
        31765,
        'Sword Art Online Movie - Ordinal Scale',
        7.57,
        'Winter 2017',
        'A-1 Pictures'
    ), (
        169,
        20021,
        'Sword Art Online Movie - Extra Edition',
        6.55,
        'Fall 2013',
        'A-1 Pictures'
    ), (
        170,
        42916,
        'Sword Art Online Movie 1 Progressive - Hoshi Naki Yoru no Aria',
        7.95,
        'Fall 2021',
        'A-1 Pictures'
    ), (
        171,
        12445,
        'Tasogare Otome x Amnesia',
        7.84,
        'Spring 2012',
        'SILVER LINK.'
    ), (
        172,
        35790,
        'Tate no Yuusha no Nariagari 1',
        8.01,
        'Winter 2019',
        'Kinema Citrus'
    ), (
        173,
        40365,
        'Tate no Yuusha no Nariagari 2',
        6.55,
        'Spring 2022',
        'Kinema Citrus, DR Movie'
    ), (
        174,
        38610,
        'Tejina Senpai',
        6.43,
        'Summer 2019',
        'LIDENFILMS'
    ), (
        175,
        479,
        'The Law of Ueki',
        7.73,
        'Spring 2005',
        'Studio Deen'
    ), (
        176,
        1107,
        'Youjuu Toshi',
        6.45,
        'Spring 1987',
        'Madhouse'
    ), (
        177,
        22319,
        'Tokyo Ghoul 1',
        7.79,
        'Summer 2014',
        'Pierrot'
    ), (
        178,
        27899,
        'Tokyo Ghoul 2',
        7.03,
        'Winter 2015',
        'Pierrot'
    ), (
        179,
        36511,
        'Tokyo Ghoul re',
        6.38,
        'Spring 2018',
        'Pierrot'
    ), (
        180,
        25157,
        'Trinity Seven 1',
        7.08,
        'Fall 2014',
        'Seven Arcs Pictures'
    ), (
        181,
        28285,
        'Trinity Seven 1 OVA - Nanatsu no Taizai to Nana Madoushi',
        7.36,
        'Winter 2015',
        'Seven Arcs Pictures'
    ), (
        182,
        33581,
        'Trinity Seven Movie 1 - Eternity Library to Alchemic Girl',
        7.26,
        'Winter 2017',
        'Seven Arcs Pictures'
    ), (
        183,
        37986,
        'Trinity Seven Movie 2 - Tenkuu Toshokan to Shinku no Maou',
        7.35,
        'Winter 2019',
        'Seven Arcs Pictures'
    ), (
        184,
        38573,
        'Tsuujou Kougeki ga Zentai Kougeki de Ni-kai Kougeki no Okaasan wa Suki Desu ka?',
        5.55,
        'Summer 2019',
        'J.C.Staff'
    ), (
        185,
        39799,
        'Val x Love',
        5.9,
        'Fall 2019',
        'Hoods Entertainment'
    ), (
        186,
        732,
        'Vampire Hunter D',
        7.05,
        'Fall 1985',
        'Production Reed'
    ), (
        187,
        543,
        'Vampire Hunter D: Bloodlust',
        7.89,
        'Summer 2000',
        'Madhouse'
    ), (
        188,
        21085,
        'Witch Craft Works',
        7.02,
        'Winter 2014',
        'J.C.Staff'
    ), (
        189,
        35507,
        'Youkoso Jitsuryoku Shijou Shugi no Kyoushitsue',
        7.86,
        'Summer 2017',
        'Lerche'
    ), (
        190,
        51096,
        'Youkoso Jitsuryoku Shijou Shugi no Kyoushitsue 2nd Season',
        8.03,
        'Summer 2022',
        'Lerche'
    ), (
        191,
        36726,
        'Yuragi sou no Yuuna-san',
        7.02,
        'Summer 2018',
        'Xebec'
    ), (
        192,
        16656,
        'Zettai Junpaku Mahou Shoujo',
        5.25,
        'Summer 2012',
        'Barnum Studio, Project No.9'
    ), (
        193,
        48649,
        'Fuuto Tantei',
        7.37,
        'Summer 2022',
        'Studio Kai'
    ), (
        194,
        40938,
        'Hige wo Soru Soshite Joshikousei wo Hirou',
        7.29,
        'Spring 2021',
        'Project No.9'
    ), (
        195,
        49438,
        'Isekai Yakkyoku',
        9,
        'Winter 2021',
        'Deomedea'
    ), (
        196,
        51064,
        'Kuro no Shoukanshi',
        6,
        '',
        ''
    ), (
        197,
        30307,
        'Monster Musume no Iru Nichijou',
        7,
        '',
        ''
    ), (
        198,
        437,
        'Perfect Blue',
        9,
        '',
        ''
    ), (
        199,
        46985,
        'Shinka no Mi Shiranai Uchi ni Kachigumi Jinsei',
        6,
        '',
        ''
    ), (
        200,
        50175,
        'Yuusha Yamemasu',
        7,
        '',
        ''
    );

/*!40000 ALTER TABLE `animelist_anime` ENABLE KEYS */

;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */

;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */

;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */

;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */

;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */

;

-- Dump completed on 2023-01-13  3:39:40