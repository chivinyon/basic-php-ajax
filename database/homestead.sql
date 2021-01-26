/*
 Navicat Premium Data Transfer

 Source Server         : Vagrant_192.168.33.10
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : homestead

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 26/01/2021 11:19:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for affiliates
-- ----------------------------
DROP TABLE IF EXISTS `affiliates`;
CREATE TABLE `affiliates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `affective_start` datetime DEFAULT NULL,
  `affective_end` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of affiliates
-- ----------------------------
BEGIN;
INSERT INTO `affiliates` VALUES (1, 'Apple', 1, '<p>Apple Launching Events</p>', '2020-11-27 14:53:50', NULL, '2020-11-01 00:00:00', '2020-11-30 00:00:00', '2020-11-27 14:53:50', NULL);
INSERT INTO `affiliates` VALUES (4, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (5, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (6, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (7, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (8, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (9, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (10, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (11, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (12, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (13, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (14, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (15, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (16, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
INSERT INTO `affiliates` VALUES (17, 'OPPO', 1, 'Testing', '2021-01-26 09:07:36', NULL, '2021-01-26 09:07:39', '2021-01-26 09:07:44', '2021-01-26 09:07:47', NULL);
COMMIT;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `published_at` date NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_published_at_slug_index` (`published_at`,`slug`),
  KEY `articles_category_id_foreign` (`category_id`),
  CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
BEGIN;
INSERT INTO `articles` VALUES (1, 4, '2012-11-29', 'non-corporis-esse-labore', 'Non Corporis Esse Labore', 'Ipsa similique accusantium ut nihil.', 'Eligendi vel rem voluptatem iure voluptatibus tempora. Quaerat consequuntur nisi reiciendis esse iure reiciendis. Tenetur et perspiciatis qui nostrum maxime eaque facilis sed. Ipsum ipsa optio et debitis esse eaque exercitationem suscipit.<br/><br/>Incidunt nulla laboriosam velit. Ex eos tempore laboriosam. Nesciunt tenetur ea architecto vel consequatur et itaque porro.<br/><br/>Ducimus non aperiam impedit dicta molestiae eligendi omnis error. Nostrum rerum et veniam sapiente et quisquam ab. Quis aut aliquam nisi rerum error aut consequatur. Aut quia nulla tempore consequatur.<br/><br/>Sint omnis nihil labore voluptas. Laboriosam cupiditate enim fugiat necessitatibus quo quia sapiente. Sapiente vel eligendi necessitatibus. Officiis deserunt ea sequi rerum unde.<br/><br/>A illo necessitatibus repellendus dolorem quis. Qui rerum aut quaerat asperiores. Ipsum vero quidem quia repellat esse.<br/><br/>Et et hic velit quasi aut debitis repellendus. Eos ut enim alias id eius eos. Dolorum omnis vel optio dolor provident.<br/><br/>Tenetur eos pariatur illo ad beatae quia magni et. Architecto ut dolores voluptatem voluptates occaecati cum. Asperiores nesciunt ut rerum corporis.<br/><br/>A voluptatem aut dolor rem libero eos delectus. Ut tempora corrupti omnis. Numquam numquam omnis voluptas aperiam non et consectetur.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (2, 5, '2004-01-04', 'consequatur-accusantium-rem-eaque', 'Consequatur Accusantium Rem Eaque', 'Id fugiat aliquid pariatur ipsum qui non.', 'Esse quam ab consectetur repudiandae quas quidem. Enim nihil autem nihil cupiditate incidunt et reprehenderit a. Beatae aut consectetur ex iure aut consequatur et.<br/><br/>In voluptatem repellat delectus quis autem. Et magnam ut dolor et. Nobis dolorem accusantium id dolore voluptatem unde quis.<br/><br/>Est et eos voluptatem. Doloribus ipsam quia est nostrum impedit. Repudiandae animi optio in aut velit velit aut eligendi. Accusamus ex dicta ducimus consectetur et.<br/><br/>Et quisquam vel tenetur saepe omnis reiciendis eaque voluptas. Quaerat qui deleniti quis quo maiores. Vero minus harum voluptate facilis nemo maiores libero. Aut soluta repellat animi neque repudiandae qui distinctio et.<br/><br/>Tempora deserunt et est non. Nihil harum aliquid sunt quia dignissimos est. Ut sunt quia ex aut expedita. Eaque officia distinctio ut alias mollitia vel ab debitis.<br/><br/>Dolorem deserunt eligendi distinctio et. Id unde saepe placeat ullam. Aliquid pariatur ea nisi molestiae delectus. Modi ipsum omnis nihil et eveniet nemo.<br/><br/>Fugiat molestias ducimus suscipit possimus odit. Amet odio deleniti voluptatem eveniet.<br/><br/>Vel maiores iusto qui qui. Nemo repellat officia iure rerum aperiam molestias. Maiores a sunt qui culpa. Iusto amet tenetur reiciendis repellendus necessitatibus.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (3, 4, '1971-09-13', 'magnam-et-soluta-cum', 'Magnam Et Soluta Cum', 'Assumenda blanditiis sit natus.', 'Facere ratione enim rerum quasi quia ea. Maiores omnis quaerat non amet autem quo quo saepe. Ut dolores voluptatem consectetur autem libero. Quos ea ratione impedit qui ut explicabo impedit.<br/><br/>Voluptatem placeat sed sequi id. Explicabo quia eius quae et et. Sed eligendi voluptatem ut voluptas sit et. Voluptatem laboriosam eligendi ex natus id esse et.<br/><br/>Voluptates iste et deleniti numquam vel qui nobis. Ipsum sunt nobis est et at tempora voluptates. In aut libero officiis deleniti a deleniti id aut. Dolorem veniam delectus ad.<br/><br/>Placeat ad commodi amet aut nisi ea et. Facilis quisquam ut non ullam veritatis ut dolorem. Cumque aut ratione dolorum eos. Rerum rem optio ipsa inventore iure occaecati illo.<br/><br/>Et eum aut eligendi deserunt quis exercitationem. Nobis suscipit minus asperiores culpa ut. Alias cum pariatur at dolores similique harum non. Quisquam quaerat id unde voluptatum culpa dolorem impedit.<br/><br/>Facilis sit id est facilis repellat. Nam voluptatibus corporis aut hic et. Et earum explicabo ut cumque error ut. Ipsa modi quos omnis veritatis molestias.<br/><br/>Repellendus quia similique veritatis qui a minus. Et rerum et quasi. Voluptatem unde quisquam et. Repellendus eum incidunt nam numquam porro voluptatem in.<br/><br/>Quos praesentium qui sit quo voluptas incidunt. Tempore est quas asperiores odit sunt et numquam. Aut aliquid quisquam et dignissimos veniam officia quo et. Impedit dignissimos et minus libero id quasi.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (4, 5, '2017-02-01', 'alias-porro-accusantium-maiores', 'Alias Porro Accusantium Maiores', 'Accusamus dolore dolor sint qui illo.', 'Quidem corporis nesciunt natus molestiae doloremque architecto tempora. Similique in animi tenetur voluptates ipsam. Aut dolorum velit dolores est qui. Quia sint sunt commodi voluptas.<br/><br/>Animi natus rerum et est. Harum tempora quasi rerum reprehenderit atque veritatis sit. Ratione aliquam soluta enim maxime aperiam. Accusantium porro optio mollitia ratione vero saepe.<br/><br/>Dolores quis eius et vitae voluptatem rerum architecto vel. Itaque quibusdam et id fugiat quidem ut omnis. Excepturi sequi impedit deserunt ducimus error voluptates. Similique aut non et numquam asperiores magnam voluptas.<br/><br/>Earum minus quia explicabo. Quis omnis rerum incidunt voluptates minus in. Enim magni nisi reprehenderit.<br/><br/>Recusandae nisi rerum et amet. Porro quam saepe doloribus omnis numquam neque. Dolores quia ut animi nemo dolores.<br/><br/>Architecto deserunt esse quas provident hic. Quia laborum accusantium perferendis delectus velit rerum. Et vel nobis molestias facilis sit enim. Sapiente porro cupiditate blanditiis vero consequuntur ducimus.<br/><br/>Soluta quia ut dicta. Mollitia accusantium a molestiae rerum animi ad esse. Ipsam facere eum aliquid ad.<br/><br/>Ut ipsa asperiores at eveniet quo. Ut ut voluptates itaque error. Hic enim dolore qui qui.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (5, 4, '2006-04-12', 'sequi-hic-asperiores-libero', 'Sequi Hic Asperiores Libero', 'Dolor voluptatum similique maxime optio.', 'Nihil qui est dicta at a quo. Vero saepe omnis ratione nisi. Hic omnis libero velit qui hic eos.<br/><br/>Ut cumque ipsam alias et est fuga. Rem itaque optio ducimus adipisci non a explicabo in. Et non est a qui quo asperiores. Ab aut ut provident non vero numquam quo.<br/><br/>Aliquid aut sed cumque voluptate quisquam eum suscipit. Autem veritatis non laudantium aliquam quia. Vero at iste nam expedita suscipit maiores dolores aspernatur. Vel suscipit pariatur aut quae ipsum soluta corporis.<br/><br/>Ex culpa praesentium sed possimus esse rerum. Provident et quo deserunt doloremque consequuntur. Vel est eum expedita necessitatibus dolorem natus. Distinctio aliquam ab quidem id ut non.<br/><br/>Dolore molestias vel facilis dolores. Fugiat voluptatem repellat maiores eos iste non. Consequatur consequatur repellat enim expedita.<br/><br/>Commodi optio labore fuga odio natus eligendi. Saepe excepturi cupiditate debitis eligendi dolorem. Qui quaerat ut atque excepturi quasi ab.<br/><br/>Error odio sunt non et. Sit et odio illo omnis occaecati. Id aliquam animi recusandae qui quia molestias.<br/><br/>Quo debitis numquam quisquam optio sequi. Illum optio sunt consequuntur corporis numquam illum rerum sit. Laudantium doloremque tenetur vitae modi accusantium explicabo.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (6, 1, '2000-12-22', 'et-incidunt-earum-et', 'Et Incidunt Earum Et', 'Fugit explicabo tenetur consequatur est ut.', 'Itaque eveniet illum dolor quasi et. Vel voluptate ea neque maxime. Est aut ut cupiditate assumenda consequatur reprehenderit. Possimus aspernatur occaecati soluta voluptatem veniam.<br/><br/>Praesentium at in impedit non repellat reiciendis fugiat. Est ut doloremque incidunt et quis qui. Aliquam mollitia corrupti distinctio placeat nihil veritatis.<br/><br/>Sit eos at aut id cumque quo. Libero possimus quas possimus id voluptas et. Optio non officia totam quidem dolore rerum. Et maiores vero ducimus voluptatem ea placeat.<br/><br/>Ut pariatur quasi architecto ut eveniet qui error. Porro itaque omnis magni aut voluptatem nihil. Ducimus dicta assumenda libero suscipit qui.<br/><br/>Doloribus eaque enim voluptas corrupti in. Asperiores est cumque et adipisci ipsa. Qui exercitationem qui dolores consequuntur et ipsam non. Delectus perferendis iure vel quis magni est magni.<br/><br/>Maiores ipsum numquam nesciunt ut recusandae qui. Eum omnis soluta sit eum modi officiis eius. Delectus nesciunt corporis minus iusto optio rerum velit. Corporis nostrum et qui aut.<br/><br/>Doloribus sint et optio illo. Laboriosam qui sed sit in vel sunt et. Accusamus ut harum aut veniam.<br/><br/>Dolor temporibus natus voluptatem quia molestias eum exercitationem. Molestiae tenetur occaecati quod incidunt ipsam. Laboriosam praesentium deleniti perferendis.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (7, 1, '1970-03-22', 'nam-quod-alias-ut', 'Nam Quod Alias Ut', 'Qui eum quia qui qui minima.', 'Eius amet atque voluptatem occaecati architecto sunt aut. Reiciendis non labore laborum iusto dolorem fuga est. Quas aliquid consequatur culpa explicabo. Voluptate sit soluta sit cupiditate voluptatem provident.<br/><br/>Quia voluptatem aut quis id officia. Saepe consectetur sit autem eligendi animi aut. Nulla molestiae nam velit nihil consequatur eos itaque.<br/><br/>Vel occaecati officia labore voluptatem et et quo. Enim ut dolor et culpa officia. Tenetur blanditiis quo fuga quam. Et vero voluptas autem consequatur.<br/><br/>Atque ullam optio ipsam veritatis illo unde. Ut quis quam in similique facere aperiam. Et at earum hic est eligendi.<br/><br/>Ipsam dignissimos natus nihil dolorem magni. Placeat neque suscipit id animi. Voluptas assumenda delectus vero qui sint vero nulla. Quas hic saepe eligendi eaque voluptatem sit incidunt enim.<br/><br/>Officia ipsam officia quas. Eos nihil qui pariatur quae voluptates officiis accusamus. Dicta rerum quis fugit qui maxime molestiae repellat.<br/><br/>Veniam velit aut aut nihil. Exercitationem quidem aut sunt fugit. Laudantium sit nemo aut ratione in.<br/><br/>Debitis quaerat aut nisi quaerat architecto veritatis. A corrupti fuga labore occaecati velit sit quia.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (8, 4, '2018-04-06', 'consequatur-amet-sed-doloribus', 'Consequatur Amet Sed Doloribus', 'Error voluptas pariatur ratione.', 'Labore reprehenderit quidem iusto aut. Et porro aliquam veniam velit voluptate aliquid adipisci error. Repudiandae neque doloribus illo odit totam. Culpa temporibus cum deserunt.<br/><br/>Ipsum a itaque dolores nobis fuga. Nulla aliquid nihil quia nam dolorem sapiente voluptatem. Velit omnis dolorem nihil.<br/><br/>Recusandae et voluptatem laudantium accusamus. Exercitationem et reiciendis aspernatur magnam cumque deleniti. Molestias ratione dolorem omnis eos eaque.<br/><br/>Exercitationem eum aliquid sequi veniam ut. Atque voluptate quam libero aut. Et quia nulla provident unde et earum ipsam.<br/><br/>Et aut soluta qui aspernatur illum omnis qui. Nisi architecto pariatur quo rem.<br/><br/>Suscipit occaecati beatae in consequatur quia dolorem qui. Quia nostrum laboriosam labore sapiente. Est molestiae libero in quisquam.<br/><br/>Ut deleniti neque vitae ea. Similique quis ex autem libero veniam. Impedit qui inventore totam. Atque nobis cumque maxime eligendi. Et rerum quis ut maxime sit distinctio.<br/><br/>Sunt adipisci sit quaerat dicta. Voluptas ipsum impedit sint qui et. Maiores fugit aut quisquam quos velit. Magni distinctio aut vero.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (9, 1, '1980-06-12', 'voluptas-culpa-corrupti-ipsa', 'Voluptas Culpa Corrupti Ipsa', 'Facere dicta aut voluptatibus et sit dolore.', 'Ad neque dolore adipisci tenetur. Porro sapiente nostrum tempora. Nisi harum placeat et perspiciatis consequatur dolores nostrum animi. Explicabo animi velit porro nihil quasi.<br/><br/>Nemo quis aperiam suscipit quia et. Ratione et nostrum laboriosam placeat.<br/><br/>Quasi incidunt voluptatem qui est magnam incidunt voluptas. Porro enim omnis quae recusandae ipsam nesciunt. Voluptatibus quos qui id facere inventore omnis a.<br/><br/>Saepe consectetur expedita aperiam unde placeat consequatur possimus. Qui distinctio vel qui molestias. Voluptatem aut nemo mollitia quis nemo est.<br/><br/>Recusandae similique corrupti doloremque nemo. Ad ea et magnam ducimus reprehenderit.<br/><br/>Velit quas eos quo optio aut error. Et impedit quibusdam dignissimos perferendis aut molestiae. Sint aut ducimus saepe ut sit doloribus voluptatem quia.<br/><br/>Facere repellat cupiditate quam quam itaque. Rerum et pariatur rem sint corporis ratione quia voluptatem. Dolores quia dolorum sed modi illo optio accusamus. Quis est facere perferendis quis earum voluptatem.<br/><br/>Tempore nesciunt ut qui aut. Molestiae fugiat quam debitis culpa atque unde maiores voluptatem. Aliquam ipsum repellat est eum fuga molestiae quas. Incidunt necessitatibus eveniet repellat dolor ut.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (10, 5, '1988-03-25', 'recusandae-est-ab-et', 'Recusandae Est Ab Et', 'Voluptatibus est voluptas soluta voluptatum.', 'Ut molestiae aperiam dolorum consequuntur quia at autem. Dolor totam tempore ratione. Maxime rem iure iure repudiandae blanditiis omnis. Distinctio quas et neque excepturi neque omnis ullam.<br/><br/>Asperiores ipsam distinctio ducimus maxime minus consequatur et qui. In eum et optio et. Libero voluptatum et maiores. Vel eaque animi veniam eveniet. Praesentium architecto esse dolorem soluta.<br/><br/>Et sed omnis corporis blanditiis in consectetur. Ea sunt voluptates a et. Debitis earum aperiam fugit sit minima. Voluptatem quia perspiciatis consequatur totam natus.<br/><br/>Sed tempora amet praesentium iusto blanditiis tempora. Hic sed ut dolorum perspiciatis qui possimus animi.<br/><br/>Officiis excepturi quae nisi dicta sit sequi. Omnis non repudiandae a consequatur deleniti sint ea est.<br/><br/>Distinctio tempora voluptatem totam fugit. Quis et eum ex mollitia voluptas alias fugiat. Vel qui autem eaque consequatur similique possimus animi. Et sed sit molestiae consectetur itaque voluptas.<br/><br/>Et neque aspernatur et fugiat fugit expedita. Et modi sed quo rerum velit rem. Optio quos non illo accusamus.<br/><br/>Laudantium neque repellat et voluptate sed officia praesentium. Explicabo laborum accusantium dolorem sit debitis est molestias. Architecto itaque similique quisquam corrupti dolores. Ut veritatis aut vel quod tempore doloribus.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (11, 2, '1995-06-19', 'et-in-fuga-dolorem', 'Et In Fuga Dolorem', 'Architecto voluptatibus repudiandae facere quia.', 'Aut molestias voluptatem delectus temporibus itaque non. Consectetur ut rerum aut similique nihil soluta earum. Voluptas sed consequatur dolorem ut facilis nobis.<br/><br/>Ut quo et voluptas adipisci consequatur aut placeat. Molestias rerum recusandae pariatur ullam et. At veniam assumenda ut. Quos in eaque omnis repudiandae inventore totam maiores.<br/><br/>Alias mollitia voluptatem porro magni sint beatae accusamus unde. Vel vero et voluptatem aspernatur sint ut minima id. Tempore praesentium qui nemo alias molestias. Aspernatur excepturi itaque deserunt ut.<br/><br/>Optio fuga possimus odio consectetur sint enim rerum natus. Quam perspiciatis suscipit sed eos autem. Vero debitis voluptate iure dolore.<br/><br/>Et et beatae sed cumque perspiciatis atque voluptatibus. Ad amet fugit vel. Veritatis magni eius at aut sed corporis. Repellendus deserunt sit nesciunt quia. Ut ex dolor similique ullam cum.<br/><br/>Facere vitae ut saepe ducimus nihil ea odio. Qui dolor et quis minima adipisci veritatis unde. Veniam aut voluptates laboriosam sed.<br/><br/>Similique necessitatibus sint earum excepturi reiciendis. Praesentium enim dignissimos a ut. Cumque quo a voluptas ullam laudantium nam omnis voluptatum. Sunt autem iusto nemo consequatur sed maiores voluptatem.<br/><br/>Modi sit et molestiae in excepturi voluptatem. Dolor deleniti voluptates id maxime. Ullam eos temporibus placeat et necessitatibus id. Qui ipsa quo quia vel maiores porro qui ullam.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (12, 2, '1993-12-08', 'dolorum-eos-voluptatibus-sunt', 'Dolorum Eos Voluptatibus Sunt', 'Inventore quaerat modi illum quo quidem voluptatum.', 'Fugit quas perspiciatis doloremque reprehenderit qui. Dolorem velit laudantium aut officiis sed consequatur quo. Sit sit delectus debitis adipisci. Odio labore qui repellendus reiciendis blanditiis.<br/><br/>Accusantium accusantium sed reiciendis assumenda porro in. Repudiandae autem facere perspiciatis voluptatem perspiciatis magnam. Vitae aperiam quo dolor corporis fuga voluptatibus.<br/><br/>Delectus et sint est quis. Velit et consectetur consequatur asperiores iusto odio. Vitae ad eius eum consectetur aut harum.<br/><br/>Veniam nihil provident recusandae neque qui sit qui. Sunt quisquam suscipit quia aut deserunt. Sapiente ea consequatur cumque aliquam accusamus asperiores. Perspiciatis dolor est veniam quibusdam earum a.<br/><br/>Consequatur enim in consequatur nihil. Est perspiciatis maiores similique ut nemo quas et. Quo dolor maiores quisquam eligendi ea quis et. Sint optio earum debitis provident quaerat modi.<br/><br/>Eos dolor et fuga quibusdam dolorem. Est non tempore explicabo voluptas earum est assumenda. Et sunt quibusdam est corrupti.<br/><br/>Et enim quam quibusdam nobis occaecati aliquid et. Est eos error non sequi dicta. Omnis consequatur velit facere sunt omnis porro nihil. Quia temporibus et quo est porro ut rerum. Et quia modi mollitia.<br/><br/>Et non et sed corporis eius enim et. Laboriosam corporis eveniet vitae ut enim. Quidem deserunt voluptatem quos est laudantium reiciendis sunt. Vitae saepe dolorum dolores et iste eos atque eum.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (13, 4, '2006-11-09', 'est-tenetur-dignissimos-qui', 'Est Tenetur Dignissimos Qui', 'Velit consequatur aut et perferendis commodi consectetur.', 'Et nostrum fugiat repudiandae rerum provident. Iusto ut velit et vitae distinctio. Nisi saepe reiciendis similique consequuntur. Et magni blanditiis impedit magni est molestiae soluta.<br/><br/>Sunt cum quia cupiditate porro accusamus. Et non labore quo repudiandae quae maxime. Voluptate delectus ipsam quos soluta cupiditate officiis facere. Rerum voluptas perferendis quia voluptatibus earum nam.<br/><br/>Expedita debitis suscipit sequi eveniet. Nemo omnis eum deserunt quasi enim dolore. Et iusto beatae eos tempore ratione porro. Accusantium voluptas eos itaque.<br/><br/>Similique voluptas esse iusto ab amet consectetur. At natus est similique odit laudantium temporibus tempora. Nihil eligendi dolor sint nisi ullam rem. Facere natus rerum accusamus dolor.<br/><br/>Quia ea sint reprehenderit. Dolorem fugiat repellendus atque nihil amet rerum. Est alias hic quo eius.<br/><br/>Earum doloribus sed vitae deleniti id et quo. Nemo iusto iste dolores quasi itaque. Non provident qui ut quo cum sint quod.<br/><br/>Odio animi porro voluptate accusamus possimus. Fugit ea est consectetur aperiam provident adipisci. Quidem velit natus fuga qui. Distinctio vitae molestiae nemo vel et voluptas.<br/><br/>Aliquam aliquid nisi ratione ut fugit. Delectus placeat magni vel amet. Et voluptate voluptatibus qui qui voluptate.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (14, 3, '1976-09-26', 'dolorem-non-fugiat-alias', 'Dolorem Non Fugiat Alias', 'Qui rerum consequatur aliquid facilis quaerat.', 'Quo molestiae ab qui officia voluptatem rerum est molestiae. Perferendis explicabo fugiat autem. Occaecati voluptas architecto ut molestiae cupiditate id consectetur dignissimos. Minima rerum eius dolor et esse voluptatem ut.<br/><br/>Quo at reiciendis laudantium nisi dolor quod veniam voluptatem. Impedit dolorem et praesentium nihil ut voluptas. Dicta provident temporibus qui quibusdam veniam.<br/><br/>Quam excepturi nobis qui repellendus esse reprehenderit ea et. Rem esse quam vitae soluta minus quia consectetur. Consequatur omnis deserunt quia minima quas.<br/><br/>Odit ratione aut commodi est. Minima sequi expedita quas provident maxime. Quibusdam qui rem quo corrupti. Eligendi recusandae et beatae laudantium ea magnam veniam.<br/><br/>Ut optio est possimus illo nisi. Ut laboriosam velit nisi et. Aut expedita dolorum aliquid est expedita cumque. Officiis ut quia et magni.<br/><br/>Perspiciatis suscipit provident culpa. Unde excepturi consequatur vel fugiat. Ut dolorem voluptatibus omnis ea ipsam mollitia. Illum quaerat asperiores ut enim rerum error omnis.<br/><br/>Autem architecto et porro in tenetur et. Possimus qui nihil nemo est sint aut architecto error. Quis quas molestiae accusamus illo est id. Sed voluptatem velit quaerat esse pariatur nulla ut.<br/><br/>Et perferendis dicta laboriosam sint sapiente quisquam sit. Ea voluptatibus sapiente reiciendis quia.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (15, 3, '1978-05-23', 'ut-veniam-sunt-nulla', 'Ut Veniam Sunt Nulla', 'Tempora veritatis molestiae mollitia veniam consectetur aut.', 'Ea recusandae vel reprehenderit ratione. Dolorem aut et est nam. In magnam iste ut aliquam ullam qui.<br/><br/>Sit et voluptatibus voluptatibus sit accusantium dolores rerum. Consequatur in non asperiores cupiditate dicta voluptas. Consectetur occaecati aut qui similique eum labore. Provident vero ad qui consequatur labore voluptatem eligendi.<br/><br/>Ratione quam qui corrupti voluptas deleniti quas culpa. Dolorum veritatis et nemo corporis impedit facere. Reiciendis nobis laudantium nihil eaque eius. Autem qui repellat aut deserunt autem voluptatem est nihil.<br/><br/>Ducimus quibusdam sunt fugit quas. Et mollitia accusantium magni. Voluptas quis animi magnam ut unde impedit ea. Est aut molestiae maxime voluptas omnis quia corporis. Tenetur quis aut quia harum.<br/><br/>Asperiores cum natus nobis aut. Et enim laudantium qui porro blanditiis tempore dicta. Distinctio vero a maiores labore fugiat et sit. Doloremque magni sint voluptates blanditiis.<br/><br/>Rem voluptas quasi sint iste. Sed non sit eum sint totam ea iure. Temporibus numquam ut quasi excepturi. Et et ab ut est inventore.<br/><br/>Eum velit excepturi et eaque. Expedita sapiente tempore nesciunt. Itaque voluptates maiores dolor eius voluptatem mollitia.<br/><br/>Numquam deleniti voluptas ullam eos maiores. Accusamus at sit commodi. Eius cupiditate id saepe assumenda qui pariatur.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (16, 3, '2003-05-29', 'et-et-quidem-laborum', 'Et Et Quidem Laborum', 'Fugiat sint et nesciunt.', 'Quibusdam omnis nam voluptates molestias alias velit commodi. Possimus eum ipsum molestias delectus. Minima eaque exercitationem sed itaque at asperiores. Illo quo officiis quis corrupti tempore.<br/><br/>Tenetur molestiae est ut maxime vel. Recusandae delectus nam nulla. A ea qui voluptates aliquam distinctio fugit. Dolor nemo molestiae quo omnis ad.<br/><br/>Molestiae repellendus repellat veritatis. Non unde veniam odio aut dignissimos distinctio quia.<br/><br/>Harum reiciendis laboriosam ut unde qui similique illo. Quis sunt aut provident deleniti voluptatem aliquid aut. Eaque omnis quis quisquam assumenda. Velit quo ullam expedita officia consectetur sunt vitae.<br/><br/>Quia eaque sunt quo non impedit. Magni velit dicta consequatur sit illo nam odio. In vitae assumenda et quam fugiat. Eum consectetur praesentium iste nihil non et aut corrupti. Culpa laborum ex et ut praesentium fugiat.<br/><br/>Accusamus beatae inventore asperiores iusto repellendus. Vel aspernatur animi perspiciatis quia. Aut sequi quod enim architecto vero veritatis perferendis.<br/><br/>Dicta harum atque quaerat et et velit quaerat. Sed rerum accusantium ut eos blanditiis sed totam. Autem delectus tempora voluptas ea est ipsam. Quis et rerum minus debitis.<br/><br/>Iure voluptatem veniam cumque. Mollitia et unde fuga quidem qui ratione. Qui doloremque maiores ut totam atque rerum veniam. Ut rem error excepturi ad a. Quis molestiae voluptate rerum ex omnis asperiores dolorum.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (17, 3, '1987-05-19', 'dolor-non-a-ut', 'Dolor Non A Ut', 'Dolor ea sit dolores dolorum repellat ut.', 'Repellat consequatur error nobis sint culpa qui sed. Reprehenderit voluptas placeat aut nam. Dolorem enim non illo aut.<br/><br/>Modi labore voluptas animi quis aut distinctio. Nobis atque officiis aut ipsa ipsam consequatur. Omnis doloribus voluptate ut et non facilis.<br/><br/>Veritatis neque explicabo aperiam quia quo hic tempora. Quis earum accusantium occaecati aliquam modi nihil rem. Tempora minima molestiae ad nobis earum aut at. Earum quam eos harum maiores dolorem natus.<br/><br/>Cupiditate eaque inventore laudantium odio error eaque autem deserunt. Nisi voluptatibus eos in doloremque nostrum ad.<br/><br/>Distinctio et neque ut adipisci. Molestiae in architecto quas non eligendi maxime. Est dolorem voluptatem eius quia. Unde sit aut iusto nesciunt ut consequatur molestiae ut.<br/><br/>Ab ea at qui voluptate quod numquam est. Qui dolores quia architecto sed. Repudiandae quidem mollitia velit consequatur dolorum possimus. Pariatur voluptatum suscipit qui. Deleniti fuga ipsam suscipit.<br/><br/>Esse voluptatem fuga id eligendi sit. Est eveniet ipsum aspernatur non distinctio mollitia. Nisi nemo sed asperiores voluptatum ut dolor et.<br/><br/>Est non ducimus velit. Eveniet nam et eum quae fugit possimus odit. Quidem molestiae ad est reiciendis facere.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (18, 1, '2016-01-05', 'blanditiis-corrupti-eius-tempore', 'Blanditiis Corrupti Eius Tempore', 'Aut magnam atque voluptatem.', 'Natus velit eveniet qui temporibus totam tempore. Et quis et eligendi sed quae non. Eaque cumque ipsum autem reiciendis eius perspiciatis qui. Ut aperiam natus qui.<br/><br/>Atque explicabo suscipit molestias nam deleniti. Quia eum dicta earum saepe enim nam rerum. Nostrum doloremque sint dolorum commodi dolor aperiam.<br/><br/>Quia et placeat eius officia. Eligendi ad facere natus nulla dignissimos sed praesentium. Suscipit illo consequuntur in rerum repellat.<br/><br/>Sunt architecto est ipsum minus cum provident recusandae. Qui consequuntur reprehenderit est et. Totam ipsam ab aut fugit.<br/><br/>Qui delectus in enim aliquid beatae voluptas. Temporibus atque nesciunt dolore quo at et. Saepe dolorum unde velit vel eos nobis est.<br/><br/>Eos dignissimos consequatur architecto ipsum placeat quia nesciunt. Officia corporis rem itaque incidunt adipisci qui. Aut hic recusandae sint excepturi.<br/><br/>Eum aut quod a qui cumque nihil. Vel ipsum modi explicabo odio nihil quia. Sit voluptas cupiditate sequi dolorem quia non.<br/><br/>Eum ullam et facilis omnis. Et sapiente est omnis est similique doloribus. Quidem velit et doloribus omnis id dolorem. Illum qui id consequatur cupiditate.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (19, 5, '1983-08-29', 'voluptas-laudantium-magni-vero', 'Voluptas Laudantium Magni Vero', 'Id nihil est voluptatem et.', 'Voluptas doloremque odio quam aspernatur cum molestias. Dicta quia itaque maxime. Aut quam accusamus nemo eligendi.<br/><br/>Veniam placeat delectus ea dignissimos neque voluptatum exercitationem fugit. Distinctio rem eos et quo in optio. Et suscipit est enim repellat veritatis in numquam.<br/><br/>Vel ut labore nihil at. Neque et quia tenetur facilis voluptatem amet officia.<br/><br/>Aut quam non quo qui nam. Aliquid sequi reiciendis maxime sequi consequatur. Alias ut ducimus est consequuntur sit quod.<br/><br/>Ut id est ea aut ipsum. Et ad voluptas ex ullam. Earum dolorem facere ipsum ad ad tempora. Voluptas quod quam non quis non.<br/><br/>Dolor ducimus deleniti totam quas est dolor totam. Eos reiciendis ea vel ut et velit provident. Sed nihil debitis aperiam culpa.<br/><br/>Suscipit dolorem eligendi nihil quam. Reiciendis consectetur nostrum libero est hic possimus sint. Nihil ut aut enim odio est.<br/><br/>Debitis possimus voluptatem minus natus. Velit cumque rerum dolorum atque. Necessitatibus ut quia ut minima numquam. Nobis voluptatem odio aspernatur laudantium.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (20, 3, '2017-11-30', 'ea-quia-corporis-aut', 'Ea Quia Corporis Aut', 'Itaque ut hic dignissimos quia aut.', 'Culpa harum ab quis eaque iste quisquam deserunt. Labore rem dicta quisquam quisquam sed illum sint. Temporibus similique accusantium fuga ut beatae id.<br/><br/>Consequatur modi molestias eligendi blanditiis sit. Aut consectetur deserunt ipsam maxime minima omnis. Et mollitia minima omnis id. Expedita cumque quas voluptas deserunt aut quod.<br/><br/>Sit dicta dolorem veniam sit accusantium. Consequatur doloribus explicabo numquam est. Dolorum laborum deserunt sapiente est quod modi.<br/><br/>Veritatis molestiae ad nulla tenetur. Enim rerum dignissimos voluptatem voluptatem. Commodi voluptatem est et sit laborum. Molestias accusamus cupiditate dicta molestiae enim.<br/><br/>Quisquam fugiat labore et cum. Est expedita vel corrupti. Dignissimos omnis necessitatibus nemo necessitatibus dolorem.<br/><br/>Accusamus rerum et sint eos eveniet repellendus fugit. Consequatur rerum vero laudantium aut delectus ex aliquam voluptates. Incidunt commodi sunt laudantium inventore sed et.<br/><br/>Sed dolores ut ipsum perferendis animi corporis. Minima quisquam et numquam commodi nesciunt placeat. Blanditiis aut deleniti qui rerum.<br/><br/>Quo qui quos aliquam. Nemo earum et maiores.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (21, 3, '2003-04-03', 'beatae-culpa-et-rerum', 'Beatae Culpa Et Rerum', 'Odio quis perspiciatis beatae est natus exercitationem.', 'Eveniet sunt nisi eveniet blanditiis commodi omnis deleniti. Totam odio autem qui qui enim optio. Blanditiis odio natus officiis omnis. Rerum aut quod consequatur id deleniti. Veniam doloribus autem qui repudiandae modi ex ipsam.<br/><br/>Qui rem voluptatem nemo velit veritatis expedita consequatur. Non quo quas et omnis blanditiis quae voluptas. Natus ullam ut numquam voluptas eum possimus laborum. Sed maxime exercitationem numquam officiis error.<br/><br/>Quo voluptatibus excepturi quas ratione. Consequatur magnam expedita vel ipsam labore nihil. Reprehenderit temporibus sit fugiat quis magnam sit.<br/><br/>Quo nesciunt reprehenderit accusantium laboriosam expedita quos dignissimos. Velit et non officia et aperiam sit ex. Quia aliquid ad et sed illo quia.<br/><br/>Voluptatem esse ducimus fuga officia. Omnis molestias eum impedit mollitia. Aspernatur illo fuga quisquam sit repellat.<br/><br/>Aut sunt nihil ut repellat ipsum et. Magnam molestiae soluta mollitia sunt nihil dolores. Hic quia consequatur soluta magni.<br/><br/>Soluta est rerum explicabo porro. Incidunt excepturi sit dolores delectus autem. Quos aut exercitationem autem atque nobis et eum illo.<br/><br/>Magnam reprehenderit minus exercitationem voluptatibus ad a asperiores. Debitis ut odio voluptas nesciunt sed. Facilis quaerat harum nisi commodi. Exercitationem fugiat repellat architecto laborum qui et odit.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (22, 4, '1971-05-02', 'consectetur-omnis-et-cum', 'Consectetur Omnis Et Cum', 'Officiis dolores ex harum qui.', 'Explicabo odit quo blanditiis sed quis. Molestiae at illo magnam. Sit in aut odio et laborum.<br/><br/>Aut error non sit vel. Aut magni mollitia voluptas eum provident commodi. Possimus ut voluptatem corporis consequatur. Asperiores pariatur vitae harum.<br/><br/>Qui at iure in consequuntur cum ut. Aliquam aut quos pariatur dignissimos minima aut. Et accusantium aut doloremque quia quis ea consequatur qui.<br/><br/>Fuga iste expedita et sapiente sunt dicta et. Quasi est fuga delectus eveniet sed eaque. Praesentium voluptatem ad consectetur dolorum. Et consequatur nam libero.<br/><br/>Minima omnis occaecati debitis quae. Omnis molestias quis adipisci iusto quia sed. Iure aspernatur similique minus inventore et. Dolor aut neque quia recusandae at labore.<br/><br/>Sed aut voluptatem rerum est voluptatum. Adipisci officiis nulla aut dolor. Quo aut temporibus blanditiis provident. Iure nostrum saepe voluptatem qui. Ut mollitia molestiae molestias error.<br/><br/>Eaque molestiae voluptates hic rem architecto unde. Cumque enim ipsam omnis qui. Eligendi enim amet alias eveniet doloremque. Minus quia itaque qui sed molestias omnis ipsum voluptas.<br/><br/>Repudiandae repudiandae numquam voluptatem in. Fugiat nihil omnis quis quidem qui itaque rerum fugit. Commodi rerum sapiente eum ex eveniet velit.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (23, 2, '1987-12-07', 'sequi-nulla-corporis-corrupti', 'Sequi Nulla Corporis Corrupti', 'Sunt autem qui eveniet.', 'Possimus explicabo perferendis neque necessitatibus. Quia doloribus sunt sed. Reiciendis natus in dolore error in et at.<br/><br/>Voluptas omnis beatae et eum. Nemo maiores repudiandae ducimus omnis enim. Dolorum quaerat atque quidem esse accusamus. Exercitationem iste est est commodi suscipit dolor maxime.<br/><br/>Id qui quibusdam deserunt fuga blanditiis. Facilis suscipit aut dolorem perferendis reiciendis animi dolores. Libero sed animi veniam doloribus atque eligendi facere.<br/><br/>Quia qui laudantium repellendus libero est. Pariatur sit ex blanditiis doloremque. Ipsam earum repudiandae est ut. Excepturi quae ut facilis et id quis repellendus. Veritatis quia tenetur quis ut dolores expedita.<br/><br/>Fugiat odio sunt provident. Exercitationem molestias est error dicta adipisci non dicta saepe. Sed dolor iste totam nulla in accusantium. Et temporibus repellat qui doloremque.<br/><br/>Optio explicabo ut sunt quaerat fugit eveniet sunt. Minima sit totam officia natus voluptas. Voluptas qui nobis et hic.<br/><br/>Minus ut temporibus ipsa enim voluptatum et. Tenetur libero nostrum quidem eligendi. Occaecati voluptatem porro impedit. Ipsum cupiditate voluptatem cum laboriosam enim sit.<br/><br/>Ut eveniet laudantium dolor adipisci autem. Aperiam asperiores assumenda quasi ea aut. Vero error neque quidem.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (24, 1, '1977-06-07', 'atque-placeat-omnis-asperiores', 'Atque Placeat Omnis Asperiores', 'Aut molestias veritatis aspernatur non eum perferendis.', 'Ad deserunt possimus qui nihil facilis. Excepturi nam expedita repellat iste perspiciatis. Repudiandae et ipsum et. Mollitia delectus sed nobis.<br/><br/>Aut est laborum molestiae eum voluptate dicta laudantium. Molestias consectetur aut doloribus ipsam. Et necessitatibus aut porro voluptatem. Qui autem est voluptatem a quaerat harum.<br/><br/>Dolor ut quos dolor est velit nihil voluptatem. Consequatur est rerum non nam. Ut et commodi ea enim.<br/><br/>Est rem eligendi aut corrupti rem. Voluptates impedit fugit et optio est ut. Nemo saepe non distinctio molestiae debitis impedit. Voluptatem ratione rerum molestiae vitae et voluptatum aut aut.<br/><br/>Aspernatur pariatur ducimus qui quaerat commodi non id est. Et neque ipsum rerum autem. Porro adipisci et dignissimos et et ipsam culpa.<br/><br/>Recusandae consequatur ipsam iste consequatur occaecati nemo commodi. Ab commodi et praesentium et dicta voluptate molestiae. Aperiam aut et excepturi ullam minus asperiores eos. Vero tenetur et inventore ut.<br/><br/>Illo odio esse velit quia. Et sunt cumque aut sequi est in quo in. Tempora cumque est ipsum rerum asperiores aliquam aut.<br/><br/>Ipsa neque facere molestiae fugiat aut a. Nemo impedit est sint ea ducimus inventore. Vel error tempora dolor quaerat culpa. Hic quis ut ad ratione maxime.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (25, 1, '1978-02-16', 'commodi-et-asperiores-necessitatibus', 'Commodi Et Asperiores Necessitatibus', 'Velit harum voluptatem ipsum et eaque ipsam.', 'Est molestiae quibusdam enim recusandae. Ipsam culpa libero rerum facilis minus. Occaecati vitae molestias aut non rerum.<br/><br/>Et minus consequuntur itaque et et voluptatem. Amet reprehenderit beatae dolorem consequatur sunt at velit. Qui dolor ipsam iusto ad. Tenetur sit et adipisci fuga.<br/><br/>Autem ut occaecati ullam doloribus enim. Accusamus et quia distinctio quia maiores sed. Dolorum ea expedita quos voluptatem accusantium soluta ut ut. Dolores ipsa porro vero accusantium enim iure.<br/><br/>Quas non laborum praesentium in adipisci ut autem. Assumenda sed dolorum dicta voluptatem et. Architecto sed eos voluptas totam non. Aliquam nulla voluptas est. Rerum repudiandae non voluptas nisi unde.<br/><br/>Et perferendis et vel nesciunt eum. Eos labore id incidunt et ab eligendi nobis. Eos similique consequatur ullam aspernatur. Culpa nesciunt perferendis sunt voluptatem nihil est accusamus delectus. Sed aspernatur vero eos expedita qui ut.<br/><br/>Ipsam est ut et ab enim dolore similique. Commodi vitae possimus deserunt culpa occaecati ut culpa fuga. Perspiciatis expedita fugit commodi voluptate et voluptatem minus. Nisi porro exercitationem et.<br/><br/>Aut quo sapiente ratione delectus et. Et voluptas harum doloribus dicta libero ea aspernatur. Consequatur in similique tempora libero non porro atque. Fugit consequatur rem modi facere.<br/><br/>Eligendi quia et voluptas cumque excepturi. Commodi inventore commodi optio ex libero. Est facere adipisci quos.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (26, 5, '2013-05-26', 'quis-quae-necessitatibus-perspiciatis', 'Quis Quae Necessitatibus Perspiciatis', 'Temporibus voluptates inventore non molestias adipisci sed.', 'Fugiat explicabo eaque vero consequatur. Exercitationem omnis eaque quas. Nihil dolore molestiae nemo sint doloremque in.<br/><br/>Dolor nesciunt rerum totam eum fugiat. Et enim voluptates amet ea. Perferendis commodi illum quaerat autem aut nemo cum et.<br/><br/>Temporibus iusto minima consequatur molestias dolores. Tempora architecto consequatur aut temporibus. Tempora totam ut omnis dolores voluptatem asperiores dolore. Nemo id voluptas ut et quae aperiam.<br/><br/>Pariatur pariatur molestias fuga vel tempora. Nostrum a laborum sed voluptatem. Enim eligendi repellendus itaque temporibus labore qui. Aliquam rerum rerum quibusdam sapiente.<br/><br/>Magni autem quo qui est quas commodi eius consectetur. Laborum et doloribus molestias sit quas possimus laboriosam. Rem commodi doloremque tempore ipsa excepturi fuga.<br/><br/>Laudantium ut quis tempora facilis voluptas rerum veritatis. Quasi repellendus non quas sit iure atque nisi. Et sunt dicta nulla earum aut voluptates omnis. In et ipsum reiciendis veritatis nobis sapiente.<br/><br/>Est temporibus tempore est sed deleniti non cupiditate. Id minima sequi id est ipsam nihil quia. Voluptas ut ratione aut. Voluptas aut illo nihil aperiam.<br/><br/>Necessitatibus dolores incidunt sit sint sequi repellendus blanditiis. Aperiam saepe accusantium eum nihil dolores. Eius perspiciatis recusandae velit sunt voluptatibus praesentium in. Culpa distinctio soluta est non rerum unde.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (27, 4, '1978-12-28', 'quis-similique-quis-quidem', 'Quis Similique Quis Quidem', 'Rerum impedit corporis sunt nemo.', 'A qui laboriosam cupiditate dolorum at id nobis. Qui est fugiat rem maiores possimus qui nulla. Est rerum laborum magnam dolorum minus quia reprehenderit. Non culpa et possimus quia. Quae et fugiat ipsum ut rerum.<br/><br/>Sit laborum facere harum voluptatem est incidunt. Consequatur totam vero quo autem quisquam ratione. Odit deserunt consequatur rem vel ut culpa.<br/><br/>Fugit ab labore tempore expedita. Sapiente atque quibusdam ad tempora vel dolore qui iure. Sit officiis quam nihil occaecati ea odit nesciunt est. Blanditiis accusantium quidem sit beatae consequatur sint maxime et.<br/><br/>Fuga explicabo qui quo aliquid vitae voluptatem assumenda possimus. Libero veritatis doloremque placeat voluptas eum. Et vel odio libero commodi.<br/><br/>Commodi occaecati explicabo vel fugiat nostrum. Nemo culpa cupiditate et expedita. Aut dolor autem id omnis libero praesentium est earum.<br/><br/>Accusamus non neque quo libero. Et est deserunt consectetur ipsum debitis voluptas. Enim nesciunt temporibus omnis quis tempora et.<br/><br/>Quae et nisi aut quia voluptatum. Adipisci excepturi eaque similique illo. Dolorem et voluptatem sed aut quos sit. Aliquam qui veritatis nihil aliquam. Unde dicta non rerum dolores.<br/><br/>Qui perferendis ea veritatis ipsa illum non dolore. Nam autem autem rerum quos qui. Quos perferendis nam non quo in ut. Consequuntur omnis aperiam mollitia sed.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (28, 1, '2008-10-01', 'minus-totam-qui-sit', 'Minus Totam Qui Sit', 'Impedit ut eveniet repellat qui voluptatum fugiat.', 'Est totam iste velit dolore perferendis. Ut enim aut iste accusamus optio. Quas aliquid amet dolorem eligendi.<br/><br/>Et consequatur sint quia saepe. Necessitatibus ut unde facere nemo. Quia non iste et dolor corrupti molestias voluptatibus. Qui iusto consequuntur aut officiis et molestiae.<br/><br/>Accusantium vel dolore consequatur. Facere nulla exercitationem totam non. Dolor sit et nihil voluptatem ducimus et ad. Ut et dignissimos tempora est neque aut. Dolorem aliquam qui consequatur nulla autem.<br/><br/>Et et quae itaque. Voluptatem sit commodi molestias asperiores deleniti laudantium. Non ut officiis sequi quis ipsa earum voluptas pariatur. Consequatur laboriosam voluptas ut cupiditate ipsam sit velit.<br/><br/>Et perferendis architecto placeat in amet quia. Asperiores quisquam est totam quasi. Nemo adipisci voluptatum quo totam. Dolore quam quas deleniti consequatur ullam.<br/><br/>Culpa laborum pariatur iusto eligendi non dicta ipsum. Magni nihil rerum unde minus explicabo ut. Delectus rem quis est molestiae et ex occaecati. Velit dicta illum culpa velit.<br/><br/>Id repellat quia illo commodi doloribus. Optio dolores qui aspernatur iste quo ipsum et. Est incidunt deserunt aut quia exercitationem praesentium ea.<br/><br/>Dolorem sit sed aut tempore alias nostrum natus qui. Consequatur est veniam consequuntur autem. Qui beatae facere nihil aut reiciendis ad corporis quidem.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (29, 3, '2004-05-05', 'blanditiis-nostrum-dolore-impedit', 'Blanditiis Nostrum Dolore Impedit', 'Perspiciatis nostrum esse eum rerum voluptatem.', 'Dolorem qui quaerat veritatis eius odit quo expedita qui. Quia veniam illum in officia exercitationem odio qui sapiente. Vero error distinctio rerum autem in aut dignissimos in.<br/><br/>Excepturi dicta impedit reiciendis dignissimos perferendis cupiditate occaecati. Ut numquam vitae qui culpa optio non. Molestiae reprehenderit voluptate et molestiae aperiam qui.<br/><br/>Saepe rerum sed sed numquam quia ipsam. Optio eius saepe ut blanditiis. Sint quos assumenda laborum eius dolorem tenetur. Vel libero tenetur aut quia.<br/><br/>Nesciunt eligendi dicta debitis qui sit vitae ut voluptas. Ducimus vitae quo natus ipsa asperiores.<br/><br/>Harum dolorem eveniet doloribus vel. Expedita officiis doloribus quaerat quibusdam.<br/><br/>Quisquam quia debitis doloribus quidem asperiores velit. Itaque ab doloribus voluptatem eum. Ut mollitia sed laudantium corporis sit omnis assumenda eaque.<br/><br/>Aut natus id cumque eos dolores veniam. Similique numquam adipisci quibusdam. Rerum excepturi sed voluptas ex aut consequatur. Minus dolor et quos quam in explicabo doloribus.<br/><br/>Natus voluptatibus nobis et optio laudantium quaerat. Suscipit nihil earum eligendi laborum non cum sequi. Placeat ad ut quia consequatur. Quisquam esse tempora atque assumenda architecto.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (30, 4, '1982-08-14', 'at-ab-ut-dolore', 'At Ab Ut Dolore', 'Quia sed cumque nihil adipisci eos.', 'Impedit optio quis dicta sint sit id ipsa. Enim similique iste repellat quis. Amet autem rerum eos earum quos ea nulla. Libero et dolor porro quia reiciendis eaque. Magnam aliquid qui cumque ea ut expedita quaerat.<br/><br/>Ut voluptates atque quos sunt sequi vel id. Molestiae iste ut sint. Est velit autem dolor debitis necessitatibus quam porro aut. Adipisci eum facilis quidem. Minima enim quis illum ea voluptatem voluptates sit voluptate.<br/><br/>Pariatur est quo iusto suscipit quo. Id perspiciatis voluptatibus commodi sed rerum consequatur quibusdam hic. Numquam cum consequuntur ut est soluta est nobis.<br/><br/>Consequatur ea laudantium illum voluptatem at maiores. Eveniet qui perspiciatis reiciendis aut et. Laborum aliquid error sit nam.<br/><br/>Excepturi quasi officia sapiente velit placeat. Aspernatur tempora exercitationem corporis facere deleniti quis similique. Necessitatibus voluptas vero consequatur eos.<br/><br/>Consequuntur nisi impedit et hic non consequatur perferendis. Modi voluptate error omnis vel explicabo aut in nam. Nobis iure facere nesciunt vero.<br/><br/>Aut sed magnam odio omnis excepturi. Id nisi dicta voluptates et est sed. Reprehenderit quaerat necessitatibus magni provident dolorem.<br/><br/>Voluptate odit sit maxime voluptatem est. Assumenda iure repellendus est porro sed aperiam et rem.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (31, 1, '1974-08-19', 'et-impedit-delectus-aspernatur', 'Et Impedit Delectus Aspernatur', 'Placeat rerum delectus amet est dolorum.', 'Maxime vitae corrupti laboriosam ut quod tempore quia cum. Modi vitae ut dignissimos sit sit. Et suscipit et ex voluptas et ut.<br/><br/>Quos aut occaecati eos minus nulla fuga odit. Consequatur modi repellendus magni ut temporibus dolore et. At molestiae ea aspernatur recusandae vero. Est dolor et consequatur ut quia labore.<br/><br/>Natus aut ut sit ab quae eveniet. Nobis tempora natus quia. Quidem qui laudantium aspernatur pariatur odit possimus doloremque.<br/><br/>Omnis error doloribus earum et eum aspernatur maiores. Odio enim rerum autem et omnis. Harum hic nihil quia fuga molestiae sunt quis dolores. Vitae minus et vel possimus dolorem reprehenderit voluptatem. Quae repellendus consequuntur et quo molestiae sed.<br/><br/>Voluptate iste ut earum. In necessitatibus mollitia quia nam qui. Dolores earum neque ab est impedit velit est et. Corrupti quidem libero iste ex explicabo.<br/><br/>Earum expedita ad tempore vitae consectetur. Ea consectetur voluptatum error quam quis est vitae. Quo ex natus dolor sit assumenda. Ut tempore dignissimos eum tempora pariatur sunt.<br/><br/>Qui rem qui quia et ut suscipit. Debitis exercitationem aut consequuntur laudantium dolores ut. Aspernatur dolorem doloribus qui doloremque sunt.<br/><br/>Quo sapiente necessitatibus non. Aut ipsum quibusdam eos blanditiis et. Omnis inventore accusamus sed voluptatibus odit est. Voluptatibus quasi expedita doloribus eligendi ducimus numquam velit.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (32, 3, '1987-09-22', 'dolorem-ratione-numquam-aut', 'Dolorem Ratione Numquam Aut', 'Aut qui eligendi rerum enim aut rem.', 'Et quis ducimus nobis possimus voluptate. Alias nemo facilis et. Iure aut enim error quae quasi cum nihil fuga.<br/><br/>Modi repellat voluptas et aut officiis assumenda inventore rem. Quam ipsum ut est in voluptas rerum aut maxime. Tempore illum possimus incidunt. Aut adipisci odit nisi minima dicta ex sed. Id voluptate optio omnis earum deserunt omnis nihil.<br/><br/>Odit odio quisquam sint. Non consectetur sit doloribus explicabo reiciendis ut. Animi asperiores porro blanditiis nemo ipsum. Quia esse ducimus sit.<br/><br/>Qui quod neque voluptatem rerum sed architecto. Tempore error consequatur corporis dolorum illo. Non esse qui provident. Ab quod porro officia debitis commodi.<br/><br/>Cum blanditiis officiis asperiores dicta voluptas. Exercitationem rem quis explicabo et commodi laborum. Veritatis quibusdam voluptatem libero beatae qui repudiandae.<br/><br/>Dolores provident dolore qui nulla velit. Autem quia quis totam sit animi eaque qui. Hic odit harum expedita reiciendis. Corrupti quo perspiciatis doloremque adipisci.<br/><br/>Reprehenderit et aut ut aut quaerat ea autem. Reprehenderit dolor vitae consequatur. Error omnis rem repudiandae enim itaque quas. Quia dolor soluta est sed. Enim voluptatum eveniet et et.<br/><br/>Quia quaerat molestiae est architecto dolorem. Fugit aut soluta quia adipisci. Sit et repellat est. Blanditiis aut provident tenetur fuga. Voluptates nobis velit at doloribus aut qui quas sunt.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (33, 5, '1979-04-22', 'necessitatibus-vitae-deserunt-molestiae', 'Necessitatibus Vitae Deserunt Molestiae', 'Qui aut numquam debitis voluptates sit tenetur.', 'Veniam quam voluptatum quia iste repellat qui sed. Perspiciatis odit ducimus sint nemo sunt. Aliquid doloribus exercitationem necessitatibus aut quia dolorum.<br/><br/>Quasi quia doloremque nesciunt commodi itaque. Cumque autem saepe ut illo eum eum ut. Aspernatur quia rerum ea eveniet doloremque. Quo sequi laudantium sunt minima rem.<br/><br/>Eos et ad quo laborum adipisci. Aut rem porro doloremque incidunt. Aperiam ut beatae esse libero voluptatem expedita rem. Debitis quia quod explicabo deserunt.<br/><br/>Occaecati libero laboriosam quod praesentium velit quod. Aut et qui distinctio ratione. Minima sed qui optio esse officia.<br/><br/>Rerum dolor molestiae et a. Porro suscipit est sed fugiat pariatur voluptatem repellat porro. Dolor similique nihil odit.<br/><br/>Ea qui consequatur illo voluptatem. Velit enim ipsum nihil atque. Earum eveniet aut consequatur qui consequatur est nesciunt asperiores. Eum ex ut temporibus necessitatibus rerum voluptates illo.<br/><br/>Eaque aut omnis numquam pariatur voluptatibus. Est tenetur ea sit tempore molestiae quia ipsa. Aut in reiciendis neque minima itaque distinctio.<br/><br/>Quidem explicabo debitis laboriosam ab non at tenetur. Quis et qui nihil maiores culpa enim. Sed soluta itaque voluptatem consequuntur fugit ea.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (34, 3, '2016-03-05', 'quod-inventore-provident-suscipit', 'Quod Inventore Provident Suscipit', 'Veritatis dolor tempora deserunt non.', 'Velit dolor et ex a et laboriosam. Enim odit consectetur optio sed sapiente dolores omnis voluptas. Ea illum culpa aliquam vel non quos qui. Dolores et veritatis quis necessitatibus architecto non voluptatem.<br/><br/>Corrupti veniam quia dicta aspernatur et. Consequatur omnis quos laudantium cumque voluptatem aspernatur similique. Dolor itaque enim quis autem consequatur veniam rerum. Officia qui officia autem optio.<br/><br/>Nulla animi sit non qui. Aut quia aut dolores voluptas ipsam qui in. Voluptatem cupiditate nostrum sit ut et ducimus quidem. Rerum alias est quasi autem id itaque.<br/><br/>Animi voluptas laborum blanditiis dicta optio iste ad. Sed molestias porro consequuntur aut dolores. Quidem qui id ut magni at doloremque quidem ad.<br/><br/>Non ut amet ex voluptates ad autem. Optio et dolorem iusto et eos illum sit. Iste et repudiandae dolore voluptas autem fugit accusantium.<br/><br/>Omnis officia deserunt sit esse. Sint voluptatibus iusto inventore. Reiciendis ex error natus voluptatem error temporibus.<br/><br/>Quia odit illum necessitatibus magnam et numquam. Accusantium cum unde qui magnam. Nesciunt in molestiae tempore.<br/><br/>Eum modi occaecati distinctio voluptatibus. Dolor eum commodi maxime. Ad rerum ut ea velit.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (35, 5, '1971-07-02', 'eius-assumenda-voluptatem-possimus', 'Eius Assumenda Voluptatem Possimus', 'Placeat consequatur et omnis quaerat rerum quae.', 'Maiores rem temporibus est sequi. Consequatur iusto rerum ut aspernatur. Tenetur sed eos sint. Repellat perferendis recusandae eveniet officiis delectus provident et maiores.<br/><br/>Doloribus neque et accusamus qui. Voluptatem voluptas beatae qui qui. Dolores et ea rerum modi sint eius quis vero. Quis natus non magni sunt molestiae ea.<br/><br/>Veniam et neque aut tempore. Adipisci molestiae et esse deserunt dignissimos et laboriosam. Voluptates placeat dolores soluta maiores. Nesciunt dolorem non est sit officiis sed at.<br/><br/>Incidunt dicta sed deleniti deleniti temporibus ratione. Similique eos enim voluptatem distinctio.<br/><br/>Suscipit maiores rerum est quidem laboriosam est nam consequuntur. Pariatur officia maxime accusamus veniam neque. Hic nostrum atque aliquid sint soluta qui.<br/><br/>Ea perferendis magnam laboriosam incidunt laboriosam cum. Incidunt eum quis dolor. Earum ut eum impedit dolores. Delectus perferendis praesentium officia doloremque.<br/><br/>Omnis tenetur quia alias soluta temporibus corporis tenetur. Voluptatem dolor autem autem corrupti. Ea quas nihil consectetur eos. Beatae quos odit sed quia.<br/><br/>Optio maxime non magni illum eius. Qui exercitationem et voluptas dolorum est non fuga esse. Et vero explicabo quos quos quas neque. Quam sit qui enim aut.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (36, 2, '2009-01-02', 'aut-velit-ut-qui', 'Aut Velit Ut Qui', 'Quod ratione inventore dolor quis et.', 'Quaerat rerum facere quia provident debitis. Animi omnis aut officia quasi voluptas. Ut eaque non ipsam cupiditate voluptatem totam.<br/><br/>Tempore dolores eos dolore consequatur ipsum sequi esse. Perspiciatis quas consequatur quibusdam quisquam. Sapiente consequatur suscipit eaque fugit.<br/><br/>Amet rem deserunt laudantium dolores. Vel qui expedita mollitia exercitationem. Et magnam voluptas omnis autem quia et aut qui. Blanditiis rerum voluptatem quia voluptatem. Et beatae corporis ipsam architecto quia architecto provident.<br/><br/>Similique delectus minima dolor sapiente libero aut. Similique rem quo veniam tenetur laborum est. Accusamus impedit veritatis tempore asperiores corrupti.<br/><br/>Tempore commodi velit magni alias vitae consectetur aut. Repellendus aspernatur maxime cum dolorum nostrum velit. Distinctio dicta debitis alias aut et. Quo dolor quia corporis corrupti in quaerat.<br/><br/>Aperiam dolores quisquam nostrum voluptas. Molestiae totam et molestiae. Ea nihil ut consequatur.<br/><br/>Asperiores illo quis et. Nesciunt quis suscipit reprehenderit aut. Accusantium fugiat expedita ipsam qui ut fuga placeat.<br/><br/>Quibusdam quasi aut quasi corrupti. Consequatur cumque sit illum odit ea dolor harum. Mollitia iusto tempore molestiae assumenda velit velit. Nulla alias ipsum perspiciatis corrupti.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (37, 4, '1974-12-01', 'soluta-non-voluptatibus-tempora', 'Soluta Non Voluptatibus Tempora', 'Beatae totam nulla voluptate.', 'Id sed deleniti exercitationem totam itaque cum iste repudiandae. Fuga provident asperiores ullam non. Mollitia voluptate et atque quibusdam unde enim animi qui. Qui dolorem reprehenderit minus ab unde explicabo. Harum eos quasi quia natus amet maxime.<br/><br/>Beatae natus ut ipsa nesciunt sed aut. Voluptate sunt perspiciatis consequatur sint. Officiis minima quo quis magnam a et quis.<br/><br/>Laudantium ut excepturi autem necessitatibus exercitationem quidem. Iste voluptas enim sed id quia. Nulla unde occaecati aperiam est. Temporibus distinctio magnam voluptatem quidem.<br/><br/>Et quia sint dolor et facilis asperiores. Qui ex qui dolorem itaque deleniti dolor quo. Consectetur est voluptates autem rerum.<br/><br/>Quos molestias sed non error voluptas quos aspernatur. Itaque quisquam repellat adipisci sint iure est veniam. Et error tenetur id aut harum debitis nobis. Temporibus labore omnis voluptatum quia itaque saepe tempora.<br/><br/>Voluptas consequatur quis quibusdam quia necessitatibus in eum. Sed et laborum laborum sunt a libero fugit. Quaerat ad officia facilis eius. Quibusdam omnis occaecati ab ipsam fugit placeat sit.<br/><br/>Quibusdam voluptates animi nesciunt provident aut et. Et dolorem sed voluptas officiis consequuntur. Incidunt vel impedit perspiciatis in inventore soluta.<br/><br/>Itaque dolorum nisi magnam ad natus ut corrupti. Dicta est et dolorem sed aperiam. Nemo repellendus distinctio porro repellendus dolores. Consequatur sequi fuga repudiandae.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (38, 3, '1991-03-05', 'saepe-est-deserunt-omnis', 'Saepe Est Deserunt Omnis', 'Ipsum modi cupiditate labore consequatur.', 'Ex sunt quae modi sit. Totam et dolore non veritatis voluptatum qui voluptas incidunt. Corporis nobis perspiciatis modi est. Nihil vel dolorem dolorum ut deleniti iste in.<br/><br/>Doloremque ut eligendi iusto dignissimos possimus voluptatem laboriosam. Rem atque provident sed id at error. Aliquam ut harum reprehenderit velit ad.<br/><br/>Cumque distinctio eos consequatur fuga id. Perspiciatis voluptatum dolorum veniam et consequatur maxime maiores. Aliquam nihil aut amet laborum laborum deleniti. Quidem soluta voluptas omnis dolores rerum eveniet magni. Quod minus quidem maxime harum dolore sint.<br/><br/>Ex in tenetur quisquam quos accusamus in excepturi. Eos sapiente inventore id error eveniet totam. Sunt et voluptatem odit deleniti est. Et tempora quaerat quia iure iusto illo. Est ea molestias ipsum nisi qui.<br/><br/>Ut quia non voluptatem possimus eaque asperiores. Est ut ea laborum eveniet delectus blanditiis tenetur sit. Quo assumenda aliquam nobis et. Voluptas distinctio ea molestias expedita et est qui quam.<br/><br/>Qui nisi soluta ipsam qui odit odio eaque enim. Eius quo doloremque consequatur fuga molestiae quam et id. Rerum eaque et explicabo. Quas quidem maxime vero eveniet voluptatum vitae.<br/><br/>Quod alias est dolores. Enim delectus quaerat id voluptatem animi sed. Ut nam ut possimus quo consequatur autem mollitia ut. Atque magni quisquam aut doloribus et.<br/><br/>Quam quaerat omnis harum ut. Expedita est eligendi repellendus saepe nisi explicabo velit. Explicabo in ut error voluptatum aperiam ad.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (39, 2, '1972-10-04', 'sed-sed-vel-soluta', 'Sed Sed Vel Soluta', 'Corrupti quas voluptas officia modi facere.', 'Ut omnis alias omnis voluptatem nihil sunt. Praesentium in aut repellat voluptatem cupiditate adipisci et. Distinctio unde voluptates tempora inventore non accusantium. Eligendi non voluptas saepe et.<br/><br/>Consequatur accusamus error ratione. Illum ratione consequatur qui voluptatem. Rerum itaque nemo amet. Et saepe soluta quis quo in. Laboriosam ut aut saepe.<br/><br/>Cum blanditiis odio et tenetur ullam qui assumenda. Aliquid adipisci mollitia libero et quidem. Voluptas non ipsam ipsa enim sequi. Omnis cumque odio libero similique voluptas officia.<br/><br/>Sint tempora distinctio voluptate. Tempore est quia rem accusantium earum doloribus. Numquam natus illum vitae sit.<br/><br/>Similique et commodi recusandae nemo eum in sapiente perferendis. Et pariatur ab adipisci minus quidem vitae. Hic qui itaque blanditiis nam corporis asperiores rem rerum. Recusandae sequi deleniti debitis delectus.<br/><br/>Aut consequatur dolores debitis odio dolor deserunt magnam similique. Est omnis aspernatur natus similique quo voluptatem deleniti cumque. Accusamus sed sed rem atque officiis ipsum incidunt.<br/><br/>Aliquam rem non molestias in qui sint ut. Ea omnis deserunt qui ut sint itaque. Fugiat et a autem.<br/><br/>Saepe suscipit qui veniam harum alias. Ducimus voluptas veritatis suscipit et consequatur vitae qui itaque. Veniam a mollitia porro libero.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `articles` VALUES (40, 4, '2016-04-29', 'non-assumenda-et-ut', 'Non Assumenda Et Ut', 'Id dolorum vero quae.', 'Consequuntur error reprehenderit at accusantium repellendus voluptate. Impedit magnam omnis est et vitae. Veritatis voluptates distinctio modi accusantium nemo qui.<br/><br/>Accusamus praesentium sunt repellendus deleniti et et. Aliquid molestias consequatur accusantium quod pariatur eum libero. Quia consequatur est corrupti reprehenderit blanditiis exercitationem. Voluptate incidunt ex distinctio quidem impedit et.<br/><br/>Quisquam repudiandae velit dolorem ut. Ut non minima dolores dolores tenetur. Assumenda distinctio sed dolor non.<br/><br/>Ea quas aut tempora iste qui sapiente dolor sapiente. Id iste asperiores reprehenderit enim doloremque. Debitis et voluptas nostrum et debitis voluptas nobis. Perspiciatis exercitationem saepe et inventore sint. Voluptates illum consequatur expedita quia non id reiciendis.<br/><br/>Dolor quis et vel blanditiis sunt provident. Quisquam et quia aut voluptates dolores recusandae quam voluptas. Molestiae at commodi aperiam ea ex similique qui provident.<br/><br/>Aliquid in unde modi aut occaecati praesentium. Sed laudantium voluptatem voluptas dicta facere quia.<br/><br/>Velit velit dolor a aut inventore cumque omnis sapiente. Deserunt quia animi atque modi et. Et nostrum voluptas ratione id hic et. Deserunt consequatur a ut omnis velit fugit.<br/><br/>In cumque possimus voluptatibus aut mollitia. Maiores rerum fugiat quisquam amet. Porro atque quasi cumque sit distinctio.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
COMMIT;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES (1, 'ut-labore', 'Ut Labore', 'Est impedit reprehenderit quo sed.', '2020-11-27 03:53:24', '2020-11-27 03:53:24');
INSERT INTO `categories` VALUES (2, 'itaque-voluptas', 'Itaque Voluptas', 'Exercitationem ea vel quia.', '2020-11-27 03:53:24', '2020-11-27 03:53:24');
INSERT INTO `categories` VALUES (3, 'sed-odio', 'Sed Odio', 'Ut ea sequi repudiandae voluptas et.', '2020-11-27 03:53:24', '2020-11-27 03:53:24');
INSERT INTO `categories` VALUES (4, 'iusto-consequatur', 'Iusto Consequatur', 'Quia at tenetur at minus.', '2020-11-27 03:53:24', '2020-11-27 03:53:24');
INSERT INTO `categories` VALUES (5, 'vero-consectetur', 'Vero Consectetur', 'Quis cumque excepturi explicabo.', '2020-11-27 03:53:24', '2020-11-27 03:53:24');
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for fruits
-- ----------------------------
DROP TABLE IF EXISTS `fruits`;
CREATE TABLE `fruits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fruits_slug_index` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of fruits
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `product_id` int(11) NOT NULL,
  `total_stock` int(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory
-- ----------------------------
BEGIN;
INSERT INTO `inventory` VALUES (1, 620);
INSERT INTO `inventory` VALUES (2, 240);
INSERT INTO `inventory` VALUES (3, 150);
COMMIT;

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of locations
-- ----------------------------
BEGIN;
INSERT INTO `locations` VALUES (1, 'PP', '2020-11-27 21:48:35', 1);
COMMIT;

-- ----------------------------
-- Table structure for menu_groups
-- ----------------------------
DROP TABLE IF EXISTS `menu_groups`;
CREATE TABLE `menu_groups` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `group_id` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menus
-- ----------------------------
BEGIN;
INSERT INTO `menus` VALUES (280, 281, 'Menu', '/admin/menu', 'mdi mdi-menu', 1, 1);
INSERT INTO `menus` VALUES (281, 0, 'System', '', 'mdi mdi-menu', 3, 1);
INSERT INTO `menus` VALUES (282, 0, 'Affiliate', '', 'mdi mdi-repeat-once', 1, 1);
INSERT INTO `menus` VALUES (283, 282, 'List', '/admin/affiliate', '', 1, 1);
INSERT INTO `menus` VALUES (284, 282, 'Create', '/admin/affiliate/create', '', 2, 1);
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2015_04_06_131951_create_categories_table', 1);
INSERT INTO `migrations` VALUES (3, '2015_04_06_131957_create_articles_table', 1);
INSERT INTO `migrations` VALUES (4, '2015_04_06_132351_create_pages_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
BEGIN;
INSERT INTO `pages` VALUES (1, 'est-sint', NULL, 'Est Sint', 'Aut sit quo est reiciendis reprehenderit et quam.', 'Ut quia aut dolorem aspernatur inventore. Est suscipit nemo atque nihil deserunt praesentium minima. Odio sed nemo cum quo quia officia.<br/><br/>Molestiae quae magnam expedita cum. Totam fugit cum et saepe dignissimos. Temporibus dolorem amet ea culpa corporis quia.<br/><br/>Dolores sunt suscipit rerum aliquam reiciendis aliquid. Neque vel recusandae exercitationem numquam ea in ratione. Quisquam officiis magni suscipit. Ad fugit tempora nostrum impedit eaque et adipisci.<br/><br/>Et eos in et nemo mollitia et. Qui quia quaerat officia quae. Illo consequatur beatae nulla dolorum molestiae consequuntur molestiae.<br/><br/>Quam cupiditate beatae quo fugiat. Asperiores nulla tempora minima dignissimos id. Dolorum in quis eum blanditiis.<br/><br/>Vitae pariatur expedita corporis. Officiis perferendis sunt velit quibusdam exercitationem asperiores. Dolore consequuntur illum quo laudantium. Deleniti molestiae laboriosam aut labore adipisci deleniti.<br/><br/>Doloribus assumenda nesciunt fugiat architecto eos non. Et quis tenetur reprehenderit dolor animi accusamus in aut.<br/><br/>Fugit aperiam et hic qui repellat recusandae. Occaecati ut nihil suscipit ut dolore.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `pages` VALUES (2, 'quo-quia', NULL, 'Quo Quia', 'Ducimus sunt quo rerum velit.', 'Et odio autem aut autem ab. Doloribus quia autem reprehenderit officiis sunt aut asperiores.<br/><br/>Est officia ex ut et. Quos ipsa ad eius voluptas quae odit ut dignissimos. Sint fugiat omnis est molestias est.<br/><br/>Laboriosam dolore dolor et dolorem eum. Id nulla aut cupiditate soluta unde repudiandae. Ea iusto blanditiis nihil placeat id.<br/><br/>Aut et dicta et voluptatibus. Laudantium enim deserunt omnis corrupti officia suscipit. Vel voluptatem repudiandae quia dolorem cum.<br/><br/>Ab nemo eum accusamus quo consequatur eius. Minima unde vel in et error neque. Tenetur laborum quo similique tenetur.<br/><br/>Est odit itaque sunt enim et numquam. Vitae modi soluta rerum autem harum. Labore aut ab hic reiciendis rem aliquam.<br/><br/>Sequi qui perspiciatis et tenetur consequatur est ut cupiditate. Minima aspernatur numquam praesentium consequuntur modi cumque. Est optio ut magni ducimus itaque non quia. Ipsam eligendi nostrum voluptas modi aut reiciendis laborum.<br/><br/>Et et eum facilis corrupti labore et laboriosam a. Et voluptas voluptas occaecati. Eligendi ut nihil cupiditate aut qui corrupti iusto. Alias soluta ipsam ut minima magni necessitatibus.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `pages` VALUES (3, 'eligendi-qui', NULL, 'Eligendi Qui', 'Expedita esse aperiam placeat consequuntur doloremque.', 'Quasi qui aut reprehenderit quisquam. Iusto quia dolores molestiae non molestiae quaerat aut inventore. Et et ad cupiditate quia pariatur numquam ad.<br/><br/>Molestiae nostrum neque modi fugiat rerum omnis voluptate. Et error praesentium quis dolorem. Minima aut quaerat quo est voluptate reprehenderit dolor occaecati. Nemo mollitia non quia.<br/><br/>Repellat vitae velit inventore sequi consectetur repellendus possimus. Non dolor officia aut quia dicta vel. Dolor ad consequatur nam optio omnis.<br/><br/>Et cupiditate odit dolorem aliquam mollitia. Quasi aut quibusdam iure ut.<br/><br/>Provident ipsam quia corrupti qui. Inventore hic nihil voluptatem dolorem rerum mollitia. Delectus ea ipsam ut ipsum. Natus esse distinctio modi.<br/><br/>Quas sequi quia magnam quasi corporis sunt reiciendis. Sint est repellendus nesciunt voluptate rerum sunt eos. Ratione nobis iusto doloribus quis.<br/><br/>Magni voluptas sit consectetur numquam autem beatae. Dolorem itaque quis sed soluta. Et inventore optio vel. Et voluptatibus minus ratione. Illo repellendus voluptas perspiciatis sit est pariatur et.<br/><br/>Ut consequatur quia iste ducimus excepturi repudiandae. Dignissimos temporibus molestiae consequatur sit. Natus voluptatibus consequatur architecto perferendis. Sint perspiciatis est dignissimos quisquam sapiente sit earum.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `pages` VALUES (4, 'deleniti-aperiam', NULL, 'Deleniti Aperiam', 'Autem occaecati ipsam tempore fuga sit soluta rerum.', 'Dolorum aut sequi autem recusandae et. Ut inventore aspernatur a delectus tempora ea.<br/><br/>Ut voluptatem eligendi voluptates voluptatem ex quia quia consequatur. Repudiandae aut nemo rerum beatae et doloremque fuga. Eos ad iusto qui libero temporibus earum voluptate cupiditate. Hic autem magnam est sapiente voluptatem veritatis cum. Quibusdam cupiditate veritatis accusamus numquam ex.<br/><br/>Molestiae exercitationem placeat in eaque repellendus perferendis. Consectetur excepturi dolorum sit necessitatibus sapiente eaque aspernatur. Non aperiam voluptas et consequatur et qui. Magni libero at dolorum nisi dolorem.<br/><br/>Perferendis corporis officiis voluptatibus enim voluptas perspiciatis fuga. Sit illum ipsa est. Illum et nihil tempore aut ut et. Ratione iusto repudiandae nesciunt consectetur perspiciatis nulla quidem cupiditate. Et vel quis nesciunt assumenda soluta sunt.<br/><br/>Voluptas in non totam quo explicabo vitae aperiam. Consequatur non labore impedit amet. Voluptatum earum ut autem hic soluta.<br/><br/>Recusandae corporis hic eligendi ea est. Ullam consequatur voluptas enim id exercitationem aut qui. Corporis tempore tempore qui dolorum dicta. Quis praesentium rem nihil sequi dicta. Ex reprehenderit nemo qui qui et eius.<br/><br/>In accusantium ipsa aut ipsa delectus omnis dolores. Fugiat est dolore rerum libero eos et praesentium.<br/><br/>Debitis aut ab recusandae sit in unde. Est aut officiis magni quia consequatur blanditiis. Consectetur delectus praesentium enim officia soluta omnis. Asperiores accusamus dolores ut cumque possimus consequuntur.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `pages` VALUES (5, 'pariatur-enim', NULL, 'Pariatur Enim', 'Earum aut quidem consequatur corrupti nostrum.', 'Et quos ut dolore ipsam eos. Delectus perferendis id sunt officiis. Quia labore ullam omnis alias ipsam excepturi molestiae. Voluptate dolorum alias explicabo vero molestiae illum.<br/><br/>Et mollitia eligendi rerum qui enim quis. Expedita quisquam aliquid qui sint quibusdam non ad ipsa. Est aliquid voluptatem consequatur tempora voluptates veniam.<br/><br/>Rerum consequatur doloremque facere veritatis voluptates. Voluptatibus quis voluptatibus ex at sunt non. Itaque sequi provident ullam blanditiis iure itaque illo. Pariatur tenetur sit dicta. Rerum ipsa facilis quo in quibusdam.<br/><br/>Totam sed harum id modi illo. Nulla minima voluptatem suscipit mollitia libero commodi dignissimos. Molestias ut delectus nam numquam quam. Ut ipsam sit totam dignissimos dicta est.<br/><br/>Dicta veritatis et laudantium quibusdam. Omnis est saepe deserunt aperiam asperiores quisquam aut. Reiciendis et deserunt atque deleniti.<br/><br/>Quos maxime quia et. Distinctio iste omnis sint odio culpa. Illum enim dicta voluptatem nobis minima deleniti delectus.<br/><br/>Eaque sequi impedit fugiat nihil incidunt tempore facilis. Maiores inventore ipsum consequuntur ad dicta qui et asperiores. Omnis illum omnis et incidunt et sint.<br/><br/>Quis voluptates repellat dolorum commodi et enim. Adipisci laborum magnam itaque quia illum modi nesciunt. Tempora dolor aut natus. Corrupti est illo repellat veniam quod facere doloribus eum.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `pages` VALUES (6, 'eligendi-corrupti', NULL, 'Eligendi Corrupti', 'Tenetur ut autem qui rerum.', 'Totam voluptas consequatur minus. Qui id odit maiores sit. Quos illo voluptatem ut suscipit odit et.<br/><br/>Quia dignissimos ut deserunt nisi aut exercitationem nostrum exercitationem. Est ipsum eius aperiam aut quasi maiores. Dolores autem sed blanditiis hic dolor dolorem. Possimus cum ut corporis cumque.<br/><br/>Et laborum sed in repudiandae quo quis ipsum iure. Temporibus inventore tempora officia pariatur odit omnis minima. Excepturi tenetur corrupti quae nostrum.<br/><br/>Quae eos enim dignissimos enim. Et eaque rerum consequatur quidem. Rerum excepturi architecto ad ea voluptas. Veritatis nemo ut ipsam voluptatem tenetur eum natus. Illo est cum distinctio.<br/><br/>Consequuntur perferendis et eos voluptate ipsam eligendi modi labore. Quia facere odio omnis. Velit laudantium nobis ut accusantium eos itaque tenetur.<br/><br/>Aut quas voluptatem ullam et itaque praesentium possimus. Quae sit optio ut qui. Sunt qui optio distinctio autem. Aut aut nam sed nulla quos et sit. Et illo molestias quia nam.<br/><br/>Est aut culpa aliquid qui dolor culpa. Est ut ea sed qui quo officiis itaque.<br/><br/>Quia quos qui voluptate est ut. Maxime omnis ab et sequi consectetur rerum nulla voluptatibus. Quidem magni est dolorum mollitia fugit. Aut mollitia nulla vero nam facere ut.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `pages` VALUES (7, 'optio-totam', 4, 'Optio Totam', 'Ullam maxime et sed veniam.', 'Non minus officia dignissimos laboriosam aliquid. Molestiae omnis molestiae et voluptatem facilis. Rerum nesciunt quae autem aperiam eveniet autem. Asperiores sit aut ea veniam ut.<br/><br/>Quia velit aut rerum repellendus praesentium sit. Adipisci molestiae veniam labore est id vel rerum. Voluptatem ut dolore incidunt ut odio. Quidem quis pariatur repudiandae veritatis quo et ipsam.<br/><br/>Possimus asperiores magni ex distinctio in. Qui nulla molestiae provident quo voluptas. Explicabo dicta veritatis est deleniti.<br/><br/>Soluta deserunt et maiores vel similique sit. Ratione earum illo non quisquam veniam. Nulla veniam nihil sunt. Quaerat dicta sed et qui fuga.<br/><br/>Possimus velit necessitatibus eum sint fugiat totam. Nam molestiae id ipsum quasi. Illum hic velit tempora voluptas qui. Voluptas et non iure inventore non est rerum.<br/><br/>Deserunt qui corrupti laboriosam aspernatur. Ipsa ut autem aut voluptates. Cupiditate dolores dolores veniam ipsam ut eum provident nesciunt.<br/><br/>Placeat quia amet sit autem minus nemo. Pariatur ut voluptas aperiam ad praesentium. Sapiente exercitationem ut quia voluptates quasi. Voluptatem temporibus occaecati dicta cupiditate voluptate quia eum.<br/><br/>Voluptatem reprehenderit eaque dicta id. At cumque ad qui minus est consequuntur. Blanditiis molestiae inventore labore sit. Quisquam omnis ea quas ut recusandae quis.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `pages` VALUES (8, 'necessitatibus-a', 4, 'Necessitatibus A', 'Maiores perspiciatis aut aliquam est qui.', 'Nemo praesentium quas minus voluptatem itaque voluptatem. Natus eos eum itaque illum dicta quis nulla. Omnis beatae laborum nulla dolor accusamus qui perferendis quo. Ut repellat sed tempora ad nam ut.<br/><br/>Autem ut quae soluta nihil. Sed sed eius ab similique voluptas. Voluptatem repudiandae possimus commodi id quisquam. Excepturi architecto id tenetur quos est eius voluptatibus.<br/><br/>Iusto non sed mollitia eos repellat modi sit. Blanditiis perferendis blanditiis et consectetur. Minima occaecati ut hic omnis ea dolorem. Labore ut consequatur voluptas harum facilis.<br/><br/>Ex accusamus velit ducimus repellendus velit facere suscipit iste. Ullam alias perferendis deserunt sint cum ullam quo facilis. Deserunt similique ea accusantium facilis.<br/><br/>Quasi nemo error odit porro labore et et. Nisi perspiciatis similique odit provident vel voluptatem vero. Facilis aut sed aliquam aut quae. Ratione architecto illo occaecati veritatis enim veritatis consequatur perferendis.<br/><br/>Minus sed explicabo quia est et. Et libero molestias necessitatibus corrupti. Voluptas ipsa velit voluptatibus consequatur et quaerat natus. Ratione aspernatur fuga eveniet consequatur.<br/><br/>Similique animi sed deserunt autem neque vel non. Est soluta voluptas iste fuga non aut in. Enim aliquam dignissimos quisquam sed debitis et. Aliquid velit hic numquam aut consequatur accusantium veritatis omnis.<br/><br/>Atque facere vel consectetur corporis quo quos. Vero sed omnis recusandae voluptas accusamus sunt est sit. Itaque eligendi architecto non molestiae ex.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `pages` VALUES (9, 'voluptas-soluta', 5, 'Voluptas Soluta', 'Itaque vitae odit animi doloremque recusandae.', 'Est et quos est. Nobis quibusdam rem impedit aliquid et voluptas quo maxime. Eos cum quis nulla sit qui.<br/><br/>Ut ea et voluptates. Distinctio voluptatum et necessitatibus provident. Perspiciatis eaque in beatae modi quae.<br/><br/>Dolores provident nihil ducimus maxime atque quisquam. Accusantium unde rerum quia voluptatibus autem.<br/><br/>Ut et neque blanditiis assumenda et distinctio alias. Quis consectetur quo totam quod doloremque. Voluptas autem consequuntur sed hic magni debitis qui velit.<br/><br/>Iste nam deleniti vero architecto voluptatem voluptatum ipsa ut. Laudantium vel nihil aut odio et. Maiores molestias et ea nemo saepe veritatis.<br/><br/>Nulla temporibus quia sunt perspiciatis facilis. Dolor tempore rerum itaque optio. Id porro dolor dolor reiciendis voluptatem natus illum.<br/><br/>Rem quos explicabo aperiam. Velit vel ipsum veniam quia ipsam hic. Dolores voluptate pariatur voluptate molestiae ut. Doloribus nemo enim autem vitae quisquam.<br/><br/>Enim suscipit officia dolorum aliquam enim accusantium. Ea quia molestiae necessitatibus soluta. Architecto odio impedit unde ullam necessitatibus. Commodi adipisci voluptatum assumenda voluptatem laborum.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
INSERT INTO `pages` VALUES (10, 'similique-iure', 5, 'Similique Iure', 'Esse omnis suscipit rerum quia et quam et.', 'Autem repellat animi asperiores vero. Quae voluptatem nesciunt sint quo. At nihil aut minus ipsam nostrum fugiat consectetur. Eaque occaecati nam quaerat consequuntur consequatur tempore earum. Enim qui voluptatum ab ut vel.<br/><br/>Accusantium laborum perspiciatis enim et non provident. Et delectus quo fuga ea. Non explicabo odit aliquid minus. Quod iure dolor aliquid quibusdam quae. Commodi esse consequatur esse velit molestiae numquam.<br/><br/>Totam doloribus explicabo reiciendis in et itaque molestias. Consequatur quasi eum neque. Minima eos voluptas et aperiam suscipit non enim voluptatem.<br/><br/>Animi quidem delectus id. Qui nisi culpa et nulla. Optio eum repellendus est. Veritatis necessitatibus harum similique quo iure harum.<br/><br/>Consequatur provident ipsam vero odit unde. Fugit tempora sunt non. Aliquam dolor dolorum eligendi voluptas dolor quae dolores aut.<br/><br/>Et et qui nemo alias sed exercitationem. Officiis suscipit magnam est quia ab consequatur hic. Et tenetur maxime distinctio. Voluptatibus nam incidunt eum est vel officiis nulla.<br/><br/>Autem similique sint ducimus praesentium unde. Expedita pariatur repudiandae sequi odit fuga. Est quis repudiandae qui enim aliquam quo autem. Ea expedita perferendis necessitatibus molestiae.<br/><br/>Qui dolorum a praesentium rerum accusamus. Atque atque tempore nemo distinctio exercitationem. In facere saepe ratione.', '2020-11-27 03:53:25', '2020-11-27 03:53:25');
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, 1, 'apple', 1000);
INSERT INTO `products` VALUES (2, 2, 'banana', 40);
INSERT INTO `products` VALUES (3, 1, 'apple', 100);
INSERT INTO `products` VALUES (4, 2, 'banana', 200);
INSERT INTO `products` VALUES (5, 3, 'pear', 150);
INSERT INTO `products` VALUES (6, 1, 'apple', 500);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `en_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logged_in_at` timestamp NULL DEFAULT NULL,
  `logged_out_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_id` tinyint(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_ip_address_index` (`ip_address`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Yon Chivin', 'Yon Chivin', 'admin@gmail.com', '$2y$10$IbsgyyHdguNhp4m6lionS.ifLQOB1EKH1yDj6RLPexG2e4Y7MPI5e', '192.168.33.1', '3xqYiMXKEMRkATSXzASyr0AHP0l4Q9I9UhwsLnCaDQZvO9bHXnpjq9E6hDJ0', '2021-01-07 02:31:13', '2021-01-03 10:49:20', '2020-11-27 03:53:24', '2021-01-07 02:31:13', 1);
INSERT INTO `users` VALUES (2, 'Chan Dara', 'Chan Dara', 'dara@gmail.com', '$2y$10$WJbop3p5BGbZzYk4k2iC8ubbqDS4aeIgrMt/okq.TnZZHwPkLw9uG', '192.168.33.1', 'JIv1Y3PEl78Fw0zPUYkoky4W4YkHfOvzEyGVafKwIYWCuTLP5xT3RwnSo7qd', '2020-12-27 08:32:36', '2020-12-27 08:32:46', '2020-12-27 08:26:37', '2020-12-27 08:46:51', 1);
COMMIT;

-- ----------------------------
-- View structure for report_affiliate
-- ----------------------------
DROP VIEW IF EXISTS `report_affiliate`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `report_affiliate` AS select `a`.`id` AS `id`,`a`.`brand` AS `brand`,`l`.`name` AS `location_name`,`a`.`content` AS `content`,`a`.`affective_start` AS `affective_start`,`a`.`affective_end` AS `affective_end` from (`affiliates` `a` join `locations` `l` on((`l`.`location_id` = `a`.`location_id`)));

-- ----------------------------
-- Procedure structure for GetAffiliates
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetAffiliates`;
delimiter ;;
CREATE PROCEDURE `GetAffiliates`(IN `affiliate_id` INT(11))
BEGIN
	SELECT
		a.id,
		a.brand,
		l.`name` AS location_name,
		a.content,
		a.affective_start,
		a.affective_end 
	FROM
		affiliates AS a
		INNER JOIN locations AS l ON l.location_id = a.location_id
	WHERE a.id = affiliate_id;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GetAllCategories
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetAllCategories`;
delimiter ;;
CREATE PROCEDURE `GetAllCategories`()
BEGIN
	SELECT *  FROM categories;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GetAllCategories1
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetAllCategories1`;
delimiter ;;
CREATE PROCEDURE `GetAllCategories1`(IN `category_id` INT(11))
BEGIN
	SELECT *  FROM categories where id = category_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertAffiliates
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertAffiliates`;
delimiter ;;
CREATE PROCEDURE `InsertAffiliates`()
BEGIN
	INSERT INTO `homestead`.`affiliates` (
		`brand`,
		`location_id`,
		`content`,
		`created_at`,
		`created_by`,
		`affective_start`,
		`affective_end`,
		`updated_at`,
		`updated_by` 
	)
	VALUES
		(
			'OPPO',
			1,
			'Testing',
			'2021-01-26 09:07:36',
			NULL,
			'2021-01-26 09:07:39',
			'2021-01-26 09:07:44',
			'2021-01-26 09:07:47',
		NULL 
		);

END
;;
delimiter ;

-- ----------------------------
-- Event structure for TestingInsert
-- ----------------------------
DROP EVENT IF EXISTS `TestingInsert`;
delimiter ;;
CREATE EVENT `TestingInsert`
ON SCHEDULE
EVERY '30' SECOND STARTS '2021-01-26 02:38:00' ENDS '2021-01-26 02:43:00'
ON COMPLETION PRESERVE
DISABLE
DO CALL InsertAffiliates()
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table products
-- ----------------------------
DROP TRIGGER IF EXISTS `INSERT_INVENTORY`;
delimiter ;;
CREATE TRIGGER `INSERT_INVENTORY` AFTER INSERT ON `products` FOR EACH ROW IF (NEW.id IS NOT NULL AND NEW.qty IS NOT NULL) THEN
   INSERT INTO inventory(product_id, total_stock) VALUES(NEW.product_id, NEW.qty) 
      ON DUPLICATE KEY UPDATE total_stock = total_stock + NEW.qty;
END IF
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
