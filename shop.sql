-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-06-2019 a las 04:51:07
-- Versión del servidor: 5.6.43-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pk37ffbz_shop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_date` date DEFAULT NULL,
  `arrived_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `order_date`, `arrived_date`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'Active', 1, '2019-04-14 00:09:39', '2019-04-14 00:09:39'),
(4, NULL, NULL, 'Pending', 2, '2019-04-14 02:14:27', '2019-04-14 04:05:20'),
(5, NULL, NULL, 'Pending', 2, '2019-04-14 04:05:20', '2019-04-14 04:26:30'),
(6, NULL, NULL, 'Pending', 2, '2019-04-14 04:26:30', '2019-04-14 04:26:34'),
(7, NULL, NULL, 'Active', 2, '2019-04-14 04:26:34', '2019-04-14 04:26:34'),
(8, NULL, NULL, 'Active', 5, '2019-04-14 16:45:20', '2019-04-14 16:45:20'),
(9, NULL, NULL, 'Active', 6, '2019-04-14 16:46:04', '2019-04-14 16:46:04'),
(10, NULL, NULL, 'Active', 7, '2019-05-09 23:08:32', '2019-05-09 23:08:32'),
(11, NULL, NULL, 'Active', 8, '2019-05-26 08:28:17', '2019-05-26 08:28:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_details`
--

CREATE TABLE `cart_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cart_details`
--

INSERT INTO `cart_details` (`id`, `cart_id`, `product_id`, `quantity`, `discount`, `created_at`, `updated_at`) VALUES
(12, 4, 2, -1, 0, '2019-04-14 02:46:13', '2019-04-14 02:46:13'),
(13, 4, 6, 3, 0, '2019-04-14 02:48:33', '2019-04-14 02:48:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `active`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Fugit ABC', 'Possimus One', 0, NULL, '2019-04-13 04:21:20', '2019-05-29 02:51:06'),
(2, 'Sed Brava uno', 'Sit mollitia uno', 0, NULL, '2019-04-13 04:21:20', '2019-05-29 02:50:59'),
(3, 'Etece', 'Assumenda qui consequatur quia dolores', 0, NULL, '2019-04-13 04:21:20', '2019-05-29 03:55:56'),
(4, 'Reiciendis ABCZ', 'asd', 0, NULL, '2019-04-13 04:21:20', '2019-05-29 03:11:40'),
(5, 'Pez bobo', 'Por que lo pescaron dormido', 0, NULL, '2019-05-29 02:51:45', '2019-05-29 02:57:13'),
(6, 'Peces con dos cabezas', 'Peses muy raros que viven en las islas de el ocenano lejano', 0, NULL, '2019-05-29 02:58:12', '2019-05-29 03:50:33'),
(7, 'Lombrices', 'Lombrices venenozas', 0, NULL, '2019-05-29 03:13:23', '2019-06-05 13:25:53'),
(8, 'Pirañas 2', 'Pirañas de lagos profundos', 0, NULL, '2019-05-29 03:39:44', '2019-05-29 03:50:30'),
(9, 'Cangrejos', 'De 5 patas', 0, NULL, '2019-05-29 03:50:27', '2019-05-29 06:00:03'),
(10, 'Camaron', 'Si se duerme se lo lleva la corriente', 1, NULL, '2019-05-29 03:56:24', '2019-05-29 03:56:24'),
(11, 'Patos huaralinos', 'Arroz con pato al ajo', 1, NULL, '2019-05-29 06:00:17', '2019-05-30 20:19:30'),
(12, 'Peces locos', 'Salidos del manocomio', 1, NULL, '2019-05-30 19:04:27', '2019-05-30 19:04:27'),
(13, 'Choro', 'Choro chorazo', 0, NULL, '2019-05-30 20:19:15', '2019-05-30 20:21:17'),
(14, 'Langosta', 'Langosta grandota', 0, NULL, '2019-05-30 20:20:05', '2019-05-31 03:55:29'),
(15, 'Peces lagartos', 'Son sumamente peligrosos', 0, NULL, '2019-05-31 03:55:23', '2019-06-05 13:26:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(175, '2014_10_12_000000_create_users_table', 1),
(176, '2014_10_12_100000_create_password_resets_table', 1),
(177, '2019_03_05_163929_create_categories_table', 1),
(178, '2019_03_05_210301_create_products_table', 1),
(179, '2019_03_07_145050_create_product_images_table', 1),
(180, '2019_04_11_235400_create_carts_table', 1),
(181, '2019_04_11_235439_create_cart_details_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('juancabb.17@gmail.com', '$2y$10$DymI4JaP6XZAJFbXd3/g..R13woVAAkzxGO8vNA61r46AlXzSRU3i', '2019-05-09 22:00:01'),
('juancagb.17@gmail.com', '$2y$10$U4RFZ7mu5OpOT9yHb8hAXeEKs9wxbxxB1SARultaWvagoWVaP11Im', '2019-05-09 23:09:00'),
('erdl1970@gmail.com', '$2y$10$KKu50eg951soBiUTfp/6muhawbjYr9aIp/uWIcs3ssf.8p8Evxx8m', '2019-05-26 08:52:33'),
('erdl1970@hotmail.com', '$2y$10$xWOkCSe7nCQ9eolzxQDNKujV/.j3.KE2TSamcfqiuW1BDnT4SF0B2', '2019-06-01 01:52:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `long_description`, `price`, `is_active`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Neque reiciendis delectus', 'Et asperiores ab deleniti qui ut velit sit quia natus eligendi.', 'Beatae delectus quo omnis. Enim amet voluptatum laboriosam ducimus fuga praesentium explicabo. Repellat quia vel asperiores.', 134.74, 1, 1, '2019-04-13 04:21:20', '2019-04-13 21:11:39'),
(2, 'Accusantium unde excepturi', 'Minus ad ipsam minus expedita non rerum.', 'Quis sint ipsa id. Omnis aut quibusdam natus fuga doloribus rem iste praesentium. Accusantium et amet sequi est explicabo. Aut placeat est qui sit cum inventore. Cum quasi id voluptatem asperiores.', 75.28, 1, 1, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(3, 'Unde qui tenetur', 'Distinctio aut eos quibusdam sed fugiat pariatur iusto cum.', 'Modi qui beatae libero quasi. Alias voluptates animi laborum consequatur quia. Ut laudantium facilis ipsam aut incidunt sint.', 97.63, 1, 1, '2019-04-13 04:21:20', '2019-05-27 02:33:40'),
(4, 'Corporis odio', 'Possimus accusamus ut ut adipisci dolorem pariatur dolores blanditiis perspiciatis asperiores dolores culpa ipsam.', 'Molestiae hic accusantium voluptas ipsa animi. Voluptate officia deleniti ad iusto. Rerum aliquid assumenda iure minus rem. Necessitatibus qui et nisi ea velit.', 144.91, 1, 1, '2019-04-13 04:21:20', '2019-05-27 05:22:07'),
(5, 'Libero accusamus deleniti est', 'Nemo libero labore quis ducimus placeat libero expedita voluptatem alias non.', 'Eius in architecto eum tempora nobis. Inventore nobis repudiandae cupiditate illo. Dolor quasi numquam excepturi recusandae.', 112.47, 1, 1, '2019-04-13 04:21:20', '2019-05-29 01:31:53'),
(6, 'Dignissimos aspernatur consectetur', 'Laudantium quo accusamus consequatur ex et et aperiam deleniti molestiae modi sunt.', 'Aliquid dolor voluptatem eum beatae. Fugiat laboriosam culpa et omnis explicabo. Est aut reiciendis ullam sunt quis. Saepe voluptatibus excepturi cupiditate id reiciendis omnis neque assumenda.', 15.63, 1, 2, '2019-04-13 04:21:20', '2019-05-27 05:22:10'),
(7, 'Dolorem natus voluptatum', 'Ab non quasi non minima culpa nisi esse pariatur quo.', 'Excepturi aspernatur ullam enim unde consequatur. Iste quos magni libero accusantium recusandae facilis. Delectus vero et sed qui maxime in.', 93.75, 1, 2, '2019-04-13 04:21:20', '2019-05-29 01:32:03'),
(8, 'Aut veniam', 'In nam sit in non et similique et pariatur sequi rerum ut magnam qui.', 'Delectus quae maxime et voluptas veritatis aliquam. Voluptas culpa sed omnis enim eos perspiciatis consequuntur. Quos quia vitae sapiente voluptas.', 80.93, 1, 2, '2019-04-13 04:21:20', '2019-05-27 05:37:49'),
(9, 'Corrupti saepe', 'Voluptas consequatur voluptatem beatae non ut et et.', 'Quia quae vel laboriosam quidem sint perferendis et. Qui sunt omnis voluptatem est nobis. Quaerat cumque sunt neque sequi voluptas.', 26.46, 0, 2, '2019-04-13 04:21:20', '2019-05-27 04:04:12'),
(10, 'Eum veritatis', 'Magni et nulla hic earum id doloribus voluptatem quisquam sunt temporibus et rem aut.', 'Saepe molestiae dolorum similique hic. Minus reprehenderit vel minima ullam dolore. Eveniet ut vel veritatis placeat sunt eum et.', 140.50, 0, 2, '2019-04-13 04:21:20', '2019-05-27 05:09:05'),
(11, 'Aut et voluptatem at', 'Et provident quaerat error molestias ut et.', 'In blanditiis eos quisquam aut. Voluptatem vitae voluptas minus in et. Ratione iure consectetur exercitationem fugit a debitis.', 28.63, 0, 3, '2019-04-13 04:21:20', '2019-05-29 01:49:16'),
(12, 'Sed rerum numquam', 'Sint officiis enim quia vel hic earum quos in non itaque.', 'Magnam quis ullam aliquid minima sed soluta. Veniam ut quo quia qui temporibus officia. Laudantium qui nisi iste rem et et.', 23.75, 0, 3, '2019-04-13 04:21:20', '2019-05-27 04:04:08'),
(13, 'Rerum et quis', 'Voluptatem ut officiis aut atque autem qui rerum magni dolor iure vel qui praesentium.', 'Animi nobis non tempora rerum. Ex ab velit possimus earum ratione impedit. Accusamus quis dicta qui voluptas quaerat dolorem. Unde laudantium qui doloremque sint blanditiis.', 28.41, 0, 3, '2019-04-13 04:21:20', '2019-05-27 04:04:16'),
(14, 'Quos dolore dignissimos', 'Voluptatem eum rerum eveniet aperiam et et corporis molestias.', 'Ea corrupti velit nihil atque dolorum delectus. Qui est perferendis laudantium velit cumque. Magni tempora illo dolor et nesciunt quod.', 8.70, 0, 3, '2019-04-13 04:21:20', '2019-05-27 05:09:27'),
(15, 'Blanditiis ratione earum', 'Nobis odio ipsam ut aut dolorum laborum eaque natus suscipit qui pariatur ea cum.', 'Dolorem recusandae vero libero corporis quod et. Doloribus magni doloribus facilis inventore est aliquid ad possimus. Cum culpa eum repudiandae eveniet.', 35.94, 0, 3, '2019-04-13 04:21:20', '2019-05-27 04:04:19'),
(16, 'Vel quam eum', 'Nihil vero rerum ea quasi cumque laudantium est officia suscipit ab quos voluptate magni.', 'Dignissimos et nisi et amet quia facilis error. Laborum aut velit velit dolores. Odit reprehenderit ipsum non ut.', 30.70, 0, 4, '2019-04-13 04:21:20', '2019-05-27 04:13:45'),
(17, 'Ut autem unde assumenda', 'Assumenda quam laboriosam doloribus est nesciunt sed non nobis excepturi reiciendis laudantium et sint.', 'Laudantium a exercitationem laboriosam aut ducimus qui. Tempore quia soluta rem doloribus consequuntur fuga. Quos dolor molestiae accusamus. Iure est aperiam molestiae.', 85.94, 0, 4, '2019-04-13 04:21:20', '2019-05-27 05:09:08'),
(18, 'Officia cumque', 'Et facilis aut minima qui culpa earum voluptas impedit soluta ratione.', 'Sed dolor quasi et similique. Doloribus tenetur aut praesentium aliquam non ratione labore. Nisi velit fuga adipisci ut eius quisquam sed.', 49.53, 0, 4, '2019-04-13 04:21:20', '2019-05-27 05:37:46'),
(19, 'Suscipit similique', 'Sed similique unde molestiae autem eum sint odio dolorem totam.', 'Asperiores ad eveniet quae consequatur et non sit. Nihil quae culpa repellendus enim quam. Velit iste repudiandae omnis deserunt rerum qui. Eligendi quaerat fugit quod expedita quis ut aliquid.', 149.32, 1, 4, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(20, 'Cum consequatur', 'Sapiente vitae quasi deserunt omnis voluptatem accusantium nihil in fugit.', 'Voluptatem aspernatur itaque ipsa sit voluptatem eaque. Ducimus id est saepe optio doloremque odio minima. Voluptas aut ipsam dicta deleniti fugiat reiciendis explicabo.', 28.80, 0, 4, '2019-04-13 04:21:20', '2019-05-29 01:40:19'),
(21, 'Pez Loco', 'Pcesitos muy bonitos', 'Lo podemos encontrar en las esquinas fumando', 34.00, 0, NULL, '2019-05-29 02:55:12', '2019-05-29 03:11:50'),
(22, 'Lagarto Juancho', '7', 'Vive en el amazonas', 234.00, 0, NULL, '2019-05-29 03:15:36', '2019-05-29 03:22:23'),
(23, 'Lunar', 'Lunar blanco con pelos', 'Lunar que sale y no desaparece', 34.00, 1, NULL, '2019-05-30 18:46:04', '2019-05-30 18:46:04'),
(24, 'Pez perro', 'Pez guardian', 'Cuidado muerde', 34.24, 1, NULL, '2019-05-30 19:03:42', '2019-05-30 19:03:57'),
(25, 'Libelula', 'Libelula de Africa', 'Libelula muy peligro, muy grande', 27.50, 1, NULL, '2019-05-31 03:56:22', '2019-05-31 03:56:22'),
(26, 'Datos de prueba', 'Prueba 1', NULL, 20.00, 1, 1, '2019-05-31 04:39:39', '2019-05-31 04:39:39'),
(28, 'Prueba 2', 'Descripcion de prueba', NULL, 100.00, 1, 10, '2019-05-31 04:42:12', '2019-05-31 04:42:12'),
(30, 'Perro Coke Pardo', 'Perrito muy bueno', 'Perrito jugueton', 23.80, 1, 2, '2019-05-31 04:44:44', '2019-05-31 20:21:28'),
(31, 'Conserva', 'Conserva de Mariscos', 'Conserva en lata ovalada', 23.60, 1, NULL, '2019-05-31 18:17:37', '2019-05-31 18:17:37'),
(32, 'Pescado Escabechado', 'Pesadp', NULL, 29.40, 1, NULL, '2019-05-31 18:18:34', '2019-05-31 18:18:34'),
(33, 'Calamar', 'Calamar al ajo', 'Delicioso', 17.40, 1, 3, '2019-05-31 18:19:33', '2019-05-31 18:19:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `featured`, `product_id`, `created_at`, `updated_at`) VALUES
(10, 'https://lorempixel.com/250/250/?30819', 0, 3, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(12, 'https://lorempixel.com/250/250/?13190', 0, 3, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(13, 'https://lorempixel.com/250/250/?43561', 0, 4, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(14, 'https://lorempixel.com/250/250/?26606', 0, 4, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(15, 'https://lorempixel.com/250/250/?10348', 0, 4, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(16, 'https://lorempixel.com/250/250/?74181', 0, 4, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(17, 'https://lorempixel.com/250/250/?58419', 0, 5, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(18, 'https://lorempixel.com/250/250/?43130', 0, 5, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(19, 'https://lorempixel.com/250/250/?49337', 0, 5, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(20, 'https://lorempixel.com/250/250/?96606', 0, 5, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(21, 'https://lorempixel.com/250/250/?10453', 0, 6, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(22, 'https://lorempixel.com/250/250/?52844', 0, 6, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(23, 'https://lorempixel.com/250/250/?41621', 0, 6, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(24, 'https://lorempixel.com/250/250/?11723', 0, 6, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(25, 'https://lorempixel.com/250/250/?61069', 0, 7, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(26, 'https://lorempixel.com/250/250/?60844', 0, 7, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(27, 'https://lorempixel.com/250/250/?23276', 0, 7, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(28, 'https://lorempixel.com/250/250/?73800', 0, 7, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(29, 'https://lorempixel.com/250/250/?50189', 0, 8, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(30, 'https://lorempixel.com/250/250/?59042', 0, 8, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(31, 'https://lorempixel.com/250/250/?16226', 0, 8, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(32, 'https://lorempixel.com/250/250/?54841', 0, 8, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(33, 'https://lorempixel.com/250/250/?91078', 0, 9, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(34, 'https://lorempixel.com/250/250/?29711', 0, 9, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(35, 'https://lorempixel.com/250/250/?23827', 0, 9, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(36, 'https://lorempixel.com/250/250/?23016', 0, 9, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(37, 'https://lorempixel.com/250/250/?14708', 0, 10, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(38, 'https://lorempixel.com/250/250/?31886', 0, 10, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(39, 'https://lorempixel.com/250/250/?34279', 0, 10, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(40, 'https://lorempixel.com/250/250/?54959', 0, 10, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(41, 'https://lorempixel.com/250/250/?84143', 0, 11, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(42, 'https://lorempixel.com/250/250/?10879', 0, 11, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(43, 'https://lorempixel.com/250/250/?51087', 0, 11, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(44, 'https://lorempixel.com/250/250/?34115', 0, 11, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(45, 'https://lorempixel.com/250/250/?34763', 0, 12, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(46, 'https://lorempixel.com/250/250/?20864', 0, 12, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(47, 'https://lorempixel.com/250/250/?28240', 0, 12, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(48, 'https://lorempixel.com/250/250/?23245', 0, 12, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(49, 'https://lorempixel.com/250/250/?64672', 0, 13, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(50, 'https://lorempixel.com/250/250/?41947', 0, 13, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(51, 'https://lorempixel.com/250/250/?34587', 0, 13, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(52, 'https://lorempixel.com/250/250/?25335', 0, 13, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(53, 'https://lorempixel.com/250/250/?16584', 0, 14, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(54, 'https://lorempixel.com/250/250/?36520', 0, 14, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(55, 'https://lorempixel.com/250/250/?10298', 0, 14, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(56, 'https://lorempixel.com/250/250/?98440', 0, 14, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(57, 'https://lorempixel.com/250/250/?64610', 0, 15, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(58, 'https://lorempixel.com/250/250/?56266', 0, 15, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(59, 'https://lorempixel.com/250/250/?68808', 0, 15, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(60, 'https://lorempixel.com/250/250/?81725', 0, 15, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(61, 'https://lorempixel.com/250/250/?63821', 0, 16, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(62, 'https://lorempixel.com/250/250/?88635', 0, 16, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(63, 'https://lorempixel.com/250/250/?76409', 0, 16, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(64, 'https://lorempixel.com/250/250/?55567', 0, 16, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(65, 'https://lorempixel.com/250/250/?31813', 0, 17, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(66, 'https://lorempixel.com/250/250/?43064', 0, 17, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(67, 'https://lorempixel.com/250/250/?86865', 0, 17, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(68, 'https://lorempixel.com/250/250/?91198', 0, 17, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(69, 'https://lorempixel.com/250/250/?43829', 0, 18, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(70, 'https://lorempixel.com/250/250/?41064', 0, 18, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(71, 'https://lorempixel.com/250/250/?56783', 0, 18, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(72, 'https://lorempixel.com/250/250/?85235', 0, 18, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(73, 'https://lorempixel.com/250/250/?58202', 0, 19, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(74, 'https://lorempixel.com/250/250/?49243', 0, 19, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(75, 'https://lorempixel.com/250/250/?78766', 0, 19, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(76, 'https://lorempixel.com/250/250/?20225', 0, 19, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(77, 'https://lorempixel.com/250/250/?89184', 0, 20, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(78, 'https://lorempixel.com/250/250/?81830', 0, 20, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(79, 'https://lorempixel.com/250/250/?94326', 0, 20, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(80, 'https://lorempixel.com/250/250/?68564', 0, 20, '2019-04-13 04:21:20', '2019-04-13 04:21:20'),
(81, '5cb8891f6883ddT45ap5ac.png', 0, 2, '2019-04-18 12:26:39', '2019-06-01 02:49:14'),
(82, '5cb89f84c4290Captura de Pantalla 2019-04-16 a la(s) 17.48.47.png', 0, 2, '2019-04-18 14:02:12', '2019-06-01 02:49:14'),
(83, '5cb95ef9eb053ram-electric-blue.jpg', 0, 2, '2019-04-19 03:39:05', '2019-06-01 02:49:14'),
(85, '5cf0086de3e181450715_10151833692052862_675460591_n.jpg', 0, 2, '2019-05-30 20:44:29', '2019-06-01 02:49:14'),
(86, '5cf00880d186710502533_10152398276242862_5660975887222428549_n.jpg', 0, 2, '2019-05-30 20:44:48', '2019-06-01 02:49:14'),
(87, '5cf008958dd85Captura de Pantalla 2019-05-02 a la(s) 00.29.16.png', 1, 2, '2019-05-30 20:45:09', '2019-06-01 02:49:14'),
(88, '5cf008b0c157820190112_155734.jpg', 0, 2, '2019-05-30 20:45:36', '2019-06-01 02:49:14'),
(89, '5cff157acb542WhatsApp Image 2019-06-10 at 19.01.53.jpeg', 0, 1, '2019-06-11 00:44:10', '2019-06-11 00:44:10'),
(90, '5cff1584f34a3WhatsApp Image 2019-06-10 at 19.02.10.jpeg', 0, 1, '2019-06-11 00:44:20', '2019-06-11 00:44:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Juan', 'juancabb.17@gmail.com', '$2y$10$VPrWkCfsgLnHLAx2JpyHU.hJy/KvnN8uUh36ChkhpidKwxiW6rtyG', 1, 'wEm8yoTJZsTXwXUraFI0wfjNlxEAVCUlG1OCnnQBnKo5Jed6AS6K4EFX0LaE', '2019-03-29 01:44:07', '2019-03-29 01:44:07'),
(2, 'Eduardo', 'erdl1970@hotmail.com', '$2y$10$Su.X0uO.OcvH/LM2vTjfM.qLYD2ebVwkwGjj61Sf5aSIHiNsQTLsO', 0, 'FoN87kSEuEVb8tX17Jjtvnmze6qeGwxUixHku4XpHQMpaLLF0a3SLOCGwTGh', '2019-03-29 04:43:14', '2019-03-29 04:43:14'),
(5, 'Aurora', 'auroradelama@hotmail.com', '$2y$10$/j3hju6i8NU3cgBYB3aaT.l8hNq8hCESSyNN3gGLUw1OyEJ7SNcKq', 1, '2mPlrCcpgRvRRXd489Vg4RfxVSbm2iO4iHHO7EN1DeF6lDNkDIZr3hKAIyJN', '2019-04-14 16:45:19', '2019-04-14 16:45:19'),
(6, 'eardl', 'auroradelama@gmail.com', '$2y$10$1s5UaZ7HzPHvdhp/Vkl4AeTBD5g01sSgbuFH.x2Dd9SXxc5Qaqr02', 0, 'dK6Aiy8Y8vvMps7HyqDqBQ4Lmr3CLadnXJaUNWGYOiQIRQKqjcW4ZokvTzIB', '2019-04-14 16:46:04', '2019-04-14 16:46:04'),
(7, 'Juan Ramos', 'juancagb.17@gmail.com', '$2y$10$S/yc0NMhQ0L/ryjhL1a4W.DwxKukPrKLMgzI.l/LprVoL3Iz.ZQcK', 0, 'wzLv6CMxNbIQkJOyDADQlYTRZL9ILVebOF6jNaAEK8xrjy4Z6aLxSNBxIvHw', '2019-05-09 23:08:32', '2019-05-09 23:08:32'),
(8, 'Eduardo Ramirez', 'erdl1970@gmail.com', '$2y$10$UsB3BSqxzcmmawplu6EU/.eFp3tdKclczXsWPpzUiFDZG8UvESAVi', 0, 'qUqIsGb7ApXfGuezcu3zPHhts3dDgcE2J5OtEi7WZJifnWZyGJwWPsR7MXX0', '2019-05-26 08:28:17', '2019-05-26 08:28:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_details_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_details_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `cart_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
