-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Хост: mysql:3306
-- Время создания: Сен 04 2026 г., 14:57
-- Версия сервера: 8.4.11
-- Версия PHP: 8.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dp_team`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `header`
--

CREATE TABLE `header` (
  `id` int NOT NULL,
  `logo` tinytext,
  `menu_bar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `contacts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `header_action` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `header`
--

INSERT INTO `header` (`id`, `logo`, `menu_bar`, `contacts`, `header_action`) VALUES
(1, 'style=\"background-image: url(\'../img/logo.png\')\"', '<a class=\"active\" href=\"#top\">Головна</a>\r\n            <a href=\"#learning\">Про навчання</a>\r\n            <a href=\"#training-panel\">Програма</a>\r\n            <a href=\"#program\">Роботи</a>\r\n            <a href=\"#teacher\">Про викладача</a>\r\n            <a href=\"#teacher\">Відгуки</a>\r\n            <a href=\"#faq\">FAQ</a>\r\n            <a href=\"#contacts\">Контакти</a>', '<a href=\"mailto:team@dpteam.com\"><i class=\"fa-regular fa-envelope\" style=\"color: #ff5a2c;\"></i> team@dpteam.com</a>\r\n            <a href=\"https://t.me/dp_studio_niko\"><i class=\"fa-brands fa-telegram\" style=\"color: cornflowerblue\"></i> @dp_studio_niko</a>\r\n            <a href=\"tel:+380991234567\"><i class=\"fa-solid fa-phone\" style=\"color: #ff5a2c\"></i> +38 (099) 123 45 67</a>', '<a class=\"header-button\" href=\"#apply\">Записатись на навчання 🔥</a>');

-- --------------------------------------------------------

--
-- Структура таблицы `hero`
--

CREATE TABLE `hero` (
  `id` int NOT NULL,
  `main_text` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `technology_list` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `hero_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `hero_facts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `hero_actions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `hero_image` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `hero_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `hero`
--

INSERT INTO `hero` (`id`, `main_text`, `technology_list`, `hero_description`, `hero_facts`, `hero_actions`, `hero_image`, `hero_message`) VALUES
(1, '<h1>\r\n                Стань <span>WEB</span><br>\r\n                розробником\r\n            </h1>', '<div class=\"hero-stack\">HTML • CSS • JavaScript • PHP • OOP • Laravel </div>', '<p class=\"hero-description\">\r\n                Комплексне навчання з нуля до перших проєктів.<br>\r\n                Практика, підтримка та реальний досвід з перших занять.\r\n            </p>', '<article class=\"fact-card\">\r\n                    <div class=\"fact-image-slot first-fact-image\" style=\"background-image: url(\'../img/first-fact-icon.png\');\" aria-label=\"Місце для іконки онлайн формату\"></div>\r\n\r\n                    <div>\r\n                        <strong>Онлайн формат</strong>\r\n                        <span>Навчайся з будь-якої<br>точки світу</span>\r\n                    </div>\r\n                </article>\r\n\r\n                <article class=\"fact-card\">\r\n                    <div class=\"fact-image-slot third-fact-image\" styles=\"background-image: url(\'../img/second-fact-icon.png\');\" aria-label=\"Місце для іконки підтримки\"></div>\r\n                    <div>\r\n                        <strong>Підтримка</strong>\r\n                        <span>Допомога на кожному<br>етапі</span>\r\n                    </div>\r\n                </article>', '<div class=\"hero-actions\">\r\n                <a class=\"btn btn-red\" href=\"#apply\">Записатись на навчання 🔥</a>\r\n                <a class=\"btn btn-dark\" href=\"#learning\">Дізнатись більше <b>↓</b></a>\r\n            </div>', '<div class=\"hero-image-slot\" style=\" background-image: url(\'/img/hero-laptop.png\')\" aria-label=\"main_img\"></div>', '<strong>Привіт! 👋</strong>\r\n                <p>Я Дмитро і я допоможу тобі стати<br>розробником, навіть якщо ти з нуля!</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `learning`
--

CREATE TABLE `learning` (
  `id` int NOT NULL,
  `main_text` tinytext,
  `benefits_cards` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `learning`
--

INSERT INTO `learning` (`id`, `main_text`, `benefits_cards`) VALUES
(1, '        <h2>Що ти отримаєш на навчанні 🔥</h2>\r\n', '<article class=\"benefit-card\">\r\n                <div class=\"benefit-image-slot purple-slot first-benefit-image\"></div>\r\n                <h3>Навчання з нуля</h3>\r\n                <p>Покроково простими словами навіть складні речі</p>\r\n            </article>\r\n\r\n            <article class=\"benefit-card\">\r\n                <div class=\"benefit-image-slot red-slot second-benefit-image\"></div>\r\n                <h3>Практика</h3>\r\n                <p>Багато практичних завдань і проєктів</p>\r\n            </article>\r\n\r\n            <article class=\"benefit-card\">\r\n                <div class=\"benefit-image-slot red-slot third-benefit-image\"></div>\r\n                <h3>Реальні проєкти</h3>\r\n                <p>Збереш портфоліо і будеш готовий до роботи</p>\r\n            </article>\r\n\r\n            <article class=\"benefit-card\">\r\n                <div class=\"benefit-image-slot purple-slot four-benefit-image\"></div>\r\n                <h3>Підтримка</h3>\r\n                <p>Я завжди на зв\'язку і допомагаю своїм студентам</p>\r\n            </article>\r\n\r\n            <article class=\"benefit-card\">\r\n                <div class=\"benefit-image-slot purple-slot fifth-benefit-image\"></div>\r\n                <h3>Сучасний стек</h3>\r\n                <p>PHP, HTML, CSS, JavaScript, JSON та інші інструменти</p>\r\n            </article>\r\n\r\n            <article class=\"benefit-card\">\r\n                <div class=\"benefit-image-slot purple-slot sixth-benefit-image\"></div>\r\n                <h3>Кар\'єрний старт</h3>\r\n                <p>Допоможу впевнено зробити перші кроки в IT</p>\r\n            </article>');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jrRPocIXRojGs88effUu2W2JB2LG6J9NuhowpjCF', NULL, '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJZUGVicjEyTFh5NUJJMXp1Y0ZpdGhoYUtVMTl3MG1OWHkyek11dlJNIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdCIsInJvdXRlIjoiaG9tZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1788427912),
('ts0TvJNHpm94GpJJLfNflWXQd9pY8WoQHo8MViUF', NULL, '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJDeHJWajBBbDRJTHpRTVRjQmtDSEZrUmhXbWJNSkxORGJqY1lUb1g0IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdCIsInJvdXRlIjpudWxsfSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1788365554);

-- --------------------------------------------------------

--
-- Структура таблицы `technologies`
--

CREATE TABLE `technologies` (
  `id` int NOT NULL,
  `main_text` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `technologies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `technologies`
--

INSERT INTO `technologies` (`id`, `main_text`, `technologies`) VALUES
(1, '<h2>Технології, які ми вивчатимемо</h2>', '<div class=\"technology\">\r\n                <div class=\"tech-image-slot html\" style=\"background-image: url(\'../img/html-icon.png\');\">\r\n                </div>\r\n                <b>HTML5</b>\r\n            </div>\r\n            <div class=\"technology\">\r\n                <div class=\"tech-image-slot css\" style=\"background-image: url(\'../img/css-icon.png\');\">\r\n                </div>\r\n                <b>CSS3</b>\r\n            </div>\r\n            <div class=\"technology\">\r\n                <div class=\"tech-image-slot js\" style=\"background-image: url(\'../img/js-icon.png\');\">\r\n\r\n                </div>\r\n                <b>JavaScript</b>\r\n            </div>\r\n            <div class=\"technology\">\r\n                <div class=\"tech-image-slot php\" style=\"background-image: url(\'../img/php-icon.png\')\">\r\n\r\n                </div><b>PHP</b></div>\r\n            <div class=\"technology\"><div class=\"tech-image-slot json\" style=\"background-image: url(\'../img/json-icon.png\');\"></div><b>JSON</b></div>\r\n            <div class=\"technology\"><div class=\"tech-image-slot mysql\" style=\"background-image: url(\'../img/mySql-icon.png\');\"></div><b>MySQL</b></div>\r\n            <div class=\"technology\"><div class=\"tech-image-slot git\" style=\"background-image: url(\'../img/git-icon.png\');\"></div><b>Git</b></div>\r\n            <div class=\"technology\"><div class=\"tech-image-slot laravel\" style=\"background-image: url(\'../img/laravel-icon.png\');\"></div><b>Laravel</b></div>\r\n        ');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Индексы таблицы `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `learning`
--
ALTER TABLE `learning`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `technologies`
--
ALTER TABLE `technologies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `header`
--
ALTER TABLE `header`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `learning`
--
ALTER TABLE `learning`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `technologies`
--
ALTER TABLE `technologies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
