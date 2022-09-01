-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2022 at 04:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-08-28 01:00:27', '2022-08-28 01:00:27'),
(2, 'Web Design', 'web-design', '2022-08-28 01:00:27', '2022-08-28 01:00:27'),
(3, 'Personal', 'personal', '2022-08-28 01:00:27', '2022-08-28 01:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_20_125745_create_posts_table', 1),
(6, '2022_08_21_135804_create_categories_table', 1),
(7, '2022_08_30_025509_add_is_admin_to_users_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Suscipit reiciendis iste autem.', 'at-ea-quia-itaque-eos-hic-animi', NULL, 'Quae in consequuntur nisi aut aut. Consequatur sunt et suscipit eum dolores. Est consectetur aut veniam sunt qui quis voluptas. Labore est debitis voluptatem sed sunt consequatur eos.', '<p>Rerum ducimus architecto placeat. Tenetur natus exercitationem ut consequatur modi quae et. Repellat ut possimus itaque. Neque illum omnis est saepe voluptatem et.</p><p>Error officia modi et dolorem voluptatem id et. Voluptas perspiciatis autem unde et dolorem.</p><p>Natus vel nihil non molestias unde aperiam et impedit. Natus et quae voluptatum aut. Quo aut repellendus optio officia possimus. Facilis iusto enim aperiam sed commodi et laudantium.</p><p>Ut amet alias sunt. Ad laborum quae fuga vel accusamus qui ut. Officia illo repudiandae maiores quis dolore sint. Ut magni ea rerum expedita temporibus explicabo officiis.</p><p>Maxime quas quibusdam fugiat consequatur incidunt voluptatem. Velit necessitatibus est fuga nemo. Voluptatem est ipsa a minima sint commodi ullam. Excepturi magnam vitae ab sequi.</p><p>Dolores itaque quae veritatis doloremque animi. Recusandae iusto et dicta et explicabo quo. Dolorem omnis esse exercitationem rerum eius eos.</p><p>Dolore quidem sit vel sint adipisci eos deserunt. Incidunt fuga consequatur placeat nulla aut enim.</p><p>Ut voluptatem officiis iste delectus. Non molestiae qui sed laudantium iure.</p><p>Ipsa itaque aliquid voluptatum voluptas error veniam iste cumque. Hic eos repudiandae fuga exercitationem nostrum dicta. Unde asperiores dignissimos exercitationem beatae provident dignissimos. Et dolore fugiat est voluptatem ab.</p><p>A est beatae tenetur fugiat. Est minima quibusdam quia corrupti. Alias id consequatur aliquam. Quia id sapiente dolores porro praesentium sequi.</p>', NULL, '2022-08-28 01:00:27', '2022-08-28 01:00:27'),
(2, 3, 1, 'Eius id quia quia magnam dignissimos quas quaerat nostrum ut.', 'et-quia-ut-id-enim-nemo-ut', NULL, 'Pariatur nisi odio est officiis. Blanditiis provident id repudiandae deleniti.', '<p>Occaecati suscipit sint sit rerum deserunt. Blanditiis eligendi corporis nostrum unde enim eum adipisci. Corporis eum nihil repellendus velit odit aliquam doloribus.</p><p>Velit numquam eius soluta in labore. Quos quae voluptatem quasi veniam molestiae. Sed voluptatem nihil fugiat eveniet. Est fugit veniam voluptatem tempore voluptatem.</p><p>Corrupti autem veritatis corporis. Dolorum consequatur voluptatem in ipsum porro odio. Et labore doloribus sed aut dolor id. Quis et dicta est rerum sit sit corrupti. Doloremque deleniti natus asperiores fugiat quia facilis.</p><p>Repellendus illum debitis dolorem veniam et. Sit et cum dolor vel et expedita.</p><p>Aliquam nihil et fugit voluptatem magnam occaecati. Et error sed asperiores blanditiis sunt deleniti sit. Est velit hic doloribus fugiat cumque deserunt. Quod iure atque enim odio aliquam amet.</p><p>Labore ut mollitia ratione dolores eum voluptates et. Vitae illo eius ut voluptas commodi eos eos. Exercitationem dolore explicabo esse consequatur sint.</p><p>Ullam veniam ad earum modi et nemo minus. Nemo eos minima error eveniet amet ea beatae. Vero explicabo molestias velit. Facilis et tempora sunt veritatis.</p><p>Eveniet ut eum necessitatibus et qui magni. Id autem dolore commodi molestiae eligendi dolores est. Doloremque suscipit quaerat quis repellendus. Dolore porro ex facere. Magni eum suscipit aliquam sunt ullam dicta consequatur.</p><p>Maxime veritatis nemo perspiciatis vero quasi. Quidem corporis fugit voluptas magnam qui dolorem quasi. At eum laboriosam laboriosam. Veritatis rem architecto suscipit et sunt dignissimos ea.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(3, 1, 3, 'Et voluptatum ut.', 'est-molestiae-expedita-iure-doloribus-hic-sint-pariatur-velit', NULL, 'Aut ut perspiciatis sit voluptas impedit recusandae omnis. Pariatur facere autem nisi itaque. Iusto voluptates atque porro voluptas veniam.', '<p>Aliquid accusamus ipsum consectetur ut. Aut id placeat occaecati eum ipsa ipsum consequatur. Aut illum explicabo et dolore.</p><p>Enim quas hic aliquam ut qui dolor. Qui tenetur vitae repudiandae ut. Vitae alias repudiandae tenetur repudiandae voluptas.</p><p>Aspernatur voluptas odio architecto exercitationem veritatis est. Suscipit sunt dolores eos reprehenderit quae iure deserunt. Ex excepturi ex dolor consectetur aut qui ex. Et cum delectus odio maiores ut cupiditate.</p><p>Similique sunt ipsa adipisci enim similique fugit. Fugit non id commodi omnis animi. Rerum ut molestiae quam est est.</p><p>Voluptas cupiditate enim sed blanditiis et nisi est ipsam. Harum eius nihil ea corporis ut nostrum. Dolore in recusandae eveniet pariatur doloremque. Praesentium et numquam est sunt dolorum fugit beatae repudiandae.</p><p>Mollitia aut et laborum id est. Eligendi dolorem non velit delectus vero autem voluptas. Beatae quas eaque est veniam nostrum et eveniet assumenda. Suscipit consequuntur vero magni quo iure similique.</p><p>Omnis quia sed ut sint occaecati ipsum. Quam molestiae soluta quos ut inventore. Iusto quis velit a nam.</p><p>Qui quia et et ea facilis aut ut. Repellat quibusdam voluptates voluptas qui qui officiis. Error inventore adipisci iure veritatis. Odio suscipit voluptas ex nostrum.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(4, 3, 3, 'Rem sed quia.', 'quod-id-est-molestias-nisi-consequatur-dolor-non-velit', NULL, 'Dolorem autem odio et perferendis molestias eum ut. Suscipit voluptates beatae laborum dolorum voluptas adipisci voluptatibus. Nulla sapiente a vel rerum eius quidem eum. Fugiat praesentium eaque cupiditate fugiat sed occaecati.', '<p>Enim laudantium nesciunt quos id. Ipsa harum vel optio nisi assumenda repellat. Quia quis sit omnis occaecati dolorum.</p><p>Adipisci vitae aut cupiditate autem. Numquam inventore et voluptatem qui amet. Consequatur exercitationem delectus est impedit enim consequuntur et dolore. Praesentium rem ut et qui consectetur amet ducimus officia.</p><p>Necessitatibus qui enim occaecati ut. Qui tenetur alias est ipsa vitae est veritatis. Perspiciatis sunt ut dolore aperiam voluptas aut ad. Commodi eligendi dolor quis eum reiciendis nesciunt. Vel consectetur a explicabo et fuga.</p><p>Magni ipsum ipsum tenetur labore quae iste. Quod labore mollitia nihil non dolorem sint aut sunt. Nihil officiis reiciendis ut ipsa.</p><p>Impedit beatae ipsa qui quis doloribus velit quis. Ducimus possimus fugiat quam explicabo. Blanditiis officiis recusandae porro atque commodi. Omnis laborum hic in natus repudiandae.</p><p>Et culpa sed ab fugiat qui. Sed reiciendis non sed. Quia magnam sunt aliquam officiis temporibus dolores. Sit rerum fugit eum numquam.</p><p>Consectetur dicta delectus deserunt aliquid. Dolorem perspiciatis quia debitis ut. Cum occaecati ducimus id accusantium consequuntur. Aperiam maxime corporis facere omnis debitis magnam doloribus debitis. Ducimus velit praesentium ipsa et enim.</p><p>Hic accusamus dignissimos libero expedita et qui. Odio aut ut sit. Blanditiis voluptatibus vitae et eos. Quos quis odio exercitationem dolor ad.</p><p>Ipsa voluptatem consequatur dolorem. Quo veniam dolores eos numquam architecto qui. Dolorem voluptates consequatur occaecati nisi et explicabo in.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(5, 3, 1, 'Dicta optio accusantium iusto.', 'facere-earum-est-illo-officiis', NULL, 'Accusantium similique porro reiciendis voluptatibus modi ut. Eos qui vel culpa omnis. Et perspiciatis vel facilis cupiditate quisquam.', '<p>Unde est repellat aperiam dolores fuga. Sit minus hic rerum a velit aut quos. Et qui praesentium ducimus sed ad autem quisquam. Qui voluptatem quo et similique quod quod ducimus.</p><p>Sapiente excepturi ratione sunt dolor quidem. Numquam laudantium dolores quae dolores molestiae. Minus rerum officiis autem impedit laborum.</p><p>Ut ut rerum enim dignissimos ut fugiat quidem delectus. Nostrum eius provident totam temporibus fuga voluptatem optio. Minima sunt eveniet reprehenderit est et molestiae.</p><p>Maiores quia vel ea aspernatur aut consectetur odio. Delectus aut dolorum enim. Quis et dolorem sit rerum autem accusantium ex laborum. Voluptatem ea modi quasi deleniti iusto tenetur repudiandae.</p><p>Debitis quia sit magni exercitationem. Ex veritatis magni aliquam rerum eos sit nihil. Dicta error cum in cumque eum.</p><p>Laboriosam quam vel porro consequatur. Ipsam pariatur quia nobis aut hic.</p><p>Quo a quibusdam quia illum quia fugiat sunt doloremque. Consequatur laborum qui aperiam cumque dolores quas. Aperiam possimus amet iusto harum dolore veritatis fuga eius. Numquam sint fugit sed voluptatem excepturi id.</p><p>Sapiente quidem quaerat sequi maxime accusantium. Modi et amet est. Quia dignissimos labore nisi repellendus fugit omnis dignissimos qui.</p><p>In et voluptatum tempore beatae reprehenderit. Nesciunt soluta fugit facilis ut modi et. Dicta et odit omnis sequi nostrum soluta consequatur.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(6, 1, 1, 'Atque voluptatem at.', 'aut-libero-consectetur-sequi-id-ut-praesentium', NULL, 'Cumque exercitationem consequatur sed modi beatae. Perferendis fugiat voluptatem sit occaecati minus suscipit nemo. Officia necessitatibus quibusdam beatae maxime sed debitis at.', '<p>Incidunt quos nisi voluptate animi aliquam illum voluptas quia. Est alias quos reiciendis officia.</p><p>Non vitae iure adipisci in. Ullam tempora voluptatem iste rerum commodi rem illum. Et et nam dolores quidem illo sapiente.</p><p>Doloremque et corporis et consequatur. Molestiae autem et sunt sit. Accusamus aut in adipisci. Rerum suscipit nesciunt voluptatem ducimus.</p><p>Quae voluptatem corporis aut recusandae ipsam nisi quia. Rem quia est rem qui eligendi beatae id. Voluptatum mollitia rem id perferendis. Ut non dolores facere in et est. Est maiores dolorem iste recusandae vero.</p><p>Provident eaque enim velit architecto est. Placeat vitae reprehenderit consequuntur. Voluptas molestiae voluptatum ullam.</p><p>Doloremque qui ratione omnis dignissimos enim quisquam expedita. Ut et consequatur accusamus nam sit. Quisquam numquam officiis ducimus dolorem explicabo voluptas beatae. Non odit ea quisquam ut perferendis.</p><p>Excepturi omnis laudantium eum cupiditate nobis qui dolorem. Dicta in labore maiores assumenda. Soluta vitae est ipsum doloremque sit recusandae voluptatem reiciendis.</p><p>Ex alias qui veritatis. Hic modi veniam iste ducimus voluptatem. Amet et necessitatibus expedita inventore natus. Impedit natus maiores incidunt nesciunt ut rerum.</p><p>Reprehenderit et sit a voluptas. Qui accusantium qui ea.</p><p>Enim et beatae ducimus placeat quasi et. Odio iste impedit dolorem ducimus dolores ullam veritatis. Velit perspiciatis aut eos incidunt ullam.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(7, 1, 1, 'Esse hic ducimus nobis repellendus.', 'voluptas-laudantium-ipsum-excepturi-ipsa-ipsum-autem', NULL, 'Facere quod neque consequatur officiis porro et. Omnis sint totam facere soluta doloremque sequi.', '<p>Rerum eum voluptatibus porro eius. Et velit explicabo laborum debitis natus est beatae perferendis. Ut rerum autem et velit.</p><p>Error consequuntur pariatur ratione facilis voluptatem error. Ex ipsa asperiores dolores adipisci ea nisi accusamus. Rerum facilis voluptatibus hic consectetur et corporis esse. Quia perspiciatis laborum unde neque voluptates ea.</p><p>Quia explicabo dignissimos aut reiciendis vel molestias. Qui ipsam ad cum occaecati sed minus error id. Facere sint sit necessitatibus nulla. Aspernatur architecto aut quae explicabo minus culpa quam temporibus.</p><p>Qui aliquid esse nam et cupiditate nihil aut. Itaque rem neque consectetur voluptatem eaque itaque hic. Quisquam a reiciendis et aperiam. Ut quis incidunt et earum accusamus mollitia ipsa ut.</p><p>Doloribus optio eos consequatur sint. Ratione exercitationem aut accusamus tempora. Aut vel voluptates expedita vel aut.</p><p>Aspernatur aliquam officiis rerum earum quisquam eum aut. Qui rerum sequi sunt. Vel ut optio beatae. Necessitatibus in unde ratione illo.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(8, 1, 1, 'Aut culpa laudantium architecto qui.', 'voluptatum-doloremque-vel-sed-quod', NULL, 'Dolores ullam reiciendis voluptatem. Ipsa quis consequatur voluptatem porro tenetur explicabo est tenetur. Qui voluptas aut ut doloremque. Molestias suscipit consequuntur aut. Aut placeat laboriosam non reiciendis ut molestiae sed.', '<p>Est ut est dolor nulla. Quia tempora qui cupiditate excepturi quo odit non omnis. Est magnam qui vero ut iste nobis.</p><p>Quisquam qui laborum cum ab. Dolorem sint est consequatur ea. Enim consequatur qui corporis eveniet ut et distinctio.</p><p>Voluptas optio aut consequatur porro ut hic. Aut qui error est minima. Optio reiciendis vel quibusdam atque qui expedita.</p><p>Molestias beatae magnam ipsum a. Atque dolor delectus eos cumque placeat et. Dolore vel repudiandae maiores.</p><p>Aut maxime et quia ut praesentium quis. Perferendis ad maxime veniam reprehenderit qui itaque. Nam vitae corrupti consequatur blanditiis.</p><p>Rerum voluptatem et qui porro. Quasi consectetur aut eum illo tempora sed eaque. Sunt aspernatur voluptatem dolorem doloremque.</p><p>Nobis vel aut quo delectus mollitia. Deleniti nihil est ipsam ad est ducimus nesciunt. Possimus delectus aut harum voluptatibus eius.</p><p>Incidunt deleniti odit repellat maxime sit cum. Et rerum voluptates qui. Laudantium voluptas aut porro est cupiditate earum. Qui quisquam et sit vel inventore ea.</p><p>Tempora ea molestiae est eveniet aliquam. Et totam officia earum velit ad. Atque eaque voluptatem itaque ipsam autem sint beatae.</p><p>Deserunt praesentium quae recusandae totam labore nisi totam aspernatur. Doloribus vel et beatae et. Minus vel sit quia nisi atque. Consequuntur nisi ex eum animi dolorum.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(9, 1, 2, 'Quibusdam mollitia earum.', 'veniam-dolorem-nam-ut-quis-hic', NULL, 'Aut culpa et et non ipsam. Voluptate in et neque nihil sunt veniam libero. Eveniet nihil et sit autem consequatur.', '<p>Et illo deserunt eius aut. Fugit recusandae voluptatibus magnam placeat. Eaque libero eius quam illo nostrum laborum. Maiores sapiente eius velit.</p><p>Voluptatem labore dolores nam facilis possimus libero natus iure. Dolorem est qui ab natus. Omnis est fuga ea adipisci. Aut praesentium reprehenderit ut.</p><p>Velit magni quia mollitia sequi ipsum dolorem in. Cupiditate et iste consequatur voluptas. Quis alias ea deleniti voluptatem nihil qui. Eaque non voluptas atque possimus vero est quia.</p><p>Enim nostrum voluptas aut blanditiis vel amet. Est sed quis culpa cupiditate quae. Enim nostrum rerum repellat officia. Culpa earum sed autem rem culpa.</p><p>Autem reiciendis enim illum. Itaque voluptatem velit iste commodi excepturi sint. Sint dolore rerum sed dicta. Eos dolores ullam culpa quidem ut saepe et. Totam aut quaerat quia officia.</p><p>Aliquam voluptatibus distinctio voluptatum cum laudantium harum itaque. Maiores voluptas ipsam ut aut aliquam non consectetur. Delectus dolorem provident quasi eaque sint. Unde ex dolores explicabo dolor repellat eos quam.</p><p>Suscipit dolore laudantium recusandae aperiam facere facere excepturi. Ea rerum doloremque aspernatur in nobis at praesentium.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(10, 2, 3, 'Et distinctio ex perspiciatis officiis saepe.', 'ut-similique-quia-nostrum-dolorem-a', NULL, 'Dolores sint explicabo in. Tempora autem porro ipsum est. Magnam aspernatur praesentium eius rerum. Sit placeat esse nihil odio sed.', '<p>Officiis tempore sit dignissimos provident. Tenetur omnis rem nihil quod accusamus. Eius molestiae et dignissimos adipisci maxime quia. Blanditiis facere maxime sint porro animi.</p><p>Iusto quasi tempora modi provident. Et sit atque unde recusandae quam necessitatibus. Excepturi labore unde et eos sunt maiores.</p><p>Aspernatur illum explicabo aut quisquam numquam voluptatum id. Quas perspiciatis dolor blanditiis ut dolor rerum est. Nemo et quia libero esse quibusdam.</p><p>Repellendus suscipit itaque animi vel quia et. Et totam quo laborum aut aut. Sapiente est quas et distinctio. Fugit possimus autem dolores porro. Laborum fuga est soluta soluta sed aut.</p><p>Qui est iure est voluptatum dolorem distinctio porro. Corporis quo hic quaerat non id vel quia. Dolores veritatis quasi tempora quis explicabo at. Magnam deserunt et quo nesciunt pariatur quo non.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(11, 1, 3, 'Qui aperiam quod.', 'et-sint-earum-mollitia-totam', NULL, 'Porro perferendis inventore at ipsum. Voluptas sapiente rem rerum. Alias ex consequatur dolorum ducimus sunt numquam. Adipisci nihil earum dolor hic quis dolorem.', '<p>Rem magni temporibus voluptatum qui. Non delectus mollitia aperiam fuga aperiam nulla ut. Sit et ratione eum facere doloribus necessitatibus enim.</p><p>Praesentium voluptas quod expedita rerum officiis vel. Quos voluptatem nemo autem et incidunt totam sint. Laborum voluptatem tempore tempore illum saepe. Nulla nesciunt doloremque et et enim.</p><p>Possimus odit natus ducimus odit saepe enim tempore. Corrupti corrupti eum est unde voluptatem quibusdam qui aut. Et voluptatem similique esse quia quo ab est. Nam optio aut voluptatum rerum.</p><p>Ipsam eos modi in nobis asperiores. Sed necessitatibus numquam minima et aut. Exercitationem eveniet vitae quia corporis nihil molestiae suscipit.</p><p>Sint architecto corrupti odit explicabo eveniet sit. Quibusdam sed recusandae doloribus. Reprehenderit similique ad velit nesciunt accusantium veritatis. Repudiandae sit molestias mollitia aut. Ut repellat velit molestias laboriosam.</p><p>Sunt doloribus quia et repudiandae. Cumque delectus quibusdam ut saepe tenetur provident numquam. Cupiditate cumque eligendi saepe. Repellat excepturi iusto qui atque quia aspernatur placeat.</p><p>Laboriosam in repudiandae nostrum magnam est sunt. Repudiandae aut qui mollitia illo non fuga similique ullam. Fugit ex qui doloremque harum ipsa ea est ex.</p><p>Nihil quas aut deserunt amet harum aut. Voluptas nihil ut labore qui vel voluptatem sit. Aliquid ad id occaecati. Laboriosam veritatis commodi sapiente.</p><p>Ab aut possimus suscipit beatae nam dicta. Quidem aliquid exercitationem minima dignissimos error iusto omnis dignissimos. Culpa ut ut totam est maxime et qui.</p><p>Nulla accusantium laudantium quisquam eos. Laboriosam qui ut aperiam vitae. Id perferendis quia alias ea ipsa. Saepe ut autem iste delectus mollitia beatae dolorum.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(12, 1, 1, 'Aliquid exercitationem ad ut laborum.', 'inventore-et-explicabo-eos-sed', NULL, 'Aperiam tempora fugiat aperiam rerum eum voluptates. Sed modi dicta eos ipsa molestiae natus ipsam ut. Numquam odio quasi non non. Quis minus qui vel reprehenderit qui suscipit.', '<p>Suscipit et nisi modi voluptatem rem aliquam. Est architecto magnam deserunt similique ullam quam. Exercitationem aut quaerat nobis atque neque id. Exercitationem corrupti tempore doloremque ipsam non ratione temporibus laudantium.</p><p>Quis sit omnis et. Tempora aut totam deleniti nostrum excepturi laboriosam. At beatae explicabo totam ut et.</p><p>Temporibus aliquam enim consequatur aut. Cum omnis facere et nemo. Consequatur quisquam ut unde esse sequi recusandae sint quisquam.</p><p>Ut et suscipit temporibus facere beatae qui inventore. Eum voluptas assumenda rem commodi. Tempore tempore illo possimus. Sint ipsam quia sit neque.</p><p>Sit aliquid sed dolorem quam voluptatem soluta. Et tenetur labore velit possimus minus nihil. Iste voluptatem quis nulla possimus. Et commodi error eum at cupiditate.</p><p>Fuga fugit quos autem magni aut et sit delectus. Et amet totam fugit voluptatem voluptates est. Porro dolor reprehenderit maxime. Et pariatur facilis ut occaecati expedita enim laboriosam ut.</p><p>Rerum aut unde sint libero quam. Nihil iste ullam accusamus ut. Vel qui voluptas voluptates possimus accusamus.</p><p>Qui eum et laboriosam aliquam et fugiat. Vero id enim ab ad sit. Aut odit non impedit totam. Quisquam non excepturi voluptatem omnis nam.</p><p>Delectus porro enim nisi quibusdam natus minus quod. Illum et velit odit porro laborum. Culpa commodi quia sed qui incidunt.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(13, 3, 3, 'Est voluptate.', 'omnis-magnam-numquam-corrupti-adipisci-modi-nesciunt', NULL, 'Architecto facilis dolore enim sit iure ut ducimus. Voluptate doloribus omnis ullam quod est aut pariatur. Quisquam nam officia natus veritatis a.', '<p>Est sequi nobis dolorem ab quia nostrum aut. Maiores natus qui et nihil aliquam natus. Nihil corrupti enim ut consequatur perspiciatis blanditiis.</p><p>Enim ipsa voluptatem officiis autem corrupti ab qui. Possimus dolores rerum repudiandae nemo accusantium natus. Quos sed nulla facere enim eos rem officiis. Impedit distinctio necessitatibus aut vitae.</p><p>A aspernatur fugit et perferendis iste. Dolor corrupti similique perspiciatis enim pariatur sequi sint. Esse natus aperiam ut repudiandae maiores.</p><p>Beatae illo temporibus voluptates est perspiciatis et. Omnis qui iusto iste architecto omnis iusto. Delectus non maxime omnis.</p><p>Rerum quos rerum omnis harum. Quam commodi vero et labore. Occaecati officia saepe veniam quidem qui. Aut nulla qui nihil ut enim soluta.</p><p>Est et alias atque dolor sit. Ipsum quia est aut deserunt est corrupti. Optio vitae possimus quas ut culpa adipisci perspiciatis et. Aut ut nobis nihil unde tempore ut quidem.</p><p>Tempora quo rerum exercitationem optio. Magni quia quas ipsum laboriosam mollitia sunt. Recusandae nostrum sed eligendi et sed rerum.</p><p>Voluptas ut veritatis ullam libero veniam suscipit illum. Aut expedita quisquam voluptates voluptates deleniti nisi voluptates. Aut sint quo dolores consequatur.</p><p>Numquam quisquam non dicta consequuntur cumque molestiae labore. Dolorem corporis eius illo eos fugit voluptas. Omnis eius qui in sit sequi quidem.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(14, 1, 3, 'Consectetur esse quia ipsa ex quia et voluptates hic aut.', 'sit-mollitia-non-est-possimus-magni-odio-deserunt-est', NULL, 'Ex asperiores iure iusto nihil. Aut sunt labore doloribus ea.', '<p>Voluptates libero reiciendis non. Aut nisi necessitatibus eos in quidem aliquid. Molestias ut aut consequatur assumenda modi qui. Atque consequatur laudantium sit aut fuga soluta quae ex.</p><p>Voluptatum libero hic distinctio. Vel maiores repellat ut laudantium dolores amet laborum.</p><p>Aut quos fugit sed. Quia aut praesentium aut sed minus temporibus doloribus. Nisi a doloribus voluptate quaerat praesentium consequatur. Odit sapiente doloribus nemo pariatur.</p><p>Consequatur in aut illum placeat iusto atque. Repellat dignissimos quo vel omnis magni et. Temporibus qui officia illo rerum cum nulla mollitia.</p><p>Provident aliquam eaque voluptas saepe odio. Architecto nam at provident aut quia beatae magni. Soluta sit laboriosam necessitatibus earum quisquam. Aliquid ut et accusamus rerum qui omnis.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(15, 3, 2, 'Magni temporibus.', 'fugiat-eos-mollitia-eos-repellat-ducimus', NULL, 'Ut impedit saepe nobis et. Ut vitae illo quia dolores et laudantium debitis. Et et id blanditiis maxime magnam. Ex non eveniet et inventore perferendis quis tempore.', '<p>Illo earum laborum ratione in in consequatur. Repudiandae ipsam iure eum nisi voluptas qui et qui. Dolor velit exercitationem sunt consequatur rem sed sit. Voluptatibus eum id molestiae in commodi.</p><p>Non eligendi error corrupti est dignissimos ut porro. Ut autem et qui qui asperiores. Voluptatem modi sed consequuntur.</p><p>Dolore odio provident repellendus facilis. Voluptatem sit iste perferendis voluptas iste. Dolorem tempora consequuntur ut officia eum quam. Consequatur qui qui officia ab officia quisquam.</p><p>Autem earum qui ut excepturi. Tenetur dolor harum atque qui non quo quia. Libero eum exercitationem impedit accusamus fugit dolore.</p><p>Voluptatem et consectetur doloribus dolores alias. Reprehenderit magni quidem ut doloremque omnis qui minima. Recusandae voluptas facilis et quos quis eum et.</p><p>Distinctio beatae eos rerum accusamus nam. Cumque dicta dolorum repellendus eveniet laudantium consequatur. Ad distinctio nihil dolorem nam rerum. Omnis fuga eligendi nihil et deleniti qui neque.</p><p>Accusantium nihil et exercitationem occaecati illum magni autem dolorem. Inventore et libero voluptatibus voluptate illum. Et et itaque maiores tempora dolor ut architecto. Officia suscipit et laboriosam delectus eum.</p><p>Deserunt nesciunt suscipit consequatur nihil quam ratione non. Eligendi ipsam est occaecati repellendus beatae qui.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(16, 2, 3, 'Illum doloremque aut quo illo occaecati et.', 'fuga-illo-sunt-et-eos', NULL, 'Ut ad deserunt voluptatem consequatur voluptatum vel. Ducimus ut ullam voluptate. Qui ullam facere fuga sit ipsum.', '<p>Commodi illum asperiores enim cumque officiis itaque. Voluptatum sint officia tenetur et facilis illo necessitatibus. Vel aliquam iure est nisi molestias. Earum tempore perferendis laudantium ullam et dolores.</p><p>Et in quo non hic quo. Qui rerum quia possimus autem. Suscipit est inventore saepe officiis aut id.</p><p>Placeat fuga sed voluptatum dolor neque omnis recusandae unde. Totam officia dignissimos dolorem. Veritatis nulla eaque aut laborum.</p><p>Cumque ea et esse sunt error. Ut animi sunt sapiente aperiam eos nam.</p><p>Dolorem repellat debitis nostrum consequatur sed illum ut quia. Qui autem ut iure dolor sint repellat eius. Incidunt deserunt vel est natus vel.</p><p>Ipsum ipsum maxime repellendus doloremque cumque aperiam deserunt corporis. Repellendus explicabo cumque voluptatem veniam animi qui ipsum. Consectetur illum blanditiis nisi tempora quae quae. Quis quis in magnam rem modi distinctio voluptatibus.</p><p>Blanditiis dolore et voluptatem incidunt at impedit voluptatem. Sint at veniam recusandae cum itaque fugiat repellat. Tempore neque dolores voluptas debitis corrupti.</p><p>Accusantium doloribus est iusto et dolore. Et et aut quia ea dignissimos eligendi alias sit. Eum aspernatur molestias aliquid natus optio vero. Aut esse eum omnis molestiae voluptas assumenda. Excepturi amet commodi illo quia.</p>', NULL, '2022-08-28 01:00:28', '2022-08-28 01:00:28'),
(17, 1, 1, 'Quia dolorem qui eum tenetur.', 'enim-et-itaque-aliquam', NULL, 'Explicabo similique temporibus et nulla. Reiciendis labore sint possimus distinctio. Facere qui sit eum odio iste molestias non.', '<p>Eum sapiente fugiat dolores aut beatae impedit fuga. Sint ipsa qui hic quia est. Numquam dicta sed et qui. Officiis unde dicta est.</p><p>Natus dignissimos sit non quia est. Suscipit quidem laudantium sed. Pariatur sunt maxime iure nihil aspernatur saepe. Qui molestiae id quaerat vel autem neque.</p><p>Dolore qui occaecati voluptas quae provident repudiandae error. Repellat nesciunt rerum error eligendi quibusdam. Et quia quasi laudantium nam fugit eum ab. Voluptas eos numquam reiciendis illo tenetur beatae. Id mollitia molestiae minus nulla numquam quibusdam aperiam ducimus.</p><p>Vitae enim eius voluptatum veritatis fuga. Alias aut repellendus beatae. Placeat adipisci qui est voluptatum. Odit iusto veniam quod quia ex.</p><p>Et architecto corrupti provident magnam voluptatem fugit. Corporis quidem quis error praesentium perferendis. Aspernatur et ut ipsa adipisci quasi ipsam quod.</p>', NULL, '2022-08-28 01:00:29', '2022-08-28 01:00:29'),
(18, 2, 1, 'Quae quos nihil dolorem eaque cupiditate.', 'et-laboriosam-nihil-voluptas-eaque-est-dolor', NULL, 'Ut et suscipit ut voluptatem aspernatur voluptate facere. Eligendi rem praesentium placeat autem sint et sunt. Et voluptatem in ab sit accusamus doloremque est quae.', '<p>Aut nemo non magni sint rerum perferendis in. Libero ab aperiam error consectetur. Natus quidem atque nesciunt aut sit molestiae mollitia.</p><p>Ducimus in vero et porro omnis modi sed. Quos id ut delectus dolore cupiditate impedit. Consequatur harum qui aut rem incidunt quis numquam.</p><p>Quasi neque sit quasi accusantium earum ut tempora. Fuga ut placeat repellendus ipsam dolor sunt. Eum rerum amet ex dolorum earum.</p><p>Eum quaerat debitis omnis. Nihil illum eaque facilis ut aut odit officia. Non magnam velit enim quod.</p><p>Qui reprehenderit nemo placeat esse adipisci eum. Illo qui cumque enim id a voluptas et. Aspernatur in iure perferendis eius.</p><p>Hic autem sit dolor est eum dignissimos. Aut dolorum optio quas dolorem in tenetur laborum. Eligendi nulla nulla dolor et vero quibusdam quidem. Nulla similique delectus consequatur id. Nisi ab quia laboriosam est iure.</p>', NULL, '2022-08-28 01:00:29', '2022-08-28 01:00:29'),
(19, 3, 3, 'Eligendi excepturi sed.', 'et-molestias-voluptatem-aut-in', NULL, 'Expedita expedita dolore ab molestiae tenetur. Et maxime minus autem vel quam quia. Voluptas nihil sint ut dolore ratione sint.', '<p>Sit est ex alias aut. Et exercitationem et qui deserunt eligendi. Quia a quis error aut tempora officia quis. Consequatur ipsa quibusdam porro earum unde blanditiis.</p><p>Veritatis ullam dolores quo voluptatem reprehenderit. Et in velit qui at beatae. Omnis sapiente dignissimos enim odit.</p><p>Tenetur et culpa rem nisi occaecati a dolorem quia. Quaerat nostrum eius dolor dolores nobis assumenda. Est officia ut incidunt totam. Qui fugit tempore vitae quo ut. Nam possimus esse perspiciatis laboriosam.</p><p>Quia dolorem quis voluptatem alias. Explicabo animi nam animi et. Perferendis nemo exercitationem inventore quod quia. Mollitia doloremque provident et doloremque et est nulla.</p><p>Amet laborum aut assumenda omnis et rerum. Rerum est laborum eaque quae vel qui iure earum. Dicta voluptates magnam voluptatem harum. Libero velit molestiae voluptatem inventore laboriosam.</p><p>Et illum quia voluptas voluptas corrupti animi. Debitis perspiciatis labore quis provident voluptates dolores deserunt.</p><p>Sed omnis soluta consequatur adipisci eaque et non. Aut in voluptatem voluptate qui libero ut. Et vel et temporibus et dolor velit. Optio culpa et nulla aspernatur non ipsam.</p>', NULL, '2022-08-28 01:00:29', '2022-08-28 01:00:29'),
(20, 2, 1, 'Deleniti vel quo facilis ut necessitatibus adipisci.', 'doloribus-nam-officiis-blanditiis-eligendi-et', NULL, 'Totam voluptatem et quia animi libero qui. Ut ea mollitia nesciunt placeat non minus quia. Nihil omnis iusto blanditiis id commodi. Sapiente et molestiae sint.', '<p>Eum iusto esse laborum ut magnam eveniet quia magnam. Voluptatem quaerat quis reprehenderit vel exercitationem expedita. Sequi molestiae velit est autem error. Dolor adipisci non et laudantium neque doloremque.</p><p>Sapiente laudantium velit distinctio nihil rerum. Ut tenetur ea et illum. Iste vel totam optio quos numquam rerum dolorem.</p><p>Et quia nemo possimus deleniti. Voluptate odit et in dolorem repudiandae dicta. Autem rerum provident vero in blanditiis et. Dignissimos nesciunt eius est architecto ad accusantium.</p><p>Sunt repellendus aperiam aspernatur neque autem impedit repellendus. Explicabo rerum ratione ipsam accusantium nobis. Tenetur itaque velit eum minus in.</p><p>Et aut soluta pariatur et aut dolor fugit aut. Dolor odit qui quia omnis voluptatem id. Ea quas reiciendis enim aspernatur ad.</p><p>Tempore et eius doloribus similique. Quaerat et eum maiores labore. Molestias iste eveniet eligendi perferendis veniam ex saepe. Dolor distinctio atque reprehenderit. Ut repudiandae impedit impedit et magnam quis.</p><p>Est voluptas repellendus repellat adipisci. Commodi inventore sed ducimus dolores unde enim. Vitae unde accusantium quia voluptate sed sit ea. Nobis optio maxime perferendis quidem.</p><p>Similique molestias numquam quae mollitia dolorem ex. Dolorum voluptates unde aperiam ratione. Est est autem quidem impedit blanditiis provident corrupti. Incidunt ex tenetur quia quia.</p><p>Impedit pariatur et dolores odit culpa. Enim ipsam sint non totam harum. Et aliquid quisquam illo ipsa autem placeat amet sit.</p><p>Quisquam ipsum saepe ab est ducimus neque. Rerum dolorem cupiditate ullam accusamus in doloribus. Nostrum quis sit illo ipsum et quo sunt.</p>', NULL, '2022-08-28 01:00:29', '2022-08-28 01:00:29'),
(21, 1, 1, 'PHP Dasar', 'php-dasar', 'post-images/ollDNaWNlcwQ19rBziJdTNUny12zUcb2r1UMjyRr.jpg', 'Post baru', '<div>Post baru</div>', NULL, '2022-08-28 01:22:59', '2022-08-28 01:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Zakiwal Ikram', 'zakiwalikram', 'zakiwalikram20@gmail.com', NULL, '$2y$10$Wo6Q51OzZULNm5qoS1mE4.2/WgRmSVgU/pjv.qkvyoJN0JUoRZUcW', NULL, '2022-08-28 01:00:27', '2022-08-28 01:00:27', 1),
(2, 'Kamila Aryani', 'amelia.pratiwi', 'qrahmawati@example.net', '2022-08-28 01:00:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L3N2isKJxS', '2022-08-28 01:00:27', '2022-08-28 01:00:27', 0),
(3, 'Irma Qori Rahimah M.Kom.', 'fitriani69', 'pudjiastuti.hendra@example.net', '2022-08-28 01:00:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZGvB6qs1D5r8SGZGrSYXlhbPos1NUvW3I4vCWF2RJchfMTjPg5Y4SglLmqTM', '2022-08-28 01:00:27', '2022-08-28 01:00:27', 1),
(4, 'Irsad Sihotang', 'kania.laksita', 'eman52@example.org', '2022-08-28 01:00:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ooWk3ucW1O', '2022-08-28 01:00:27', '2022-08-28 01:00:27', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
