/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.19 : Database - miniapp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`miniapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `miniapp`;

/*Table structure for table `administrator` */

DROP TABLE IF EXISTS `administrator`;

CREATE TABLE `administrator` (
  `id` varchar(32) NOT NULL,
  `admin_name` varchar(32) NOT NULL,
  `admin_password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `administrator` */

insert  into `administrator`(`id`,`admin_name`,`admin_password`) values ('1','guan','123'),('2','chu','123'),('3','yang','123');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `cover_img` varchar(765) DEFAULT NULL,
  `title` varchar(168) DEFAULT NULL,
  `publisher` varchar(48) DEFAULT NULL,
  `today_news` int DEFAULT NULL,
  `type` varchar(48) DEFAULT NULL,
  `desc` varchar(768) DEFAULT NULL,
  `work_type` varchar(768) DEFAULT NULL,
  `job_desc` text,
  `job_req` text,
  `company_desc` text,
  `contact` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `news` */

insert  into `news`(`id`,`type_id`,`cover_img`,`title`,`publisher`,`today_news`,`type`,`desc`,`work_type`,`job_desc`,`job_req`,`company_desc`,`contact`) values (1,1,'https://s1.ax1x.com/2020/06/13/tvAiNt.th.png','算法专家','美团网',NULL,'全职生','数据结构，算法','可工作三个月以上，每周至少5天','负责申通最核心的几大产品开发工作，包括不局限于:物流详情、包裹跟踪\\控制、动态路由规划、包裹链路仿真等','1.计算机相关专业本科或以上学历，三年以上J2EE项目开发经验;\r\n2.熟悉常用的数据结构和算法;\r\n3.扎实的编程基础，精通java开发语言，必须看过JDK源码;','美团网的全称为“北京三快在线科技有限公司”，是2010年3月4日成立的团购网站。美团网有着“吃喝玩乐全都有”和“美团一次美一次”的服务宣传宗旨。注册于北京市海淀区。2014年美团全年交易额突破460亿元，较2013年增长180%以上，市场份额占比超过60%，比2013年的53%增长了7个百分点。2015年1月18日，美团网CEO王兴表示，美团已经完成7亿美元融资，美团估值达到70亿美元。10月8日，大众点评与美团网宣布合并，美团CEO王兴和大众点评CEO张涛将会同时担任联席CEO和联席董事长。','https://career.meituan.com/job-detail?jobId=23839155'),(2,0,'https://s1.ax1x.com/2020/06/13/tvAE38.th.png','java','阿里',NULL,'实习生','算法，java','一个月，早九晚五','主要java开发，后端开发','1.java开发经验两年\r\n2.了解js，css，html\r\n3.计算机基础知识','阿里巴巴网络技术有限公司（简称：阿里巴巴集团或阿里巴巴）是以曾担任英语教师的马云为首的18人于1999年在浙江省杭州市创立的公司。 [1-2] \r\n阿里巴巴集团经营多项业务，另外也从关联公司的业务和服务中取得经营商业生态系统上的支援。业务和关联公司的业务包括：淘宝网、天猫、聚划算、全球速卖通、阿里巴巴国际交易市场、1688、阿里妈妈、阿里云、蚂蚁金服、菜鸟网络等。',NULL),(3,0,'https://s1.ax1x.com/2020/06/13/tvAnBj.th.png','前端研发工程师','字节跳动',NULL,'实习生','java,研发,前端','薪资:400-500元/天|实习要求:4天/周,3个月以上|转正机会：有','1、负责前端技术选型和开发工作；\r\n2、优化前端功能设计，解决各种浏览器和终端设备的兼容性问题；\r\n3、通过技术手段，提升用户体验并满足高性能要求；\r\n4、通用组件、类库编写，提升开发效率和质量。','1、本科及以上学历，计算机相关专业； \r\n2、精通HTML、CSS、JS，熟悉页面架构和布局，熟悉HTML5/CSS3等常用技术；\r\n3、熟悉常用UI框架（如bootstrap/pure/kendo等);\r\n4、精通JavaScript、AJAX、DOM、jQuery等技术；\r\n5、熟悉NodeJS，熟练使用Grunt、Gulp、Webpack等构建工具；\r\n6、具备MVVM框架开发经验，如React、VueJS、AngularJS等；\r\n7、良好的沟通和团队协作能力、热爱技术、责任心强、能推动技术框架的落地使用。','北京字节跳动科技有限公司成立于2012年，是最早将人工智能应用于移动互联网场景的科技企业之一，是中国北京的一家信息科技公司，地址位于北京市海淀区知春路甲48号。 [1] \r\n公司独立研发的“今日头条”客户端，通过海量信息采集、深度数据挖掘和用户行为分析，为用户智能推荐个性化信息，从而开创了一种全新的新闻阅读模式。','https://job.bytedance.com/society/position/detail/6798460591812905223'),(4,1,'https://s1.ax1x.com/2020/06/13/tvAMEn.th.png','python运维工程师','腾讯公司',2,'全职生','python，网络编程，Linux','实习期一个月，到期可以转正','主要是维护工作和数据分析','1.熟练掌握python\r\n2.有网络开发经验\r\n3.熟悉python常用库','深圳市腾讯计算机系统有限公司成立于1998年11月 [1]  ，由马化腾、张志东、许晨晔、陈一丹、曾李青五位创始人共同创立。 [1]  是中国最大的互联网综合服务提供商之一，也是中国服务用户最多的互联网企业之一。 [2] \r\n腾讯多元化的服务包括：社交和通信服务QQ及微信/WeChat、社交网络平台QQ空间、腾讯游戏旗下QQ游戏平台、门户网站腾讯网、腾讯新闻客户端和网络视频服务腾讯视频等。',NULL),(5,2,'https://s1.ax1x.com/2020/06/13/tvA3CV.th.png','PHP开发工程师','百度大数据',2,'兼职生','PHP，开发','工资待遇好','1、参与产品初期的需求定义；\r\n2、根据需求快速完成开发方案设计；\r\n3、高效完成功能开发；\r\n4、功能自测、代码定期自查、框架及系统完善；\r\n5、参与日常的功能快速迭代，完成开发、自动化测试到产品发布的整个流程。','1、扎实的计算机编程及网络基础，熟悉常用软件设计模式。\r\n2、3年以上PHP开发经验，熟练练使用PHP框架，有一个以上Laravel或Swoft的完整项目的开发经验；\r\n3、熟练使用MySQL数据库，对索引、锁和事务有了解，有并发处理和调优经验；\r\n4、熟练使用Redis、Memcache等常见非关系型数据库；\r\n5、熟练使用HTML、CSS、Javascript、Jquery、Vue等前端技术，有Vue实际使用经验；\r\n6、有支付、OSS、消息通讯等一种以上三方应用的集成经验。','2013年12月06日，中国最具影响、规模最大的大数据领域技术盛会——2013中国大数据技术大会（BDTC 2013）在北京世纪金源大饭店开幕。\r\n百度大数据首席架构师林仕鼎从一个大数据系统架构师的角度，分享了应用驱动、软件定义的数据中心计算。',NULL),(6,2,'https://s1.ax1x.com/2020/06/13/tvAE38.th.png','钉钉高级前端工程师','阿里',1,'兼职生','JavaScript、HTML5、CSS3','三餐免费，加班打车免费，年底十六薪','掌握一门服务端（Node/Java或其他语言）或具备native移动开发能力；','1.熟练掌握前端开发流程，掌握主流浏览器的技术特点；\r\n2.有大型办公软件开发经验者优先；\r\n3.有协同办公软件开发经验者优先；\r\n4.熟练运用JavaScript、HTML5、CSS3等前端技术；熟悉Web新技术及应用，例如Canvas，CSS3动画效果；\r\n5.熟悉模块化、前端编译和构建工具，并深入理解其设计原理，例如ReactJS、AntD等；\r\n6.对编码规范、算法和数据结构、代码质量、性能优化有较高的理解和应用实践；','钉钉（DingTalk）是阿里巴巴集团专为中国企业打造的免费沟通和协同的多端平台 [1]  ，提供PC版，Web版，Mac版和手机版，支持手机和电脑间文件互传。 [2] \r\n钉钉因中国企业而生，帮助中国企业通过系统化的解决方案（微应用），全方位提升中国企业沟通和协同效率。',NULL),(7,0,'https://s1.ax1x.com/2020/06/13/tvAiNt.th.png','前端开发','美团点评',1,'实习生','Javascript，HTML5，CSS3，HTTP等前端相关技术，熟练使用Webpack/Babel/ESLint等前端相关工具；','双休日，早九晚五','1.负责智慧门店、物联网平台Web端功能设计、开发和优化；\r\n2.负责远程协助产品前端功能开发；\r\n3.持续改进产品的质量、性能，提升用户体验。','1.本科及以上学历，2年以上Web前端开发经验，有大型、复杂前端系统搭建和移动端H5开发经验者优先；\r\n2.精通Javascript，HTML5，CSS3，HTTP等前端相关技术，熟练使用Webpack/Babel/ESLint等前端相关工具；\r\n3.精通一种前端框架，如Vue，React，Jquery等；\r\n4.有较好的前后端知识宽度和深度，对前后端合作模式有深入理解；\r\n5.具备良好的自我驱动力和执行力，具备良好的学习能力和团队合作精神。','“美团大众点评”由美团与大众点评于2015年10月8日合并成立，业务结构来看，美团点评拥有到店餐饮、酒店旅游、在线外卖和移动出行四大板块，其中外卖是公司估值最重要的支撑。\r\n2018年9月20日，美团点评登陆港交所，开盘大涨5.7%，报72.9港元，市值4000亿港元（约510亿美元），超越京东。',NULL),(8,0,'https://s1.ax1x.com/2020/06/13/tvAE38.th.png','前端开发','阿里',NULL,'实习生','Javascript，HTML5，CSS3，HTTP等前端相关技术，熟练使用Webpack/Babel/ESLint等前端相关工具；','三餐免费，加班打车免费，年底十六薪','1.负责智慧门店、物联网平台Web端功能设计、开发和优化；\r\n2.负责远程协助产品前端功能开发；\r\n3.持续改进产品的质量、性能，提升用户体验。','1.本科及以上学历，2年以上Web前端开发经验，有大型、复杂前端系统搭建和移动端H5开发经验者优先；\r\n2.精通Javascript，HTML5，CSS3，HTTP等前端相关技术，熟练使用Webpack/Babel/ESLint等前端相关工具；\r\n3.精通一种前端框架，如Vue，React，Jquery等；\r\n4.有较好的前后端知识宽度和深度，对前后端合作模式有深入理解；\r\n5.具备良好的自我驱动力和执行力，具备良好的学习能力和团队合作精神。','阿里巴巴网络技术有限公司（简称：阿里巴巴集团或阿里巴巴）是以曾担任英语教师的马云为首的18人于1999年在浙江省杭州市创立的公司。 [1-2] \r\n阿里巴巴集团经营多项业务，另外也从关联公司的业务和服务中取得经营商业生态系统上的支援。业务和关联公司的业务包括：淘宝网、天猫、聚划算、全球速卖通、阿里巴巴国际交易市场、1688、阿里妈妈、阿里云、蚂蚁金服、菜鸟网络等。',NULL);

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '默认id',
  `title_id` varchar(16) DEFAULT NULL COMMENT '题目id',
  `user_id` varchar(128) DEFAULT NULL COMMENT '用户编号',
  `title_desc` varchar(256) DEFAULT NULL COMMENT '题目描述',
  `title_iead` varchar(256) DEFAULT NULL COMMENT '解题思路',
  `finish_time` date DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `question` */

insert  into `question`(`id`,`title_id`,`user_id`,`title_desc`,`title_iead`,`finish_time`) values (1,'1','001','卜算子','什么？？？','2020-04-30'),(2,'1','002','嘻嘻嘻','咳咳咳','2020-06-13');

/*Table structure for table `resumemodel` */

DROP TABLE IF EXISTS `resumemodel`;

CREATE TABLE `resumemodel` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '简历模板自身id',
  `resume_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '模板类型(经典，简约，)',
  `fit_crowd` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '适合人群(实习生，兼职生，全职生)',
  `model_url` varchar(256) DEFAULT NULL COMMENT '模板url',
  `model_img` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `resumemodel` */

insert  into `resumemodel`(`id`,`resume_type`,`fit_crowd`,`model_url`,`model_img`) values (1,'工程师','2','http://www.yangmoyu.com/resumeFile/file-1.doc','http://www.yangmoyu.com/resumeImage/image-1.png'),(2,'工程师','1','http://www.yangmoyu.com/resumeFile/file-2.doc','http://www.yangmoyu.com/resumeImage/image-2.png'),(3,'工程师','1','http://www.yangmoyu.com/resumeFile/file-3.doc','http://www.yangmoyu.com/resumeImage/image-3.png'),(4,'工程师','0','http://www.yangmoyu.com/resumeFile/file-4.doc','http://www.yangmoyu.com/resumeImage/image-4.png'),(5,'工程师','1','http://www.yangmoyu.com/resumeFile/file-5.doc','http://www.yangmoyu.com/resumeImage/image-5.png'),(6,'工程师','2','http://www.yangmoyu.com/resumeFile/file-6.doc','http://www.yangmoyu.com/resumeImage/image-6.png'),(7,'工程师','0','http://www.yangmoyu.com/resumeFile/file-7.doc','http://www.yangmoyu.com/resumeImage/image-7.png'),(8,'工程师','0','http://www.yangmoyu.com/resumeFile/file-8.doc','http://www.yangmoyu.com/resumeImage/image-8.png'),(9,'工程师','0','http://www.yangmoyu.com/resumeFile/file-9.doc','http://www.yangmoyu.com/resumeImage/image-9.png'),(10,'工程师','0','http://www.yangmoyu.com/resumeFile/file-10.doc','http://www.yangmoyu.com/resumeImage/image-10.png'),(11,'工程师','1','http://www.yangmoyu.com/resumeFile/file-11.doc','http://www.yangmoyu.com/resumeImage/image-11.png'),(12,'工程师','2','http://www.yangmoyu.com/resumeFile/file-12.doc','http://www.yangmoyu.com/resumeImage/image-12.png'),(13,'工程师','0','http://www.yangmoyu.com/resumeFile/file-13.doc','http://www.yangmoyu.com/resumeImage/image-13.png'),(14,'工程师','0','http://www.yangmoyu.com/resumeFile/file-14.doc','http://www.yangmoyu.com/resumeImage/image-14.png'),(15,'运维师','1','http://www.yangmoyu.com/resumeFile/file-15.doc','http://www.yangmoyu.com/resumeImage/image-15.png'),(16,'运维师','1','http://www.yangmoyu.com/resumeFile/file-16.doc','http://www.yangmoyu.com/resumeImage/image-16.png'),(17,'运维师','1','http://www.yangmoyu.com/resumeFile/file-17.doc','http://www.yangmoyu.com/resumeImage/image-17.png'),(18,'运维师','0','http://www.yangmoyu.com/resumeFile/file-18.doc','http://www.yangmoyu.com/resumeImage/image-18.png'),(19,'运维师','1','http://www.yangmoyu.com/resumeFile/file-19.doc','http://www.yangmoyu.com/resumeImage/image-19.png'),(20,'运维师','1','http://www.yangmoyu.com/resumeFile/file-20.doc','http://www.yangmoyu.com/resumeImage/image-20.png'),(21,'运维师','0','http://www.yangmoyu.com/resumeFile/file-21.doc','http://www.yangmoyu.com/resumeImage/image-21.png'),(22,'运维师','2','http://www.yangmoyu.com/resumeFile/file-22.doc','http://www.yangmoyu.com/resumeImage/image-22.png'),(23,'运维师','1','http://www.yangmoyu.com/resumeFile/file-23.doc','http://www.yangmoyu.com/resumeImage/image-23.png'),(24,'运维师','1','http://www.yangmoyu.com/resumeFile/file-24.doc','http://www.yangmoyu.com/resumeImage/image-24.png'),(25,'测试师','1','http://www.yangmoyu.com/resumeFile/file-25.doc','http://www.yangmoyu.com/resumeImage/image-25.png'),(26,'测试师','1','http://www.yangmoyu.com/resumeFile/file-26.doc','http://www.yangmoyu.com/resumeImage/image-26.png'),(27,'设计师','1','http://www.yangmoyu.com/resumeFile/file-27.doc','http://www.yangmoyu.com/resumeImage/image-27.png'),(28,'设计师','2','http://www.yangmoyu.com/resumeFile/file-28.doc','http://www.yangmoyu.com/resumeImage/image-28.png'),(29,'设计师','2','http://www.yangmoyu.com/resumeFile/file-29.doc','http://www.yangmoyu.com/resumeImage/image-29.png'),(30,'设计师','1','http://www.yangmoyu.com/resumeFile/file-30.doc','http://www.yangmoyu.com/resumeImage/image-30.png'),(31,'测试师','0','http://www.yangmoyu.com/resumeFile/file-31.doc','http://www.yangmoyu.com/resumeImage/image-31.png'),(32,'测试师','0','http://www.yangmoyu.com/resumeFile/file-32.doc','http://www.yangmoyu.com/resumeImage/image-32.png'),(33,'产品经理','0','http://www.yangmoyu.com/resumeFile/file-33.doc','http://www.yangmoyu.com/resumeImage/image-33.png'),(34,'产品经理','0','http://www.yangmoyu.com/resumeFile/file-34.doc','http://www.yangmoyu.com/resumeImage/image-34.png'),(35,'产品经理','2','http://www.yangmoyu.com/resumeFile/file-35.doc','http://www.yangmoyu.com/resumeImage/image-35.png'),(36,'产品经理','1','http://www.yangmoyu.com/resumeFile/file-36.doc','http://www.yangmoyu.com/resumeImage/image-36.png');

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `openid` varchar(384) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_name` varchar(384) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_avatar` varchar(384) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sex` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `userinfo` */

insert  into `userinfo`(`id`,`openid`,`user_name`,`user_avatar`,`sex`,`address`) values (1,'001','123','http://ww1.sinaimg.cn/large/007aHwhhly1geatm4n7vjj30dw0dwjrz.jpg','男','183920'),(2,'002','123','http://ww1.sinaimg.cn/large/007aHwhhly1geatm4n7vjj30dw0dwjrz.jpg','女','123'),(3,'003','123','http://ww1.sinaimg.cn/large/007aHwhhly1geatm4n7vjj30dw0dwjrz.jpg','男','9292'),(4,'oSlSR4hQrUi12QScsJrPm1Cij8yA','Frag niemanden.','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJfShSev9t0UndzEGF8icgOfa39jIQbockroQibUQRuCret1uk6uYJRpktf2dJH2hbZrwgVPquS7WeA/132','女','China');

/*Table structure for table `writtentrain` */

DROP TABLE IF EXISTS `writtentrain`;

CREATE TABLE `writtentrain` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自身id',
  `title_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '题目id',
  `title_type` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '题目类型',
  `title_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '题目简单描述',
  `title_url` varchar(768) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '原题url',
  `title_name` varchar(384) DEFAULT NULL,
  `title_time` int DEFAULT NULL,
  `title_exp` text,
  `title_remark` text,
  `title_img` varchar(768) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `writtentrain` */

insert  into `writtentrain`(`id`,`title_id`,`title_type`,`title_desc`,`title_url`,`title_name`,`title_time`,`title_exp`,`title_remark`,`title_img`) values (2,'11','算法','在游戏中，击败魔物后，薯队长获得了N件宝物，接下来得把这些宝物卖给宝物回收员来赚点小钱。这个回收员有个坏毛病，每次卖给他一件宝 物后，之后他就看不上比这件宝物差的宝物了。在这个世界中，衡量宝物的好坏有两个维度，稀有度X和实用度H，回收员在回收一个宝物A 后，下一个宝物的稀有度和实用度都不能低于宝物A。那么薯队长如何制定售卖顺序，才能卖给回收员宝物总个数最多。 ','https://www.nowcoder.com/question/next?pid=23567650&qid=982135&tid=34052780','倒卖战利品',30,'第一行一个正整数N。 接下来N行。每行两个整数分别表示X    和    H X1    H1 X2    H2 … XN    HN\r\n输入限制： 对于70%的数据： \r\n0<N<10^4 \r\n0<Xi<10^6 \r\n0<Hi<10^6 \r\n100%的数据：\r\n0<N<10^6\r\n0<Xi<10^6 \r\n0<Hi<10^6\r\n\r\n输出描述:\r\n一个整数，表示最多可以卖出的宝物数','输入例子1:\r\n\r\n4\r\n3 2\r\n1 1 \r\n1 3\r\n1 2\r\n\r\n\r\n输出例子1:\r\n\r\n3','https://uploadfiles.nowcoder.com/files/20190508/4107856_1557284851132_%E5%B0%8F%E7%BA%A2%E4%B9%A6.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
