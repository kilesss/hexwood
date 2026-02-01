-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране:  1 фев 2026 в 22:01
-- Версия на сървъра: 10.4.32-MariaDB
-- Версия на PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `hexwood`
--

-- --------------------------------------------------------

--
-- Структура на таблица `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `color_variants`
--

CREATE TABLE `color_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `color_variants`
--

INSERT INTO `color_variants` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Furniture clinic', 'furniture-clinic', 'https://furnitureclinics.bg/darvo/bayts-za-darvo-za-vanshni-usloviya', '2026-01-28 19:54:15', '2026-01-28 19:54:15');

-- --------------------------------------------------------

--
-- Структура на таблица `color_variant_items`
--

CREATE TABLE `color_variant_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `color_variant_items`
--

INSERT INTO `color_variant_items` (`id`, `variant_id`, `name`, `image`, `sort_order`, `created_at`, `updated_at`) VALUES
(3, 2, 'Atlantic blue', 'color-variants/GhUyghxnrkhT2rAWwKYmkpqZJeCCEgn5dG5pmZ8y.jpg', 0, '2026-01-28 19:55:01', '2026-01-28 19:55:01'),
(4, 2, 'Azure blue', 'color-variants/PkDVB3Q59myKeGbC66EsA5gqSdcG0mAQEX3Y1tJ5.jpg', 0, '2026-01-28 19:55:09', '2026-01-28 19:55:09'),
(5, 2, 'Black', 'color-variants/OLFq1DtYh4WrwRG27kHRvM5XqeiLO78N9zgVy0Rq.jpg', 0, '2026-01-28 19:55:15', '2026-01-28 19:55:15'),
(6, 2, 'Cherry Mahogany', 'color-variants/6BIFgW9F2WIOBC47Sk6gwNYEJgJQcxSNatG243S0.jpg', 0, '2026-01-28 19:55:31', '2026-01-28 19:55:31'),
(7, 2, 'Cream', 'color-variants/7HBwMoFpZRi1cCyvNkGw1b1b2ng1PvrRfJQUH4Ui.jpg', 0, '2026-01-28 19:55:39', '2026-01-28 19:55:39'),
(8, 2, 'Dark blue', 'color-variants/biHEOnZVJHxNyXc434xPGQKHwuAGOSQbggWnLJBg.jpg', 0, '2026-01-28 19:55:50', '2026-01-28 19:55:50'),
(9, 2, 'Dark oak', 'color-variants/WQ6dNwm8zfKD5m5RCWZAjyBO07zcgL2125hCYEo3.jpg', 0, '2026-01-28 19:55:56', '2026-01-28 19:55:56'),
(10, 2, 'Forest green', 'color-variants/GDwSiRDcUbrMxg6MP5kJFCmIRYMCoE5GJxNDGnCO.jpg', 0, '2026-01-28 19:56:06', '2026-01-28 19:56:06'),
(11, 2, 'Gold cedar', 'color-variants/R2t0EF7Dc3XR2gorOU6LSHjwP8U6odGiowimdjm9.jpg', 0, '2026-01-28 19:56:16', '2026-01-28 19:56:16'),
(12, 2, 'Grey', 'color-variants/8UJpObjaNvJIOoOLxRpe2QmPQuHBhUfYTYKGVq0l.jpg', 0, '2026-01-28 19:56:22', '2026-01-28 19:56:22'),
(13, 2, 'Moss green', 'color-variants/WiqKtp8APcfYw4enAZoEhbx5Oog8HDQkD1oOHOpN.jpg', 0, '2026-01-28 19:56:32', '2026-01-28 19:56:32'),
(14, 2, 'Mulberry', 'color-variants/veE1Y9cg2u5l8X33BtrvQl7sJKud8cmFPi8Rec1c.jpg', 0, '2026-01-28 19:56:52', '2026-01-28 19:56:52'),
(15, 2, 'Olive green', 'color-variants/Lda7lbk1dJQYMNRvOQAUu7b09jC8sQBXxJd2MdsQ.jpg', 0, '2026-01-28 19:57:01', '2026-01-28 19:57:01'),
(16, 2, 'pale green', 'color-variants/aDEpK6k8HN3tiOoKzEj69Sba8jE8Ale0c7uZZwhP.jpg', 0, '2026-01-28 19:57:12', '2026-01-28 19:57:12'),
(17, 2, 'pebble', 'color-variants/AOU2AxD2PXwEnD181iJ0OLoRqvo9kA7RLgnqhvQ8.jpg', 0, '2026-01-28 19:57:22', '2026-01-28 19:57:22'),
(18, 2, 'Pink blush', 'color-variants/uoNb4cXFE45f5AxL2MeeinMV7ryfDXfPOuN8X3JD.jpg', 0, '2026-01-28 19:57:33', '2026-01-28 19:57:33'),
(19, 2, 'Red cedar', 'color-variants/1FucBve0c78YyoYzXDx2c5JQcHH9qMW1pWpBH9e0.jpg', 0, '2026-01-28 19:57:50', '2026-01-28 19:57:50'),
(20, 2, 'Sand', 'color-variants/3GdeUBkZix9UdkKsMz4jlMau0EHMyw1XeEblIWzw.jpg', 0, '2026-01-28 19:57:58', '2026-01-28 19:57:58'),
(21, 2, 'Slate', 'color-variants/IzPn3gvG0X1RF3LD6jr6SYr4XvUlbONTQNYga64Y.jpg', 0, '2026-01-28 19:58:09', '2026-01-28 19:58:09'),
(22, 2, 'Sorbet', 'color-variants/BNwhp41lfrExPAg5LEfmVphDaUhcyMlemNqVKOCN.jpg', 0, '2026-01-28 19:58:15', '2026-01-28 19:58:15'),
(23, 2, 'Spring green', 'color-variants/uub9A3sb0pFmeKmHkYcZZvQdVjiW7WNZ7H91oXN8.jpg', 0, '2026-01-28 19:58:25', '2026-01-28 19:58:25'),
(24, 2, 'Sundust', 'color-variants/vFrGofxINYiZ68adkc5qBHH7iZWccHqw32MqFtov.jpg', 0, '2026-01-28 19:58:34', '2026-01-28 19:58:34'),
(25, 2, 'Tardis blue', 'color-variants/33FQjDdYjdEhePYRY4lwGUVJ7lBEbX8rZJRUA2pV.jpg', 0, '2026-01-28 19:58:45', '2026-01-28 19:58:45'),
(26, 2, 'Tardis blue', 'color-variants/qgx3D8OIP2CqLp45y6VddgC6UyGEgyBlG5sGcnaO.jpg', 0, '2026-01-28 19:58:59', '2026-01-28 19:58:59'),
(27, 2, 'Teak', 'color-variants/52xs8ymPHXaWsNkHvrz2rDlIoB2t2X4Mdmj878H9.jpg', 0, '2026-01-28 19:59:05', '2026-01-28 19:59:05'),
(28, 2, 'Teal', 'color-variants/3zKYM4jYM8BTgXpFze7oet8s1Ymg8cPyR1Of7qzD.jpg', 0, '2026-01-28 19:59:14', '2026-01-28 19:59:14'),
(29, 2, 'Vanilla', 'color-variants/YWebNdl1yvKJxJ5SF1yLnAYmbigBUj4cQoRwZyyI.jpg', 0, '2026-01-28 19:59:23', '2026-01-28 19:59:23'),
(30, 2, 'Velvet', 'color-variants/EgLieio9hbfjjhaPwYnx4MFZOC91FTZKvhPT4BYR.jpg', 0, '2026-01-28 19:59:31', '2026-01-28 19:59:31'),
(31, 2, 'Warm graphite', 'color-variants/NZYBj8APDhfo7YctMIVuVboVdZmGrCdBLE4NqJ1n.jpg', 0, '2026-01-28 19:59:47', '2026-01-28 19:59:47');

-- --------------------------------------------------------

--
-- Структура на таблица `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_01_22_193516_create_personal_access_tokens_table', 1),
(5, '2026_01_25_190848_add_phone_to_users_table', 1),
(6, '2026_01_25_234925_add_admin_to_users_table', 1),
(7, '2026_01_26_200120_create_news_table', 1),
(8, '2026_01_28_203803_color_variations', 1),
(9, '2026_01_29_184420_products', 2),
(10, '2026_01_29_195238_add_deleted_at_to_products_table', 3);

-- --------------------------------------------------------

--
-- Структура на таблица `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `category_key` varchar(255) NOT NULL,
  `color_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `products`
--

INSERT INTO `products` (`id`, `title`, `sku`, `category_key`, `color_variant_id`, `description`, `price`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', '1', 'lamps', 2, 'iashdaoidhaodihasdsd', 123.00, 1, '2026-01-29 17:12:49', '2026-01-29 17:53:12', '2026-01-29 17:53:12'),
(2, 'HIVE 7', '2', 'lamps', 2, '⭐ Отзив за дизайнерската лампа HIVE 7\r\n\r\nHIVE 7 не е просто осветително тяло — това е авторски обект, в който дизайнът, материалът и светлината работят в пълен синхрон. Вдъхновена от структурата на пчелната пита, лампата носи усещане за ред, хармония и естествена естетика.\r\n\r\nКомпозицията е изградена от 7 индивидуални модула, всеки с прецизно изчислени пропорции —\r\nединична пита с ширина 16 см и височина 14 см, които заедно оформят балансирана и визуално лека форма. Благодарение на тази модулност, светлината се разпределя равномерно и меко, без резки сенки и заслепяване.\r\n\r\nКорпусът е изработен от естествено дърво, обработено с внимание към детайла и текстурата. Всеки елемент запазва индивидуалния характер на материала, което прави всяка лампа уникална. Вградените LED източници излъчват топла, уютна светлина, подходяща както за жилищни пространства, така и за дизайнерски интериори – трапезарии, дневни, студиа или бутикови пространства.\r\n\r\nОкачването е дискретно и елегантно, създавайки усещане, че формата „плава“ в пространството. HIVE 7 не доминира, а допълва интериора – тя е акцент, който се забелязва, но не натрапва присъствието си.\r\n\r\n🌟 Акценти:\r\n\r\nАвторски модулен дизайн, вдъхновен от природата\r\n\r\n7 светлинни елемента с размер 16 × 14 см\r\n\r\nНатурално дърво с подчертана текстура\r\n\r\nТопла, равномерна LED светлина\r\n\r\nПодходяща за модерни, скандинавски и артистични интериори\r\n\r\nHIVE 7 е лампа за хора, които търсят повече от осветление — тя е детайл с характер, форма със смисъл и светлина с настроение.', 70.00, 1, '2026-01-29 18:30:13', '2026-01-29 22:37:43', NULL),
(3, 'HIVE 5', '3', 'lamps', 2, 'HIVE 5 не е просто осветително тяло — това е авторски обект, в който дизайнът, материалът и светлината работят в пълен синхрон. Вдъхновена от структурата на пчелната пита, лампата носи усещане за ред, хармония и естествена естетика.\r\n\r\nКомпозицията е изградена от 5 индивидуални модула, всеки с прецизно изчислени пропорции —\r\nединична пита с ширина 16 см и височина 14 см, които заедно оформят балансирана и визуално лека форма. Благодарение на тази модулност, светлината се разпределя равномерно и меко, без резки сенки и заслепяване.\r\n\r\nКорпусът е изработен от естествено дърво, обработено с внимание към детайла и текстурата. Всеки елемент запазва индивидуалния характер на материала, което прави всяка лампа уникална. Вградените LED източници излъчват топла, уютна светлина, подходяща както за жилищни пространства, така и за дизайнерски интериори – трапезарии, дневни, студиа или бутикови пространства.\r\n\r\nОкачването е дискретно и елегантно, създавайки усещане, че формата „плава“ в пространството. HIVE 5 не доминира, а допълва интериора – тя е акцент, който се забелязва, но не натрапва присъствието си.', 50.00, 1, '2026-01-29 22:44:13', '2026-01-29 22:44:13', NULL),
(4, 'HIVE 23', '4', 'lamps', 2, 'HIVE 23 е най-мащабният и въздействащ модел от серията HIVE – лампа, създадена да бъде централен елемент в пространството. Със своята разгръната пчелна структура и внушителни размери, тя не просто осветява, а оформя атмосферата на интериора.\r\n\r\nКомпозицията е изградена от 23 индивидуални шестоъгълни модула, подредени в плътна, хармонична форма. Общата ширина от приблизително 77 см и височина около 80 см придават на лампата силно присъствие, без да изглежда тежка или натрапчива. Формата остава визуално лека, благодарение на ясната геометрия и равномерното разпределение на светлината.\r\n\r\nВсеки модул е изработен от естествено дърво, с подчертана текстура и фино обработени ръбове. Вградените LED източници осигуряват топла, мека и дълбока светлина, която изпълва пространството равномерно и създава усещане за уют и спокойствие – дори при по-големи помещения.\r\n\r\nHIVE 23 е проектирана за интериори с характер:\r\nпросторни дневни, трапезарии, галерийни пространства, дизайнерски студиа или бутикови хотели. Това е лампа, която не остава незабелязана и която носи ясно усещане за ръчна изработка и авторска идея.', 175.00, 1, '2026-01-29 22:52:19', '2026-01-30 17:33:24', NULL),
(5, 'ZIGRA Wood Pendant', 'PRD-000005', 'lamps', 2, 'ZIGRA е ръчно изработена дървена висяща лампа, която превръща простата геометрия в силен визуален акцент. Формата ѝ следва зигзагообразен ритъм, изграден от масивни дървени рамки, които обгръщат светлината и я насочват меко надолу.\r\n\r\nТоплият отблясък на крушката подчертава естествената текстура на дървото и създава усещане за уют, баланс и дълбочина. Лампата е подходяща както за модерни интериори, така и за пространства с индустриален или скандинавски характер.\r\n\r\nZIGRA не търси внимание — тя го заслужава.\r\n\r\n📐 Размери (в сантиметри)\r\n\r\nРазмерите са преизчислени от инчове и визуално потвърдени спрямо пропорциите:\r\n\r\nШирина: ~12 см\r\n\r\nДълбочина: ~12 см\r\n\r\nВисочина на тялото: ~46 см\r\n\r\nОбща височина с кабел: до 120 см (регулируема)\r\n\r\n(Оригиналът е ~18.1” височина → ≈ 46 см)\r\n\r\n💡 Технически детайли (препоръчителни)\r\n\r\nФасунга: E27\r\n\r\nПрепоръчана крушка: LED filament / Edison\r\n\r\nМатериал: масивно дърво (бор, дъб, орех – по избор)\r\n\r\nФиниш: натурално масло / матов лак\r\n\r\nМонтаж: таванен, с метална розетка', NULL, 1, '2026-01-30 18:14:38', '2026-01-30 18:14:38', NULL),
(6, 'NESTA Wall Shelf', 'PRD-000006', 'lamps', 2, 'NESTA е стенна нощна етажерка от масивно дърво, създадена за модерни спални, където всеки сантиметър има значение. Плаващата ѝ конструкция освобождава пода и придава лекота на пространството, без да прави компромис със стабилността.\r\n\r\nТрите нива осигуряват удобно място за книга, телефон, чаша вода или декоративна лампа, а скритите носещи елементи подчертават чистата геометрия и минималистичния характер на дизайна.\r\n\r\nNESTA е тиха, практична и естествена — точно там, където ти трябва.\r\n\r\n📐 Размери (в сантиметри)\r\n\r\nРазмерите са изведени по визуални пропорции спрямо легло и стандартна височина на матрак:\r\n\r\nОбща височина: ~45 см\r\n\r\nШирина: ~30 см\r\n\r\nДълбочина (рафт): ~22 см\r\n\r\nРазстояние между рафтовете: ~14–15 см\r\n\r\nДебелина на рафтовете: ~2.5 см\r\n\r\n\r\n🧩 Конструкция и материали\r\n\r\nМатериал: масивно дърво (бук / дъб / ясен)\r\n\r\nМонтаж: стенен, със скрито захващане\r\n\r\nНатоварване: до ~10 кг общо\r\n\r\nФиниш: натурално масло или матов лак', NULL, 1, '2026-01-30 18:40:55', '2026-01-30 18:40:55', NULL),
(7, 'ARCUS Wall Shelf', 'PRD-000007', 'shelfs', 2, 'ARCUS е дизайнерска стенна етажерка от масивно дърво, която превръща функционалния рафт в архитектурен елемент. Асиметричните, леко извити линии създават усещане за движение и дълбочина, като всяко ниво изглежда сякаш „плува“ в пространството.\r\n\r\nКонструкцията е изградена около масивен вертикален носещ елемент, който осигурява стабилност и визуален баланс, докато тънките рафтове омекотяват формата и позволяват светлината да играе по повърхността.\r\n\r\nARCUS е идеална за акцентна стена в хол, стълбище, коридор или модерна спалня — място, където мебелът трябва да бъде и изкуство.\r\n\r\n📐 Размери (в сантиметри – ориентировъчни)\r\n\r\nСъобразени с пропорциите на стената и стандартна височина на помещение:\r\n\r\nОбща височина: ~160–170 см\r\n\r\nМаксимална ширина: ~80–90 см\r\n\r\nДълбочина на рафтовете: ~18–20 см\r\n\r\nДебелина на рафтовете: ~2.5–3 см\r\n\r\nБрой нива: 6\r\n\r\n(Размерът може лесно да се мащабира – това е дизайн, който работи и на 120 см, и на 2 м височина.)\r\n\r\n🧩 Конструкция и допълнителна информация\r\n\r\nМатериал: масивно дърво (дъб, орех, термо бор)\r\n\r\nНосещ елемент: вертикална греда, скрито анкерирана към стената\r\n\r\nРафтове: фиксирани под различен ъгъл за динамичен ефект\r\n\r\nФиниш: тъмен байц + натурално масло или матов лак\r\n\r\nМаксимално натоварване: ~3–4 кг на рафт (декоративна функция)', NULL, 1, '2026-01-30 18:46:16', '2026-01-30 18:46:16', NULL),
(8, 'AXIS Wall Shelf', 'PRD-000008', 'shelfs', 2, 'AXIS е стенна етажерка с вертикална композиция, която комбинира топлината на масивното дърво със стабилността на метална конструкция. Двата плаващи рафта създават ясен визуален ритъм, а контрастният заден панел подчертава архитектурния характер на дизайна.\r\n\r\nПодходяща е както за хол и кабинет, така и за коридор или спалня — място, където търсиш функционалност без визуален шум.\r\n\r\nAXIS е точна, спокойна и категорична.\r\n\r\n📐 Размери (в сантиметри – стандартен модел)\r\nПараметър	Размер\r\nОбща височина	90 см\r\nШирина	35 см\r\nДълбочина на рафтовете	22 см\r\nДебелина на рафтовете	25 мм\r\nРазстояние между рафтовете	30 см\r\n\r\n\r\n🧩 Материали и конструкция\r\n\r\nРафтове: масивно дърво \r\n\r\nЗаден панел: масив', NULL, 1, '2026-01-30 18:51:20', '2026-01-30 18:51:20', NULL),
(9, 'VERTA Wall Shelf', 'PRD-000009', 'shelfs', 2, 'VERTA е стенна етажерка от масивно дърво с вертикална конструкция и асиметрично разположени рафтове. Дизайнът ѝ използва минимална площ от стената, като същевременно предлага няколко функционални нива за съхранение и декорация.\r\n\r\nВертикалният носещ елемент придава стабилност и архитектурен характер, а тънките хоризонтални рафтове създават лек, „плаващ“ визуален ефект. VERTA е подходяща за хол, коридор, спалня или работен кът – навсякъде, където искаш ред без тежест.\r\n\r\n📐 Размери (в сантиметри – по реалния модел от снимките)\r\n\r\nГабаритни размери:\r\n\r\nОбща височина: 58 см\r\n\r\nОбща ширина: 50 см\r\n\r\nДълбочина на рафтовете: 12 см\r\n\r\nДебелина на рафтовете: 1.5 см\r\n\r\nМакс. натоварване: до 19.5 кг общо\r\n\r\nДетайли:\r\n\r\nШирина на вертикалния елемент: 16 см\r\n\r\nВидима дебелина на „рамката“: 6 см\r\n\r\nРазстояние между нивата: ~20 см\r\n\r\nШирина на долния десен рафт (за книги): 36 см\r\n\r\n(Това е много добре балансиран размер – не стърчи и става за тесни пространства.)\r\n\r\n🧩 Конструкция (как е направена)\r\nОсновни елементи\r\n\r\nВертикален носещ панел – масив / слепен плот\r\n\r\nОбгръщаща рамка (U-форма) – дава дълбочина и здравина\r\n\r\n4 хоризонтални рафта – редуване ляво/дясно\r\n\r\nЗахващане към стената\r\n\r\n2–3 винта през централния панел\r\n\r\nглавите са скрити зад рафтовете\r\n\r\nстандартни дюбели Ø8', NULL, 1, '2026-01-30 18:54:43', '2026-01-30 18:54:43', NULL);

-- --------------------------------------------------------

--
-- Структура на таблица `product_admin`
--

CREATE TABLE `product_admin` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `internal_notes` text DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `product_admin`
--

INSERT INTO `product_admin` (`product_id`, `internal_notes`, `is_featured`, `created_at`, `updated_at`) VALUES
(2, '42 dyski , 7 shestoygylnika\r\n2 дъски по 140 см на 10 см на 1 см \r\n1 дъска 17 см на 105 см на 1 см за ромбовете', 1, '2026-01-29 18:30:13', '2026-01-30 19:58:29'),
(3, NULL, 1, '2026-01-29 22:44:13', '2026-01-30 19:58:39'),
(4, NULL, 1, '2026-01-29 22:52:19', '2026-01-30 17:45:29'),
(5, NULL, 0, '2026-01-30 18:14:38', '2026-01-30 18:14:38'),
(6, NULL, 0, '2026-01-30 18:40:55', '2026-01-30 18:40:55'),
(7, NULL, 0, '2026-01-30 18:46:16', '2026-01-30 18:46:16'),
(8, NULL, 0, '2026-01-30 18:51:20', '2026-01-30 18:51:20'),
(9, 'https://www.amazon.co.uk/SUMGAR-Floating-Shelving-Bathroom-Decoration/dp/B0DSHVRDQ7?th=1', 1, '2026-01-30 18:54:43', '2026-01-30 18:55:15');

-- --------------------------------------------------------

--
-- Структура на таблица `product_materials`
--

CREATE TABLE `product_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `product_materials`
--

INSERT INTO `product_materials` (`id`, `product_id`, `name`, `unit_price`, `quantity`, `total_price`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'asdas', 123.00, 12.00, 1476.00, NULL, '2026-01-29 17:30:03', '2026-01-29 17:30:03'),
(2, 2, 'https://praktiker.bg/bg/Luni/LUNA-ZA-VGRAZhDANE-STATzIONARNA-F81MM-HROM-LIGHTEX/p/225561', 1.15, 7.00, 8.05, NULL, '2026-01-29 20:29:21', '2026-01-29 20:29:21'),
(3, 2, 'https://praktiker.bg/bg/Komponenti/OSNOVA-I-PROVOLKI-ZA-PLAFON-ChERNA-LIGHTEX/p/237192', 4.36, 1.00, 4.36, NULL, '2026-01-29 20:29:21', '2026-01-29 20:29:21'),
(4, 2, 'дървен материал', 6.00, 1.00, 6.00, NULL, '2026-01-29 21:02:31', '2026-01-29 21:02:31'),
(5, 2, 'https://praktiker.bg/bg/Led-krushki/LED-KRUShKA-GU10-7W-4000K-600LM-220V-LIGHTEX/p/125249', 1.17, 7.00, 8.19, NULL, '2026-01-29 21:04:40', '2026-01-29 21:04:40');

-- --------------------------------------------------------

--
-- Структура на таблица `product_media`
--

CREATE TABLE `product_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) NOT NULL,
  `type` enum('image','document') NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `product_media`
--

INSERT INTO `product_media` (`id`, `product_id`, `file`, `type`, `title`, `is_primary`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'products/0aDFTbnxTJx38Hts9r5jotTwC8tfwwnT4YDq5lNC.jpg', 'image', NULL, 0, 0, '2026-01-29 17:20:19', '2026-01-29 17:20:19'),
(2, 1, 'products/bxTdNRMyajPrIlk7Mgw86O8tUP4KWI4Z8dQ1tsrS.jpg', 'document', 'dfgsdfg', 0, 0, '2026-01-29 17:22:22', '2026-01-29 17:22:22'),
(3, 1, 'products/nMkL3sjvSK09yiBg5m04MloEvcdcot3cxPLBbArK.jpg', 'image', '2bd01a210a8eab1226f5c9cabdf77f2a.jpg', 0, 0, '2026-01-29 17:27:18', '2026-01-29 17:27:18'),
(4, 1, 'products/I6gCmwNZhNSHaSU4aSIs1XJd0hJNi2Jmn32IVqcc.jpg', 'image', '3a51c14e-85a1-4fbb-8984-3a06c7d8eb33.jpg', 0, 0, '2026-01-29 17:27:18', '2026-01-29 17:27:18'),
(5, 1, 'products/N2J42BfvkgCil8yMNhNXx0DoXVvx11klYpW4pp5b.jpg', 'image', '6d62627c9d9336bdb5fe92e1389889b5.jpg', 0, 0, '2026-01-29 17:27:18', '2026-01-29 17:27:18'),
(6, 1, 'products/hQlYY51d7syKwCCG6GhVJcHduWraKDfYukEcPBbX.jpg', 'image', '6eaa39982f997c600e12cb0d44087460.jpg', 0, 0, '2026-01-29 17:27:18', '2026-01-29 17:27:18'),
(7, 1, 'products/ar0IhDdeGNR5jCnvMBVdwA6ooDQGVEobFzyA7GOz', 'document', 'biuro moe.skp', 0, 0, '2026-01-29 17:27:36', '2026-01-29 17:27:36'),
(8, 2, 'products/vKB0YHhWyEPjzOzC1CkvdqKcEZSyr18AyYzSckDT.webp', 'image', 'Wood_honeycomb_chandelier (1).webp', 0, 0, '2026-01-29 20:22:59', '2026-01-29 20:22:59'),
(9, 2, 'products/Yua5084v6CdygauwDnrtA4CckehUmiRp9sODv8r7.webp', 'image', 'honeycomb-solid-wood-pendant-lamp-with-led-bulbs-bpmt26-n-pendant-lamps-30257095-30947856519.webp', 0, 0, '2026-01-29 20:23:13', '2026-01-29 20:23:13'),
(10, 2, 'products/joUkt173hAgLdqGz9k42SQIUIgQ3MQpUERNxO7jZ.webp', 'image', 'wood_honeycomb_light_-close_up.webp', 0, 0, '2026-01-29 20:23:13', '2026-01-29 20:23:13'),
(11, 2, 'products/2KnjOWRJkN8DNwKkz5BiJLkN4eEwEg6TOCmBd1YR.webp', 'image', 'honeycomb_light.webp', 0, 0, '2026-01-29 20:23:13', '2026-01-29 20:23:13'),
(12, 2, 'products/Bn69nEvFBGUphocNRg9RNuMwErVsM4BPefkEZ6Cy.webp', 'image', 'wooden_honeycomb_chandelier.webp', 0, 0, '2026-01-29 20:23:13', '2026-01-29 20:23:13'),
(13, 2, 'products/RUN3ueODbdxial9tpK8PF6V4LSh5RAOncxJVSuLn.webp', 'image', 'Wood_honeycomb_chandelier_469a6943-2933-4538-95c7-ecae06862888.webp', 0, 0, '2026-01-29 20:23:13', '2026-01-29 20:23:13'),
(14, 2, 'products/IuzGVLPtdOk4P2cdP4fyLyds7nvd6VkFKfJba7md.webp', 'image', 'Wood_honeycomb_chandelier.webp', 0, 0, '2026-01-29 20:23:13', '2026-01-29 20:23:13'),
(15, 2, 'products/JQQtg4JOMXCXO47t5NKDXS0TlPOfRdOKqhY2BtL6.png', 'document', 'Screenshot 2026-01-30 004705.png', 0, 0, '2026-01-29 20:49:37', '2026-01-29 20:49:37'),
(16, 2, 'products/FHNwrPBAZ3ZPHyZQTaWCOkbRfRFBTND71I6DPXOn.png', 'document', 'Screenshot 2026-01-30 005137.png', 0, 0, '2026-01-29 20:51:53', '2026-01-29 20:51:53'),
(17, 3, 'products/IrmPnFoEiSMAw6SOBwJ4rfLPBzahh6i5WandkgO9.png', 'image', 'HTB10jWNRXXXXXcQaXXXq6xXFXXXR.jpg_640x640.jpg', 0, 0, '2026-01-29 22:44:20', '2026-01-29 22:44:20'),
(18, 3, 'products/BMJ2nizJLDHfqhs6i83BOrDpGeQ6gKJIvHInV3WD.jpg', 'image', 'rope-chandelier-lights-1000x1000.jpg', 0, 0, '2026-01-29 22:44:39', '2026-01-29 22:44:39'),
(19, 3, 'products/Ji4qyPRhjYLGdA1dP0UWwMLwzpyxcVni8Ey1Czht.jpg', 'image', '51xua-SjwDL._AC_UF894,1000_QL80_.jpg', 0, 0, '2026-01-29 22:44:39', '2026-01-29 22:44:39'),
(20, 3, 'products/qAZz1cNA98ib4e578ulxOiYGBI7wJizc13MRJOmo.webp', 'image', 'HTB10jWNRXXXXXcQaXXXq6xXFXXXR.jpg_640x640.webp', 0, 0, '2026-01-29 22:44:39', '2026-01-29 22:44:39'),
(21, 4, 'products/MG35VqnXpWoE38EBHTKFxu7jWEjHkSB7jTJ5MwD7.jpg', 'image', '12-light-wood-dining-room-living-room-bedroom-led-modern-contemporary-pendant-light.jpg', 0, 0, '2026-01-29 22:52:28', '2026-01-29 22:52:28'),
(22, 4, 'products/CvrvDiIFdQ87HN1GxXI2rymyIHqtNl5OxCdAUCSQ.webp', 'image', 'rBVaVV71usWAYp2bAABnABU-t3M622.jpg', 0, 0, '2026-01-29 22:52:41', '2026-01-29 22:52:41'),
(23, 4, 'products/LXpzlq19BTlpIeBd3rAMZjkWO5K7r3BX29JhA4Td.webp', 'image', 'rBVaVl71ub6AZGPcAAN_mVgE87k482.jpg', 0, 0, '2026-01-29 22:52:41', '2026-01-29 22:52:41'),
(24, 4, 'products/JAmYAGPdisz1QiAd0741ggm7BWZtYLi2hfGAHjky.jpg', 'image', '7ccc694bc9ca76d3323526ab152542d6.jpg', 0, 0, '2026-01-29 22:52:41', '2026-01-29 22:52:41'),
(25, 4, 'products/eJRYNRMIyN4OeOiDRESAp50sawvIy2knwCASFA2F.jpg', 'image', '89c55431d5563ef65c23eacd48ecc65b.jpg', 0, 0, '2026-01-29 22:52:41', '2026-01-29 22:52:41'),
(26, 4, 'products/ixIoGVYOgGK4lRPMQpooryyrXoJ1U7tBNvroumLC.webp', 'document', 'rBVaVV71usWAYp2bAABnABU-t3M622.jpg', 0, 0, '2026-01-30 17:19:58', '2026-01-30 17:19:58'),
(28, 5, 'products/ZiWGjCEUE1ls1lwvltLWtA66INSI28PTJtpP4DcC.jpg', 'image', 'cefee4b4a642ba2c8002850bc2310035.jpg', 0, 0, '2026-01-30 18:15:05', '2026-01-30 18:15:05'),
(29, 5, 'products/u7kGfyCR2F2PBpjGNMJHBICqzS5WzPASWMgeYa6t.jpg', 'image', '22301121285cc7c203af9f8ee10f734f.jpg', 0, 0, '2026-01-30 18:18:07', '2026-01-30 18:18:07'),
(30, 5, 'products/KNfStRNKhn3mPri1ijwtC6uWm4koiqguVHyBxozr.webp', 'image', 'z_shaped_wood_light.webp', 0, 0, '2026-01-30 18:18:07', '2026-01-30 18:18:07'),
(31, 5, 'products/7hCI1WRLRBvZTx6i1SZuwP9mEFftJrd22g5UOFIO.jpg', 'image', 'modern-contemporary-wood-pendant-light.jpg', 0, 0, '2026-01-30 18:18:07', '2026-01-30 18:18:07'),
(32, 5, 'products/05mCUfW25Dt7lX6bLMGoH0XvtjwxsTXt0veT0Pef.jpg', 'image', 'cefee4b4a642ba2c8002850bc2310035.jpg', 0, 0, '2026-01-30 18:18:07', '2026-01-30 18:18:07'),
(33, 5, 'products/ZXzWZL91n7m45GwHdWXWhtb43ZIqVnxpMz1a1DGE.jpg', 'image', 'fb66da85aec669eb63877ff235db6499.jpg', 0, 0, '2026-01-30 18:18:07', '2026-01-30 18:18:07'),
(34, 5, 'products/2PBgUtGjBke0mK5N4LCwDMlU7nfsAv5TDj6ZtP4Z.jpg', 'image', '142fe302a53f108e03b0ccd88c27efd2.jpg', 0, 0, '2026-01-30 18:18:07', '2026-01-30 18:18:07'),
(35, 6, 'products/w7KuQGQMnYNkA8UGIKmkLk9F9W8AtfFYfCmmMncg.jpg', 'image', '138d8e6aba212086b7e18f70a49e0cba.jpg', 0, 0, '2026-01-30 18:41:07', '2026-01-30 18:41:07'),
(36, 6, 'products/wctlVB3fl5SYyoWSrNCFAo8lbBdoBFkYDQsehH49.jpg', 'image', '89a06b766b36a6de9afe2f0f3eec3d1d.jpg', 0, 0, '2026-01-30 18:41:07', '2026-01-30 18:41:07'),
(37, 7, 'products/Lfny43b4QcFoEIDrwLWosDv9qIC43luFdAnRC6ct.jpg', 'image', '5fd065536a92b1c8e54e6172e9f27162.jpg', 0, 0, '2026-01-30 18:46:22', '2026-01-30 18:46:22'),
(38, 8, 'products/RiQ8wYB2mO145KggczNfFsBMYrT7Kl260DKuhpfN.jpg', 'image', '2158db93534f4389aab8aa88e17612a5-image.jpg', 0, 0, '2026-01-30 18:51:27', '2026-01-30 18:51:27'),
(39, 8, 'products/F7dREsRHuyq4SkdxEgO8TYmxd8YM5WGM0RyZhqWu.jpg', 'image', '953aaaea522945ea97fa66c6adb070ac-image.jpg', 0, 0, '2026-01-30 18:51:34', '2026-01-30 18:51:34'),
(40, 8, 'products/FRlARaLoMz0z2MnLDcVIIg1zbzSBze3TFQA0HaiC.jpg', 'image', '43938ce865d42824a4e2ae77864f381a.jpg', 0, 0, '2026-01-30 18:51:34', '2026-01-30 18:51:34'),
(41, 9, 'products/lpU9wLFYfzrgi4e2aRflB028H12OjDsolSPFtUbV.jpg', 'image', '61H0XRQrNpL._AC_SL1000_.jpg', 0, 0, '2026-01-30 18:54:52', '2026-01-30 18:54:52'),
(42, 9, 'products/eFaQ6aUezGzo5pwz8yk5bpF48zn2UoUTXrcfzcoO.jpg', 'image', '81J2nVA1jzL._AC_SL1500_.jpg', 0, 0, '2026-01-30 18:55:04', '2026-01-30 18:55:04'),
(43, 9, 'products/7n0StYDsWnEobpHM7N3c8Fq00NNfavaIjEug3iir.jpg', 'image', '71fd+AF09BL._AC_SL1500_.jpg', 0, 0, '2026-01-30 18:55:04', '2026-01-30 18:55:04'),
(44, 9, 'products/s88cKBmANfa0V7gQVBanMsoKBQeqRoMAzU2eJcin.jpg', 'image', '712rygapU9L._AC_SL1500_.jpg', 0, 0, '2026-01-30 18:55:04', '2026-01-30 18:55:04'),
(45, 9, 'products/KFli9D6mTkAzIAkYxmSe9C3FYi93Jk7rLi1AEN79.jpg', 'image', '71c1W6gRQYL._AC_SL1500_.jpg', 0, 0, '2026-01-30 18:55:04', '2026-01-30 18:55:04'),
(46, 9, 'products/SDCLxe7ykQOIHgDg06WwnXKKiovGrPR9AEsbIlS4.jpg', 'image', '91zPP1rKsPL._AC_SL1500_.jpg', 0, 0, '2026-01-30 18:55:04', '2026-01-30 18:55:04'),
(47, 9, 'products/0N7E5AtiuP4fy1VbtXgVovvy6SkIlTfGogovrpGu.jpg', 'image', '81Z-RYq2xcL._AC_SL1500_.jpg', 0, 0, '2026-01-30 18:55:04', '2026-01-30 18:55:04'),
(48, 9, 'products/EMWIEJikgJ88K2ohuP58Eyf1PshItxHvSdvwanfJ.jpg', 'image', '818fWHslhNL._AC_SL1500_.jpg', 0, 0, '2026-01-30 18:55:04', '2026-01-30 18:55:04'),
(49, 9, 'products/bM05CFc3cfRQZujC0maesn7iTBXWGLsr9CziEUeV.jpg', 'image', '71AQbh-ODHL._AC_SL1500_.jpg', 0, 0, '2026-01-30 18:55:04', '2026-01-30 18:55:04');

-- --------------------------------------------------------

--
-- Структура на таблица `product_pricing`
--

CREATE TABLE `product_pricing` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `work_hours` int(11) DEFAULT NULL,
  `hour_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `product_pricing`
--

INSERT INTO `product_pricing` (`product_id`, `work_hours`, `hour_price`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, '2026-01-29 18:30:13', '2026-01-29 18:30:13'),
(3, NULL, NULL, '2026-01-29 22:44:13', '2026-01-29 22:44:13'),
(4, NULL, NULL, '2026-01-29 22:52:19', '2026-01-29 22:52:19'),
(5, NULL, NULL, '2026-01-30 18:14:38', '2026-01-30 18:14:38'),
(6, NULL, NULL, '2026-01-30 18:40:55', '2026-01-30 18:40:55'),
(7, NULL, NULL, '2026-01-30 18:46:16', '2026-01-30 18:46:16'),
(8, NULL, NULL, '2026-01-30 18:51:20', '2026-01-30 18:51:20'),
(9, NULL, NULL, '2026-01-30 18:54:43', '2026-01-30 18:54:43');

-- --------------------------------------------------------

--
-- Структура на таблица `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jhypRO2HXts6tNjqv6dfQmcHQcys9IqywvtUhZue', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVFBiZFF2MUFxWTNJd3lWQUFzcElvSERHNFM3eE5tbUl1R25hbzh5ZSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC82IjtzOjU6InJvdXRlIjtzOjE0OiJwcm9kdWN0LmRldGFpbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1769817059);

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Любомир Мариянов Пенчев', 'lmariqnov@gmail.com', '0885110977', 1, NULL, '$2y$12$ofel80rXm.wtNahHng5qZemxnQ8OR1SL6dQGlY/jVUlkHMOgzTjmS', NULL, '2026-01-28 19:08:42', '2026-01-28 19:08:42');

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Индекси за таблица `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Индекси за таблица `color_variants`
--
ALTER TABLE `color_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `color_variants_slug_unique` (`slug`);

--
-- Индекси за таблица `color_variant_items`
--
ALTER TABLE `color_variant_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_variant_items_variant_id_foreign` (`variant_id`);

--
-- Индекси за таблица `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индекси за таблица `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индекси за таблица `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`);

--
-- Индекси за таблица `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индекси за таблица `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Индекси за таблица `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_color_variant_id_foreign` (`color_variant_id`);

--
-- Индекси за таблица `product_admin`
--
ALTER TABLE `product_admin`
  ADD PRIMARY KEY (`product_id`);

--
-- Индекси за таблица `product_materials`
--
ALTER TABLE `product_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_materials_product_id_foreign` (`product_id`);

--
-- Индекси за таблица `product_media`
--
ALTER TABLE `product_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_media_product_id_foreign` (`product_id`);

--
-- Индекси за таблица `product_pricing`
--
ALTER TABLE `product_pricing`
  ADD PRIMARY KEY (`product_id`);

--
-- Индекси за таблица `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индекси за таблица `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `color_variants`
--
ALTER TABLE `color_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `color_variant_items`
--
ALTER TABLE `color_variant_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_materials`
--
ALTER TABLE `product_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_media`
--
ALTER TABLE `product_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `color_variant_items`
--
ALTER TABLE `color_variant_items`
  ADD CONSTRAINT `color_variant_items_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `color_variants` (`id`) ON DELETE CASCADE;

--
-- Ограничения за таблица `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_color_variant_id_foreign` FOREIGN KEY (`color_variant_id`) REFERENCES `color_variants` (`id`);

--
-- Ограничения за таблица `product_admin`
--
ALTER TABLE `product_admin`
  ADD CONSTRAINT `product_admin_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ограничения за таблица `product_materials`
--
ALTER TABLE `product_materials`
  ADD CONSTRAINT `product_materials_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ограничения за таблица `product_media`
--
ALTER TABLE `product_media`
  ADD CONSTRAINT `product_media_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ограничения за таблица `product_pricing`
--
ALTER TABLE `product_pricing`
  ADD CONSTRAINT `product_pricing_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
