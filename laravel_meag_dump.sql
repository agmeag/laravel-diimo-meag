--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
);

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
);

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
);

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `SKU` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `product`
--

INSERT INTO `product` VALUES (1,'ECCKCL6N','Autem quia sit corrupti qui.',10,15.15,'Quis autem ea nam quod quia ut libero.','https://lorempixel.com/640/480/?98712','2022-01-10 02:07:34','2022-01-10 02:07:34'),(2,'ZHFKTX4K5XT','Repellendus voluptates qui vitae voluptatum voluptatum tempora.',14,97.68,'Ut numquam nemo sit aut nemo enim omnis.','https://lorempixel.com/640/480/?14220','2022-01-10 02:07:34','2022-01-10 02:07:34'),(3,'IINQIJBE','Voluptas aspernatur rerum et in consequatur numquam sunt.',7,15.33,'Ratione accusantium et labore ducimus.','https://lorempixel.com/640/480/?50580','2022-01-10 02:07:34','2022-01-10 02:07:34'),(4,'LYOJFO8W','Eos id quasi ut iusto quia.',19,76.89,'Quia dolores illum qui quod.','https://lorempixel.com/640/480/?24431','2022-01-10 02:07:34','2022-01-10 02:07:34'),(5,'UONPBISE','Adipisci perspiciatis a distinctio quia rerum voluptatibus similique.',19,58.56,'Excepturi amet tempore eum consequuntur velit eum iste.','https://lorempixel.com/640/480/?35240','2022-01-10 02:07:34','2022-01-10 02:07:34'),(6,'YKXBAY8GRGW','Esse ipsum officiis dignissimos reiciendis quo officiis vel.',7,77.6,'Qui voluptates dolores dolores laborum ipsa a.','https://lorempixel.com/640/480/?78037','2022-01-10 02:07:34','2022-01-10 02:07:34'),(7,'KIKDWFK0RBZ','Non ea molestiae quos dolores est quibusdam.',19,80.63,'Commodi quia quas ea quasi incidunt.','https://lorempixel.com/640/480/?41863','2022-01-10 02:07:34','2022-01-10 02:07:34'),(8,'GTMGCDV01D8','Qui repellat vel tempore rerum iste quasi praesentium pariatur.',12,46,'Asperiores debitis maiores iusto corrupti magnam esse voluptatibus.','https://lorempixel.com/640/480/?19497','2022-01-10 02:07:34','2022-01-10 02:07:34'),(9,'WRUQQI1G','Iusto qui inventore dolorem sit ut ducimus et.',7,36.43,'Corporis sapiente omnis harum.','https://lorempixel.com/640/480/?23610','2022-01-10 02:07:34','2022-01-10 02:07:34'),(10,'TVAORY10','Maiores laboriosam tempora esse magnam.',1,61.33,'Et dolor vel earum est.','https://lorempixel.com/640/480/?26247','2022-01-10 02:07:34','2022-01-10 02:07:34'),(11,'SYJHNW52','Modi placeat nostrum sit.',20,67.82,'Impedit dolor sunt quis ea mollitia consectetur laborum repellendus.','https://lorempixel.com/640/480/?41408','2022-01-10 02:07:34','2022-01-10 02:07:34'),(12,'RGIXIXPZY11','Optio similique modi eaque hic.',6,36.71,'Ea aperiam totam vel commodi sit.','https://lorempixel.com/640/480/?49721','2022-01-10 02:07:34','2022-01-10 02:07:34'),(13,'RRFNCZ5J','Fuga qui esse ratione impedit voluptatibus ad magni.',11,21.87,'Officiis sit dolores qui impedit.','https://lorempixel.com/640/480/?72792','2022-01-10 02:07:34','2022-01-10 02:07:34'),(14,'WPXSDPLE','Nesciunt minus quo dolorem hic aut dignissimos.',10,71.47,'Et voluptatem tempora numquam vel exercitationem.','https://lorempixel.com/640/480/?48937','2022-01-10 02:07:34','2022-01-10 02:07:34'),(15,'POVJUCRR','Aut doloremque reprehenderit necessitatibus ipsam ducimus dicta.',18,34.4,'Cumque autem velit aut maiores fugiat doloremque culpa quos.','https://lorempixel.com/640/480/?50149','2022-01-10 02:07:34','2022-01-10 02:07:34'),(16,'LQXNJQ8VW2W','Ab ut autem molestiae consequuntur illum vel illum.',5,32.47,'Pariatur quis animi eos molestiae consectetur sint.','https://lorempixel.com/640/480/?69854','2022-01-10 02:07:34','2022-01-10 02:07:34'),(17,'POGSKESD','Quia commodi quae molestias rerum error quibusdam sequi sunt.',7,9.83,'Sit a et inventore veritatis quae accusamus deserunt rem.','https://lorempixel.com/640/480/?82760','2022-01-10 02:07:34','2022-01-10 02:07:34'),(18,'BZYIOSFI56U','Qui inventore corrupti libero consequatur quia deleniti.',2,66.22,'Explicabo earum nisi rerum distinctio.','https://lorempixel.com/640/480/?58468','2022-01-10 02:07:34','2022-01-10 02:07:34'),(19,'SXNVDWIQ6FH','Illum molestiae nam vitae velit voluptate.',6,38.03,'Voluptatem commodi consequatur doloribus eum deserunt iste.','https://lorempixel.com/640/480/?63602','2022-01-10 02:07:34','2022-01-10 02:07:34'),(20,'BOIHDF9PNSG','Commodi non perferendis eos blanditiis nobis.',8,66.62,'Vel ut vitae vitae aut aut dolores.','https://lorempixel.com/640/480/?57441','2022-01-10 02:07:34','2022-01-10 02:07:34');

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `name` varchar(255)  NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(10)  NOT NULL,
  `birthday` date NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
);

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES (1,'emmet.schiller','Prof. Florian Schuster','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','pearlie94@example.net','2022-01-10 02:07:34','77889910','1980-08-04','pHQplp8pci','2022-01-10 02:07:34','2022-01-10 02:07:34'),(2,'pberge','Gracie McClure','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','leanna09@example.com','2022-01-10 02:07:34','77889910','2008-12-13','HJojJcsqgm','2022-01-10 02:07:34','2022-01-10 02:07:34'),(3,'hermann.alexander','Dr. Sherwood Willms DVM','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','daniella79@example.net','2022-01-10 02:07:34','77889910','1974-10-19','hfZEYHsF51','2022-01-10 02:07:34','2022-01-10 02:07:34'),(4,'daniel.daphnee','Sandy Davis','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','leif.kunze@example.com','2022-01-10 02:07:34','77889910','1981-09-20','OSh3mMR0Xf','2022-01-10 02:07:34','2022-01-10 02:07:34'),(5,'bokuneva','Christiana Labadie','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','cole90@example.org','2022-01-10 02:07:34','77889910','2003-11-16','xpMg7S2ya4','2022-01-10 02:07:34','2022-01-10 02:07:34'),(6,'hill.sid','Madie Batz','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','dsmitham@example.net','2022-01-10 02:07:34','77889910','2008-07-26','fmJKkVISUO','2022-01-10 02:07:34','2022-01-10 02:07:34'),(7,'ethel77','Mr. Denis Zboncak','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','mabel.wolf@example.com','2022-01-10 02:07:34','77889910','2007-04-11','5REj46XNUe','2022-01-10 02:07:34','2022-01-10 02:07:34'),(8,'jordyn.dach','Jamal Wisoky','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','wyman.lazaro@example.com','2022-01-10 02:07:34','77889910','2003-09-22','9VQjDElnSg','2022-01-10 02:07:34','2022-01-10 02:07:34'),(9,'mwiza','Mrs. Florine Gerhold','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','teresa.schultz@example.net','2022-01-10 02:07:34','77889910','1987-03-07','sLKxj4FLaa','2022-01-10 02:07:34','2022-01-10 02:07:34'),(10,'madaline.abshire','Natalie Hayes','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','bogan.isidro@example.net','2022-01-10 02:07:34','77889910','1990-03-28','HcjsrHQ5f2','2022-01-10 02:07:34','2022-01-10 02:07:34'),(11,'constance57','Aiyana Dickinson','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','lia.windler@example.net','2022-01-10 02:07:34','77889910','1977-01-26','O9T9Js3DeA','2022-01-10 02:07:34','2022-01-10 02:07:34'),(12,'fritsch.elouise','Ciara Haag','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','desmond.wilkinson@example.org','2022-01-10 02:07:34','77889910','1996-02-07','l69dckG4o9','2022-01-10 02:07:34','2022-01-10 02:07:34'),(13,'wilber.pacocha','Junius Dietrich','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','joan.prohaska@example.org','2022-01-10 02:07:34','77889910','2004-10-20','tQ7alutGv2','2022-01-10 02:07:34','2022-01-10 02:07:34'),(14,'tillman.lulu','Mr. King West Jr.','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','phyatt@example.net','2022-01-10 02:07:34','77889910','2012-03-15','iqFkc6UUe0','2022-01-10 02:07:34','2022-01-10 02:07:34'),(15,'hintz.joel','Dr. Jadyn Ernser','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','kaitlin30@example.com','2022-01-10 02:07:34','77889910','1991-05-16','Qkd0EZvYN4','2022-01-10 02:07:34','2022-01-10 02:07:34'),(16,'torrance75','Ted Kuhn','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','jedediah.abbott@example.com','2022-01-10 02:07:34','77889910','2009-12-19','DGaqnbnWsv','2022-01-10 02:07:34','2022-01-10 02:07:34'),(17,'abogisich','Justus Parisian','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','lexie.cummerata@example.com','2022-01-10 02:07:34','77889910','2012-09-23','pCpATvfVUE','2022-01-10 02:07:34','2022-01-10 02:07:34'),(18,'nitzsche.rogers','Elisa Turner','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','feichmann@example.com','2022-01-10 02:07:34','77889910','1998-10-12','CsA2xDsGmP','2022-01-10 02:07:34','2022-01-10 02:07:34'),(19,'ygorczany','Louvenia McGlynn','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','neva26@example.net','2022-01-10 02:07:34','77889910','2005-12-19','6GCsaGqrfW','2022-01-10 02:07:34','2022-01-10 02:07:34'),(20,'diana.mitchell','Maye Orn IV','$2y$10$i/gKKD9Ki9hhcNdTyBqkVe2ip//cQKGCNSzvtdzxJ0JXLa1EwlWXy','alfonzo79@example.com','2022-01-10 02:07:34','77889910','1987-05-23','P26UZa0PoP','2022-01-10 02:07:34','2022-01-10 02:07:34');
-- Dump completed on 2022-01-09 14:08:45
