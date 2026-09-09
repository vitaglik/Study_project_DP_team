-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Сен 09 2026 г., 13:34
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
-- База данных: `sail`
--

-- --------------------------------------------------------

--
-- Структура таблицы `application_sections`
--

CREATE TABLE `application_sections` (
  `id` int NOT NULL,
  `kicker` tinytext NOT NULL,
  `title` tinytext NOT NULL,
  `subtitle` tinytext NOT NULL,
  `button_text` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `application_sections`
--

INSERT INTO `application_sections` (`id`, `kicker`, `title`, `subtitle`, `button_text`, `sort_order`) VALUES
(1, 'ЗАПИС НА КУРС', 'Записатися на навчання 🔥', 'Залиши заявку — я зв\'яжусь з тобою для уточнення деталей.', 'Відправити заявку 🚀', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `application_section_items`
--

CREATE TABLE `application_section_items` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `title` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `subtitle` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `icon` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `application_section_items`
--

INSERT INTO `application_section_items` (`id`, `section_id`, `title`, `subtitle`, `icon`, `sort_order`) VALUES
(1, 1, ' 30 годин  ', NULL, NULL, 1),
(2, 1, ' Від першого HTML-коду', NULL, NULL, 2),
(3, 1, 'до власних веб-сторінок', NULL, NULL, 3),
(4, 1, NULL, NULL, '</>', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `course_about`
--

CREATE TABLE `course_about` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `title` tinytext NOT NULL,
  `type` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `course_about`
--

INSERT INTO `course_about` (`id`, `section_id`, `title`, `type`) VALUES
(1, 1, 'Що ти вивчиш', 'skills'),
(2, 1, 'Як проходить навчання', 'process');

-- --------------------------------------------------------

--
-- Структура таблицы `course_sections`
--

CREATE TABLE `course_sections` (
  `id` int NOT NULL,
  `course_format` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` tinytext NOT NULL,
  `sort_order` int NOT NULL,
  `course_duration` tinytext NOT NULL,
  `course_action` tinytext NOT NULL,
  `sub_title` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `course_sections`
--

INSERT INTO `course_sections` (`id`, `course_format`, `title`, `sort_order`, `course_duration`, `course_action`, `sub_title`) VALUES
(1, 'ОНЛАЙН НАВЧАННЯ', 'WEB з нуля', 1, '30', 'Записатися на навчання', 'Курс для тих, хто хоче з нуля вивчити основи веб-розробки та навчитися створювати сучасні веб-сайти.');

-- --------------------------------------------------------

--
-- Структура таблицы `course_sections_items`
--

CREATE TABLE `course_sections_items` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `item_title` tinytext NOT NULL,
  `item_subtitle` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `course_sections_items`
--

INSERT INTO `course_sections_items` (`id`, `section_id`, `item_title`, `item_subtitle`, `sort_order`) VALUES
(1, 1, 'HTML5', 'Побудова структури веб-сайтів за допомогою HTML5.', 1),
(2, 1, 'CSS3', 'Стилізація веб-сайтів та робота з сучасним оформленням.', 2),
(3, 1, 'JavaScript та jQuery', 'Основи JavaScript та робота з інтерактивністю сторінок.', 3),
(4, 2, '\r\nЖиве спілкування', 'Онлайн-заняття з викладачем у живому форматі.', 1),
(5, 2, 'Теорія + практика', 'Теоретичний матеріал одразу закріплюється практикою.', 2),
(6, 2, 'Практичні завдання', 'Завдання створені на основі матеріалу курсу.', 3),
(7, 2, 'Домашні завдання', 'Домашні роботи перевіряються та детально розбираються', 4),
(8, 2, 'Тестування', 'Перевірка засвоєного матеріалу протягом курсу.', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `faq_sections`
--

CREATE TABLE `faq_sections` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `faq_sections`
--

INSERT INTO `faq_sections` (`id`, `title`, `sort_order`) VALUES
(1, 'FAQ', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `faq_section_items`
--

CREATE TABLE `faq_section_items` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `question` tinytext NOT NULL,
  `answer` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `faq_section_items`
--

INSERT INTO `faq_section_items` (`id`, `section_id`, `question`, `answer`, `sort_order`) VALUES
(1, 1, 'Чи підійде навчання з нуля?', 'Так. Курс розрахований на тих, хто тільки починає знайомство з веб-розробкою.', 1),
(2, 1, 'Як проходять заняття?', 'Онлайн у живому спілкуванні з викладачем: теорія, практика, домашні завдання та тестування.', 2),
(3, 1, 'Скільки триває курс?', 'Загальна програма навчання розрахована на 30 годин.', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `footer_links`
--

CREATE TABLE `footer_links` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `title` tinytext NOT NULL,
  `href` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `footer_links`
--

INSERT INTO `footer_links` (`id`, `section_id`, `title`, `href`, `sort_order`) VALUES
(1, 1, 'Про навчання', ' #learning', 1),
(2, 1, 'Програма', '#program', 2),
(3, 1, 'Роботи', '#works', 3),
(4, 1, 'Відгуки', '#reviews', 4),
(5, 1, 'FAQ', ' #faq', 5),
(6, 1, 'Контакти', '#contacts', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `footer_sections`
--

CREATE TABLE `footer_sections` (
  `id` int NOT NULL,
  `copyright_text` tinytext NOT NULL,
  `links_title` tinytext NOT NULL,
  `socials_title` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `footer_sections`
--

INSERT INTO `footer_sections` (`id`, `copyright_text`, `links_title`, `socials_title`, `sort_order`) VALUES
(1, '© 2026 D&P Team. Усі права захищено.', 'Швидкі посилання', 'Залишайся на зв\'язку', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `footer_socials`
--

CREATE TABLE `footer_socials` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `url` tinytext NOT NULL,
  `image` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alt` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `footer_socials`
--

INSERT INTO `footer_socials` (`id`, `section_id`, `url`, `image`, `alt`, `sort_order`) VALUES
(3, 1, 'https://instagram.com/ваш_профиль', 'insta-image.png', 'Instagram', 1),
(4, 1, 'https://instagram.com/ТУТ_ТЕЛЕГРАМ', 'telegram-image.png', 'Telegram', 2),
(5, 1, 'https://instagram.com/ваш_профиль', 'mail-image.png', 'Email', 3);

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
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `learning_program_sections`
--

CREATE TABLE `learning_program_sections` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `learning_program_sections`
--

INSERT INTO `learning_program_sections` (`id`, `title`, `image`, `sort_order`) VALUES
(1, 'Формат навчання', '../img/map.png', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `learning_program_sections_items`
--

CREATE TABLE `learning_program_sections_items` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `item_image` tinytext NOT NULL,
  `item_title` tinytext NOT NULL,
  `item_subtitle` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `learning_program_sections_items`
--

INSERT INTO `learning_program_sections_items` (`id`, `section_id`, `item_image`, `item_title`, `item_subtitle`, `sort_order`) VALUES
(1, 1, 'group-image.png', '1-на-1 або міні-групи', 'Індивідуальний підхід<br>або групи до 3 людей', 1),
(2, 1, 'camera-image.png', 'Онлайн заняття', 'Zoom / Google Meet', 2),
(3, 1, 'calendar-image.png', 'Гнучкий графік', 'Підлаштовуємось під тебе', 3),
(4, 1, 'locate-image.png', 'Локація викладача', 'Миколаїв, Україна', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `learning_sections`
--

CREATE TABLE `learning_sections` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `learning_sections`
--

INSERT INTO `learning_sections` (`id`, `title`, `sort_order`) VALUES
(1, '<h2>Що ти отримаєш на навчанні 🔥</h2>', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `learning_section_items`
--

CREATE TABLE `learning_section_items` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `item_icon` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `item_title` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `item_description` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `learning_section_items`
--

INSERT INTO `learning_section_items` (`id`, `section_id`, `item_icon`, `item_title`, `item_description`, `sort_order`) VALUES
(1, 1, '<div class=\"benefit-image-slot purple-slot first-benefit-image\" ></div>', ' <h3>Навчання з нуля</h3>', '                <p>Покроково простими словами навіть складні речі</p>\r\n', 1),
(4, 1, '                <div class=\"benefit-image-slot red-slot second-benefit-image\"></div>\r\n', '                <h3>Практика</h3>\r\n', '                <p>Багато практичних завдань і проєктів</p>\r\n', 2),
(5, 1, '                <div class=\"benefit-image-slot red-slot third-benefit-image\"></div>\r\n', '                <h3>Реальні проєкти</h3>\r\n', '                <p>Збереш портфоліо і будеш готовий до роботи</p>\r\n', 3),
(6, 1, '                <div class=\"benefit-image-slot purple-slot four-benefit-image\"></div>\r\n', '                <h3>Підтримка</h3>\r\n', '                <p>Я завжди на зв\'язку і допомагаю своїм студентам</p>\r\n', 4),
(7, 1, '                <div class=\"benefit-image-slot purple-slot fifth-benefit-image\"></div>\r\n', '                <h3>Сучасний стек</h3>\r\n', '                <p>PHP, HTML, CSS, JavaScript, JSON та інші інструменти</p>\r\n', 5),
(8, 1, '                <div class=\"benefit-image-slot purple-slot sixth-benefit-image\"></div>\r\n', '                <h3>Кар\'єрний старт</h3>\r\n', '                <p>Допоможу впевнено зробити перші кроки в IT</p>\r\n', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reviews_sections`
--

CREATE TABLE `reviews_sections` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `reviews_sections`
--

INSERT INTO `reviews_sections` (`id`, `title`, `sort_order`) VALUES
(1, 'Відгуки студентів', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews_sections_items`
--

CREATE TABLE `reviews_sections_items` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `student_name` tinytext NOT NULL,
  `student_review` text NOT NULL,
  `student_image` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `reviews_sections_items`
--

INSERT INTO `reviews_sections_items` (`id`, `section_id`, `student_name`, `student_review`, `student_image`, `sort_order`) VALUES
(3, 1, 'Анастасія', 'Дуже зрозуміло пояснює матеріал. Багато практики і підтримки.', 'first-user-image.png', 1),
(4, 1, 'Ігор', 'З нуля до свого першого проєкту за кілька місяців.', 'second-user-image.png', 2),
(5, 1, 'Марія', 'Практики багато, все по справі. Найкращі враження!', 'third-user-image.png', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('d0Jwj1uPFfbV2EA4bYYLrQi2tM6TznpnNLL0LsA5', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJYODV0QzVXd1FJNmo3NVZQZ20zSzVmcE1lSXR6RFROZ3BZMnF3b0lSIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdCIsInJvdXRlIjoiaG9tZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1788864576),
('ktOs3LQj8YAjLZ8zOQXeFcXr0DC3rQi6FY2g8lNo', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiIzTGdkWURkRU5VYXBHNWVHV09GTFBYY0YxT0w3RWxGS1hyYW5lZTNIIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdCIsInJvdXRlIjoiaG9tZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1788958620),
('M2isdOQCosSpuUnAKsVVQC6lTkkwY0wwhZCCgSvA', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJPZkcxWUFBSUd4UUJ1STFxUHNVc0NQakY1RzFvRVVzSGd2bXVtam11IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdCIsInJvdXRlIjoiaG9tZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1788943708),
('nHXYsjlnOkcmvtFYvZzuMAnmns1jcwgN44JJavmd', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJuOWFrOVF1V01VbEIxQTZtTGlYcmNSc1hpN2FWdkFRRVZxZ2pqWXl1IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdCIsInJvdXRlIjoiaG9tZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1788885428);

-- --------------------------------------------------------

--
-- Структура таблицы `teacher_sections`
--

CREATE TABLE `teacher_sections` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `teacher_sections`
--

INSERT INTO `teacher_sections` (`id`, `title`, `image`, `sort_order`) VALUES
(1, 'Про викладача', '../img/teacher-image.png', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `teacher_section_items`
--

CREATE TABLE `teacher_section_items` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `teacher_experience` text NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `teacher_section_items`
--

INSERT INTO `teacher_section_items` (`id`, `section_id`, `teacher_experience`, `sort_order`) VALUES
(1, 1, 'Full-Stack розробник з досвідом більше 16 років', 1),
(2, 1, 'Працював над комерційними проєктами різної складності', 2),
(3, 1, 'Допоміг десяткам студентів опанувати професію розробника', 3),
(4, 1, 'Постійно розвиваюсь і ділюсь актуальними знаннями', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `technologies`
--

CREATE TABLE `technologies` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `technologies`
--

INSERT INTO `technologies` (`id`, `title`, `sort_order`) VALUES
(1, '<h2>Технології, які ми вивчатимемо</h2>', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `technologies_items`
--

CREATE TABLE `technologies_items` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `item_icon` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `item_title` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `technologies_items`
--

INSERT INTO `technologies_items` (`id`, `section_id`, `item_icon`, `item_title`, `sort_order`) VALUES
(1, 1, 'background-image: url(\'../img/html-icon.png\');filter: drop-shadow(0 0 8px rgba(255, 50, 38, 1));', 'HTML5\r\n', 1),
(2, 1, 'background-image: url(\'../img/css-icon.png\');filter: drop-shadow(0 0 4px rgba(0, 210, 255, 0.8));', 'CSS3', 2),
(3, 1, 'background-image: url(\'../img/js-icon.png\');filter: drop-shadow(0 0 4px rgba(255, 234, 0, 0.8));\r\n', 'JavaScript\r\n', 3),
(4, 1, 'background-image: url(\'../img/php-icon.png\');filter: drop-shadow(0 0 8px rgba(131, 48, 255, 0.8));\r\n', 'PHP\r\n', 4),
(5, 1, 'background-image: url(\'../img/json-icon.png\');filter: drop-shadow(0 0 4px rgba(0, 210, 255, 0.8));\r\n', 'JSON\r\n', 5),
(6, 1, 'background-image: url(\'../img/mySql-icon.png\');filter: drop-shadow(0 0 4px rgba(0, 210, 255, 0.8));\r\n', 'MySQL\r\n', 6),
(7, 1, 'background-image: url(\'../img/git-icon.png\');filter: drop-shadow(0 0 8px rgba(255, 50, 38, 0.8));\r\n', 'Git\r\n', 7),
(8, 1, 'background-image: url(\'../img/laravel-icon.png\');filter: drop-shadow(0 0 8px rgba(255, 50, 38, 0.8));\r\n', 'Laravel\r\n', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `works_image`
--

CREATE TABLE `works_image` (
  `id` int NOT NULL,
  `work_id` int NOT NULL,
  `ordinal_number` tinytext NOT NULL,
  `item_image` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `works_image`
--

INSERT INTO `works_image` (`id`, `work_id`, `ordinal_number`, `item_image`) VALUES
(1, 3, '1', '../img/works/web-design-app/mobile-app-first-image.png'),
(2, 3, '2', '../img/works/web-design-app/mobile-app-second-image.png'),
(3, 3, '3', '..img/works/web-design-app/mobile-app-third-image.png'),
(4, 3, '4', '../img/works/web-design-app/mobile-app-fourth-image.png'),
(5, 3, '5', '../img/works/web-design-app/mobile-app-fifth-image.png'),
(6, 4, '1', '../img/works/parket-dream/parket-dream-first-page.png'),
(7, 4, '2', '../img/works/parket-dream/parket-dream-second-page.png'),
(8, 4, '3', '../img/works/parket-dream/parket-dream-third-page.png'),
(9, 4, '4', '../img/works/parket-dream/parket-dream-four-page.png'),
(10, 5, '1', '../img/works/summa/summa-first-page.png'),
(11, 5, '2', '  ');

-- --------------------------------------------------------

--
-- Структура таблицы `works_sections`
--

CREATE TABLE `works_sections` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `works_sections`
--

INSERT INTO `works_sections` (`id`, `title`, `sort_order`) VALUES
(1, 'Роботи, які ти зможеш створювати 🔥', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `works_section_items`
--

CREATE TABLE `works_section_items` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `item_title` tinytext NOT NULL,
  `item_subtitle` tinytext NOT NULL,
  `item_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sort_order` int NOT NULL,
  `name_work` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `works_section_items`
--

INSERT INTO `works_section_items` (`id`, `section_id`, `item_title`, `item_subtitle`, `item_description`, `sort_order`, `name_work`) VALUES
(3, 1, 'Інтернет-магазин', 'PHP, Laravel, MySQL, JS, CSS', 'Повноцінний магазин з пошуком, замовленнями та адмін-панеллю.', 1, 'work-card-app'),
(4, 1, 'ТУТ ВАШ ТЕКСТ', 'PHP, MySQL, JS, AJAX', 'Сайт магазина паркета и ламинат для Киевской компании ПаркетДрим с калькулятором расчета\r\n                            необходимого количества упаковок.\r\n                            https://parket-dream.com.ua', 2, 'work-card-parket-dream'),
(5, 1, 'ТУТ ВАШ ТЕКСТ', 'PHP, Laravel, MySQL, JS', 'Простая бизнес-страница компании по продаже лазерных режущих принтеров<br>https://summa.com.ua', 3, 'work-card-summa'),
(6, 1, 'API для мобільного додатку', 'PHP, Laravel, JSON API', 'REST API для мобільного додатку з документацією та тестуванням.', 4, ''),
(7, 1, 'Лендінг компанії', 'HTML, CSS, JS', 'Сучасний адаптивний сайт для бізнесу або стартапу.', 5, '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `application_sections`
--
ALTER TABLE `application_sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `application_section_items`
--
ALTER TABLE `application_section_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

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
-- Индексы таблицы `course_about`
--
ALTER TABLE `course_about`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Индексы таблицы `course_sections`
--
ALTER TABLE `course_sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `course_sections_items`
--
ALTER TABLE `course_sections_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Индексы таблицы `faq_sections`
--
ALTER TABLE `faq_sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `faq_section_items`
--
ALTER TABLE `faq_section_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Индексы таблицы `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Индексы таблицы `footer_sections`
--
ALTER TABLE `footer_sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `footer_socials`
--
ALTER TABLE `footer_socials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

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
-- Индексы таблицы `learning_program_sections`
--
ALTER TABLE `learning_program_sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `learning_program_sections_items`
--
ALTER TABLE `learning_program_sections_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Индексы таблицы `learning_sections`
--
ALTER TABLE `learning_sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `learning_section_items`
--
ALTER TABLE `learning_section_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

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
-- Индексы таблицы `reviews_sections`
--
ALTER TABLE `reviews_sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews_sections_items`
--
ALTER TABLE `reviews_sections_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `teacher_sections`
--
ALTER TABLE `teacher_sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teacher_section_items`
--
ALTER TABLE `teacher_section_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Индексы таблицы `technologies`
--
ALTER TABLE `technologies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `technologies_items`
--
ALTER TABLE `technologies_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `works_image`
--
ALTER TABLE `works_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_id` (`work_id`);

--
-- Индексы таблицы `works_sections`
--
ALTER TABLE `works_sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works_section_items`
--
ALTER TABLE `works_section_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `application_sections`
--
ALTER TABLE `application_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `application_section_items`
--
ALTER TABLE `application_section_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `course_about`
--
ALTER TABLE `course_about`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `course_sections`
--
ALTER TABLE `course_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `course_sections_items`
--
ALTER TABLE `course_sections_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `faq_sections`
--
ALTER TABLE `faq_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `faq_section_items`
--
ALTER TABLE `faq_section_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `footer_sections`
--
ALTER TABLE `footer_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `footer_socials`
--
ALTER TABLE `footer_socials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT для таблицы `learning_program_sections`
--
ALTER TABLE `learning_program_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `learning_program_sections_items`
--
ALTER TABLE `learning_program_sections_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `learning_sections`
--
ALTER TABLE `learning_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `learning_section_items`
--
ALTER TABLE `learning_section_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `reviews_sections`
--
ALTER TABLE `reviews_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `reviews_sections_items`
--
ALTER TABLE `reviews_sections_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `teacher_sections`
--
ALTER TABLE `teacher_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `teacher_section_items`
--
ALTER TABLE `teacher_section_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `technologies`
--
ALTER TABLE `technologies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `technologies_items`
--
ALTER TABLE `technologies_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `works_image`
--
ALTER TABLE `works_image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `works_sections`
--
ALTER TABLE `works_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `works_section_items`
--
ALTER TABLE `works_section_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `application_section_items`
--
ALTER TABLE `application_section_items`
  ADD CONSTRAINT `application_section_items_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `application_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `course_about`
--
ALTER TABLE `course_about`
  ADD CONSTRAINT `course_about_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `course_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `course_sections_items`
--
ALTER TABLE `course_sections_items`
  ADD CONSTRAINT `course_sections_items_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `course_about` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `faq_section_items`
--
ALTER TABLE `faq_section_items`
  ADD CONSTRAINT `faq_section_items_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `faq_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `footer_links`
--
ALTER TABLE `footer_links`
  ADD CONSTRAINT `footer_links_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `footer_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `footer_socials`
--
ALTER TABLE `footer_socials`
  ADD CONSTRAINT `footer_socials_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `footer_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `learning_program_sections_items`
--
ALTER TABLE `learning_program_sections_items`
  ADD CONSTRAINT `learning_program_sections_items_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `learning_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `learning_section_items`
--
ALTER TABLE `learning_section_items`
  ADD CONSTRAINT `learning_section_items_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `learning_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reviews_sections_items`
--
ALTER TABLE `reviews_sections_items`
  ADD CONSTRAINT `reviews_sections_items_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `reviews_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `teacher_section_items`
--
ALTER TABLE `teacher_section_items`
  ADD CONSTRAINT `teacher_section_items_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `teacher_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `technologies_items`
--
ALTER TABLE `technologies_items`
  ADD CONSTRAINT `technologies_items_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `technologies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `works_image`
--
ALTER TABLE `works_image`
  ADD CONSTRAINT `works_image_ibfk_1` FOREIGN KEY (`work_id`) REFERENCES `works_section_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `works_section_items`
--
ALTER TABLE `works_section_items`
  ADD CONSTRAINT `works_section_items_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `works_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
