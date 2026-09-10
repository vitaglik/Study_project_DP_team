-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Сен 10 2026 г., 10:27
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
-- Структура таблицы `course`
--

CREATE TABLE `course` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `course_description` text NOT NULL,
  `action` tinytext NOT NULL,
  `course_duration` tinytext NOT NULL,
  `kicker` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `course`
--

INSERT INTO `course` (`id`, `title`, `course_description`, `action`, `course_duration`, `kicker`) VALUES
(1, '<h2>WEB з нуля</h2>', '<div class=\"training-block\">\r\n        <h3>Що ти вивчиш</h3>\r\n\r\n        <div class=\"learning-list\">\r\n\r\n            <div class=\"learning-item\">\r\n                <span class=\"learning-check\">✓</span>\r\n\r\n                <div>\r\n                    <strong>HTML5</strong>\r\n                    <p>Побудова структури веб-сайтів за допомогою HTML5.</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"learning-item\">\r\n                <span class=\"learning-check\">✓</span>\r\n\r\n                <div>\r\n                    <strong>CSS3</strong>\r\n                    <p>Стилізація веб-сайтів та робота з сучасним оформленням.</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"learning-item\">\r\n                <span class=\"learning-check\">✓</span>\r\n\r\n                <div>\r\n                    <strong>JavaScript та jQuery</strong>\r\n                    <p>Основи JavaScript та робота з інтерактивністю сторінок.</p>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n\r\n\r\n    <div class=\"training-block\">\r\n        <h3>Як проходить навчання</h3>\r\n\r\n        <div class=\"format-grid\">\r\n\r\n            <div class=\"format-card\">\r\n                <span class=\"format-number\">01</span>\r\n\r\n                <div>\r\n                    <strong>Живе спілкування</strong>\r\n                    <p>Онлайн-заняття з викладачем у живому форматі.</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"format-card\">\r\n                <span class=\"format-number\">02</span>\r\n\r\n                <div>\r\n                    <strong>Теорія + практика</strong>\r\n                    <p>Теоретичний матеріал одразу закріплюється практикою.</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"format-card\">\r\n                <span class=\"format-number\">03</span>\r\n\r\n                <div>\r\n                    <strong>Практичні завдання</strong>\r\n                    <p>Завдання створені на основі матеріалу курсу.</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"format-card\">\r\n                <span class=\"format-number\">04</span>\r\n\r\n                <div>\r\n                    <strong>Домашні завдання</strong>\r\n                    <p>Домашні роботи перевіряються та детально розбираються.</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"format-card\">\r\n                <span class=\"format-number\">05</span>\r\n\r\n                <div>\r\n                    <strong>Тестування</strong>\r\n                    <p>Перевірка засвоєного матеріалу протягом курсу.</p>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n    </div>', '<a href=\"#apply\" class=\"training-button\">\r\n            Записатися на навчання\r\n        </a>', '', '<span class=\"section-kicker\">ОНЛАЙН НАВЧАННЯ</span>');

-- --------------------------------------------------------

--
-- Структура таблицы `course_form`
--

CREATE TABLE `course_form` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `kicker` tinytext NOT NULL,
  `sub_title` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `form_space` text NOT NULL,
  `action` tinytext NOT NULL,
  `course_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `course_form`
--

INSERT INTO `course_form` (`id`, `title`, `kicker`, `sub_title`, `form_space`, `action`, `course_description`) VALUES
(1, '<h2>Записатися на навчання 🔥</h2>', '<span class=\"section-kicker\">ЗАПИС НА КУРС</span>', '<p class=\"apply-subtitle\">\r\n            Залиши заявку — я зв\'яжусь з тобою для уточнення деталей.\r\n        </p>', '<input\r\n                type=\"hidden\"\r\n                name=\"course\"\r\n                value=\"WEB з нуля\"\r\n            >\r\n\r\n            <div class=\"form-grid\">\r\n\r\n                <label>\r\n                    Ім\'я\r\n                    <input\r\n                        type=\"text\"\r\n                        name=\"name\"\r\n                        placeholder=\"Введіть ваше ім\'я\"\r\n                    >\r\n                </label>\r\n\r\n                <label>\r\n                    Telegram / Телефон\r\n                    <input\r\n                        type=\"text\"\r\n                        name=\"contact\"\r\n                        placeholder=\"@username або +38...\"\r\n                    >\r\n                </label>\r\n\r\n            </div>\r\n\r\n            <label>\r\n                Курс\r\n                <input\r\n                    class=\"course-input\"\r\n                    type=\"text\"\r\n                    value=\"WEB з нуля — онлайн навчання\"\r\n                    readonly\r\n                >\r\n            </label>\r\n\r\n            <label>\r\n                Коментар\r\n                <span>(необов\'язково)</span>\r\n\r\n                <textarea\r\n                    name=\"message\"\r\n                    placeholder=\"Напиши, якщо є питання або побажання\"\r\n                ></textarea>\r\n            </label>', '<button class=\"form-button\" type=\"submit\">\r\n                Відправити заявку 🚀\r\n            </button>', '<aside class=\"apply-side\">\r\n\r\n        <div class=\"apply-side-text\">\r\n            <span>30 годин</span>\r\n\r\n            <strong>\r\n                Від першого HTML-коду<br>\r\n                до власних веб-сторінок\r\n            </strong>\r\n\r\n            <p>\r\n                Навчання з нуля у живому форматі з практикою.\r\n            </p>\r\n        </div>\r\n\r\n        <div class=\"apply-image-slot\">\r\n            <span>&lt;/&gt;</span>\r\n        </div>\r\n\r\n    </aside>');

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
-- Структура таблицы `faq`
--

CREATE TABLE `faq` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `questions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `faq`
--

INSERT INTO `faq` (`id`, `title`, `questions`) VALUES
(1, '<h2>FAQ</h2>', '<article>\r\n            <span class=\"faq-number\">01</span>\r\n\r\n            <div>\r\n                <h3>Чи підійде навчання з нуля?</h3>\r\n                <p>\r\n                    Так. Курс розрахований на тих, хто тільки починає\r\n                    знайомство з веб-розробкою.\r\n                </p>\r\n            </div>\r\n        </article>\r\n\r\n\r\n        <article>\r\n            <span class=\"faq-number\">02</span>\r\n\r\n            <div>\r\n                <h3>Як проходять заняття?</h3>\r\n                <p>\r\n                    Онлайн у живому спілкуванні з викладачем:\r\n                    теорія, практика, домашні завдання та тестування.\r\n                </p>\r\n            </div>\r\n        </article>\r\n\r\n\r\n        <article>\r\n            <span class=\"faq-number\">03</span>\r\n\r\n            <div>\r\n                <h3>Скільки триває курс?</h3>\r\n                <p>\r\n                    Загальна програма навчання розрахована на 30 годин.\r\n                </p>\r\n            </div>\r\n        </article>');

-- --------------------------------------------------------

--
-- Структура таблицы `footer`
--

CREATE TABLE `footer` (
  `id` int NOT NULL,
  `logo` tinytext NOT NULL,
  `copyright_text` tinytext NOT NULL,
  `nav_title` tinytext NOT NULL,
  `nav_links` text NOT NULL,
  `contact_title` tinytext NOT NULL,
  `contact_links` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `footer`
--

INSERT INTO `footer` (`id`, `logo`, `copyright_text`, `nav_title`, `nav_links`, `contact_title`, `contact_links`) VALUES
(1, '<a class=\"brand footer-brand\" href=\"#top\" aria-label=\"D&amp;P Team — на головну\"></a>', '<p>© 2026 D&amp;P Team. Усі права захищено.</p>', '<b>Швидкі посилання</b>', '<a href=\"#learning\">Про навчання</a>\r\n                <a href=\"#program\">Програма</a>\r\n                <a href=\"#works\">Роботи</a>\r\n                <a href=\"#reviews\">Відгуки</a>\r\n                <a href=\"#faq\">FAQ</a>\r\n                <a href=\"#contacts\">Контакти</a>', '<b>Залишайся на зв\'язку</b>', '<a href=\"https://instagram.com/ваш_профиль\" target=\"_blank\" rel=\"noopener noreferrer\">\r\n                    <img src=\"../img/insta-image.png\" alt=\"Instagram\" width=\"24\" height=\"24\">\r\n                </a>\r\n                <a href=\"https://instagram.com/ТУТ_ТЕЛЕГРАМ\" target=\"_blank\" rel=\"noopener noreferrer\">\r\n                    <img src=\"../img/telegram-image.png\" alt=\"Telegram\" width=\"24\" height=\"24\">\r\n                </a>\r\n                <a href=\"https://instagram.com/ваш_профиль\" target=\"_blank\" rel=\"noopener noreferrer\">\r\n                    <img src=\"../img/mail-image.png\" alt=\"Email\" width=\"24\" height=\"24\">\r\n                </a>');

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
(1, 'img/logo.png', '<a class=\"active\" href=\"#top\">Головна</a>\r\n            <a href=\"#learning\">Про навчання</a>\r\n            <a href=\"#training-panel\">Програма</a>\r\n            <a href=\"#program\">Роботи</a>\r\n            <a href=\"#teacher\">Про викладача</a>\r\n            <a href=\"#teacher\">Відгуки</a>\r\n            <a href=\"#faq\">FAQ</a>\r\n            <a href=\"#contacts\">Контакти</a>', '<a href=\"mailto:team@dpteam.com\"><i class=\"fa-regular fa-envelope\" style=\"color: #ff5a2c;\"></i> team@dpteam.com</a>\r\n            <a href=\"https://t.me/dp_studio_niko\"><i class=\"fa-brands fa-telegram\" style=\"color: cornflowerblue\"></i> @dp_studio_niko</a>\r\n            <a href=\"tel:+380991234567\"><i class=\"fa-solid fa-phone\" style=\"color: #ff5a2c\"></i> +38 (099) 123 45 67</a>', '<a class=\"header-button\" href=\"#apply\">Записатись на навчання 🔥</a>');

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
(1, ' <h1>Стань<span>WEB</span><br>розробником</h1>\r\n            ', '<div class=\"hero-stack\">HTML • CSS • JavaScript • PHP • OOP • Laravel</div>', '\r\n                <p class=\"hero-description\">Комплексне навчання з нуля до перших проєктів.<br>\r\n                Практика, підтримка та реальний досвід з перших занять.</p>\r\n            ', '<article class=\"fact-card\">\r\n                    <div class=\"fact-image-slot first-fact-image\" style=\"background-image: url(\'../img/first-fact-icon.png\');\" aria-label=\"Місце для іконки онлайн формату\"></div>\r\n\r\n                    <div>\r\n                        <strong>Онлайн формат</strong>\r\n                        <span>Навчайся з будь-якої<br>точки світу</span>\r\n                    </div>\r\n                </article>\r\n\r\n                <article class=\"fact-card\">\r\n                    <div class=\"fact-image-slot second-fact-image\" styles=\"background-image: url(\'../img/second-fact-icon.png\');\" aria-label=\"Місце для іконки підтримки\"></div>\r\n                    <div>\r\n                        <strong>Підтримка</strong>\r\n                        <span>Допомога на кожному<br>етапі</span>\r\n                    </div>\r\n                </article>', '<div class=\"hero-actions\">\r\n                <a class=\"btn btn-red\" href=\"#apply\">Записатись на навчання 🔥</a>\r\n                <a class=\"btn btn-dark\" href=\"#learning\">Дізнатись більше <b>↓</b></a>\r\n            </div>', 'img/hero-laptop.png', '<strong>Привіт! 👋</strong>\r\n                <p>Я Дмитро і я допоможу тобі стати<br>розробником, навіть якщо ти з нуля!</p>');

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
-- Структура таблицы `learning`
--

CREATE TABLE `learning` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `learning_benefits` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `learning`
--

INSERT INTO `learning` (`id`, `title`, `learning_benefits`) VALUES
(1, '<h2>Що ти отримаєш на навчанні 🔥</h2>', '<article class=\"benefit-card\">\r\n                <div class=\"benefit-image-slot purple-slot first-benefit-image\" style=\"background-image: url(\'../img/first-benefit-icon.png\');\"></div>\r\n                <h3>Навчання з нуля</h3>\r\n                <p>Покроково простими словами навіть складні речі</p>\r\n            </article>\r\n\r\n            <article class=\"benefit-card\">\r\n                <div class=\"benefit-image-slot red-slot second-benefit-image\"  style=\"background-image: url(\'../img/second-benefit-icon.png\');\"></div>\r\n                <h3>Практика</h3>\r\n                <p>Багато практичних завдань і проєктів</p>\r\n            </article>\r\n\r\n            <article class=\"benefit-card\">\r\n                <div class=\"benefit-image-slot red-slot third-benefit-image\"  style=\"background-image: url(\'../img/third-benefit-icon.png\');\"></div>\r\n                <h3>Реальні проєкти</h3>\r\n                <p>Збереш портфоліо і будеш готовий до роботи</p>\r\n            </article>\r\n\r\n            <article class=\"benefit-card\">\r\n                <div class=\"benefit-image-slot purple-slot four-benefit-image\"  style=\"background-image: url(\'../img/four-benefit-icon.png\');\"></div>\r\n                <h3>Підтримка</h3>\r\n                <p>Я завжди на зв\'язку і допомагаю своїм студентам</p>\r\n            </article>\r\n\r\n            <article class=\"benefit-card\">\r\n                <div class=\"benefit-image-slot purple-slot fifth-benefit-image\"  style=\"background-image: url(\'../img/fifth-benefit-icon.png\');\"></div>\r\n                <h3>Сучасний стек</h3>\r\n                <p>PHP, HTML, CSS, JavaScript, JSON та інші інструменти</p>\r\n            </article>\r\n\r\n            <article class=\"benefit-card\">\r\n                <div class=\"benefit-image-slot purple-slot sixth-benefit-image\"  style=\"background-image: url(\'../img/sixth-benefit-icon.png\');\"></div>\r\n                <h3>Кар\'єрний старт</h3>\r\n                <p>Допоможу впевнено зробити перші кроки в IT</p>\r\n            </article>');

-- --------------------------------------------------------

--
-- Структура таблицы `learning_program`
--

CREATE TABLE `learning_program` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `background_image` tinytext NOT NULL,
  `format_items` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `learning_program`
--

INSERT INTO `learning_program` (`id`, `title`, `background_image`, `format_items`) VALUES
(1, ' <h2>Формат навчання</h2>', 'img/map.png', '<div class=\"format-item\">\r\n            <div class=\"format-image-slot group-image\"></div>\r\n            <div>\r\n                <b>1-на-1 або міні-групи</b>\r\n                <span>Індивідуальний підхід<br>або групи до 3 людей</span>\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"format-item\">\r\n            <div class=\"format-image-slot red-border camera-image\"></div>\r\n            <div>\r\n                <b>Онлайн заняття</b>\r\n                <span>Zoom / Google Meet</span>\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"format-item\">\r\n            <div class=\"format-image-slot red-border calendar-image\"></div>\r\n            <div>\r\n                <b>Гнучкий графік</b>\r\n                <span>Підлаштовуємось під тебе</span>\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"format-item\">\r\n            <div class=\"format-image-slot red-border location-image\"></div>\r\n            <div>\r\n                <b>Локація викладача</b>\r\n                <span>Миколаїв, Україна</span>\r\n            </div>\r\n        </div>');

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
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `review_items` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `review_items`) VALUES
(1, '<h2>Відгуки студентів</h2>', '<div class=\"review-item\">\r\n        <div class=\"review-photo-slot first-user\"></div>\r\n        <div>\r\n            <div class=\"review-head\"><b>Анастасія</b><span>★★★★★</span></div>\r\n            <p>Дуже зрозуміло пояснює матеріал. Багато практики і підтримки.</p>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"review-item\">\r\n        <div class=\"review-photo-slot second-user\"></div>\r\n        <div>\r\n            <div class=\"review-head\"><b>Ігор</b><span>★★★★★</span></div>\r\n            <p>З нуля до свого першого проєкту за кілька місяців.</p>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"review-item\">\r\n        <div class=\"review-photo-slot third-user\"></div>\r\n        <div>\r\n            <div class=\"review-head\"><b>Марія</b><span>★★★★★</span></div>\r\n            <p>Практики багато, все по справі. Найкращі враження!</p>\r\n        </div>\r\n    </div>');

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
('GapCd0neIOuJhBCV2k9higimFDBKB006WOA3wYid', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJuOElsbjljbFJ4amJkclRjckdNREUwRmhrV1dlREJ5YjJtQUdSeHFIIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdCIsInJvdXRlIjoiaG9tZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1789025607),
('Gkf0Bma7ZwhXabCoHWsjjKSWT51rMHzK7jludIDk', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJTQ2dISVRMbXlrUHNxd1RYTHI3WTVHNks1Nk1YNkJTM09SZmY2dFlaIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdCIsInJvdXRlIjoiaG9tZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1789036029),
('ktOs3LQj8YAjLZ8zOQXeFcXr0DC3rQi6FY2g8lNo', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiIzTGdkWURkRU5VYXBHNWVHV09GTFBYY0YxT0w3RWxGS1hyYW5lZTNIIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdCIsInJvdXRlIjoiaG9tZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1788962493),
('M2isdOQCosSpuUnAKsVVQC6lTkkwY0wwhZCCgSvA', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJPZkcxWUFBSUd4UUJ1STFxUHNVc0NQakY1RzFvRVVzSGd2bXVtam11IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdCIsInJvdXRlIjoiaG9tZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1788943708),
('nHXYsjlnOkcmvtFYvZzuMAnmns1jcwgN44JJavmd', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJuOWFrOVF1V01VbEIxQTZtTGlYcmNSc1hpN2FWdkFRRVZxZ2pqWXl1IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdCIsInJvdXRlIjoiaG9tZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1788885428);

-- --------------------------------------------------------

--
-- Структура таблицы `teacher`
--

CREATE TABLE `teacher` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `teacher_list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `teacher`
--

INSERT INTO `teacher` (`id`, `title`, `image`, `teacher_list`) VALUES
(1, '<h2>Про викладача</h2>', 'img/teacher-image.png', '<ul class=\"teacher-list\">\r\n            <li>Full-Stack розробник з досвідом більше 16 років</li>\r\n            <li>Працював над комерційними проєктами різної складності</li>\r\n            <li>Допоміг десяткам студентів опанувати професію розробника</li>\r\n            <li>Постійно розвиваюсь і ділюсь актуальними знаннями</li>\r\n        </ul>');

-- --------------------------------------------------------

--
-- Структура таблицы `technologies`
--

CREATE TABLE `technologies` (
  `id` int NOT NULL,
  `title` tinytext NOT NULL,
  `technologies_items` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `technologies`
--

INSERT INTO `technologies` (`id`, `title`, `technologies_items`) VALUES
(1, '<h2>Технології, які ми вивчатимемо</h2>', '<div class=\"technology\">\r\n                <div class=\"tech-image-slot html\" style=\"background-image: url(\'../img/html-icon.png\');\"></div>\r\n                <b>HTML5</b>\r\n            </div>\r\n            <div class=\"technology\">\r\n                <div class=\"tech-image-slot css\" style=\"background-image: url(\'../img/css-icon.png\');\"></div>\r\n                <b>CSS3</b>\r\n            </div>\r\n            <div class=\"technology\">\r\n                <div class=\"tech-image-slot js\" style=\"background-image: url(\'../img/js-icon.png\');\"></div>\r\n                <b>JavaScript</b>\r\n            </div>\r\n            <div class=\"technology\">\r\n                <div class=\"tech-image-slot php\" style=\"background-image: url(\'../img/php-icon.png\')\"></div>\r\n                <b>PHP</b\r\n                ></div>\r\n            <div class=\"technology\"><div class=\"tech-image-slot json\" style=\"background-image: url(\'../img/json-icon.png\');\"></div>\r\n                <b>JSON</b>\r\n            </div>\r\n            <div class=\"technology\"><div class=\"tech-image-slot mysql\" style=\"background-image: url(\'../img/mySql-icon.png\');\"></div><b>MySQL</b></div>\r\n            <div class=\"technology\"><div class=\"tech-image-slot git\" style=\"background-image: url(\'../img/git-icon.png\');\"></div><b>Git</b></div>\r\n            <div class=\"technology\"><div class=\"tech-image-slot laravel\" style=\"background-image: url(\'../img/laravel-icon.png\');\"></div><b>Laravel</b></div>');

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
  `title` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `works_sections`
--

INSERT INTO `works_sections` (`id`, `title`) VALUES
(1, 'Роботи, які ти зможеш створювати 🔥');

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
  `name_work` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `works_section_items`
--

INSERT INTO `works_section_items` (`id`, `section_id`, `item_title`, `item_subtitle`, `item_description`, `name_work`) VALUES
(3, 1, 'Інтернет-магазин', 'PHP, Laravel, MySQL, JS, CSS', 'Повноцінний магазин з пошуком, замовленнями та адмін-панеллю.', 'work-card-app'),
(4, 1, 'ТУТ ВАШ ТЕКСТ', 'PHP, MySQL, JS, AJAX', 'Сайт магазина паркета и ламинат для Киевской компании ПаркетДрим с калькулятором расчета\r\n                            необходимого количества упаковок.\r\n                            https://parket-dream.com.ua', 'work-card-parket-dream'),
(5, 1, 'ТУТ ВАШ ТЕКСТ', 'PHP, Laravel, MySQL, JS', 'Простая бизнес-страница компании по продаже лазерных режущих принтеров<br>https://summa.com.ua', 'work-card-summa'),
(6, 1, 'API для мобільного додатку', 'PHP, Laravel, JSON API', 'REST API для мобільного додатку з документацією та тестуванням.', ''),
(7, 1, 'Лендінг компанії', 'HTML, CSS, JS', 'Сучасний адаптивний сайт для бізнесу або стартапу.', '');

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
-- Индексы таблицы `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `course_form`
--
ALTER TABLE `course_form`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Индексы таблицы `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `learning_program`
--
ALTER TABLE `learning_program`
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
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `works_image`
--
ALTER TABLE `works_image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works_sections`
--
ALTER TABLE `works_sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works_section_items`
--
ALTER TABLE `works_section_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `course`
--
ALTER TABLE `course`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `course_form`
--
ALTER TABLE `course_form`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT для таблицы `learning_program`
--
ALTER TABLE `learning_program`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
