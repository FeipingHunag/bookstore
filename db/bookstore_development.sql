-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: bookstore_development
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `page_num` int(11) DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Java编程思想:第3版','','<p>\r\n        从本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书作者有多年的教学经验，对C、C++、Java语言都有独到、深入的理解。因此他非常了解如何教授Java语言这门课程，也非常明白语言教学中的难点及人们的困惑。作者以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念，精心选取“对读者理解Java语言来说最为重要”的部分编写成书。同时又在随书光盘中提供了大量参考材料—这也是本书绝对物超所值的地方。　　随书光盘没有包含本书的源代码（可以从支持网站www.MindView.net免费下载），而是提供了大量作者讲授的讨论课内容及本书的前2版内容。　　本书内容丰富—从Java的基础语法到最高级特性，适合各层次的Java程序员阅读，同时也是高等院校讲授面向对象程序设计语言及Java语言的绝佳教材。\r\n      </p>','thinkinjava.jpg','95.00',756,'Bruce Eckel','机械工业出版社','2006-05-05 00:00:00','2011-04-30 10:08:59','2011-05-04 15:36:21',1),(2,'Effective Java中文版','','<p>\r\n       本书介绍了在Java编程中57条极具实用价值的经验规则，这些经验规则涵盖了大多数开发人员每天所面临的问题的解决方案。通过对Java平台设计专家所使用的技术的全面描述，揭示了应该做什么，不应该做什么才能产生清晰、健壮的高效的代码。\r\n       </p>\r\n　　<p>本书中的每条规则都以简短、独立的小文章形式出现，这些小文章包含了详细而精确的建议，以及对语言中许多细微之处的深入分析，并通过例子代码加以进一步说明。贯穿全书的是通用的语言用法的设计模式，以及一些具有启发意义的技巧的技术。\r\n      </p>','effectivejava.jpg','39.00',225,'（美）Joshua Bloch','机械工业出版社','2003-01-01 00:00:00','2011-04-30 10:08:59','2011-05-04 15:37:45',1),(3,'C++ Primer中文版','一本久负盛名的C++经典教程','<p>\r\n        本书是久负盛名的C++经典教程，其内容是C++大师Stanley B. Lippman丰富的实践经验和C++标准委员会原负责人Josée Lajoie对C++标准深入理解的完美结合，已经帮助全球无数程序员学会了C++。本版对前一版进行了彻底的修订，内容经过了重新组织，更加入了C++ 先驱Barbara E. Moo在C++教学方面的真知灼见。既显著改善了可读性，又充分体现了C++语言的最新进展和当前的业界最佳实践。书中不但新增大量教学辅助内容，用于强调重要的知识点，提醒常见的错误，推荐优秀的编程实践，给出使用提示，还包含大量来自实战的示例和习题。对C++基本概念和技术全面而且权威的阐述，对现代C++编程风格的强调，使本书成为C++初学者的最佳指南；对于中高级程序员，本书也是不可或缺的参考书。本书的前言阐述了 第4版和前一版的不同之处。\r\n      </p>','primer.jpg','99.00',900,'Stanley B.Lippman','人民邮电出版社','2006-07-11 00:00:00','2011-04-30 10:08:59','2011-05-04 15:39:11',3),(4,'C++ 程序设计','C++程序设计','<p>\r\n        　C++是一种实用的程序设计语言，本书系统地介绍了C++语言，第1章主要讨论C++的语言特点和编程环境，第2章-第7章主要介绍C++语言的表达式及运算、数据类型、语句、函数、指针、程序结构和用C++语言进行程序设计的基本方法。第8章-第11章主要介绍C++语言的类、对象和类的继承、重载、多态性等机制。</p>\r\n　　 <p>本书概念定义准确、结构层次分明、内容循序渐进、叙述深入浅出、分析问题透彻，适合于计算机专业2年制和3年制高职、大专教材，也可作为非计算机专业本科教材，还可作为自学者和计算机应用工程技术人员选用的参考书。\r\n      </p>','cprogramming.jpg','32.00',324,' 王准亭','机械工业出版社','2011-04-30 11:58:00','2011-04-30 10:08:59','2011-05-04 15:39:31',3),(5,'Programming Ruby 中文版','','<p>\r\n        《Programming Rudy》(中文版)(第2版)适合各种程度的Ruby程序员，无论新手还是老兵，都会从中得到巨大的帮助。\r\n      </p>','programmingruby.jpg','95.00',830,'托马斯','电子工业出版社','2011-05-04 15:39:00','2011-04-30 10:08:59','2011-05-04 15:40:01',2),(6,'应用Rails进行敏捷Web开发','','　　<p>这是第一本关于Ruby on Rails的著作。</p>\r\n　　<p>全书主要内容分为两大部分。在“构建应用程序”部分中，读者将看到一个完整的“在线购书网站” 示例。在演示的过程中，作者真实地再现了一个完整的迭代式开发过程，让读者亲身体验实际应用开发中遇到的各种问题、以及Rails如何有效解决这些问题。在随后的“Rails框架”部分中，作者深入介绍了Rails框架的各个组成部分。尤为值得一提的是本部分的后几章：作者先后介绍了Web 2.0、Web Service等流行技术在Rails中的支持，然后又凭借丰富的实践经验介绍了Rails在安全性、伸缩性、部署等方面的常见问题和解决方案。</p>\r\n　　<p>除了上述两部分之外，对Rails缺乏了解的读者应该首先阅读“起步”部分，通过一个最简单的示例应用感性了解这个时下热门的web框架。不熟悉Ruby的读者应该阅读“附录”部分中的“Ruby简介”，以便了解Ruby的基本语法与常见用法。整体而言，全书既有直观的实例，又有深入的分析，同时还涵盖了 web应用开发中各方面的相关知识，堪称一部深入浅出的佳作。　　\r\n      </p>','awdrails.jpg','65.00',558,'Dave Thomas, David Hansson','电子工业出版社','2011-05-18 09:07:00','2011-04-30 10:08:59','2011-05-18 09:08:13',2),(7,'Agile Software Development','The Cooperative Game','<p>\r\n　　　　Dr. Cockburn was named in 2007 as one of \"The All-Time Top 150 i-Technology Heroes\". He is an internationally renowned project witchdoctor and IT strategist, a several-time winner of the Jolt & Productivity book awards. He is best known for describing Software development as a cooperative game, for co-authoring the Agile Development Manifesto, for defining Use Cases and for developing the Initial Response Technique massage form. 。　　\r\n      </p>','agilesoft.jpg','54.99',504,'Alistair Cockburn','Addison-Wesley Professional','2006-10-29 00:00:00','2011-04-30 10:09:00','2011-05-18 09:09:16',5),(8,'解析极限编程(第二版)(中英文对照)','拥抱变化','<p>\r\n　　　本书是经典之作。作者在书中提出了一些想法，诸如让开发者为自己的代码写自动化测试，让整个团队每周做计划，因为这些当时很激进的改进小团队开发的想法，这本书获了奖。五年来许多东西改变了，完全重写的第二版将XP的范围扩展到任何大小的团队，建议了基于以下几点的持续改进流程：与卓越软件开发一致的五个核心价值观：11个原则将这些价值观付诸行动；13个基本实践和11个扩展实践帮助你推动开发超越当前的业务和技术决策；通过建立富有信息的共享工作空间来改进团队协作。 无论你是有一个已经和客户紧密联系在一起的小团队，还是有一个在大组织或跨国组织中的大团队，你都会在中发现如下的思想去挑战、启发和鼓励你及你的团队成员去切实改进你们的软件开发。  　\r\n      </p>','extreme.jpg','39.00',301,'贝克','电子工业出版社','2011-05-18 09:09:00','2011-04-30 10:09:00','2011-05-18 09:09:50',5),(9,'网页设计创意书','','<p>\r\n　　　本书是经典之作。作者在书中提出了一些想法，诸如让开发者为自己的代码写自动化测试，让整个团队每周做计划，因为这些当时很激进的改进小团队开发的想法，这本书获了奖。五年来许多东西改变了，完全重写的第二版将XP的范围扩展到任何大小的团队，建议了基于以下几点的持续改进流程：与卓越软件开发一致的五个核心价值观：11个原则将这些价值观付诸行动；13个基本实践和11个扩展实践帮助你推动开发超越当前的业务和技术决策；通过建立富有信息的共享工作空间来改进团队协作。 无论你是有一个已经和客户紧密联系在一起的小团队，还是有一个在大组织或跨国组织中的大团队，你都会在中发现如下的思想去挑战、启发和鼓励你及你的团队成员去切实改进你们的软件开发。  　\r\n      </p>','webdesign.jpg','45.00',250,'Patrick McNeil','人民邮电出版社','2010-10-15 00:00:00','2011-04-30 10:09:00','2011-05-18 09:10:12',4),(11,'CSS禅意花园','','<p>\r\n　　　这本书的作者是世界著名的网站设计师，书中的范例来自网站设计领域最著名的网站——CSS Zen Garden（CSS禅意花园）。全书分为两个主要部分。第1章为第一部分，讨论网站“CSS禅意花同”及其最基本的主题，包含正确的标记结构和灵活性规划等。第二部分包括6章，占据了书中的大部分篇幅。</p>\r\n　　<p>每章剖析“CSS禅意花园”收录的6件设计作品，这些作品围绕一个主要的设计概念展开，如文字的使用等。通过探索36件设计作品面临的挑战和解决的问题，读者将洞悉主要的Web设计原则以及它们运用的CSS布局技巧，理解CSS设计的精髓，恰当地处理图形和字体来创建界面优美、性能优良且具有强大生命力的网站。\r\n      </p>','cssgarden.jpg','49.00',273,' [美] Dave Shea/Molly E. Holzschlag','人民邮电出版社','2007-06-15 00:00:00','2011-04-30 10:09:00','2011-05-18 09:10:53',4);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,'2011-05-11 07:05:42','2011-05-11 07:05:42'),(3,'2011-05-13 11:01:55','2011-05-13 11:01:55'),(4,'2011-05-23 10:02:25','2011-05-23 10:02:25'),(5,'2011-05-23 15:01:08','2011-05-23 15:01:08'),(6,'2011-05-23 16:24:29','2011-05-23 16:24:29'),(7,'2011-05-24 04:25:27','2011-05-24 04:25:27'),(8,'2011-05-24 07:00:22','2011-05-24 07:00:22');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Java','有关Java的一些图书','2011-04-30 10:08:59','2011-04-30 10:08:59'),(2,'Ruby','有关Ruby的一些图书','2011-04-30 10:08:59','2011-04-30 10:08:59'),(3,'C++','有关C++的一些图书','2011-04-30 10:08:59','2011-04-30 10:08:59'),(4,'网页设计','有关网页设计的一些图书','2011-04-30 10:08:59','2011-04-30 10:08:59'),(5,'敏捷开发','有关敏捷开发的一些图书','2011-04-30 10:08:59','2011-04-30 10:08:59');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) DEFAULT '0',
  `attempts` int(11) DEFAULT '0',
  `handler` text COLLATE utf8_unicode_ci,
  `last_error` text COLLATE utf8_unicode_ci,
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delayed_jobs_priority` (`priority`,`run_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
INSERT INTO `delayed_jobs` VALUES (1,0,0,'--- !ruby/struct:NewsletterJob \norder: !ruby/ActiveRecord:Order \n  attributes: \n    address: !binary |\n      55qH5Zu+5bKt\n\n    name: !binary |\n      6buE6aOe5bmz\n\n    created_at: &id001 2011-05-20 14:35:49.257477 Z\n    member_id: 1\n    updated_at: *id001\n    pay_type: !binary |\n      572R5LiK6ZO26KGM\n\n    id: 10\n    status: !binary |\n      5pyq5aSE55CG\n\n    email: huang900107@163.com\n',NULL,'2011-05-20 14:35:49',NULL,NULL,NULL,'2011-05-20 14:35:49','2011-05-20 14:35:49'),(2,0,0,'--- !ruby/struct:NewsletterJob \norder: !ruby/ActiveRecord:Order \n  attributes: \n    address: dddd\n    name: ddd\n    created_at: &id001 2011-05-23 10:21:54.622762 Z\n    member_id: 1\n    updated_at: *id001\n    pay_type: !binary |\n      5pSv56Wo\n\n    id: 11\n    status: !binary |\n      5pyq5aSE55CG\n\n    email: huang900107@163.com\n',NULL,'2011-05-23 10:21:54',NULL,NULL,NULL,'2011-05-23 10:21:54','2011-05-23 10:21:54'),(3,0,0,'--- !ruby/struct:NewsletterJob \norder: !ruby/ActiveRecord:Order \n  attributes: \n    address: fjksldafjklsdfjlksadjfklsd\n    name: hack\n    created_at: &id001 2011-05-23 11:10:38.776107 Z\n    member_id: 1\n    updated_at: *id001\n    pay_type: !binary |\n      572R5LiK6ZO26KGM\n\n    id: 12\n    status: !binary |\n      5pyq5aSE55CG\n\n    email: huang900107@163.com\n',NULL,'2011-05-23 11:10:39',NULL,NULL,NULL,'2011-05-23 11:10:39','2011-05-23 11:10:39');
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line_items`
--

DROP TABLE IF EXISTS `line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line_items`
--

LOCK TABLES `line_items` WRITE;
/*!40000 ALTER TABLE `line_items` DISABLE KEYS */;
INSERT INTO `line_items` VALUES (1,2,NULL,'2011-05-07 02:52:22','2011-05-07 04:36:40',1,1),(2,6,NULL,'2011-05-07 02:59:32','2011-05-07 04:36:41',1,1),(3,7,NULL,'2011-05-07 05:25:59','2011-05-07 05:26:44',1,2),(4,6,NULL,'2011-05-07 05:26:06','2011-05-07 05:26:44',1,2),(5,9,NULL,'2011-05-07 05:26:11','2011-05-07 05:26:44',1,2),(6,5,NULL,'2011-05-07 05:26:15','2011-05-07 05:26:44',1,2),(7,4,NULL,'2011-05-07 05:34:16','2011-05-07 05:34:46',1,4),(8,5,NULL,'2011-05-07 05:34:22','2011-05-07 05:34:46',1,4),(9,2,NULL,'2011-05-07 05:34:27','2011-05-07 05:34:46',1,4),(19,5,3,'2011-05-13 11:01:55','2011-05-13 11:01:55',1,NULL),(20,5,NULL,'2011-05-20 14:04:45','2011-05-20 14:35:49',1,10),(21,1,NULL,'2011-05-20 14:30:53','2011-05-20 14:35:49',1,10),(22,1,4,'2011-05-23 10:02:25','2011-05-23 10:02:25',1,NULL),(23,1,NULL,'2011-05-23 10:19:24','2011-05-23 10:21:54',1,11),(24,2,NULL,'2011-05-23 11:08:15','2011-05-23 11:10:38',2,12),(25,6,NULL,'2011-05-23 11:10:21','2011-05-23 11:10:38',1,12),(26,3,5,'2011-05-23 15:01:08','2011-05-23 15:01:08',1,NULL),(27,1,5,'2011-05-23 15:05:37','2011-05-23 15:18:35',3,NULL),(28,2,6,'2011-05-23 16:24:30','2011-05-23 16:24:30',1,NULL),(29,1,7,'2011-05-24 04:25:28','2011-05-24 04:30:28',2,NULL),(30,2,7,'2011-05-24 04:25:33','2011-05-24 04:25:33',1,NULL),(31,7,8,'2011-05-24 07:00:22','2011-05-24 07:00:22',1,NULL),(32,1,8,'2011-05-24 07:12:06','2011-05-24 07:37:43',3,NULL);
/*!40000 ALTER TABLE `line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_members_on_email` (`email`),
  UNIQUE KEY `index_members_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'huang900107@163.com','$2a$10$CkE/0/cSB4yxXHgtG4/w0uE5Xj83t9XWgYiuUL5btDB51mSa2hdAq',NULL,NULL,10,'2011-05-23 15:59:18','2011-05-23 14:36:38','127.0.0.1','127.0.0.1','2011-05-20 10:28:41','2011-05-23 15:59:18');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'黄飞平','湖南攸县皇图岭','huang900107@163.com','支票','2011-05-07 04:36:40','2011-05-20 13:22:06','未处理',NULL),(2,'黄飞平','yiyiy','huang900107@163.com','网上银行','2011-05-07 05:26:44','2011-05-20 13:22:06','未处理',NULL),(3,'黄飞平','yiyiy','huang900107@163.com','网上银行','2011-05-07 05:29:49','2011-05-20 13:22:06','未处理',NULL),(4,'hhhh','hhhjkhkj','huang900107@163.com','支票','2011-05-07 05:34:46','2011-05-20 13:22:06','未处理',NULL),(10,'黄飞平','皇图岭','huang900107@163.com','网上银行','2011-05-20 14:35:49','2011-05-20 14:48:39','未处理',NULL),(11,'ddd','dddd','huang900107@163.com','支票','2011-05-23 10:21:54','2011-05-23 10:23:03','已发货',1),(12,'hack','fjksldafjklsdfjlksadjfklsd','huang900107@163.com','网上银行','2011-05-23 11:10:38','2011-05-23 11:10:38','未处理',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20110425121445'),('20110430081216'),('20110430081440'),('20110505133627'),('20110505134157'),('20110505150608'),('20110505152755'),('20110507023823'),('20110507030128'),('20110507065113'),('20110507074609'),('20110515021648'),('20110515034609'),('20110518091352'),('20110520151030');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hashed_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','ebd4c749ba2791a45e5dff989b7d5f06ea5ee317ea73918809e747e2d062b531','835606600.325932310995558','2011-05-07 09:57:50','2011-05-07 09:57:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-05-24 17:01:46
