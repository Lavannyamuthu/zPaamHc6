-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2019 at 06:34 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hangerassign`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_06_24_181454_create_vehicle_make_table', 1),
(2, '2019_06_24_181508_create_vehicle_model_table', 1),
(3, '2019_06_24_181520_create_service_request_table', 1),
(4, '2019_08_18_071120_add_soft_deletes_service_requests_table', 2),
(5, '2014_10_12_000000_create_users_table', 3),
(6, '2014_10_12_100000_create_password_resets_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_model_id` bigint(20) NOT NULL,
  `status` enum('new','ready for pickup','waiting on parts','closed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `client_name`, `client_phone`, `client_email`, `vehicle_model_id`, `status`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Andres Runolfsson', '(228) 618-8661', 'nkub@example.com', 4, 'ready for pickup', 'Seven flung down his face, as long as you say \"What a pity!\"?\' the Rabbit coming to look for her, and she dropped it hastily, just in time to be told so. \'It\'s really dreadful,\'.', '2019-08-18 01:58:40', '2016-07-23 11:22:47', NULL),
(2, 'Mr. Leopoldo Upton', '(252) 450-4141 x3084', 'mozell55@example.org', 1, 'new', 'William and offer him the crown. William\'s conduct at first she thought of herself, \'I don\'t like them!\' When the procession moved on, three of the jury had a pencil that.', '2019-08-18 01:58:40', '2001-07-29 17:57:37', NULL),
(3, 'Mr. Lorenz Legros', '1-681-691-4445 x130', 'lacy01@example.com', 2, 'new', 'I\'M a Duchess,\' she said to herself, \'because of his tail. \'As if it had lost something; and she jumped up in spite of all her coaxing. Hardly knowing what she was always ready.', '2019-08-18 01:58:40', '2001-08-17 12:31:37', NULL),
(4, 'Lempi Wintheiser', '695-812-5891', 'bradtke.novella@example.net', 2, 'ready for pickup', 'Mock Turtle. \'She can\'t explain it,\' said the Gryphon only answered \'Come on!\' cried the Gryphon. \'How the creatures argue. It\'s enough to drive one crazy!\' The Footman seemed to.', '2019-08-18 01:58:40', '1991-11-19 20:40:20', NULL),
(5, 'Avery Tremblay', '(762) 582-1880', 'dagmar81@example.org', 4, 'closed', 'Mouse, in a game of play with a round face, and large eyes full of soup. \'There\'s certainly too much of it appeared. \'I don\'t think they play at all anxious to have finished,\'.', '2019-08-18 01:58:40', '2003-03-31 17:33:00', NULL),
(6, 'Amelia Turner', '227-653-0241 x66764', 'schamberger.jena@example.net', 3, 'new', 'Queen was close behind us, and he\'s treading on my tail. See how eagerly the lobsters to the Gryphon. \'I mean, what makes them so shiny?\' Alice looked round, eager to see it.', '2019-08-18 01:58:40', '2008-10-25 05:32:48', NULL),
(7, 'Dr. Joe Bauch', '(406) 201-2084 x42573', 'gwelch@example.com', 3, 'new', 'Shakespeare, in the pool rippling to the Duchess: \'what a clear way you can;--but I must have been a RED rose-tree, and we put a stop to this,\' she said to the voice of the sort.', '2019-08-18 01:58:40', '1991-05-11 00:08:54', NULL),
(8, 'Woodrow Zemlak', '(324) 201-4138', 'fromaguera@example.org', 4, 'waiting on parts', 'White Rabbit hurried by--the frightened Mouse splashed his way through the wood. \'It\'s the stupidest tea-party I ever was at in all my life!\' Just as she remembered having seen.', '2019-08-18 01:58:40', '2002-03-14 23:22:07', NULL),
(9, 'Prof. Jazmin Wilderman I', '804-399-7796', 'natalia.white@example.net', 6, 'closed', 'Then the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of its mouth open, gazing up into the sky all the things get used up.\' \'But what did the Dormouse go on.', '2019-08-18 01:58:40', '2008-04-19 14:01:41', NULL),
(10, 'Marlon Sauer', '+1.769.574.3390', 'torrance.mcclure@example.com', 6, 'waiting on parts', 'Footman went on in a voice sometimes choked with sobs, to sing \"Twinkle, twinkle, little bat! How I wonder what was on the OUTSIDE.\' He unfolded the paper as he spoke, and the.', '2019-08-18 01:58:40', '2014-12-17 00:26:05', NULL),
(11, 'Zachariah Robel', '(974) 340-1042 x33578', 'heathcote.melany@example.org', 2, 'waiting on parts', 'Dormouse!\' And they pinched it on both sides at once. The Dormouse had closed its eyes were looking over their slates; \'but it doesn\'t mind.\' The table was a child,\' said the.', '2019-08-18 01:58:40', '2015-02-18 07:07:14', NULL),
(12, 'Addison Murphy V', '(637) 369-1172 x2408', 'gillian74@example.com', 2, 'new', 'Mouse, who seemed ready to sink into the loveliest garden you ever saw. How she longed to get out at the jury-box, and saw that, in her pocket, and was immediately suppressed by.', '2019-08-18 01:58:40', '2015-05-20 10:30:24', NULL),
(13, 'Camron Kulas', '385-610-6484 x050', 'yeichmann@example.com', 3, 'ready for pickup', 'She got up in great disgust, and walked a little house in it about four feet high. \'I wish I could not possibly reach it: she could do, lying down with one eye; \'I seem to.', '2019-08-18 01:58:41', '2017-05-07 04:17:49', NULL),
(14, 'Georgiana Steuber', '862-309-5863', 'marquise43@example.net', 5, 'closed', 'Alice to herself, in a low, timid voice, \'If you knew Time as well say,\' added the Gryphon; and then quietly marched off after the others. \'We must burn the house till she was.', '2019-08-18 01:58:41', '1989-09-24 06:03:28', NULL),
(15, 'Elliot Dickens DDS', '+12365652292', 'bridget.grimes@example.com', 3, 'new', 'I\'d only been the right words,\' said poor Alice, who was talking. Alice could bear: she got used to it as far as they lay sprawling about, reminding her very much pleased at.', '2019-08-18 01:58:41', '2004-08-05 07:14:07', NULL),
(16, 'Ms. Bailee Senger', '1-387-674-4180', 'mharris@example.net', 5, 'waiting on parts', 'Hatter. \'Stolen!\' the King had said that day. \'A likely story indeed!\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'What sort of meaning in it,\' but none of my life.\'.', '2019-08-18 01:58:41', '1992-01-01 19:16:39', NULL),
(17, 'Roger Runolfsson', '1-484-323-7918 x305', 'kiana.dietrich@example.org', 6, 'waiting on parts', 'Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only.', '2019-08-18 01:58:41', '2018-02-23 15:22:11', NULL),
(18, 'Adele Fahey III', '764.692.5848 x4214', 'swiza@example.net', 3, 'closed', 'However, everything is queer to-day.\' Just then she heard the King replied. Here the Queen had only one who got any advantage from the roof. There were doors all round her once.', '2019-08-18 01:58:41', '1999-01-10 02:54:55', NULL),
(19, 'Valentin Beatty PhD', '+1.938.635.7731', 'harvey.mara@example.net', 3, 'waiting on parts', 'I beg your pardon!\' she exclaimed in a day did you ever eat a little sharp bark just over her head struck against the roof of the baby?\' said the Hatter. \'He won\'t stand beating.', '2019-08-18 01:58:41', '1996-01-12 11:16:09', NULL),
(20, 'Prof. Cordie Hettinger IV', '+1 (862) 884-3312', 'simonis.samson@example.com', 1, 'new', 'Alice said nothing: she had not a moment that it would be quite as safe to stay in here any longer!\' She waited for some time after the candle is blown out, for she felt sure she.', '2019-08-18 01:58:41', '1993-04-26 13:18:14', NULL),
(21, 'Julia Maggio MD', '1-592-843-0575', 'zmaggio@example.net', 6, 'new', 'Alice, \'it\'s very easy to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon repeated impatiently: \'it begins \"I.', '2019-08-18 01:58:41', '1990-05-11 12:57:41', NULL),
(22, 'Jadon Runolfsson', '1-360-326-2103 x4224', 'josie.wolf@example.com', 5, 'ready for pickup', 'I think.\' And she began fancying the sort of thing never happened, and now here I am so VERY remarkable in that; nor did Alice think it was,\' the March Hare went on. \'We had the.', '2019-08-18 01:58:41', '2017-08-09 00:58:11', NULL),
(23, 'Norris Kub V', '+1-912-802-8644', 'xdoyle@example.com', 3, 'waiting on parts', 'Time, and round Alice, every now and then, \'we went to him,\' the Mock Turtle, \'but if you\'ve seen them at dinn--\' she checked herself hastily. \'I don\'t like them raw.\' \'Well, be.', '2019-08-18 01:58:41', '2008-12-03 05:09:34', NULL),
(24, 'Shanelle Schimmel', '(356) 982-8549 x250', 'avonrueden@example.com', 4, 'closed', 'The long grass rustled at her own child-life, and the jury asked. \'That I can\'t be Mabel, for I know I have ordered\'; and she went on: \'But why did they live at the mouth with.', '2019-08-18 01:58:41', '2005-09-17 21:11:44', NULL),
(25, 'Jacynthe Hermiston', '(680) 224-3814 x744', 'velva.rath@example.net', 6, 'closed', 'VERY much out of its voice. \'Back to land again, and did not like the right word) \'--but I shall be late!\' (when she thought there was a body to cut it off from: that he had a.', '2019-08-18 01:58:41', '1993-08-14 21:08:16', NULL),
(27, 'Ladarius Lakin', '+1.831.377.8180', 'lonny56@example.net', 2, 'closed', 'He says it kills all the other queer noises, would change (she knew) to the door, staring stupidly up into hers--she could hear the rattle of the e--e--evening, Beautiful.', '2019-08-18 01:58:41', '2007-03-30 05:18:34', NULL),
(28, 'Miss Meda Murphy Jr.', '+1-261-338-0651', 'nina50@example.com', 2, 'waiting on parts', 'This time there were three gardeners instantly threw themselves flat upon their faces, and the Dormouse again, so she tried another question. \'What sort of life! I do wonder what.', '2019-08-18 01:58:41', '2006-02-24 23:02:27', NULL),
(29, 'Cali Buckridge', '778.862.5429', 'jkozey@example.org', 1, 'closed', 'Duchess,\' she said to a snail. \"There\'s a porpoise close behind her, listening: so she went on saying to her chin in salt water. Her first idea was that you couldn\'t cut off a.', '2019-08-18 01:58:41', '2018-11-28 07:13:38', NULL),
(30, 'Dr. Bernadine Homenick IV', '994.471.3686 x2619', 'aterry@example.com', 2, 'closed', 'Cat remarked. \'Don\'t be impertinent,\' said the young man said, \'And your hair has become very white; And yet I don\'t care which happens!\' She ate a little way out of the what?\'.', '2019-08-18 01:58:41', '1997-10-06 11:19:00', NULL),
(31, 'Euna Stoltenberg', '310-333-9936', 'rylan.graham@example.com', 1, 'closed', 'Soup of the month is it?\' The Gryphon sat up and rubbed its eyes: then it chuckled. \'What fun!\' said the Hatter, \'or you\'ll be telling me next that you think you\'re changed, do.', '2019-08-18 01:58:41', '2011-07-28 16:17:18', NULL),
(32, 'Hobart Monahan', '+1-482-376-7129', 'steuber.evert@example.com', 6, 'closed', 'I wish you wouldn\'t have come here.\' Alice didn\'t think that very few things indeed were really impossible. There seemed to be lost: away went Alice after it, never once.', '2019-08-18 01:58:41', '2003-03-28 13:14:48', NULL),
(33, 'Prof. Isabell Schmidt II', '1-342-257-2724 x417', 'buckridge.megane@example.com', 1, 'waiting on parts', 'Then came a little girl or a worm. The question is, Who in the other: the Duchess said after a minute or two, which gave the Pigeon in a court of justice before, but she stopped.', '2019-08-18 01:58:42', '2009-02-20 06:57:37', NULL),
(34, 'Camron Davis', '783-856-6811', 'wvonrueden@example.com', 2, 'ready for pickup', 'Alice remained looking thoughtfully at the picture.) \'Up, lazy thing!\' said the Dormouse: \'not in that ridiculous fashion.\' And he got up and throw us, with the tea,\' the Hatter.', '2019-08-18 01:58:42', '1996-04-05 11:43:16', NULL),
(35, 'Trever Rosenbaum', '1-841-989-9905', 'heaney.harvey@example.com', 4, 'closed', 'Hatter: \'it\'s very easy to know when the White Rabbit, trotting slowly back to the porpoise, \"Keep back, please: we don\'t want YOU with us!\"\' \'They were obliged to have it.', '2019-08-18 01:58:42', '2001-03-30 02:42:16', NULL),
(36, 'Shaun Hilpert DVM', '351.609.2956', 'phyllis.sporer@example.net', 6, 'ready for pickup', 'Soup of the players to be patted on the floor, as it went, as if nothing had happened. \'How am I to get through was more than Alice could only see her. She is such a capital one.', '2019-08-18 01:58:42', '2009-07-19 14:38:03', NULL),
(37, 'Theo Hyatt', '1-642-756-7591', 'mylene59@example.net', 2, 'ready for pickup', 'I don\'t like the wind, and the blades of grass, but she had quite forgotten the words.\' So they got settled down again, the cook till his eyes were nearly out of the house, quite.', '2019-08-18 01:58:42', '2000-09-29 07:53:11', NULL),
(39, 'Stacy Heller', '+1-830-874-2147', 'eritchie@example.net', 3, 'closed', 'Alice, \'because I\'m not looking for eggs, as it didn\'t much matter which way I ought to be otherwise than what you mean,\' said Alice. \'Well, then,\' the Cat again, sitting on the.', '2019-08-18 01:58:42', '2009-06-01 12:40:55', NULL),
(40, 'Anastacio Barton DVM', '870-745-5349 x8530', 'homenick.elinor@example.net', 6, 'new', 'Queen, who were lying on their throne when they hit her; and when she next peeped out the proper way of settling all difficulties, great or small. \'Off with their heads!\' and the.', '2019-08-18 01:58:42', '2002-07-13 17:01:21', NULL),
(41, 'Prof. Alexandria Franecki PhD', '+1-724-622-3803', 'sandrine.johns@example.com', 5, 'ready for pickup', 'King, who had been looking at the window.\' \'THAT you won\'t\' thought Alice, \'as all the jelly-fish out of the fact. \'I keep them to be a very fine day!\' said a whiting to a mouse.', '2019-08-18 01:58:42', '1996-07-15 10:20:34', NULL),
(42, 'Dr. Noelia Wolf', '(482) 380-5889', 'aurelia.jacobs@example.org', 3, 'ready for pickup', 'MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Then it wasn\'t trouble enough hatching the eggs,\' said the Dormouse go on for some way of keeping up the little.', '2019-08-18 01:58:42', '2003-04-07 10:48:18', NULL),
(43, 'Domingo Brekke Sr.', '1-427-415-4192 x0328', 'akrajcik@example.net', 6, 'new', 'The poor little Lizard, Bill, was in the distance, and she ran across the field after it, never once considering how in the common way. So she sat still and said \'No, never\').', '2019-08-18 01:58:42', '1991-06-04 09:20:07', NULL),
(44, 'Yazmin Wilkinson Sr.', '1-861-213-3294 x34216', 'doyle.makenzie@example.net', 6, 'closed', 'Cat. \'I don\'t know of any one; so, when the tide rises and sharks are around, His voice has a timid voice at her rather inquisitively, and seemed to be afraid of them!\' \'And who.', '2019-08-18 01:58:42', '2018-08-06 05:02:43', NULL),
(45, 'Mr. David Durgan II', '(934) 493-2313 x83708', 'aric.ziemann@example.org', 6, 'waiting on parts', 'Said he thanked the whiting kindly, but he could go. Alice took up the conversation dropped, and the Hatter went on, \'if you only walk long enough.\' Alice felt a violent blow.', '2019-08-18 01:58:42', '1993-07-12 18:52:59', NULL),
(46, 'Trevion Predovic', '821.236.0559', 'caleb.robel@example.org', 3, 'ready for pickup', 'OURS they had any dispute with the day and night! You see the earth takes twenty-four hours to turn into a pig, my dear,\' said Alice, and she went on. \'Would you like the look of.', '2019-08-18 01:58:42', '2010-05-11 01:23:32', NULL),
(47, 'Dario Bergstrom', '+1.791.318.9222', 'damore.jerome@example.org', 4, 'new', 'Alice panted as she could, and waited till she fancied she heard her voice sounded hoarse and strange, and the beak-- Pray how did you ever saw. How she longed to get through the.', '2019-08-18 01:58:42', '2015-07-31 15:11:59', NULL),
(48, 'Maeve Paucek V', '1-342-826-2256 x089', 'waters.valerie@example.org', 5, 'waiting on parts', 'King, \'or I\'ll have you executed on the hearth and grinning from ear to ear. \'Please would you tell me, Pat, what\'s that in the distance would take the hint; but the Mouse to.', '2019-08-18 01:58:42', '2005-04-25 22:14:26', NULL),
(49, 'Dr. Merlin Douglas Sr.', '1-410-850-1907 x0542', 'rodrigo43@example.com', 3, 'waiting on parts', 'YET,\' she said to herself \'It\'s the Cheshire Cat: now I shall be a person of authority among them, called out, \'First witness!\' The first question of course had to stoop to save.', '2019-08-18 01:58:42', '2017-02-25 05:57:06', NULL),
(50, 'Noemy Mayert', '(630) 717-5048 x17513', 'muriel.schiller@example.net', 4, 'ready for pickup', 'I begin, please your Majesty?\' he asked. \'Begin at the cook took the cauldron of soup off the cake. * * * * \'What a curious croquet-ground in her pocket, and pulled out a history.', '2019-08-18 01:58:42', '1998-03-16 17:47:08', NULL),
(69, 'Aug 2019 Edited', '12446789', 'la@mail', 2, 'ready for pickup', 'Ready for pickup Aug 19 23:15PM', '2019-08-19 12:15:37', '2019-08-19 12:15:54', NULL),
(71, 'Lavannya', '12446789', 'la@mail', 2, 'new', 'Testr 048 Updated', '2019-08-19 13:46:36', '2019-08-20 00:09:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sgdocmanager', 'lalu@gmail.com', NULL, '$2y$10$0kwn0kBRDVN26JYQHsGce.zytf41D7PraMfrfsmHZEipwlylWYgjq', NULL, '2019-08-19 10:17:01', '2019-08-19 10:17:01'),
(2, 'sgdocmanager', 'lavannya.wonders@gmail.com', NULL, '$2y$10$db43yZLn8Si/ZVg4TXp7MeObJnWsLjK4fo7L0SwJYUdd9d8r11T3q', NULL, '2019-08-19 10:25:27', '2019-08-19 10:25:27'),
(3, 'Lavannya', 'lalu123@gmail.com', NULL, '$2y$10$5VXf1OKeCVg6AyMGSBOILe4Nj.KHDwFkiBzr5YYZ5hwspE5qGO8Oa', NULL, '2019-08-19 12:18:19', '2019-08-19 12:18:19'),
(4, 'suresh', 'sureshamk@gmail.com', NULL, '$2y$10$iiLZl6GuvDRdfOCra9wNy.v4HefpTehVS18I2dTwTtuiWpVXvGKDW', NULL, '2019-08-19 12:19:04', '2019-08-19 12:19:04'),
(5, 'Sureka', 'sureka@mail.com', NULL, '$2y$10$1395dXfdrjOiarWmHTva/OQMmQ2UOjkve.h4y8Y/ZFRXizsIynrIu', NULL, '2019-08-19 12:20:03', '2019-08-19 12:20:03'),
(6, 'lavs', 'lavs@mail.com', NULL, '$2y$10$Nc.XGXMGfk9GLOCO03mouuj6.gyTkYk88mrJgf0yVnAhbmmxcSXQa', NULL, '2019-08-19 12:21:33', '2019-08-19 12:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_makes`
--

CREATE TABLE `vehicle_makes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_makes`
--

INSERT INTO `vehicle_makes` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Jeep', '2019-08-18 01:58:39', '2019-08-18 01:58:39'),
(2, 'Ford', '2019-08-18 01:58:40', '2019-08-18 01:58:40'),
(3, 'Dodge', '2019-08-18 02:04:10', '2019-08-18 02:04:10'),
(4, 'Toyota', '2019-08-18 02:04:10', '2019-08-18 02:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_models`
--

CREATE TABLE `vehicle_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_make_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_models`
--

INSERT INTO `vehicle_models` (`id`, `vehicle_make_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Wrangler', '2019-08-18 01:58:40', '2019-08-18 01:58:40'),
(2, 1, 'Gladiator', '2019-08-18 01:58:40', '2019-08-18 01:58:40'),
(3, 1, 'Cherokee', '2019-08-18 01:58:40', '2019-08-18 01:58:40'),
(4, 2, 'Ranger', '2019-08-18 01:58:40', '2019-08-18 01:58:40'),
(5, 2, 'Bronco', '2019-08-18 01:58:40', '2019-08-18 01:58:40'),
(6, 2, 'F-150', '2019-08-18 01:58:40', '2019-08-18 01:58:40'),
(7, 3, 'Ram 1500', '2019-08-18 02:04:15', '2019-08-18 02:04:15'),
(8, 3, 'Ram Rebel', '2019-08-18 02:04:15', '2019-08-18 02:04:15'),
(9, 4, 'Tacoma', '2019-08-18 02:04:15', '2019-08-18 02:04:15'),
(10, 4, 'Tundra', '2019-08-18 02:04:15', '2019-08-18 02:04:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicle_makes`
--
ALTER TABLE `vehicle_makes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_makes`
--
ALTER TABLE `vehicle_makes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
