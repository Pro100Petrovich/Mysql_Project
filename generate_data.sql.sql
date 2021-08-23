#
# TABLE STRUCTURE FOR: articles
#

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rubric_of_article` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_of_comments` bigint(20) unsigned DEFAULT NULL,
  `id_of_creator` bigint(20) unsigned DEFAULT NULL,
  `media_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_ind` (`title`),
  KEY `id_of_creator` (`id_of_creator`),
  KEY `rubric_of_article` (`rubric_of_article`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`id_of_creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`rubric_of_article`) REFERENCES `rubrics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статьи';

INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('1', '1', 'Magni provident quidem iste sint ut est nisi.', 'Dolores esse sint necessitatibus repudiandae blanditiis consequuntur voluptas. Ut rerum dolorem corr', 'Enim et dolore expedita nobis rerum. Et non et inventore commodi voluptas. Sapiente enim vel iure et porro aut.', '7', '101', 'application/vnd.kde.kchart');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('2', '2', 'Omnis maiores provident enim.', 'Consectetur tempore dolor est beatae perferendis consectetur. Quasi in et voluptate officiis volupta', 'Et eius voluptatem hic fugiat tempora vel excepturi eum. Mollitia non dolorem fuga non et voluptatem.', '4', '102', 'image/gif');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('3', '3', 'Quidem itaque non nam saepe dolore.', 'Placeat sed accusamus ut. Quaerat non saepe est ea quasi et blanditiis. Sed non odio facilis quibusd', 'Sed et corrupti iste occaecati. Laborum et nam similique recusandae. Ipsa porro quia non.', '5', '103', 'application/vnd.sun.xml.writer');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('4', '4', 'Ea voluptatibus et occaecati dolore quia eveniet ipsa.', 'Dicta enim incidunt assumenda vitae dolorum molestias. Aut quae modi est iure suscipit. Illo rerum m', 'Commodi necessitatibus inventore aut saepe quia. Neque nobis ea asperiores eum. Ut quis cumque perspiciatis. Voluptates quo delectus ex. Ad porro iusto cupiditate magni neque molestiae debitis.', '1', '104', 'application/vnd.syncml+xml');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('5', '5', 'Ad earum ipsa ratione est sint beatae corrupti nihil.', 'Accusantium porro sapiente et error ut error cumque. Mollitia quod exercitationem temporibus facere.', 'Harum perspiciatis autem non asperiores. Ut harum deserunt et. Suscipit aperiam voluptatem quia. Aut corporis officiis quis eum consequatur praesentium.', '1', '105', 'video/jpeg');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('6', '6', 'Unde asperiores qui in.', 'Voluptatem dolor ea incidunt reprehenderit aspernatur temporibus. Fugiat vel enim officiis neque vel', 'Atque nihil voluptas impedit amet illo ex odit. Voluptates numquam non ipsam exercitationem vel libero est corrupti. Et consequuntur eveniet nulla aperiam perferendis asperiores.', '6', '107', 'application/javascript');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('7', '7', 'Pariatur qui aliquid et rem delectus asperiores.', 'Debitis blanditiis ut illum sunt. Voluptas temporibus atque id cum. Est ullam ipsa asperiores. Nihil', 'Sit consequatur nesciunt aliquam numquam vitae. Deleniti eius voluptatem sed cumque vel.', '8', '108', 'image/tiff');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('8', '8', 'Architecto sed fuga officia magni.', 'Rerum ipsam est veritatis voluptas. Qui repudiandae vitae rem hic.', 'Possimus ea molestiae sed occaecati qui accusamus ducimus. Adipisci quo quibusdam earum provident commodi dolores. Quos consectetur sapiente saepe iusto accusamus inventore. Minima ut sed distinctio.', '5', '114', 'model/x3d+xml');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('9', '9', 'Amet veniam ut est nihil est totam.', 'Cum eveniet nobis porro aliquam aliquam sunt beatae. Sunt non itaque quia incidunt quas. Et quibusda', 'Saepe temporibus aliquam dolor est. Tempora doloremque non minus. Vel quibusdam et labore qui error omnis officiis quas.', '3', '115', 'audio/x-flac');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('10', '10', 'Consequatur nam quo qui enim.', 'In quas corporis et placeat adipisci. Qui velit enim et perspiciatis et aut ut. Laudantium sit exerc', 'Quia sed ut fugiat quae nemo aliquid. Illo eum iste autem deleniti. Aliquam sit excepturi iusto accusamus. Culpa voluptatibus consequatur sit.', '8', '118', 'application/x-sql');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('11', '11', 'Maiores explicabo nulla necessitatibus consequatur asperiores.', 'Qui minus atque est. Repellendus est qui ut asperiores velit et. Eum ipsam quae commodi est sed moll', 'Maiores eos omnis maxime cum. Dolore impedit asperiores voluptas eveniet enim temporibus in saepe.', '3', '119', 'application/x-wais-source');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('12', '12', 'Neque est dignissimos ullam et enim magnam ducimus.', 'Sed ut corrupti enim voluptatem nemo officia. Quo dolorum optio esse adipisci aut in. Adipisci bland', 'Recusandae est quod sapiente ullam. Pariatur necessitatibus et reprehenderit eligendi consequatur. In nesciunt reiciendis quas sunt.', '2', '121', 'application/vnd.ms-pki.stl');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('13', '13', 'Quibusdam voluptas nulla earum.', 'Aperiam sunt vel accusantium aut. Cupiditate ea dolor a et harum dolorem. Eos est occaecati nisi eni', 'Voluptas amet odit maxime nostrum aspernatur ducimus. Harum voluptas dignissimos assumenda ut quasi. Modi minima eligendi eius velit minus aspernatur repellat.', '0', '122', 'application/vnd.ms-word.template.macroenabled.12');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('14', '14', 'Et asperiores repellendus in.', 'Officiis sit dolore ipsa. Adipisci dolorem aut ut accusamus. Nihil quia nobis nulla facilis et. Aliq', 'Totam aut laborum nam. Modi quibusdam aut officia minus excepturi. Nihil provident temporibus dignissimos qui accusantium et. Et ut voluptatibus eveniet et voluptatem magni dolore.', '0', '123', 'application/vnd.ibm.secure-container');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('15', '15', 'Molestiae quo ut non at sed.', 'Corrupti qui dolor quod corrupti. Expedita quisquam quisquam et ratione voluptatem. Impedit est non ', 'Velit mollitia aliquid quas eos. Quia nostrum omnis mollitia numquam. Molestiae sed sunt qui quia quasi consequatur repellat.', '0', '125', 'application/x-gnumeric');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('16', '1', 'Voluptates et ut officia dignissimos voluptatum quod et earum.', 'Non quo cumque et et iure et. Et voluptatum quia dolorem veritatis repellat nemo. Laudantium soluta ', 'Aliquam libero impedit molestiae ab est in. Dolor inventore vel veritatis at alias nobis eos. Voluptatibus molestiae temporibus laborum nobis.', '5', '127', 'application/vnd.ms-powerpoint.slide.macroenabled.12');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('17', '2', 'Pariatur maiores a rerum libero.', 'Delectus dolor suscipit ad non assumenda. Molestiae vel ex voluptates ad. Similique esse accusantium', 'Nihil magnam alias error et consequatur dolorem soluta. Nam saepe ducimus molestiae. Error consequuntur quibusdam consequatur ut ab et.', '8', '129', 'application/vnd.ms-excel.template.macroenabled.12');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('18', '3', 'Deserunt nisi voluptatem quasi omnis harum.', 'Consectetur et ut animi sit in aut est. Et animi voluptatem quibusdam quasi quis cum vero. Ut dicta ', 'Dicta illo officiis voluptatibus eligendi. Numquam delectus error quis quidem et tempore. Aliquam veniam nisi iure eaque. Aperiam asperiores nihil dolorum accusantium eum fugiat optio.', '3', '130', 'video/vnd.ms-playready.media.pyv');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('19', '4', 'Culpa ut animi laborum error.', 'Cupiditate modi quibusdam laborum voluptates qui. Placeat quibusdam qui officiis provident tenetur n', 'Nostrum sequi ab est non ut rerum aut. Quia possimus ut eum minima explicabo dolor dolorum. Accusamus corporis sunt et ducimus. Voluptas asperiores placeat neque sed.', '0', '132', 'audio/vnd.rip');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('20', '5', 'Ex aliquam reprehenderit aliquam magni quaerat est et.', 'Dicta ad laborum dolore quia. A officia quod dignissimos assumenda earum ut. Et repellendus eveniet ', 'Qui molestiae velit aut praesentium laborum. Temporibus est dolor reprehenderit qui. Officiis voluptatibus in et nisi est. Inventore at voluptatem possimus nulla.', '6', '133', 'application/vnd.dolby.mlp');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('21', '6', 'Et autem vitae est architecto ipsa aut.', 'Quia est laborum impedit quod vitae delectus similique quo. Repellat qui sed voluptatem tempora tota', 'Assumenda exercitationem aut odio ex. Quaerat non optio consequatur similique. Sint libero soluta molestias incidunt laudantium molestiae delectus. Ducimus quibusdam soluta quia.', '2', '135', 'audio/webm');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('22', '7', 'Et sed suscipit ipsum dolorum nobis voluptas.', 'Fuga ut vitae beatae tempore reprehenderit tempora commodi quasi. Harum et quia est ut nihil volupta', 'Blanditiis nam deleniti perferendis placeat ducimus nulla repudiandae praesentium. Molestias unde eos et odit. Minus non vel et quo. Possimus ut maxime ratione.', '1', '140', 'application/x-glulx');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('23', '8', 'Nisi quo voluptas cum.', 'Porro quia id nam est. Dolor dolorem officia esse dicta totam et vero. Laudantium iusto quam dolorib', 'Consequuntur reprehenderit explicabo distinctio quidem aperiam totam. Qui quos et voluptate voluptas. Suscipit beatae illum beatae perferendis et dolor aut.', '9', '141', 'application/vnd.kodak-descriptor');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('24', '9', 'Corrupti alias fugiat minus.', 'Possimus nemo assumenda dolores ipsam voluptas. Porro soluta culpa incidunt quia omnis. Delectus dol', 'Dolorem quia quisquam non facilis deleniti laborum. Ut reiciendis omnis animi amet.', '3', '143', 'text/vnd.curl.dcurl');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('25', '10', 'Aut sed sed ducimus nulla aliquam qui et.', 'Culpa consequatur eum et enim ut. Quae laborum non voluptatem vel nam nihil. Nesciunt quo dignissimo', 'Facilis aspernatur at hic aperiam ullam. Cumque reprehenderit laboriosam nesciunt saepe eum. Quis maxime blanditiis veritatis perspiciatis sapiente quisquam nostrum.', '1', '144', 'audio/vnd.rip');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('26', '11', 'Autem aperiam aperiam repellat est nemo.', 'Natus consequatur hic doloremque quia odio velit voluptas. Sequi nesciunt error ducimus impedit. A q', 'Sit omnis voluptatem ut nesciunt optio. Neque quaerat nulla qui quo ipsam molestiae voluptates. Quam consequatur mollitia eveniet sit. Et velit dolorem aliquam amet saepe vero sequi eos.', '6', '146', 'image/ief');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('27', '12', 'Asperiores consequatur excepturi ipsa dolorem fugiat enim asperiores.', 'Quae temporibus omnis autem aut. Harum est ducimus excepturi nobis eligendi laudantium libero. Iusto', 'Sint veniam itaque ab consequuntur dolore voluptatum voluptatibus ut. Iste harum aperiam labore autem et facilis. Labore velit mollitia esse reiciendis sunt expedita. Maxime non quia et commodi.', '2', '147', 'text/vnd.curl.mcurl');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('28', '13', 'Consequatur vel est iure.', 'Voluptatem minus quis pariatur voluptatum laboriosam quis voluptatem. At recusandae ea vero.', 'Quo nam debitis blanditiis. Deserunt voluptatibus placeat qui quidem optio. Assumenda qui quo veritatis dolor possimus aliquam quam. Voluptatibus id at est voluptas.', '7', '148', 'application/yin+xml');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('29', '14', 'Facere occaecati pariatur qui porro aut perferendis aliquid sapiente.', 'Occaecati consequatur et autem quod corporis. Magnam nemo nisi beatae distinctio quo est. Velit recu', 'Molestiae consequatur inventore consequatur asperiores reprehenderit odit. Laudantium qui ut autem totam in repudiandae non. Suscipit maxime voluptatum dolor accusantium.', '9', '149', 'application/vnd.wap.wbxml');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('30', '15', 'Porro aut omnis est neque eius earum quos.', 'Hic magnam odio quia labore quis eius. Soluta numquam in quia quam labore illo ipsam dolor. Neque vi', 'Quia eius aut aspernatur aut. Et rerum perspiciatis veritatis ut. Exercitationem qui ut similique ut.', '2', '150', 'application/vnd.las.las+xml');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('31', '1', 'Voluptatem nulla vitae quisquam nihil minima libero optio.', 'Sed eveniet fuga nemo ut quisquam. Excepturi quia et corrupti ex fuga excepturi voluptas. Quis minim', 'Debitis aut culpa omnis rerum vitae. Blanditiis id ab autem et. Omnis nihil aut dolor sint fuga. Nam et hic id aut quia.', '3', '151', 'application/vnd.oasis.opendocument.text-web');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('32', '2', 'Id autem aperiam est alias.', 'Itaque error quo est quia et reiciendis. Ab sapiente fugiat minus est aspernatur. Quaerat non et ali', 'Possimus magni quam assumenda vel libero laborum. Consequatur minus sit qui aliquid enim laboriosam fugiat. Provident laudantium officiis molestiae magnam.', '5', '153', 'application/pkixcmp');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('33', '3', 'Impedit rem autem minus omnis dolores culpa.', 'Placeat ex error sint. Quae quo quia sed vel aut dicta natus. Sint amet ex quam dolores architecto r', 'Consequuntur optio illum est sunt nobis. Reprehenderit dolores aut inventore. Voluptas consequatur velit omnis ex ut.', '1', '154', 'audio/adpcm');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('34', '4', 'Explicabo id temporibus rerum et veritatis.', 'Necessitatibus facere at voluptatem qui debitis voluptatem. Sapiente non culpa quod id rerum aut aut', 'Repellendus ut quibusdam ipsam autem. Illo esse ut quia aut. Dolore inventore dolorum et impedit voluptatum ut.', '4', '155', 'text/vnd.fly');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('35', '5', 'Modi delectus assumenda labore nulla.', 'Eos fugit recusandae id fuga labore ex ea. Sunt delectus eligendi sit perferendis vel ea exercitatio', 'Et maiores sunt iusto vero autem qui id. Quisquam quam voluptatibus illum sed nulla. Quasi veritatis aut cum sit et.', '2', '158', 'audio/midi');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('36', '6', 'Esse at aut deserunt voluptatem autem voluptas.', 'Illum odio nobis sequi deserunt. Ea magni occaecati maiores repellat voluptatem. Omnis qui corrupti ', 'Molestiae et non quod quia iure autem. Quia sequi sed iste. Omnis ea soluta magnam ut.', '4', '159', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('37', '7', 'Ad id enim suscipit non est.', 'Fugiat quae maiores aliquid iste recusandae soluta. Aperiam aut exercitationem eos laboriosam doloru', 'Deleniti maxime facilis alias vero nemo eum. Corporis exercitationem quia consequatur. Quo ratione eum incidunt perferendis.', '4', '160', 'application/x-stuffitx');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('38', '8', 'Sed animi eligendi et aliquid.', 'Et dolor explicabo adipisci qui voluptatibus. Et labore alias doloremque ad. Enim consectetur dolori', 'Porro nam vero fugiat ea. A et sint suscipit qui consequuntur. Iste cumque quidem aut voluptates voluptatum ad exercitationem.', '2', '164', 'text/vnd.fmi.flexstor');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('39', '9', 'Quisquam laboriosam corrupti omnis iste voluptas eum.', 'Qui libero ut minima blanditiis. Excepturi at ipsam rem rerum est magnam.\nId dolor fugit odit in ut ', 'Et eligendi ratione excepturi alias et quidem assumenda. Laudantium maxime non ipsum. Quia suscipit eos doloribus dicta qui. Ut earum porro earum quidem.', '6', '167', 'audio/xm');
INSERT INTO `articles` (`id`, `rubric_of_article`, `title`, `describe`, `text`, `num_of_comments`, `id_of_creator`, `media_type`) VALUES ('40', '10', 'Non sit qui id inventore magni exercitationem eveniet.', 'Labore reiciendis vel quis quae et excepturi. Exercitationem sequi harum rerum error ut. Recusandae ', 'Voluptatem incidunt aut consequatur rerum dolor aspernatur. Labore unde ut et et. Ipsa totam omnis eos iure animi sit neque. At sunt ipsum libero minus vel eveniet accusamus.', '6', '168', 'application/vnd.ms-cab-compressed');


#
# TABLE STRUCTURE FOR: comments
#

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` bigint(20) unsigned DEFAULT NULL,
  `rubric_id` bigint(20) unsigned DEFAULT NULL,
  `article_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `body_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_id` (`article_id`),
  KEY `rubric_id` (`rubric_id`),
  KEY `from_user` (`from_user`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`rubric_id`) REFERENCES `rubrics` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Все комментарии статей';

#
# TABLE STRUCTURE FOR: creators
#

DROP TABLE IF EXISTS `creators`;

CREATE TABLE `creators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `gender` enum('m','f') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` bigint(20) unsigned DEFAULT NULL,
  `article_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_id` (`article_id`),
  KEY `creators_id_fk` (`user_id`),
  CONSTRAINT `creators_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Создатели статей';

#
# TABLE STRUCTURE FOR: favourite_articles
#

DROP TABLE IF EXISTS `favourite_articles`;

CREATE TABLE `favourite_articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) unsigned DEFAULT NULL,
  `article_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `favourite_articles_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `favourite_articles_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Любимые статьи пользователей';

INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('1', '101', '1', '1970-07-23 02:31:23');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('2', '102', '2', '1989-04-08 01:59:00');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('3', '103', '3', '1998-07-28 08:58:54');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('4', '104', '4', '1977-01-25 18:28:55');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('5', '105', '5', '1999-01-06 06:35:38');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('6', '107', '6', '2016-06-13 03:09:19');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('7', '108', '7', '1985-12-05 02:46:40');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('8', '114', '8', '2019-12-04 11:33:44');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('9', '115', '9', '1991-10-24 17:14:04');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('10', '118', '10', '2018-01-31 04:42:06');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('11', '119', '11', '1971-10-25 11:14:59');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('12', '121', '12', '2019-05-23 07:50:55');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('13', '122', '13', '1973-11-25 22:41:09');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('14', '123', '14', '1993-07-06 10:46:19');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('15', '125', '15', '1994-07-10 23:31:05');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('16', '127', '16', '2012-02-18 16:24:10');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('17', '129', '17', '1995-11-15 11:43:01');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('18', '130', '18', '1999-11-07 17:56:31');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('19', '132', '19', '2016-07-01 07:59:42');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('20', '133', '20', '2010-12-08 11:15:49');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('21', '135', '21', '2015-11-23 14:51:56');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('22', '140', '22', '1977-04-23 09:40:39');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('23', '141', '23', '1993-08-10 18:02:23');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('24', '143', '24', '1995-02-28 06:23:26');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('25', '144', '25', '1985-09-18 01:19:48');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('26', '146', '26', '1986-01-31 18:27:11');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('27', '147', '27', '2015-10-10 02:37:30');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('28', '148', '28', '1987-12-11 04:52:12');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('29', '149', '29', '2009-01-07 03:48:05');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('30', '150', '30', '1999-12-18 08:12:20');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('31', '151', '31', '2013-06-06 18:58:00');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('32', '153', '32', '2005-06-15 19:18:43');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('33', '154', '33', '1987-12-21 08:27:47');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('34', '155', '34', '1974-08-10 20:51:45');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('35', '158', '35', '1977-03-03 09:31:51');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('36', '159', '36', '1981-01-11 02:50:09');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('37', '160', '37', '2016-02-05 03:17:32');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('38', '164', '38', '1991-06-30 08:26:41');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('39', '167', '39', '2014-02-10 01:34:37');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('40', '168', '40', '1973-08-16 05:41:08');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('41', '169', '1', '1985-03-19 12:27:36');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('42', '170', '2', '2014-05-08 07:44:09');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('43', '172', '3', '1999-05-09 23:37:38');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('44', '173', '4', '2019-12-12 04:56:08');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('45', '175', '5', '2018-05-07 18:30:22');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('46', '176', '6', '2018-06-02 12:33:40');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('47', '178', '7', '1983-08-07 23:45:30');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('48', '180', '8', '1989-05-22 23:41:34');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('49', '181', '9', '2017-08-19 06:40:36');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('50', '182', '10', '2003-11-05 23:31:13');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('51', '185', '11', '2012-05-25 03:45:09');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('52', '187', '12', '2010-04-20 23:52:45');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('53', '188', '13', '2003-10-09 14:15:52');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('54', '189', '14', '1971-06-07 05:01:49');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('55', '192', '15', '1976-03-02 23:07:10');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('56', '194', '16', '2016-04-01 05:48:32');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('57', '195', '17', '1981-10-12 00:08:26');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('58', '198', '18', '1996-04-28 15:46:21');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('59', '199', '19', '2016-09-25 02:28:30');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('60', '200', '20', '2013-11-09 17:33:50');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('61', '101', '21', '2018-06-04 13:21:22');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('62', '102', '22', '2008-02-24 14:14:49');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('63', '103', '23', '1984-01-25 04:11:39');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('64', '104', '24', '1994-10-29 02:20:52');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('65', '105', '25', '2018-07-14 07:27:28');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('66', '107', '26', '1978-06-11 03:59:23');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('67', '108', '27', '2020-01-07 19:05:44');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('68', '114', '28', '2006-03-18 23:21:33');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('69', '115', '29', '1993-04-09 09:26:36');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('70', '118', '30', '1991-06-27 05:51:15');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('71', '119', '31', '1985-05-28 04:56:24');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('72', '121', '32', '1998-08-23 05:59:00');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('73', '122', '33', '2004-11-20 00:14:41');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('74', '123', '34', '1975-12-16 08:32:18');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('75', '125', '35', '2015-09-08 16:08:56');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('76', '127', '36', '2004-07-08 15:16:56');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('77', '129', '37', '1995-01-10 02:56:18');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('78', '130', '38', '1981-09-20 05:40:02');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('79', '132', '39', '1979-09-12 14:42:54');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('80', '133', '40', '1985-08-02 14:58:27');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('81', '135', '1', '1989-03-27 11:34:02');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('82', '140', '2', '1996-09-15 01:58:10');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('83', '141', '3', '1995-05-03 01:27:17');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('84', '143', '4', '1993-11-30 11:22:06');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('85', '144', '5', '2012-09-27 13:58:23');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('86', '146', '6', '2018-03-23 12:41:51');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('87', '147', '7', '2000-01-18 03:33:38');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('88', '148', '8', '2007-01-17 21:14:08');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('89', '149', '9', '1994-05-14 18:49:31');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('90', '150', '10', '2017-12-08 23:11:11');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('91', '151', '11', '1970-09-24 00:00:06');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('92', '153', '12', '1994-10-10 18:29:14');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('93', '154', '13', '1970-07-31 20:00:15');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('94', '155', '14', '1992-12-16 01:49:34');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('95', '158', '15', '1995-02-20 13:50:46');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('96', '159', '16', '1989-11-06 12:52:34');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('97', '160', '17', '2001-02-10 09:05:12');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('98', '164', '18', '2009-10-14 14:29:01');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('99', '167', '19', '1997-12-17 13:56:02');
INSERT INTO `favourite_articles` (`id`, `users_id`, `article_id`, `created_at`) VALUES ('100', '168', '20', '1974-12-07 03:07:55');


#
# TABLE STRUCTURE FOR: favourite_rubrics
#

DROP TABLE IF EXISTS `favourite_rubrics`;

CREATE TABLE `favourite_rubrics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) unsigned DEFAULT NULL,
  `rubric_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `rubric_id` (`rubric_id`),
  CONSTRAINT `favourite_rubrics_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `favourite_rubrics_ibfk_2` FOREIGN KEY (`rubric_id`) REFERENCES `rubrics` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Любимые рубрики пользователей';

INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('1', '101', '1', '2017-04-28 19:22:06', '2009-11-21 08:05:44');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('2', '102', '2', '2005-01-20 19:59:16', '2011-05-07 07:56:45');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('3', '103', '3', '2010-06-02 18:53:48', '1976-08-25 11:09:00');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('4', '104', '4', '2012-05-01 15:59:08', '1995-07-28 08:24:05');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('5', '105', '5', '1975-02-01 19:53:34', '2008-12-17 13:33:55');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('6', '107', '6', '2004-01-13 13:48:32', '1971-06-13 21:11:20');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('7', '108', '7', '2018-05-03 02:02:53', '2016-01-21 12:30:46');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('8', '114', '8', '1973-01-08 17:11:21', '2005-05-07 11:51:51');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('9', '115', '9', '1984-08-16 06:57:22', '2011-09-08 19:39:02');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('10', '118', '10', '2011-10-03 19:21:59', '2007-12-09 21:18:48');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('11', '119', '11', '1980-02-28 08:01:31', '1980-02-22 10:25:19');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('12', '121', '12', '1982-05-11 11:47:41', '1982-09-14 05:52:49');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('13', '122', '13', '2002-12-16 12:56:11', '2011-09-15 07:03:31');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('14', '123', '14', '2012-06-19 07:22:19', '2014-05-05 18:27:17');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('15', '125', '15', '2005-10-14 02:01:33', '1970-10-13 21:54:41');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('16', '127', '1', '1993-10-29 01:42:13', '1973-08-01 18:41:28');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('17', '129', '2', '2017-03-06 13:22:52', '2007-08-20 17:31:17');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('18', '130', '3', '2000-12-16 19:16:52', '1978-05-15 18:33:00');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('19', '132', '4', '2013-05-18 12:16:14', '2000-07-15 23:16:23');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('20', '133', '5', '1976-04-10 11:38:06', '2008-02-01 20:15:43');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('21', '135', '6', '2012-09-11 12:14:05', '2005-10-20 16:19:59');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('22', '140', '7', '1974-03-15 22:27:28', '1983-08-31 05:01:11');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('23', '141', '8', '1991-08-01 05:13:54', '2016-05-02 17:48:25');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('24', '143', '9', '2010-04-24 01:37:05', '1985-08-18 10:41:38');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('25', '144', '10', '2017-03-08 15:33:40', '1977-02-28 06:24:37');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('26', '146', '11', '2009-06-20 20:42:19', '1994-01-29 01:11:39');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('27', '147', '12', '2017-01-18 17:16:06', '2015-03-18 23:41:25');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('28', '148', '13', '1976-06-21 05:28:40', '2020-10-07 20:02:34');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('29', '149', '14', '1987-11-25 22:31:13', '1970-03-16 09:34:39');
INSERT INTO `favourite_rubrics` (`id`, `users_id`, `rubric_id`, `created_at`, `updated_at`) VALUES ('30', '150', '15', '2009-08-13 23:44:06', '1979-07-03 13:26:36');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Мультимедиа, которые будут использователься для визуализации статей';

INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('1', 'est', 'http://lorempixel.com/640/480/', 'application/vnd.sun.xml.draw.template');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('2', 'repellendus', 'http://lorempixel.com/640/480/', 'application/x-bittorrent');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('3', 'rerum', 'http://lorempixel.com/640/480/', 'application/vnd.oasis.opendocument.formula-template');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('4', 'provident', 'http://lorempixel.com/640/480/', 'application/vnd.oasis.opendocument.presentation');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('5', 'illum', 'http://lorempixel.com/640/480/', 'image/svg+xml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('6', 'cupiditate', 'http://lorempixel.com/640/480/', 'application/vnd.ds-keypoint');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('7', 'sunt', 'http://lorempixel.com/640/480/', 'application/vnd.denovo.fcselayout-link');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('8', 'molestiae', 'http://lorempixel.com/640/480/', 'application/vnd.oasis.opendocument.image-template');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('9', 'ut', 'http://lorempixel.com/640/480/', 'application/vnd.sun.xml.math');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('10', 'facilis', 'http://lorempixel.com/640/480/', 'video/vnd.dece.video');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('11', 'suscipit', 'http://lorempixel.com/640/480/', 'video/x-matroska');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('12', 'id', 'http://lorempixel.com/640/480/', 'video/x-ms-wmx');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('13', 'vero', 'http://lorempixel.com/640/480/', 'video/vnd.dece.mobile');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('14', 'sequi', 'http://lorempixel.com/640/480/', 'application/vnd.tmobile-livetv');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('15', 'consequatur', 'http://lorempixel.com/640/480/', 'text/cache-manifest');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('16', 'nihil', 'http://lorempixel.com/640/480/', 'application/vnd.kde.kontour');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('17', 'omnis', 'http://lorempixel.com/640/480/', 'application/pskc+xml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('18', 'consequatur', 'http://lorempixel.com/640/480/', 'application/x-font-woff');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('19', 'nemo', 'http://lorempixel.com/640/480/', 'application/vnd.llamagraphics.life-balance.exchange+xml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('20', 'voluptatem', 'http://lorempixel.com/640/480/', 'text/vnd.fly');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('21', 'soluta', 'http://lorempixel.com/640/480/', 'application/vnd.triscape.mxs');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('22', 'quia', 'http://lorempixel.com/640/480/', 'application/x-msmediaview');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('23', 'reiciendis', 'http://lorempixel.com/640/480/', 'application/vnd.kidspiration');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('24', 'et', 'http://lorempixel.com/640/480/', 'audio/x-flac');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('25', 'harum', 'http://lorempixel.com/640/480/', 'model/vnd.dwf');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('26', 'aliquid', 'http://lorempixel.com/640/480/', 'application/pskc+xml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('27', 'maxime', 'http://lorempixel.com/640/480/', 'text/troff');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('28', 'dolor', 'http://lorempixel.com/640/480/', 'application/vnd.openofficeorg.extension');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('29', 'atque', 'http://lorempixel.com/640/480/', 'application/vnd.kde.kspread');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('30', 'excepturi', 'http://lorempixel.com/640/480/', 'application/x-chess-pgn');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('31', 'et', 'http://lorempixel.com/640/480/', 'application/vnd.openxmlformats-officedocument.presentationml.slide');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('32', 'ut', 'http://lorempixel.com/640/480/', 'application/pkixcmp');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('33', 'laudantium', 'http://lorempixel.com/640/480/', 'application/vnd.sun.xml.draw.template');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('34', 'maxime', 'http://lorempixel.com/640/480/', 'application/vnd.oasis.opendocument.spreadsheet');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('35', 'autem', 'http://lorempixel.com/640/480/', 'text/vnd.in3d.spot');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('36', 'sed', 'http://lorempixel.com/640/480/', 'application/vnd.sun.xml.math');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('37', 'quasi', 'http://lorempixel.com/640/480/', 'application/vnd.xfdl');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('38', 'consectetur', 'http://lorempixel.com/640/480/', 'application/ecmascript');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('39', 'rem', 'http://lorempixel.com/640/480/', 'text/prs.lines.tag');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('40', 'atque', 'http://lorempixel.com/640/480/', 'application/vnd.ms-fontobject');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('41', 'iusto', 'http://lorempixel.com/640/480/', 'audio/x-ms-wma');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('42', 'voluptatibus', 'http://lorempixel.com/640/480/', 'audio/x-mpegurl');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('43', 'et', 'http://lorempixel.com/640/480/', 'application/x-shar');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('44', 'vero', 'http://lorempixel.com/640/480/', 'application/vnd.denovo.fcselayout-link');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('45', 'consequatur', 'http://lorempixel.com/640/480/', 'application/yang');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('46', 'voluptates', 'http://lorempixel.com/640/480/', 'application/java-archive');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('47', 'officia', 'http://lorempixel.com/640/480/', 'application/xv+xml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('48', 'autem', 'http://lorempixel.com/640/480/', 'video/mj2');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('49', 'consectetur', 'http://lorempixel.com/640/480/', 'application/vnd.fdsn.mseed');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('50', 'est', 'http://lorempixel.com/640/480/', 'application/x-xliff+xml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('51', 'voluptas', 'http://lorempixel.com/640/480/', 'audio/vnd.rip');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('52', 'vitae', 'http://lorempixel.com/640/480/', 'text/x-vcard');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('53', 'perferendis', 'http://lorempixel.com/640/480/', 'application/vnd.wap.wbxml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('54', 'ea', 'http://lorempixel.com/640/480/', 'image/png');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('55', 'hic', 'http://lorempixel.com/640/480/', 'application/vnd.ms-wpl');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('56', 'sit', 'http://lorempixel.com/640/480/', 'application/vnd.sun.xml.impress.template');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('57', 'et', 'http://lorempixel.com/640/480/', 'model/vnd.vtu');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('58', 'quam', 'http://lorempixel.com/640/480/', 'application/vnd.shana.informed.interchange');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('59', 'eos', 'http://lorempixel.com/640/480/', 'application/vnd.ms-lrm');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('60', 'sit', 'http://lorempixel.com/640/480/', 'application/vnd.oasis.opendocument.presentation');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('61', 'amet', 'http://lorempixel.com/640/480/', 'text/vnd.fly');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('62', 'debitis', 'http://lorempixel.com/640/480/', 'application/x-msmediaview');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('63', 'nihil', 'http://lorempixel.com/640/480/', 'image/x-portable-graymap');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('64', 'odit', 'http://lorempixel.com/640/480/', 'application/xop+xml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('65', 'in', 'http://lorempixel.com/640/480/', 'text/vnd.wap.wml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('66', 'quod', 'http://lorempixel.com/640/480/', 'video/vnd.dece.video');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('67', 'est', 'http://lorempixel.com/640/480/', 'application/vnd.adobe.xdp+xml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('68', 'perferendis', 'http://lorempixel.com/640/480/', 'application/vnd.shana.informed.formtemplate');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('69', 'dolorem', 'http://lorempixel.com/640/480/', 'application/x-msmediaview');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('70', 'enim', 'http://lorempixel.com/640/480/', 'video/webm');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('71', 'iusto', 'http://lorempixel.com/640/480/', 'image/svg+xml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('72', 'facilis', 'http://lorempixel.com/640/480/', 'application/x-msmetafile');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('73', 'ut', 'http://lorempixel.com/640/480/', 'audio/x-pn-realaudio-plugin');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('74', 'aut', 'http://lorempixel.com/640/480/', 'text/vnd.fly');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('75', 'necessitatibus', 'http://lorempixel.com/640/480/', 'application/vnd.flographit');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('76', 'atque', 'http://lorempixel.com/640/480/', 'application/vnd.wap.wbxml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('77', 'explicabo', 'http://lorempixel.com/640/480/', 'application/rtf');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('78', 'qui', 'http://lorempixel.com/640/480/', 'audio/mp4');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('79', 'quas', 'http://lorempixel.com/640/480/', 'image/x-3ds');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('80', 'dolorem', 'http://lorempixel.com/640/480/', 'video/x-m4v');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('81', 'incidunt', 'http://lorempixel.com/640/480/', 'text/x-setext');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('82', 'ipsum', 'http://lorempixel.com/640/480/', 'application/atom+xml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('83', 'animi', 'http://lorempixel.com/640/480/', 'model/vnd.gtw');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('84', 'eius', 'http://lorempixel.com/640/480/', 'video/x-mng');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('85', 'ab', 'http://lorempixel.com/640/480/', 'application/vnd.ms-excel.addin.macroenabled.12');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('86', 'ex', 'http://lorempixel.com/640/480/', 'application/x-blorb');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('87', 'temporibus', 'http://lorempixel.com/640/480/', 'application/vnd.wqd');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('88', 'laboriosam', 'http://lorempixel.com/640/480/', 'application/vnd.shana.informed.formdata');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('89', 'quae', 'http://lorempixel.com/640/480/', 'image/vnd.fujixerox.edmics-rlc');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('90', 'commodi', 'http://lorempixel.com/640/480/', 'application/vnd.ms-wpl');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('91', 'aut', 'http://lorempixel.com/640/480/', 'application/vnd.semd');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('92', 'rerum', 'http://lorempixel.com/640/480/', 'text/vnd.curl.mcurl');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('93', 'ut', 'http://lorempixel.com/640/480/', 'image/gif');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('94', 'voluptate', 'http://lorempixel.com/640/480/', 'text/csv');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('95', 'praesentium', 'http://lorempixel.com/640/480/', 'application/voicexml+xml');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('96', 'velit', 'http://lorempixel.com/640/480/', 'application/x-gnumeric');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('97', 'magnam', 'http://lorempixel.com/640/480/', 'text/x-asm');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('98', 'rem', 'http://lorempixel.com/640/480/', 'application/vnd.ms-word.document.macroenabled.12');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('99', 'impedit', 'http://lorempixel.com/640/480/', 'application/vnd.kodak-descriptor');
INSERT INTO `media` (`id`, `filename`, `path`, `type`) VALUES ('100', 'iste', 'http://lorempixel.com/640/480/', 'application/reginfo+xml');


#
# TABLE STRUCTURE FOR: rating_comments
#

DROP TABLE IF EXISTS `rating_comments`;

CREATE TABLE `rating_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `comments_count` bigint(20) unsigned DEFAULT NULL,
  `place` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `rating_comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Рейтинг комментаторов статей';

INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('1', '101', '130158', '73068');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('2', '102', '1335327', '380501');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('3', '103', '7870', '527');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('4', '104', '52453362', '0');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('5', '105', '8763', '8');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('6', '107', '545377', '902593');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('7', '108', '642861', '2130');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('8', '114', '0', '26');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('9', '115', '77', '109330');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('10', '118', '90834', '61');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('11', '119', '98733', '799');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('12', '121', '2773259', '495');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('13', '122', '512067953', '67');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('14', '123', '1', '32094');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('15', '125', '363318', '9');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('16', '127', '785218', '258');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('17', '129', '996060', '556');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('18', '130', '142', '261188');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('19', '132', '5116', '6341752');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('20', '133', '5860832', '409275371');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('21', '135', '416096673', '3539142');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('22', '140', '8', '5');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('23', '141', '63178', '62983');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('24', '143', '4201332', '47');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('25', '144', '5', '27169213');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('26', '146', '2896072', '688244');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('27', '147', '665054', '474');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('28', '148', '8', '6243');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('29', '149', '533923', '3842310');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('30', '150', '41368851', '83');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('31', '151', '399681642', '56');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('32', '153', '93957', '680165287');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('33', '154', '59', '6892026');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('34', '155', '43363', '92064257');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('35', '158', '356836', '40');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('36', '159', '578', '3');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('37', '160', '680', '31714326');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('38', '164', '31', '2328543');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('39', '167', '37720', '46784');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('40', '168', '7012411', '726232940');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('41', '169', '2209003', '51533');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('42', '170', '270', '80809871');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('43', '172', '51393295', '4');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('44', '173', '0', '10447');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('45', '175', '0', '4946859');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('46', '176', '60735291', '70');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('47', '178', '0', '266086');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('48', '180', '662696903', '916');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('49', '181', '4297', '2');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('50', '182', '707260463', '124');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('51', '185', '616947', '1');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('52', '187', '5', '5846');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('53', '188', '13971', '27');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('54', '189', '0', '7659638');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('55', '192', '28357', '737788');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('56', '194', '37989149', '978988');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('57', '195', '945141', '7667188');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('58', '198', '0', '47154995');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('59', '199', '7868', '117977140');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('60', '200', '77508', '7438815');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('61', '101', '86', '63');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('62', '102', '7677186', '689959011');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('63', '103', '32', '55');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('64', '104', '162602', '49574444');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('65', '105', '17862', '773854');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('66', '107', '918', '331');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('67', '108', '18651', '44940359');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('68', '114', '5', '597');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('69', '115', '22158', '56194');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('70', '118', '39317', '37');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('71', '119', '18', '4295');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('72', '121', '835975058', '7610');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('73', '122', '103', '5556111');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('74', '123', '83724060', '77210088');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('75', '125', '0', '38440138');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('76', '127', '124', '7261');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('77', '129', '4266627', '3829');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('78', '130', '28215665', '27434086');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('79', '132', '3849', '78354');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('80', '133', '0', '651230');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('81', '135', '90940403', '3431');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('82', '140', '863337579', '7');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('83', '141', '258019124', '4544');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('84', '143', '66274', '314');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('85', '144', '554933329', '174');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('86', '146', '521737', '9134');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('87', '147', '8097455', '62');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('88', '148', '78314854', '6');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('89', '149', '70008', '6425');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('90', '150', '9408', '5393981');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('91', '151', '327637', '609500');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('92', '153', '5128888', '3059478');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('93', '154', '864', '631186169');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('94', '155', '1', '890122707');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('95', '158', '71', '27166');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('96', '159', '776579176', '62987334');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('97', '160', '564', '392048894');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('98', '164', '7685', '593');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('99', '167', '8', '292823');
INSERT INTO `rating_comments` (`id`, `user_id`, `comments_count`, `place`) VALUES ('100', '168', '39', '73');


#
# TABLE STRUCTURE FOR: rubrics
#

DROP TABLE IF EXISTS `rubrics`;

CREATE TABLE `rubrics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rubric` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rubric` (`rubric`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Рубрики на разный вкус';

INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('15', 'assumenda');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('2', 'delectus');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('5', 'ea');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('8', 'eaque');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('9', 'eos');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('6', 'error');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('7', 'et');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('1', 'fuga');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('10', 'ipsum');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('13', 'iste');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('4', 'molestiae');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('14', 'occaecati');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('3', 'provident');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('12', 'repellat');
INSERT INTO `rubrics` (`id`, `rubric`) VALUES ('11', 'sapiente');


#
# TABLE STRUCTURE FOR: user_profiles
#

DROP TABLE IF EXISTS `user_profiles`;

CREATE TABLE `user_profiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `gender` enum('m','f') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `about` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`id`),
  KEY `user_name_idx` (`first_name`,`last_name`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили пользователей';

INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('1', '101', '2002-08-01 14:18:42', 'Lorine', 'Cronin', 'f', '2004-08-19', '8', 'Assumenda excepturi accusamus assumenda reiciendis. Adipisci vero et molestias dolor fugit sit. Est velit facilis et.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('2', '102', '1972-10-24 13:42:21', 'Faye', 'Gusikowski', 'f', '1984-08-05', '2', 'Eligendi quae quaerat consequatur reprehenderit quibusdam. Rem eveniet in ut sapiente dolor. Numquam iusto nulla minima impedit omnis.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('3', '103', '1986-01-21 22:09:17', 'Drew', 'Mante', 'm', '2000-10-31', '9', 'Soluta doloribus vitae quis at omnis veniam ea. Excepturi est voluptatem earum suscipit qui rem. Accusantium officiis atque nesciunt consequuntur neque eveniet et. Architecto exercitationem veritatis excepturi voluptatem consequatur sit. Veritatis sit et sunt non repellat.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('4', '104', '2003-09-30 04:33:59', 'Edison', 'Hamill', 'f', '2015-08-07', '1', 'In praesentium amet fugit nihil quisquam. Officia distinctio explicabo aspernatur quos quas omnis. Repellat reprehenderit sit voluptatum deserunt in fuga.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('5', '105', '2018-12-02 10:05:01', 'Janelle', 'Williamson', 'f', '1994-07-23', '7', 'Sunt voluptatem voluptatibus ex sint sit dolorem. Iusto itaque iste cumque dolorum fugit est et. Ad maxime dolorem non quia non. Unde maxime ad tempora aut similique adipisci nostrum.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('6', '107', '1975-12-01 21:16:23', 'Donna', 'Rice', 'm', '2015-02-14', '3', 'Voluptate voluptatem praesentium reiciendis ipsam provident in et. Occaecati est omnis autem ea voluptatum. Laborum saepe minus exercitationem est nostrum.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('7', '108', '1995-08-20 11:22:42', 'Marley', 'Mraz', 'm', '1984-10-05', '3', 'Porro aut facilis dolorem accusantium sed. Culpa voluptatum quisquam dicta quibusdam nulla. Saepe sunt et dicta dolor.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('8', '114', '1971-01-31 01:12:52', 'Cloyd', 'Shields', 'm', '1983-02-27', '4', 'Vitae sapiente vel et quis. Vel similique nihil dignissimos nihil. Ex architecto nemo voluptas eaque ipsam tenetur blanditiis. Ullam iusto ullam dolorem velit id.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('9', '115', '1985-04-27 04:42:49', 'Shaina', 'Herzog', 'm', '2016-12-23', '6', 'Vero ducimus numquam sunt qui. Recusandae consectetur unde nostrum tenetur earum. Et fugiat omnis consequuntur. Hic est consequatur commodi consequatur blanditiis earum.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('10', '118', '1992-09-01 01:42:40', 'Christina', 'Jacobi', 'm', '1985-09-29', '4', 'Perferendis ut incidunt est quas. Ut quam pariatur quibusdam eum et vel. Mollitia dolores provident veritatis aut. Corrupti assumenda cum odio beatae quo esse enim.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('11', '119', '1970-08-23 16:43:04', 'Lurline', 'McGlynn', 'm', '2014-06-07', '1', 'At aut sint et nemo quos nisi aut. Qui non et vel quis vero non. Commodi quia numquam eius sed nulla. Voluptate esse officia voluptatem ipsam nemo velit exercitationem quibusdam.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('12', '121', '1988-02-21 18:22:03', 'Shea', 'Schimmel', 'f', '2007-10-26', '8', 'Et laudantium voluptate repudiandae. Deserunt et dolor est pariatur voluptates amet. Adipisci iste occaecati quia voluptas.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('13', '122', '1984-10-22 11:04:02', 'Isaac', 'Gibson', 'f', '2020-09-13', '1', 'Vitae quis at consequatur provident provident. Dicta reiciendis deserunt pariatur repellendus. Vero a saepe aut eius et ex. Earum animi in alias nobis consectetur placeat. Nihil aliquam quisquam consequatur atque quas ducimus aspernatur.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('14', '123', '2011-05-16 00:06:27', 'Orlo', 'Heller', 'm', '2013-01-16', '8', 'Sed pariatur eveniet et officiis. Aliquid vero animi ut dolores velit ex. Ea ea vel enim et.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('15', '125', '1986-11-22 08:04:13', 'May', 'Bashirian', 'f', '1987-02-16', '4', 'Id eos qui veritatis possimus. Cumque impedit quae itaque voluptas beatae commodi. Ipsam quia fugit sunt cupiditate dicta ea. Provident minus reiciendis aut excepturi.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('16', '127', '1983-05-21 00:07:00', 'Alia', 'Ullrich', 'm', '1972-06-09', '5', 'Fugiat et animi ipsam mollitia sequi consequatur voluptatem. Voluptates dicta repellendus in similique. Cupiditate omnis tenetur exercitationem sunt in in odio sint. Iure eveniet qui impedit aut aperiam ut asperiores.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('17', '129', '1992-03-28 07:27:24', 'Julianne', 'Konopelski', 'm', '1991-11-26', '8', 'Non consequuntur repudiandae sapiente corporis qui. Placeat facilis voluptate omnis nisi aliquid. Recusandae cumque eveniet qui ratione optio autem. Minus aut in sapiente.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('18', '130', '1975-07-11 06:44:04', 'Jamar', 'Anderson', 'f', '2002-06-12', '5', 'Distinctio architecto quisquam nihil sed. Nam velit nesciunt deleniti dignissimos beatae quisquam. Perspiciatis rerum consequatur quos nemo aut. Maxime magni error nesciunt ut.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('19', '132', '2018-04-02 21:36:09', 'Dimitri', 'DuBuque', 'f', '2002-01-06', '3', 'Fuga officia provident assumenda placeat nesciunt rerum id incidunt. Minima eaque molestias omnis facilis velit nisi amet impedit. Atque possimus aliquam ducimus est illo ut voluptatem in.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('20', '133', '2017-08-16 08:04:18', 'Marcia', 'Rosenbaum', 'f', '2021-06-15', '4', 'Perspiciatis velit assumenda quam quasi est. Aut fuga velit dolore quos nisi nam. Eos omnis hic perspiciatis aut eveniet sed. Sit perferendis ut et laudantium beatae laudantium.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('21', '135', '2019-01-18 02:28:56', 'Reese', 'Kuhic', 'f', '1977-12-07', '5', 'Aut error aut officiis dignissimos quo qui. Iusto tempore minus qui ea at. Temporibus architecto qui autem explicabo voluptatem. Eos ducimus magni fuga dolor sint.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('22', '140', '2006-03-03 18:21:19', 'Claude', 'McLaughlin', 'f', '1976-04-04', '1', 'Dolorem impedit similique error quo culpa repellat pariatur. Fugit dolor sed natus quidem. Inventore vitae illum veritatis laborum dolores voluptate at minima.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('23', '141', '1970-06-15 13:52:52', 'Agustina', 'Wolff', 'f', '1987-09-07', '5', 'Est odit cumque sapiente placeat veniam nesciunt ipsa distinctio. Ad pariatur unde sunt eos eligendi est. Cum labore quidem ea fugiat cumque. Et quia doloribus exercitationem officia velit eveniet corrupti.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('24', '143', '1999-11-23 10:26:07', 'Rebeka', 'Tillman', 'm', '1984-04-14', '1', 'Dolorem magnam repellendus rerum odio consequuntur praesentium omnis. Nobis cumque quia neque libero omnis.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('25', '144', '1979-03-26 22:29:19', 'Myrl', 'Rodriguez', 'f', '1998-05-11', '1', 'Et atque et iusto corrupti minus explicabo. Consequatur maxime non laudantium sed corporis explicabo distinctio. In quos ut illum veritatis repellendus qui eaque. Est atque consequatur odit similique animi enim itaque.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('26', '146', '2006-11-03 19:19:30', 'Helmer', 'Tillman', 'm', '1979-10-31', '8', 'Sed voluptatem non ut dolore aut a. Eveniet est amet explicabo id. Molestiae suscipit ab beatae rerum voluptatem doloribus assumenda.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('27', '147', '1976-05-13 10:16:57', 'Lina', 'Glover', 'f', '1972-05-18', '9', 'Error quia ut rerum vel ex. Voluptas numquam reiciendis est velit. Minus deleniti consequatur sit non. Magnam non amet et.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('28', '148', '1997-03-05 06:47:29', 'Moriah', 'Nienow', 'm', '1975-12-17', '0', 'Adipisci placeat repudiandae velit voluptatem omnis quo. Sed sed rerum amet facere numquam asperiores quam hic. Vero veniam vitae dolores consectetur. Assumenda cupiditate autem iste corporis.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('29', '149', '1991-02-14 17:55:47', 'Geo', 'Doyle', 'm', '2008-12-31', '6', 'Sit officia natus impedit qui doloremque et ratione. Nemo possimus consequatur suscipit.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('30', '150', '2002-01-13 19:57:43', 'Belle', 'Christiansen', 'f', '1984-03-21', '3', 'Laborum qui minus nesciunt delectus nesciunt. Perspiciatis distinctio maxime aut dolores.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('31', '151', '1975-10-26 11:15:25', 'Dusty', 'Mayer', 'm', '2019-01-28', '1', 'Cumque eius harum ex quia. Eligendi molestiae odio fuga. Occaecati aut facilis asperiores. Et exercitationem voluptas et doloremque autem qui saepe. Est minus quas voluptatem iusto vel reiciendis.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('32', '153', '1982-09-24 05:18:04', 'Marcelo', 'Yost', 'f', '2015-06-01', '6', 'Illo in adipisci ut autem reiciendis accusamus voluptatem modi. Eum saepe culpa explicabo aut. Id et assumenda ex quia consequatur.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('33', '154', '1993-03-27 23:53:23', 'Kaley', 'Hirthe', 'f', '2016-09-09', '8', 'Consequatur quisquam enim omnis ullam. Odit non aliquid illum dolore odio aspernatur officiis.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('34', '155', '2007-10-19 08:24:25', 'Jackeline', 'Cronin', 'm', '2018-01-29', '3', 'Dolor voluptas commodi et. Aut nihil odio reprehenderit atque adipisci.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('35', '158', '2012-03-17 16:47:57', 'Muhammad', 'Rodriguez', 'm', '1977-03-16', '2', 'Autem quia omnis rerum aut qui dolorem aut dolor. Nam et alias consequatur id inventore quam velit similique. Est ex velit et voluptatem.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('36', '159', '2019-05-17 10:00:07', 'Elvera', 'Monahan', 'm', '2014-05-10', '9', 'Sint voluptatem minima dolores ut doloribus quos non ratione. Neque sit ad omnis fuga qui molestias nostrum omnis. Et eum inventore odio earum enim qui quibusdam. Nisi a et ut aperiam qui et.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('37', '160', '1999-11-19 19:06:21', 'Chris', 'O\'Kon', 'm', '2018-09-06', '2', 'In praesentium voluptas consequuntur eveniet aliquam qui unde. Minus vitae sunt doloribus illo et exercitationem explicabo. Quas iure ipsam dolor. Vel asperiores odio provident totam tempora incidunt nostrum.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('38', '164', '2002-10-17 04:46:34', 'Alysson', 'Corkery', 'm', '1982-05-04', '5', 'Cumque aut ut autem illum sunt. Vitae sit nostrum dolores. Iure beatae mollitia possimus.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('39', '167', '1991-09-16 20:31:26', 'Janie', 'Stehr', 'f', '2021-08-14', '8', 'Earum rem laboriosam eius ipsum ipsum. Tenetur rerum molestias dicta quas. Est et sunt et harum. Aspernatur enim cum minima iure soluta eius libero.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('40', '168', '1991-05-14 19:22:47', 'Katherine', 'Romaguera', 'f', '2004-03-05', '1', 'Eos et qui dolores excepturi omnis dolorem. Eum voluptas quam minima. Nisi fugiat in molestiae vero.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('41', '169', '2014-06-16 13:31:55', 'Destin', 'Cole', 'm', '2013-01-28', '0', 'Ab voluptatem sit occaecati repudiandae eos minima. Minus magni dolorum et architecto sunt quo. Delectus modi rerum voluptatum accusamus molestias. Voluptas consectetur repudiandae harum.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('42', '170', '2015-11-05 07:42:44', 'Judge', 'Gerhold', 'f', '1989-10-21', '1', 'Hic beatae aperiam consequatur eius est. Quaerat hic consequatur aliquam voluptatem laudantium veniam sunt ab. Quia dolore ut placeat omnis ut.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('43', '172', '1980-04-11 09:59:55', 'Rebeka', 'Morar', 'f', '1985-07-23', '3', 'Laborum ut dicta dolorem soluta et voluptatum unde. Qui sint mollitia voluptas quaerat rerum non eveniet error. Quia labore quae nisi iusto quod veritatis molestias.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('44', '173', '1991-01-31 20:06:13', 'Thomas', 'Murray', 'm', '1992-02-21', '6', 'Magni quo esse quod autem. Ipsam mollitia sed voluptatem. Et non aperiam impedit itaque perferendis rerum error. Reiciendis et adipisci incidunt in.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('45', '175', '2014-10-15 13:48:17', 'Trent', 'Terry', 'm', '1970-05-19', '1', 'Non vel culpa ipsum esse recusandae pariatur cupiditate. Voluptas facere facilis consequuntur est temporibus omnis dicta. Deleniti velit eum aliquam aut.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('46', '176', '1996-01-18 00:34:55', 'Irving', 'Oberbrunner', 'f', '2004-10-23', '1', 'Officiis totam sunt ipsam provident sint minus illum. Voluptatum natus amet a. Tenetur quibusdam similique et quos dolore dolorum.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('47', '178', '1995-04-20 15:16:04', 'Jessy', 'Cummings', 'f', '1980-03-05', '7', 'Alias alias et dolore molestiae. Maxime quae temporibus et sint quia veritatis. Sint non veritatis molestiae iure neque doloremque. Neque ut illum non architecto repellat tempore est.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('48', '180', '1970-11-28 15:47:29', 'Dorcas', 'Raynor', 'f', '2017-09-30', '9', 'Saepe qui doloremque cupiditate quos non ipsa ut qui. Aut ullam animi aut maiores ut ipsum ea. Magni id reiciendis et quis illum omnis dolores facere.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('49', '181', '2008-11-30 02:40:26', 'Sadie', 'Koelpin', 'f', '1970-12-07', '0', 'Qui magnam placeat facilis aut aut. Mollitia mollitia est ut repellat recusandae dolore rerum. Consectetur distinctio quo repellat.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('50', '182', '2002-11-20 08:43:24', 'Alexanne', 'Harris', 'm', '1972-01-05', '3', 'Dolor est aut maxime et quia doloribus libero recusandae. Fuga at unde dolores consequatur maxime repellat. Ratione tempora ut rerum.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('51', '185', '1997-12-23 15:43:06', 'Tremayne', 'Olson', 'f', '1972-08-08', '8', 'Distinctio unde omnis omnis minus quaerat. Non similique velit reiciendis itaque. Et et maiores sit dicta aut quis error possimus. Commodi dolore praesentium cum. Quia recusandae aut saepe delectus est ex optio.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('52', '187', '2016-12-31 06:25:51', 'Delpha', 'Graham', 'f', '1996-03-10', '3', 'Sint sunt eaque aperiam in inventore ab. Ullam et nulla sequi dolorem vitae quo minima. Ipsum repellat sunt voluptatum et et. Qui corporis ducimus quam est magni ipsa sit. Voluptatem reiciendis perspiciatis nisi illum voluptatem a.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('53', '188', '1992-11-25 15:12:59', 'Gianni', 'Fay', 'm', '1978-03-10', '7', 'Similique unde odit dolore temporibus quibusdam quod. Velit nulla est sunt tempore quia. Asperiores sapiente nemo eos quis nostrum et numquam molestiae. Velit consequatur est deserunt rem dolorum sunt fugiat.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('54', '189', '2015-01-30 17:36:40', 'Abdullah', 'Brekke', 'm', '1973-03-12', '7', 'Aut ipsa dolor eligendi voluptas. Qui nesciunt ipsa distinctio beatae aut pariatur expedita. Porro nam nulla aut autem. Molestiae quo et nisi.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('55', '192', '2016-03-09 21:56:42', 'Hester', 'Adams', 'm', '2009-04-02', '6', 'Perferendis qui expedita ab vitae. Mollitia et iure sed rerum perferendis repellat aliquid. Voluptates et impedit et neque possimus rerum.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('56', '194', '2008-01-14 12:29:36', 'Aric', 'Vandervort', 'm', '1993-07-25', '7', 'Non eveniet quia reiciendis consequatur veritatis. Est voluptatem placeat commodi eos nulla harum doloremque. Itaque fugiat ipsum nihil fugiat quisquam facilis. Pariatur vitae itaque omnis aut impedit.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('57', '195', '2020-01-07 07:49:34', 'Katelin', 'Harvey', 'f', '1990-01-10', '0', 'Qui dicta sit ipsa ut non. Ut nam rerum quia aliquam ipsa atque. Ipsum voluptatem dolores qui aspernatur dolorem consequuntur. Dicta eligendi debitis praesentium consequatur.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('58', '198', '2002-09-19 09:37:03', 'Liza', 'Waelchi', 'm', '2017-05-15', '4', 'Amet eum nemo voluptas nemo et exercitationem. Enim quisquam perferendis omnis quae dolorem atque in. Eum recusandae facere impedit eum doloremque quo ipsam dolorem.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('59', '199', '2020-03-06 14:32:37', 'Brittany', 'Heaney', 'f', '2020-01-24', '5', 'Sit blanditiis repellat praesentium occaecati eum. Quia temporibus ut error quam molestias totam ipsam at. Accusamus fugit culpa exercitationem corrupti quo delectus necessitatibus.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('60', '200', '1974-08-20 00:00:44', 'Jammie', 'Lockman', 'm', '1986-11-20', '2', 'Quas quia rerum error quibusdam porro sit. Deleniti qui molestias quis distinctio. Sequi fugiat aut ratione neque. Harum omnis sequi repellendus quo aliquam.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('61', '101', '1976-03-19 22:42:09', 'Arnaldo', 'Marks', 'f', '1984-12-20', '3', 'Magni officiis quia praesentium. Doloremque nostrum ea voluptatem quisquam. Dolores sed necessitatibus autem et in numquam ut dolores. Nemo vel voluptatibus sed fugiat sequi.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('62', '102', '2005-04-09 21:26:40', 'Beaulah', 'Mertz', 'f', '1992-01-08', '2', 'Consequatur ullam possimus ut qui sint. Doloribus qui nesciunt saepe eligendi ut culpa nemo. Eius saepe et et beatae dolore vel quis.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('63', '103', '2005-06-22 19:51:02', 'Mckayla', 'Bruen', 'f', '1996-11-02', '0', 'Suscipit quo dolore maxime. Ipsa unde et sed facilis tempore ratione nesciunt non. Qui quibusdam totam voluptas id. Dolor similique architecto beatae tenetur voluptates ea corrupti ipsa.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('64', '104', '1970-02-11 03:24:27', 'Alysa', 'Sipes', 'm', '2002-04-22', '4', 'Hic necessitatibus aut consequatur voluptates qui voluptatem repellendus. Sit quo rerum rem. Quia libero ut eaque repellat. Aliquam rem ab sit aliquam.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('65', '105', '2014-05-23 14:39:15', 'Sylvan', 'Hyatt', 'f', '1978-12-30', '9', 'Sed quis iure consequuntur assumenda illum aut corrupti. Quo nisi non et qui. Aut sint praesentium eum omnis numquam ex.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('66', '107', '1977-02-11 03:30:24', 'Maryam', 'Nitzsche', 'm', '1991-04-15', '4', 'Magnam a dolor nesciunt amet. Eos beatae eveniet aut aliquid explicabo voluptates ipsa. Tenetur officia modi cumque natus et. Beatae facere quos aperiam dolores. Quo ab dignissimos quasi et.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('67', '108', '1997-12-02 22:55:40', 'Kelly', 'Zboncak', 'm', '2008-12-16', '8', 'Nulla minima voluptates minima. Quae atque aut impedit doloremque est accusamus sunt et. Natus id culpa sed doloribus veritatis assumenda repellat suscipit. Corrupti amet nihil vel ad. Quod fugiat dolorem debitis distinctio.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('68', '114', '1982-06-28 19:02:21', 'Soledad', 'Buckridge', 'f', '1993-06-07', '2', 'Qui voluptas quo quam. Molestiae velit delectus eos at dicta ducimus commodi. Non est voluptates quis et voluptatem dicta ipsa.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('69', '115', '2014-03-24 11:13:24', 'Aubrey', 'Franecki', 'm', '1995-01-31', '3', 'Explicabo est sint est reprehenderit sunt enim dolor. Illo eos et sint occaecati tempora. Sed placeat repellendus sed occaecati perspiciatis. Aut ut in sint reprehenderit quos.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('70', '118', '1987-04-04 22:39:21', 'Raven', 'Kihn', 'm', '1987-08-10', '9', 'Quibusdam soluta dolorem odit expedita est facilis. Voluptates aperiam corporis quia enim. Aspernatur aut est et tempore nihil.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('71', '119', '2014-08-21 23:22:35', 'Angeline', 'Schumm', 'f', '1970-01-16', '3', 'Error non excepturi id numquam assumenda voluptas. Iste qui recusandae corporis incidunt. Nihil molestiae dolorem voluptate consequatur et voluptatibus. Aperiam minima deserunt et et odit ea velit.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('72', '121', '1976-11-11 12:12:21', 'Reuben', 'Wyman', 'm', '2006-12-10', '9', 'Earum beatae harum quibusdam in vel tempora. Voluptatem earum cum aut impedit placeat fugit debitis architecto. Omnis iusto itaque et non officiis et.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('73', '122', '1981-01-29 17:29:02', 'Lila', 'Haag', 'm', '2017-06-08', '0', 'Perspiciatis qui suscipit natus ut aut porro. Ipsam nobis dolor aspernatur dolore. Placeat illo quae et quia. Rerum nobis veniam excepturi est.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('74', '123', '2012-06-19 19:09:31', 'Eryn', 'Casper', 'f', '1994-12-30', '0', 'Omnis culpa quia perferendis sequi. Iusto sit voluptatem reprehenderit est consequatur sint distinctio. Dignissimos consequatur in est aut et voluptatem necessitatibus.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('75', '125', '1999-06-29 03:21:32', 'Neil', 'Conroy', 'm', '1979-06-30', '7', 'Officiis ipsum quo et eligendi sit eum. Incidunt laboriosam omnis ut sed et quia dignissimos. Mollitia omnis dolorum minus dolore.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('76', '127', '1991-06-14 01:20:39', 'Riley', 'Ondricka', 'm', '2012-09-17', '3', 'Consectetur porro cum laudantium harum possimus illo delectus alias. Est sit architecto atque culpa nobis.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('77', '129', '1998-10-23 23:55:30', 'Milton', 'Stroman', 'm', '1990-06-15', '5', 'Debitis ducimus quod ullam enim est. Corrupti commodi aut qui aut est ad quia maxime. Sunt sit fugiat sit.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('78', '130', '1975-07-05 22:17:39', 'Jabari', 'Oberbrunner', 'm', '2018-12-18', '2', 'At et omnis omnis aut. Cumque necessitatibus rerum qui tempore ullam. Eveniet quae delectus explicabo eum vel pariatur. Ut reprehenderit sit deleniti est quaerat tenetur inventore.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('79', '132', '2006-04-08 05:34:37', 'Kyleigh', 'Lakin', 'f', '2007-09-10', '3', 'Omnis magni labore aut architecto temporibus labore. Placeat nobis neque sint non voluptatem. Laudantium dignissimos voluptatum quod ut quisquam quo. Quo quam non voluptatem voluptas molestiae ea sit.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('80', '133', '1976-10-08 16:13:02', 'Toby', 'Wunsch', 'm', '1981-01-08', '4', 'Non et maxime est blanditiis ipsa nam laudantium. Praesentium veniam assumenda incidunt dolorum incidunt quis est. Dicta eaque voluptatum eos quo quisquam eaque omnis. Hic architecto molestiae inventore numquam aliquid et.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('81', '135', '1999-08-28 16:13:54', 'Hallie', 'Daniel', 'f', '2013-08-26', '7', 'Explicabo vitae eius ut. Blanditiis eum quia excepturi nesciunt est similique dignissimos. Veniam ut doloribus architecto et nobis maxime. Error occaecati libero sit quam.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('82', '140', '1995-02-22 13:00:01', 'Nathen', 'Bernhard', 'f', '1992-10-10', '5', 'Rem libero libero rerum sit quia inventore sint. Officia eveniet earum eaque. Sit minima sit delectus.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('83', '141', '1998-01-08 13:56:56', 'Joseph', 'Christiansen', 'm', '2018-10-09', '4', 'Et fuga incidunt qui hic. Ea magni et ea quisquam.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('84', '143', '1988-10-25 14:49:23', 'Allan', 'Predovic', 'm', '1976-07-07', '1', 'Reiciendis expedita qui omnis ut explicabo facere. Architecto voluptas ut eligendi occaecati itaque voluptatem eius. Tenetur ratione illum a molestiae. Dolorem voluptates rerum repellat sint. Consequatur ullam illo nostrum tempora possimus.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('85', '144', '2009-05-27 12:16:59', 'Stella', 'Cremin', 'f', '2010-01-04', '8', 'Consectetur dolorem ut natus illo. Repudiandae quis qui et non. Fugit molestiae fugiat et. Optio delectus aut at est iure distinctio quasi.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('86', '146', '2012-08-26 10:54:41', 'Sim', 'Flatley', 'f', '1986-03-11', '4', 'Ipsum est aliquam aut explicabo. Doloribus debitis quod quia aut placeat. Sit quo nobis fugit aliquid et.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('87', '147', '2007-09-22 04:34:06', 'Madge', 'Kirlin', 'f', '2004-03-12', '5', 'Quibusdam sed totam odit odio. Aut ducimus ratione ut numquam et. Praesentium ab quos et sed.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('88', '148', '1984-09-01 20:55:56', 'Emmanuel', 'Dibbert', 'f', '2018-04-13', '0', 'Dolorem numquam est voluptates veritatis voluptatibus aliquam. Ut magnam illo impedit nobis repudiandae cumque. Molestiae odio atque repudiandae dolores rem ipsa beatae.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('89', '149', '1988-05-31 23:07:14', 'Wilma', 'Bashirian', 'm', '2009-01-08', '2', 'Quae itaque ut explicabo asperiores ut. Exercitationem et qui sit repellat omnis.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('90', '150', '1985-04-22 13:48:03', 'Marcelino', 'Abernathy', 'f', '1981-08-03', '6', 'Ullam mollitia esse rerum voluptas inventore laborum voluptas. Provident odit ut libero nihil atque consequatur. Accusantium dolorem consequuntur rem odio. Amet vel quibusdam voluptatum nihil.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('91', '151', '2020-05-22 06:09:02', 'Eleonore', 'Cremin', 'm', '2013-08-20', '3', 'Sint voluptas error consequatur nobis. Natus quis quos quam tempora. Dolorem quisquam porro hic est.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('92', '153', '1998-10-17 12:05:32', 'Athena', 'Rippin', 'f', '1972-01-23', '7', 'Dignissimos necessitatibus dicta vel provident recusandae itaque. Ducimus sint atque ut sint itaque. Qui ab eum dignissimos ad ut.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('93', '154', '1997-05-06 14:07:54', 'Pansy', 'Sporer', 'f', '1981-07-14', '2', 'Reiciendis provident ipsam deserunt minus. Magnam fugiat doloribus enim et consequatur enim. Iste ut aut odit.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('94', '155', '1992-06-15 04:10:27', 'Missouri', 'Green', 'm', '1974-05-28', '8', 'Ea quibusdam nemo iure quis. Adipisci et qui enim nisi facere. Libero qui doloribus qui nisi necessitatibus.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('95', '158', '2002-06-13 00:42:25', 'Nikita', 'McCullough', 'm', '2013-07-20', '9', 'Et ut cumque ab et aperiam in. Voluptatum vitae beatae voluptatem aliquam odit. Et sit voluptatum possimus qui eveniet maiores modi quasi.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('96', '159', '2003-07-07 12:54:20', 'Chelsey', 'Kreiger', 'm', '2006-10-31', '2', 'Beatae voluptates et et dolores accusantium. Perferendis fugit libero molestiae deleniti. Et omnis dicta ipsam suscipit repellendus quod.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('97', '160', '2021-03-12 16:04:53', 'Domenico', 'Streich', 'm', '2004-09-02', '6', 'Libero eum ut quibusdam ipsum. Nobis officiis quia provident iste suscipit illum sint dolorem. Iure ea ab exercitationem et ea aut qui.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('98', '164', '1987-07-20 07:27:02', 'Kiarra', 'Schaden', 'm', '2011-05-14', '9', 'Alias rerum iste facilis veritatis et. Id doloribus blanditiis quia aut maiores. Assumenda ut qui aliquam non commodi.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('99', '167', '1986-08-11 08:10:13', 'Janelle', 'Keebler', 'f', '2018-07-19', '9', 'Deleniti qui dolorum quisquam praesentium. Vel qui ea quidem voluptas quis. Molestiae in neque quasi vel corporis.');
INSERT INTO `user_profiles` (`id`, `user_id`, `created_at`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country_id`, `about`) VALUES ('100', '168', '2009-09-06 09:17:21', 'Melyna', 'Hilll', 'f', '1987-07-17', '0', 'Corrupti nemo earum et asperiores. Pariatur exercitationem excepturi totam blanditiis sed enim. Nesciunt tenetur adipisci aut rem aut illo ipsam. Unde dolores in tenetur fuga. Numquam voluptatem ab delectus non.');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  `creators_id` bigint(20) DEFAULT NULL,
  `rating_comments_id` bigint(20) DEFAULT NULL,
  `user_profiles_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `creators_id` (`creators_id`),
  UNIQUE KEY `rating_comments_id` (`rating_comments_id`),
  UNIQUE KEY `user_profiles_id` (`user_profiles_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи сервиса';

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('101', 'Thomas', 'Schultz', 'prohaska.hoyt@example.org', 'bf66fb796c941b3620c8dac82880cefc24eee8c8', '1', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('102', 'Lynn', 'Kub', 'schimmel.holly@example.net', '37bb415b8a3c01ff90341513c4c642f09904c914', '5735376091', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('103', 'Rhianna', 'Wolf', 'marquardt.jessie@example.com', 'ca1377f953c39a28ce1e8b7017042a3b70dbecba', '0', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('104', 'Raphael', 'Lowe', 'jess39@example.net', 'e93bd57c54e5ab240a757778aa922290082b0a63', '31', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('105', 'Camille', 'Kris', 'ikuvalis@example.net', '026cf8303f861eb0da2ec7f60ad722a1a71a6f16', '9211958834', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('107', 'Magali', 'Harris', 'spinka.giles@example.com', '5916edfb59ec50d35dd0c03f71c733808e73cd1e', '47', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('108', 'Coralie', 'Sporer', 'oadams@example.org', 'c8cef209b04e7fd16f1504d5978495fee5bc1ec6', '397', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('114', 'Kayli', 'Brown', 'erdman.leonel@example.org', 'b6a010b7c3a01b7ed4a7d9e77e7f3a688d4ccb25', '699501', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('115', 'Wilburn', 'Heathcote', 'ankunding.jamie@example.com', '527c9cb4b710cf90c4f84200e7471213c0e4a02d', '482320', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('118', 'Dejah', 'Batz', 'roman76@example.com', '5a196425688a345fee6a4e51ffeb8ff56503197f', '482', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('119', 'Madge', 'Becker', 'jakob.denesik@example.org', 'c97613e7aa72bc4676540d3ce112dd666cbfd6aa', '394754', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('121', 'Reyna', 'Yost', 'jaskolski.amiya@example.org', 'c14dbcd33038de37e977cc81245d68a0e3360ebb', '72', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('122', 'Richie', 'Beier', 'eldred59@example.org', '56b3cc76eac6283484131a675402064fb7f21289', '49204', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('123', 'Gilberto', 'Kuhic', 'krajcik.bernice@example.org', 'f38a7425d8f972823c3c0ba11105ed96112fee98', '330764', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('125', 'Beatrice', 'Cronin', 'thelma27@example.net', '5d5a3eee392acb230db13777837f0051e4995c3c', '163388', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('127', 'Dax', 'Daniel', 'bonnie.upton@example.net', '6921917f9c1d711cc9d85b2041102843eadbbb5f', '901367', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('129', 'Dessie', 'Armstrong', 'altenwerth.violet@example.com', '4331f3a265cb7d26363d50c413c4afc0bd0ed9b6', '9337337616', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('130', 'Clifford', 'Kozey', 'ankunding.marilou@example.net', 'b1a10574d1718a3e6bb816a1b2e1ea3d7df309c2', '161276', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('132', 'Pete', 'Zemlak', 'lupton@example.com', 'e561e08d8c9893f13f1653fbe1fa62ffbd7a5a0f', '323', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('133', 'Kelsie', 'Roberts', 'wcarroll@example.com', '4a60bfbfc990d85c7aaaafb91140e96c1d07be8b', '615976', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('135', 'Javon', 'Satterfiel', 'rd\'amore@example.net', '7c6daf3fff85d7653b1611511cef86300b64141e', '810', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('140', 'Wilmer', 'Mills', 'esperanza.beatty@example.org', '20e937fe99d5f585d74fb87f338ae54e588ec72c', '916463', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('141', 'Ladarius', 'White', 'reanna.streich@example.net', '2a57360e8be22eddcceb3db959e7b0cb2c5ea2ec', '315', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('143', 'Garett', 'Monahan', 'mohr.vernice@example.org', 'df1b73b8646606220cf42850f9114696746e6591', '322', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('144', 'Jamar', 'McCullough', 'greta.reichert@example.org', '17e6db574dc546579123d417a6805b1b1801f625', '183', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('146', 'Adell', 'Kuhlman', 'goldner.malinda@example.org', 'b41d2d2269a9e772f7b64ba6b927155764907f57', '673112', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('147', 'Shirley', 'Hoppe', 'dulce22@example.net', '453041e2da7e663ea0eb20c9ce8253a55aea3ebb', '672188245', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('148', 'Fidel', 'Dibbert', 'zstroman@example.org', '6a8005bb09da2b60ec83e42e48a7be53469b7963', '2324391494', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('149', 'Grant', 'Wuckert', 'callie96@example.org', '2d04d4267601bdaeb16e877440c444c92bd5119f', '9763817950', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('150', 'Domingo', 'Raynor', 'nschamberger@example.org', '34ab669a9de944876732334bb1144aec15b4490c', '468', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('151', 'Johnpaul', 'Schroeder', 'gia48@example.org', '996c2834495f442bc5553d9ce4bb705e31b28059', '75246', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('153', 'Myrl', 'Goyette', 'mstokes@example.net', '54e39971b9574344f602f2215d1d697b0d331d34', '889', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('154', 'Arch', 'Okuneva', 'murphy48@example.com', 'a428a85146c7275293ae58cfe214fc5903ad82de', '8426568297', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('155', 'Keyshawn', 'Hansen', 'alda48@example.com', 'e82e10dbe12d0b692af08281be9ec7800ac5af0a', '401', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('158', 'Antonia', 'Feest', 'mayer.myrtis@example.net', 'de0e3fecc719995691f62f84ce0b9ee70f727b64', '306065', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('159', 'Darrin', 'Trantow', 'dina50@example.org', 'e6b16d91af9bb63705cd1bd4392cddf6f84f98c3', '620', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('160', 'Camylle', 'Osinski', 'nthiel@example.com', '7d690a5442fe2a88784d14c7468738778bbbee62', '358813630', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('164', 'Sarah', 'Runte', 'rutherford.fred@example.net', 'ebfa1b00c25fa638a0433f606dd0d504a36541fc', '452', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('167', 'Natalia', 'Block', 'wharber@example.org', 'dfd918cd87ec8fd2b4ebc3523dbce561c27b4177', '506552', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('168', 'Sandrine', 'Okuneva', 'ophelia92@example.net', '05556c3bb4a2266123ef78fa303f89ae172ce56f', '6593352004', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('169', 'Aurelie', 'Harris', 'onitzsche@example.org', '2079f491a7e2a459215b641f29cb9289d1ae2709', '939808', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('170', 'Cecile', 'Daniel', 'carmine.bailey@example.com', 'd6d63e6220d8216e902d9539dccc9e7540a9cecb', '662464', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('172', 'Rogelio', 'Schamberge', 'zemlak.franco@example.org', 'a6156a50eb4f3ecb159c889f78c7e5cfcc403d70', '436053', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('173', 'Rory', 'Goodwin', 'brooke54@example.net', '8e1f80e337cd602ac9a2988e414e997548d2c11e', '168', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('175', 'Jenifer', 'Johnson', 'trever.king@example.org', '935da0335cc0418cf693b9c78c7ac2cfa01946b9', '657', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('176', 'Katrine', 'Bruen', 'sporer.bette@example.com', '9a9558f45bd8509522c0129a48de5b1175f9c246', '85', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('178', 'Branson', 'Bednar', 'gay38@example.com', '77b1eaf0dd0626bf89bf88eba82b154e4d29d012', '778811', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('180', 'Roslyn', 'Kassulke', 'orn.america@example.com', '10c319f99ddcfcb4f5f5c73054a04de1e04394d1', '942', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('181', 'Marianne', 'Bartell', 'haylie53@example.net', '767dd87fedfa950cd4063884d064b93e5b34ee0a', '550882', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('182', 'Reinhold', 'Cormier', 'kankunding@example.org', '31d667ffaef5d2a202b193ad4d88d45a598127a9', '474278', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('185', 'Layla', 'Olson', 'lucinda86@example.net', 'd009fb229fa70a0cb45f43ea0b9e07a3cb24d24d', '526598', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('187', 'Alanna', 'Schroeder', 'tara.watsica@example.com', '373e82977b8bc94fdc3fb685a598e1eba31fd718', '904', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('188', 'Durward', 'Schmidt', 'imayer@example.com', 'edb016bd974003a2bfdfe18d779fb7d5777876ff', '211776', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('189', 'Karson', 'Kuvalis', 'janae.balistreri@example.net', '5ead501bd561be66f7480d201b4cbabd92cfa969', '88', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('192', 'Audra', 'Bins', 'julian53@example.com', '6716e8b01e2496ac324811cf24378b81d73fb92b', '770', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('194', 'Edythe', 'Purdy', 'reinger.stefanie@example.net', '82f76397cbc48190779236b1d28f44d2e05705ee', '54315', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('195', 'Carter', 'Armstrong', 'derrick.legros@example.net', 'e8f643f484f1527c63e074c84f7b70a8dbf24f90', '1966068164', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('198', 'Emilio', 'Smith', 'harris.junior@example.org', 'b4f0ea2cebbb6f3a795368ba7d50c2f85103315d', '71', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('199', 'Ignatius', 'Mayert', 'marshall.witting@example.org', '68fe416f8ae35b9bb871a8be6f4ce409ec411e6f', '4988609202', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `creators_id`, `rating_comments_id`, `user_profiles_id`) VALUES ('200', 'Laurie', 'O\'Conner', 'creola87@example.net', 'f2fb08945fca0ae2e96ef464163ee3500b552b5f', '53', NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: votes_for_articles
#

DROP TABLE IF EXISTS `votes_for_articles`;

CREATE TABLE `votes_for_articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) unsigned DEFAULT NULL,
  `rubric_id` bigint(20) unsigned NOT NULL,
  `article_id` bigint(20) unsigned NOT NULL,
  `vote` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `rubric_id` (`rubric_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `votes_for_articles_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `votes_for_articles_ibfk_2` FOREIGN KEY (`rubric_id`) REFERENCES `rubrics` (`id`) ON DELETE CASCADE,
  CONSTRAINT `votes_for_articles_ibfk_3` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Голосование за рейтинг статьи';

INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('1', '101', '1', '1', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('2', '102', '2', '2', '1');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('3', '103', '3', '3', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('4', '104', '4', '4', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('5', '105', '5', '5', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('6', '107', '6', '6', '1');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('7', '108', '7', '7', '1');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('8', '114', '8', '8', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('9', '115', '9', '9', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('10', '118', '10', '10', '1');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('11', '119', '11', '11', '1');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('12', '121', '12', '12', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('13', '122', '13', '13', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('14', '123', '14', '14', '1');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('15', '125', '15', '15', '1');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('16', '127', '1', '16', '1');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('17', '129', '2', '17', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('18', '130', '3', '18', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('19', '132', '4', '19', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('20', '133', '5', '20', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('21', '135', '6', '21', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('22', '140', '7', '22', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('23', '141', '8', '23', '1');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('24', '143', '9', '24', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('25', '144', '10', '25', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('26', '146', '11', '26', '1');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('27', '147', '12', '27', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('28', '148', '13', '28', '1');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('29', '149', '14', '29', '0');
INSERT INTO `votes_for_articles` (`id`, `users_id`, `rubric_id`, `article_id`, `vote`) VALUES ('30', '150', '15', '30', '0');


