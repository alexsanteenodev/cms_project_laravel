-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Апр 14 2017 г., 15:13
-- Версия сервера: 5.7.17-0ubuntu0.16.10.1
-- Версия PHP: 7.0.15-0ubuntu0.16.10.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `myproject`
--

-- --------------------------------------------------------

--
-- Структура таблицы `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '2017-04-13 09:07:37', '2017-04-13 09:07:37');

-- --------------------------------------------------------

--
-- Структура таблицы `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `activated_at`, `last_login`, `created_at`, `updated_at`, `is_superuser`) VALUES
(1, 'admin', 'admin', 'admin', 'alexsanteeno@gmail.com', '$2y$10$vsAbcm5V0U2wBWaF6dwXJ.9v6SbeRX3qsyqWLdTnJGbgRmOivFwhO', NULL, '$2y$10$wHDuJzNguioaINcS/n9AuuCp7FhJ2SI4tNGtfjsdUdppKZaE5tcee', NULL, '', 1, NULL, '2017-04-13 09:07:35', '2017-04-13 04:54:52', '2017-04-13 09:07:35', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', NULL, '2017-04-13 04:54:52', '2017-04-13 04:54:52', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'reportwidgets', 'dashboard', '{"welcome":{"class":"Backend\\\\ReportWidgets\\\\Welcome","sortOrder":"60","configuration":{"ocWidgetWidth":6}},"systemStatus":{"class":"System\\\\ReportWidgets\\\\Status","sortOrder":"50","configuration":{"ocWidgetWidth":6}},"activeTheme":{"class":"Cms\\\\ReportWidgets\\\\ActiveTheme","sortOrder":"70","configuration":{"title":"Website","ocWidgetWidth":4,"ocWidgetNewRow":null}},"report_container_dashboard_4":{"class":"Indikator\\\\Backend\\\\ReportWidgets\\\\Cache","configuration":{"title":"Cache usage","ocWidgetWidth":"5","ocWidgetNewRow":null},"sortOrder":71},"report_container_dashboard_5":{"class":"Indikator\\\\Backend\\\\ReportWidgets\\\\Status","configuration":{"title":"System status plus","webpage":true,"updates":true,"plugins":true,"themes":true,"ocWidgetWidth":"5","ocWidgetNewRow":null},"sortOrder":72},"report_container_dashboard_6":{"class":"Indikator\\\\Backend\\\\ReportWidgets\\\\Logins","configuration":{"title":"indikator.backend::lang.widgets.logins.label","logins":5,"ip":true,"ocWidgetWidth":"5"},"sortOrder":73},"report_container_dashboard_7":{"class":"Indikator\\\\Backend\\\\ReportWidgets\\\\Php","configuration":{"title":"indikator.backend::lang.widgets.php.label","upload_limit":true,"memory_limit":true,"timezone":true,"ocWidgetWidth":"5"},"sortOrder":74},"report_container_dashboard_8":{"class":"Indikator\\\\Backend\\\\ReportWidgets\\\\Server","configuration":{"title":"indikator.backend::lang.widgets.server.label","host":true,"ip":true,"os":true,"ocWidgetWidth":"5"},"sortOrder":75}}'),
(2, 1, 'backend', 'backend', 'preferences', '{"locale":"en","fallback_locale":"en","timezone":"Europe\\/Kaliningrad","editor_font_size":"12","editor_word_wrap":"fluid","editor_code_folding":"manual","editor_tab_size":"4","editor_theme":"twilight","editor_show_invisibles":"0","editor_highlight_active_line":"1","editor_use_hard_tabs":"0","editor_show_gutter":"1","editor_auto_closing":"0","editor_autocompletion":"manual","editor_enable_snippets":"0","editor_display_indent_guides":"0","editor_show_print_margin":"0","user_id":"1"}');

-- --------------------------------------------------------

--
-- Структура таблицы `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `old_content` longtext COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `master_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `indikator_backend_trash`
--

CREATE TABLE `indikator_backend_trash` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_10_01_000001_Db_Deferred_Bindings', 1),
('2013_10_01_000002_Db_System_Files', 1),
('2013_10_01_000003_Db_System_Plugin_Versions', 1),
('2013_10_01_000004_Db_System_Plugin_History', 1),
('2013_10_01_000005_Db_System_Settings', 1),
('2013_10_01_000006_Db_System_Parameters', 1),
('2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
('2013_10_01_000008_Db_System_Mail_Templates', 1),
('2013_10_01_000009_Db_System_Mail_Layouts', 1),
('2014_10_01_000010_Db_Jobs', 1),
('2014_10_01_000011_Db_System_Event_Logs', 1),
('2014_10_01_000012_Db_System_Request_Logs', 1),
('2014_10_01_000013_Db_System_Sessions', 1),
('2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
('2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
('2015_10_01_000016_Db_Cache', 1),
('2015_10_01_000017_Db_System_Revisions', 1),
('2015_10_01_000018_Db_FailedJobs', 1),
('2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
('2016_10_01_000020_Db_System_Timestamp_Fix', 1),
('2013_10_01_000001_Db_Backend_Users', 2),
('2013_10_01_000002_Db_Backend_User_Groups', 2),
('2013_10_01_000003_Db_Backend_Users_Groups', 2),
('2013_10_01_000004_Db_Backend_User_Throttle', 2),
('2014_01_04_000005_Db_Backend_User_Preferences', 2),
('2014_10_01_000006_Db_Backend_Access_Log', 2),
('2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
('2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
('2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
('2014_10_01_000001_Db_Cms_Theme_Data', 3),
('2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
('2017_10_01_000003_Db_Cms_Theme_Logs', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2017-04-14 08:46:02', '2017-04-14 08:46:03');

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_html` longtext COLLATE utf8_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `robot_index` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `robot_follow` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `seo_title`, `seo_description`, `seo_keywords`, `canonical_url`, `redirect_url`, `robot_index`, `robot_follow`) VALUES
(1, NULL, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\n\nYou can edit this content by selecting **Blog** from the administration back-end menu.\n\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2017-04-14 08:46:02', 1, '2017-04-14 08:46:02', '2017-04-14 08:46:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_forum_channels`
--

CREATE TABLE `rainlab_forum_channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `is_moderated` tinyint(1) NOT NULL DEFAULT '0',
  `embed_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rainlab_forum_channels`
--

INSERT INTO `rainlab_forum_channels` (`id`, `parent_id`, `title`, `slug`, `description`, `nest_left`, `nest_right`, `nest_depth`, `count_topics`, `count_posts`, `created_at`, `updated_at`, `is_hidden`, `is_moderated`, `embed_code`) VALUES
(1, NULL, 'Channel Orange', 'channel-orange', 'A root level forum channel', 1, 12, 0, 1, 0, '2017-04-14 08:46:57', '2017-04-14 08:51:11', 0, 0, NULL),
(2, 1, 'Autumn Leaves', 'autumn-leaves', 'Disccusion about the season of falling leaves.', 2, 9, 1, 0, 0, '2017-04-14 08:46:57', '2017-04-14 08:46:58', 0, 0, NULL),
(3, 2, 'September', 'september', 'The start of the fall season.', 3, 4, 2, 0, 0, '2017-04-14 08:46:58', '2017-04-14 08:46:58', 0, 0, NULL),
(4, 2, 'October', 'october', 'The middle of the fall season.', 5, 6, 2, 0, 0, '2017-04-14 08:46:58', '2017-04-14 08:46:58', 0, 0, NULL),
(5, 2, 'November', 'november', 'The end of the fall season.', 7, 8, 2, 0, 0, '2017-04-14 08:46:58', '2017-04-14 08:46:58', 0, 0, NULL),
(6, 1, 'Summer Breeze', 'summer-breeze', 'Disccusion about the wind at the ocean.', 10, 11, 1, 0, 0, '2017-04-14 08:46:58', '2017-04-14 08:46:59', 0, 0, NULL),
(7, NULL, 'Channel Green', 'channel-green', 'A root level forum channel', 13, 18, 0, 0, 0, '2017-04-14 08:46:59', '2017-04-14 08:46:59', 0, 0, NULL),
(8, 7, 'Winter Snow', 'winter-snow', 'Disccusion about the frosty snow flakes.', 14, 15, 1, 0, 0, '2017-04-14 08:46:59', '2017-04-14 08:46:59', 0, 0, NULL),
(9, 7, 'Spring Trees', 'spring-trees', 'Disccusion about the blooming gardens.', 16, 17, 1, 0, 0, '2017-04-14 08:46:59', '2017-04-14 08:46:59', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_forum_members`
--

CREATE TABLE `rainlab_forum_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `last_active_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `is_banned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_forum_posts`
--

CREATE TABLE `rainlab_forum_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED DEFAULT NULL,
  `edit_user_id` int(11) DEFAULT NULL,
  `delete_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_forum_topics`
--

CREATE TABLE `rainlab_forum_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `start_member_id` int(11) DEFAULT NULL,
  `last_post_id` int(11) DEFAULT NULL,
  `last_post_member_id` int(11) DEFAULT NULL,
  `last_post_at` datetime DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_views` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `embed_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rainlab_forum_topics`
--

INSERT INTO `rainlab_forum_topics` (`id`, `subject`, `slug`, `channel_id`, `start_member_id`, `last_post_id`, `last_post_member_id`, `last_post_at`, `is_private`, `is_sticky`, `is_locked`, `count_posts`, `count_views`, `created_at`, `updated_at`, `embed_code`) VALUES
(1, 'First blog post', 'first-blog-post', 1, 0, NULL, NULL, NULL, 0, 0, 0, 0, 1, '2017-04-14 08:51:11', '2017-04-14 08:51:11', 'first-blog-post');

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_forum_topic_followers`
--

CREATE TABLE `rainlab_forum_topic_followers` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_user_mail_blockers`
--

CREATE TABLE `rainlab_user_mail_blockers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci,
  `last_activity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `details` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'ErrorException: ZipArchive::extractTo(): Permission denied in /home/home/www/myproject.local/vendor/october/rain/src/Filesystem/Zip.php:75\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'ZipArchive::ext...\', \'/home/home/www/...\', 75, Array)\n#1 /home/home/www/myproject.local/vendor/october/rain/src/Filesystem/Zip.php(75): ZipArchive->extractTo(\'/home/home/www/...\')\n#2 /home/home/www/myproject.local/modules/system/classes/UpdateManager.php(525): October\\Rain\\Filesystem\\Zip::extract(\'/home/home/www/...\', \'/home/home/www/...\')\n#3 /home/home/www/myproject.local/modules/system/controllers/Updates.php(271): System\\Classes\\UpdateManager->extractPlugin(\'RainLab.User\', \'db5652780d9cbbe...\')\n#4 [internal function]: System\\Controllers\\Updates->onExecuteStep(\'themes\')\n#5 /home/home/www/myproject.local/modules/backend/classes/Controller.php(546): call_user_func_array(Array, Array)\n#6 /home/home/www/myproject.local/modules/backend/classes/Controller.php(429): Backend\\Classes\\Controller->runAjaxHandler(\'onExecuteStep\')\n#7 /home/home/www/myproject.local/modules/backend/classes/Controller.php(239): Backend\\Classes\\Controller->execAjaxHandlers()\n#8 /home/home/www/myproject.local/modules/backend/classes/BackendController.php(95): Backend\\Classes\\Controller->run(\'install\', Array)\n#9 [internal function]: Backend\\Classes\\BackendController->run(\'system/updates/...\')\n#10 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(256): call_user_func_array(Array, Array)\n#11 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(164): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(112): Illuminate\\Routing\\ControllerDispatcher->call(Object(Backend\\Classes\\BackendController), Object(Illuminate\\Routing\\Route), \'run\')\n#13 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(139): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#15 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#17 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(114): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Backend\\Classes\\BackendController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), \'run\')\n#19 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Routing/Route.php(203): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), \'Backend\\\\Classes...\', \'run\')\n#20 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Routing/Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#21 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Routing/Router.php(708): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#22 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(139): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#24 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#26 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Routing/Router.php(710): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Routing/Router.php(673): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#28 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(236): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#30 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(139): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#32 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 [internal function]: Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(124): call_user_func_array(Array, Array)\n#35 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(62): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 [internal function]: Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(124): call_user_func_array(Array, Array)\n#38 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 [internal function]: Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(124): call_user_func_array(Array, Array)\n#41 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 [internal function]: Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(124): call_user_func_array(Array, Array)\n#44 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 [internal function]: Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(124): call_user_func_array(Array, Array)\n#47 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#49 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 /home/home/www/myproject.local/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(87): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#51 /home/home/www/myproject.local/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#52 {main}', NULL, '2017-04-14 08:45:10', '2017-04-14 08:45:10');

-- --------------------------------------------------------

--
-- Структура таблицы `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_css` text COLLATE utf8_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'default', '<html>\n    <head>\n        <style type="text/css" media="screen">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ content|raw }}\n    </body>\n</html>', '{{ content|raw }}', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2017-04-13 04:54:52', '2017-04-13 04:54:52'),
(2, 'System', 'system', '<html>\n    <head>\n        <style type="text/css" media="screen">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ content|raw }}\n        <hr />\n        <p>This is an automatic message. Please do not reply to it.</p>\n    </body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2017-04-13 04:54:52', '2017-04-13 04:54:52');

-- --------------------------------------------------------

--
-- Структура таблицы `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `system_mail_templates`
--

INSERT INTO `system_mail_templates` (`id`, `code`, `subject`, `description`, `content_html`, `content_text`, `layout_id`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'backend::mail.invite', NULL, 'Invitation for newly created administrators.', NULL, NULL, 2, 0, '2017-04-13 09:34:03', '2017-04-13 09:34:03'),
(2, 'backend::mail.restore', NULL, 'Password reset instructions for backend-end administrators.', NULL, NULL, 2, 0, '2017-04-13 09:34:03', '2017-04-13 09:34:03');

-- --------------------------------------------------------

--
-- Структура таблицы `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'hash', '"835c2b2cb3b362c2d9d99abe946f0bc6"'),
(3, 'system', 'core', 'build', '"414"'),
(4, 'system', 'update', 'retry', '1492258228'),
(5, 'system', 'theme', 'history', '{"RainLab.Relax":"rainlab-relax","Hambern.hambern-blank-bootstrap-4":"hambern-hambern-blank-bootstrap-4","RainLab.Vanilla":"rainlab-vanilla"}'),
(6, 'cms', 'theme', 'active', '"rainlab-relax"');

-- --------------------------------------------------------

--
-- Структура таблицы `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2017-04-13 04:54:51'),
(2, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2017-04-14 08:46:00'),
(3, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2017-04-14 08:46:02'),
(4, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2017-04-14 08:46:03'),
(5, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2017-04-14 08:46:03'),
(6, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2017-04-14 08:46:03'),
(7, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2017-04-14 08:46:03'),
(8, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2017-04-14 08:46:03'),
(9, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2017-04-14 08:46:03'),
(10, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2017-04-14 08:46:03'),
(11, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2017-04-14 08:46:03'),
(12, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2017-04-14 08:46:03'),
(13, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2017-04-14 08:46:03'),
(14, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2017-04-14 08:46:03'),
(15, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate "idParam" component property in favour of "slug" property.', '2017-04-14 08:46:03'),
(16, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2017-04-14 08:46:03'),
(17, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2017-04-14 08:46:04'),
(18, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2017-04-14 08:46:04'),
(19, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2017-04-14 08:46:04'),
(20, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2017-04-14 08:46:04'),
(21, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2017-04-14 08:46:04'),
(22, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2017-04-14 08:46:04'),
(23, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2017-04-14 08:46:04'),
(24, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2017-04-14 08:46:04'),
(25, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2017-04-14 08:46:04'),
(26, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2017-04-14 08:46:04'),
(27, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2017-04-14 08:46:04'),
(28, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2017-04-14 08:46:05'),
(29, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2017-04-14 08:46:05'),
(30, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2017-04-14 08:46:05'),
(31, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2017-04-14 08:46:05'),
(32, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2017-04-14 08:46:05'),
(33, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2017-04-14 08:46:05'),
(34, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2017-04-14 08:46:05'),
(35, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2017-04-14 08:46:05'),
(36, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2017-04-14 08:46:05'),
(37, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2017-04-14 08:46:05'),
(38, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2017-04-14 08:46:05'),
(39, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2017-04-14 08:46:05'),
(40, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2017-04-14 08:46:05'),
(41, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2017-04-14 08:46:05'),
(42, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2017-04-14 08:46:06'),
(43, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2017-04-14 08:46:06'),
(44, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2017-04-14 08:46:06'),
(45, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2017-04-14 08:46:06'),
(46, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2017-04-14 08:46:06'),
(47, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2017-04-14 08:46:06'),
(48, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2017-04-14 08:46:06'),
(49, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2017-04-14 08:46:06'),
(50, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2017-04-14 08:46:06'),
(51, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2017-04-14 08:46:06'),
(52, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2017-04-14 08:46:06'),
(53, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2017-04-14 08:46:06'),
(54, 'RainLab.Pages', 'script', '1.1.0', 'snippets_rename_viewbag_properties.php', '2017-04-14 08:46:06'),
(55, 'RainLab.Pages', 'comment', '1.1.0', 'Adds meta title and description to pages. Adds |staticPage filter.', '2017-04-14 08:46:06'),
(56, 'RainLab.Pages', 'comment', '1.1.1', 'Add support for Syntax Fields.', '2017-04-14 08:46:07'),
(57, 'RainLab.Pages', 'comment', '1.1.2', 'Static Breadcrumbs component now respects the hide from navigation setting.', '2017-04-14 08:46:07'),
(58, 'RainLab.Pages', 'comment', '1.1.3', 'Minor back-end styling fix.', '2017-04-14 08:46:07'),
(59, 'RainLab.Pages', 'comment', '1.1.4', 'Minor fix to the StaticPage component API.', '2017-04-14 08:46:07'),
(60, 'RainLab.Pages', 'comment', '1.1.5', 'Fixes bug when using syntax fields.', '2017-04-14 08:46:07'),
(61, 'RainLab.Pages', 'comment', '1.1.6', 'Minor styling fix to the back-end UI.', '2017-04-14 08:46:07'),
(62, 'RainLab.Pages', 'comment', '1.1.7', 'Improved menu item form to include CSS class, open in a new window and hidden flag.', '2017-04-14 08:46:07'),
(63, 'RainLab.Pages', 'comment', '1.1.8', 'Improved the output of snippet partials when saved.', '2017-04-14 08:46:07'),
(64, 'RainLab.Pages', 'comment', '1.1.9', 'Minor update to snippet inspector internal API.', '2017-04-14 08:46:07'),
(65, 'RainLab.Pages', 'comment', '1.1.10', 'Fixes a bug where selecting a layout causes permanent unsaved changes.', '2017-04-14 08:46:07'),
(66, 'RainLab.Pages', 'comment', '1.1.11', 'Add support for repeater syntax field.', '2017-04-14 08:46:07'),
(67, 'RainLab.Pages', 'comment', '1.2.0', 'Added support for translations, UI updates.', '2017-04-14 08:46:08'),
(68, 'RainLab.Pages', 'comment', '1.2.1', 'Use nice titles when listing the content files.', '2017-04-14 08:46:08'),
(69, 'RainLab.Pages', 'comment', '1.2.2', 'Minor styling update.', '2017-04-14 08:46:08'),
(70, 'RainLab.Pages', 'comment', '1.2.3', 'Snippets can now be moved by dragging them.', '2017-04-14 08:46:08'),
(71, 'RainLab.Pages', 'comment', '1.2.4', 'Fixes a bug where the cursor is misplaced when editing text files.', '2017-04-14 08:46:08'),
(72, 'RainLab.Pages', 'comment', '1.2.5', 'Fixes a bug where the parent page is lost upon changing a page layout.', '2017-04-14 08:46:08'),
(73, 'RainLab.Pages', 'comment', '1.2.6', 'Shared view variables are now passed to static pages.', '2017-04-14 08:46:08'),
(74, 'RainLab.Pages', 'comment', '1.2.7', 'Fixes issue with duplicating properties when adding multiple snippets on the same page.', '2017-04-14 08:46:08'),
(75, 'RainLab.Pages', 'comment', '1.2.8', 'Fixes a bug where creating a content block without extension doesn\'t save the contents to file.', '2017-04-14 08:46:08'),
(76, 'RainLab.Pages', 'comment', '1.2.9', 'Add conditional support for translating page URLs.', '2017-04-14 08:46:08'),
(77, 'RainLab.Pages', 'comment', '1.2.10', 'Streamline generation of URLs to use the new Cms::url helper.', '2017-04-14 08:46:08'),
(78, 'RainLab.Pages', 'comment', '1.2.11', 'Implements repeater usage with translate plugin.', '2017-04-14 08:46:08'),
(79, 'RainLab.Pages', 'comment', '1.2.12', 'Fixes minor issue when using snippets and switching the application locale.', '2017-04-14 08:46:08'),
(80, 'RainLab.Pages', 'comment', '1.2.13', 'Fixes bug when AJAX is used on a page that does not yet exist.', '2017-04-14 08:46:09'),
(81, 'RainLab.Pages', 'comment', '1.2.14', 'Add theme logging support for changes made to menus.', '2017-04-14 08:46:09'),
(82, 'RainLab.Pages', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2017-04-14 08:46:09'),
(83, 'RainLab.Pages', 'comment', '1.2.16', 'Fixes a bug when saving a template that has been modified outside of the CMS (mtime mismatch).', '2017-04-14 08:46:09'),
(84, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2017-04-14 08:46:10'),
(85, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2017-04-14 08:46:11'),
(86, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2017-04-14 08:46:11'),
(87, 'RainLab.User', 'comment', '1.0.2', 'Seed tables.', '2017-04-14 08:46:11'),
(88, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2017-04-14 08:46:11'),
(89, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2017-04-14 08:46:11'),
(90, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2017-04-14 08:46:11'),
(91, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2017-04-14 08:46:12'),
(92, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2017-04-14 08:46:12'),
(93, 'RainLab.User', 'comment', '1.0.7', 'Add back-end Settings page.', '2017-04-14 08:46:13'),
(94, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2017-04-14 08:46:13'),
(95, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2017-04-14 08:46:13'),
(96, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2017-04-14 08:46:13'),
(97, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2017-04-14 08:46:14'),
(98, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2017-04-14 08:46:14'),
(99, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2017-04-14 08:46:15'),
(100, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2017-04-14 08:46:15'),
(101, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2017-04-14 08:46:15'),
(102, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2017-04-14 08:46:15'),
(103, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2017-04-14 08:46:16'),
(104, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2017-04-14 08:46:16'),
(105, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2017-04-14 08:46:16'),
(106, 'RainLab.User', 'comment', '1.1.0', '!!! Profile fields and Locations have been removed.', '2017-04-14 08:46:16'),
(107, 'RainLab.User', 'script', '1.1.1', 'create_user_groups_table.php', '2017-04-14 08:46:18'),
(108, 'RainLab.User', 'script', '1.1.1', 'seed_user_groups_table.php', '2017-04-14 08:46:18'),
(109, 'RainLab.User', 'comment', '1.1.1', 'Users can now be added to groups.', '2017-04-14 08:46:18'),
(110, 'RainLab.User', 'comment', '1.1.2', 'A raw URL can now be passed as the redirect property in the Account component.', '2017-04-14 08:46:18'),
(111, 'RainLab.User', 'comment', '1.1.3', 'Adds a super user flag to the users table, reserved for future use.', '2017-04-14 08:46:18'),
(112, 'RainLab.User', 'comment', '1.1.4', 'User list can be filtered by the group they belong to.', '2017-04-14 08:46:18'),
(113, 'RainLab.User', 'comment', '1.1.5', 'Adds a new permission to hide the User settings menu item.', '2017-04-14 08:46:18'),
(114, 'RainLab.User', 'script', '1.2.0', 'users_add_deleted_at.php', '2017-04-14 08:46:19'),
(115, 'RainLab.User', 'comment', '1.2.0', 'Users can now deactivate their own accounts.', '2017-04-14 08:46:19'),
(116, 'RainLab.User', 'comment', '1.2.1', 'New feature for checking if a user is recently active/online.', '2017-04-14 08:46:19'),
(117, 'RainLab.User', 'comment', '1.2.2', 'Add bulk action button to user list.', '2017-04-14 08:46:19'),
(118, 'RainLab.User', 'comment', '1.2.3', 'Included some descriptive paragraphs in the Reset Password component markup.', '2017-04-14 08:46:20'),
(119, 'RainLab.User', 'comment', '1.2.4', 'Added a checkbox for blocking all mail sent to the user.', '2017-04-14 08:46:20'),
(120, 'RainLab.User', 'script', '1.2.5', 'update_timestamp_nullable.php', '2017-04-14 08:46:20'),
(121, 'RainLab.User', 'comment', '1.2.5', 'Database maintenance. Updated all timestamp columns to be nullable.', '2017-04-14 08:46:20'),
(122, 'RainLab.User', 'script', '1.2.6', 'users_add_last_seen.php', '2017-04-14 08:46:21'),
(123, 'RainLab.User', 'comment', '1.2.6', 'Add a dedicated last seen column for users.', '2017-04-14 08:46:21'),
(124, 'RainLab.User', 'comment', '1.2.7', 'Minor fix to user timestamp attributes.', '2017-04-14 08:46:21'),
(125, 'RainLab.User', 'comment', '1.2.8', 'Add date range filter to users list. Introduced a logout event.', '2017-04-14 08:46:21'),
(126, 'RainLab.User', 'comment', '1.2.9', 'Add invitation mail for new accounts created in the back-end.', '2017-04-14 08:46:21'),
(127, 'RainLab.User', 'script', '1.3.0', 'users_add_guest_flag.php', '2017-04-14 08:46:23'),
(128, 'RainLab.User', 'script', '1.3.0', 'users_add_superuser_flag.php', '2017-04-14 08:46:23'),
(129, 'RainLab.User', 'comment', '1.3.0', 'Introduced guest user accounts.', '2017-04-14 08:46:23'),
(130, 'RainLab.User', 'comment', '1.3.1', 'User notification variables can now be extended.', '2017-04-14 08:46:24'),
(131, 'RainLab.User', 'comment', '1.3.2', 'Minor fix to the Auth::register method.', '2017-04-14 08:46:24'),
(132, 'RainLab.User', 'comment', '1.3.3', 'Allow prevention of concurrent user sessions via the user settings.', '2017-04-14 08:46:24'),
(133, 'RainLab.User', 'comment', '1.3.4', 'Added force secure protocol property to the account component.', '2017-04-14 08:46:24'),
(134, 'RainLab.Forum', 'script', '1.0.1', 'create_channels_table.php', '2017-04-14 08:46:51'),
(135, 'RainLab.Forum', 'script', '1.0.1', 'create_posts_table.php', '2017-04-14 08:46:52'),
(136, 'RainLab.Forum', 'script', '1.0.1', 'create_topics_table.php', '2017-04-14 08:46:56'),
(137, 'RainLab.Forum', 'script', '1.0.1', 'create_members_table.php', '2017-04-14 08:46:57'),
(138, 'RainLab.Forum', 'script', '1.0.1', 'seed_all_tables.php', '2017-04-14 08:46:59'),
(139, 'RainLab.Forum', 'comment', '1.0.1', 'First version of Forum', '2017-04-14 08:46:59'),
(140, 'RainLab.Forum', 'script', '1.0.2', 'create_topic_watches_table.php', '2017-04-14 08:47:01'),
(141, 'RainLab.Forum', 'comment', '1.0.2', 'Add unread flags to topics', '2017-04-14 08:47:01'),
(142, 'RainLab.Forum', 'script', '1.0.3', 'members_add_mod_and_ban.php', '2017-04-14 08:47:02'),
(143, 'RainLab.Forum', 'comment', '1.0.3', 'Users can now be made moderators or be banned', '2017-04-14 08:47:02'),
(144, 'RainLab.Forum', 'script', '1.0.4', 'channels_add_hidden_and_moderated.php', '2017-04-14 08:47:03'),
(145, 'RainLab.Forum', 'comment', '1.0.4', 'Channels can now be hidden or moderated', '2017-04-14 08:47:03'),
(146, 'RainLab.Forum', 'script', '1.0.5', 'add_embed_code.php', '2017-04-14 08:47:06'),
(147, 'RainLab.Forum', 'comment', '1.0.5', 'Introduced topic and channel embedding', '2017-04-14 08:47:06'),
(148, 'RainLab.Forum', 'script', '1.0.6', 'create_channel_watches_table.php', '2017-04-14 08:47:07'),
(149, 'RainLab.Forum', 'comment', '1.0.6', 'Add unread flags to channels', '2017-04-14 08:47:07'),
(150, 'RainLab.Forum', 'script', '1.0.7', 'create_topic_followers_table.php', '2017-04-14 08:47:09'),
(151, 'RainLab.Forum', 'comment', '1.0.7', 'Forum members can now follow topics', '2017-04-14 08:47:09'),
(152, 'RainLab.Forum', 'comment', '1.0.8', 'Added Channel name to the Topics component view', '2017-04-14 08:47:09'),
(153, 'RainLab.Forum', 'comment', '1.0.9', 'Updated the Settings page', '2017-04-14 08:47:09'),
(154, 'RainLab.Forum', 'comment', '1.0.10', 'Users can now report spammers who can be banned by moderators.', '2017-04-14 08:47:09'),
(155, 'RainLab.Forum', 'comment', '1.0.11', 'Users can now quote other posts.', '2017-04-14 08:47:09'),
(156, 'RainLab.Forum', 'comment', '1.0.12', 'Improve support for CDN asset hosting.', '2017-04-14 08:47:09'),
(157, 'RainLab.Forum', 'comment', '1.0.13', 'Fixes a bug where channels cannot be selected in the Embed component inspector.', '2017-04-14 08:47:09'),
(158, 'RainLab.Forum', 'comment', '1.0.14', 'Improve the pagination code used in the component default markup.', '2017-04-14 08:47:09'),
(159, 'RainLab.Forum', 'comment', '1.0.15', 'When a User is deleted, their Member profile and posts is also deleted.', '2017-04-14 08:47:09'),
(160, 'RainLab.Forum', 'comment', '1.0.16', 'Posting topics is now throttled allowing 3 new topics every 15 minutes.', '2017-04-14 08:47:09'),
(161, 'RainLab.Forum', 'comment', '1.0.17', 'Update channel reorder page to new system reordering feature.', '2017-04-14 08:47:09'),
(162, 'RainLab.Forum', 'comment', '1.0.18', 'Minor fix to embed topic component.', '2017-04-14 08:47:09'),
(163, 'RainLab.Forum', 'script', '1.0.19', 'update_timestamp_nullable.php', '2017-04-14 08:47:10'),
(164, 'RainLab.Forum', 'comment', '1.0.19', 'Database maintenance. Updated all timestamp columns to be nullable.', '2017-04-14 08:47:10'),
(165, 'RainLab.Forum', 'script', '1.1.0', 'drop_watches_tables.php', '2017-04-14 08:47:11'),
(166, 'RainLab.Forum', 'comment', '1.1.0', 'Major performance enhancements', '2017-04-14 08:47:11'),
(167, 'RainLab.Forum', 'comment', '1.1.1', 'Fixes bug throwing error when a forum topic has no posts.', '2017-04-14 08:47:11'),
(168, 'Indikator.Backend', 'comment', '1.0.0', 'First version of Backend Plus.', '2017-04-14 09:05:20'),
(169, 'Indikator.Backend', 'comment', '1.0.1', 'Fixed the update count issue.', '2017-04-14 09:05:20'),
(170, 'Indikator.Backend', 'comment', '1.0.2', 'Added Last logins widget.', '2017-04-14 09:05:20'),
(171, 'Indikator.Backend', 'comment', '1.0.3', 'Added RSS viewer widget.', '2017-04-14 09:05:20'),
(172, 'Indikator.Backend', 'comment', '1.0.4', 'Minor improvements and bugfix.', '2017-04-14 09:05:20'),
(173, 'Indikator.Backend', 'comment', '1.0.5', 'Added Random images widget.', '2017-04-14 09:05:21'),
(174, 'Indikator.Backend', 'comment', '1.0.6', 'Added virtual keyboard option.', '2017-04-14 09:05:21'),
(175, 'Indikator.Backend', 'script', '1.1.0', 'Improving the Random images widget with slideshow.', '2017-04-14 09:05:21'),
(176, 'Indikator.Backend', 'script', '1.1.0', 'Added Turkish translation (thanks to mahony0).', '2017-04-14 09:05:21'),
(177, 'Indikator.Backend', 'script', '1.1.0', 'Fixed the URL path issue by virtual keyboard.', '2017-04-14 09:05:21'),
(178, 'Indikator.Backend', 'comment', '1.1.0', 'Added Lorem ipsum components (image and text).', '2017-04-14 09:05:21'),
(179, 'Indikator.Backend', 'comment', '1.1.1', 'Hide the "Find more themes" link.', '2017-04-14 09:05:21'),
(180, 'Indikator.Backend', 'comment', '1.1.2', 'Added German translation.', '2017-04-14 09:05:21'),
(181, 'Indikator.Backend', 'comment', '1.1.3', 'The widgets work on localhost too.', '2017-04-14 09:05:21'),
(182, 'Indikator.Backend', 'comment', '1.1.4', 'Added Spanish translation (thanks to jh2odo).', '2017-04-14 09:05:21'),
(183, 'Indikator.Backend', 'comment', '1.2.0', 'All features are working on the whole backend.', '2017-04-14 09:05:21'),
(184, 'Indikator.Backend', 'comment', '1.2.1', 'Rounded profile image is optional in top menu.', '2017-04-14 09:05:21'),
(185, 'Indikator.Backend', 'comment', '1.2.2', 'Fixed the authenticated user bug.', '2017-04-14 09:05:21'),
(186, 'Indikator.Backend', 'comment', '1.2.3', 'Hide the Media menu optional in top menu.', '2017-04-14 09:05:22'),
(187, 'Indikator.Backend', 'comment', '1.2.4', 'Minor improvements and bugfix.', '2017-04-14 09:05:22'),
(188, 'Indikator.Backend', 'comment', '1.2.5', 'Renamed the name of backend widgets.', '2017-04-14 09:05:22'),
(189, 'Indikator.Backend', 'comment', '1.2.6', 'Improved the automatic search focus.', '2017-04-14 09:05:22'),
(190, 'Indikator.Backend', 'comment', '1.2.7', 'Minor improvements.', '2017-04-14 09:05:22'),
(191, 'Indikator.Backend', 'comment', '1.2.8', 'Fixed the hiding Media menu issue.', '2017-04-14 09:05:22'),
(192, 'Indikator.Backend', 'comment', '1.2.9', 'Improved the widget exception handling.', '2017-04-14 09:05:22'),
(193, 'Indikator.Backend', 'comment', '1.3.0', 'Added 2 new options for Settings.', '2017-04-14 09:05:22'),
(194, 'Indikator.Backend', 'comment', '1.3.1', 'Fixed the search field hide issue.', '2017-04-14 09:05:22'),
(195, 'Indikator.Backend', 'comment', '1.3.2', 'Delete only demo folder instead of october.', '2017-04-14 09:05:22'),
(196, 'Indikator.Backend', 'comment', '1.3.3', 'Added clear button option to form fields.', '2017-04-14 09:05:23'),
(197, 'Indikator.Backend', 'comment', '1.3.4', 'Improved the Media menu hiding.', '2017-04-14 09:05:23'),
(198, 'Indikator.Backend', 'comment', '1.3.5', 'Fixed the automatically focus option.', '2017-04-14 09:05:23'),
(199, 'Indikator.Backend', 'comment', '1.3.6', 'Added the Cache dashboard widget.', '2017-04-14 09:05:23'),
(200, 'Indikator.Backend', 'comment', '1.4.0', 'Added 2 new form widgets.', '2017-04-14 09:05:23'),
(201, 'Indikator.Backend', 'comment', '1.4.1', 'Added new colorpicker form widget.', '2017-04-14 09:05:23'),
(202, 'Indikator.Backend', 'comment', '1.4.2', 'Minor improvements.', '2017-04-14 09:05:23'),
(203, 'Indikator.Backend', 'comment', '1.4.3', 'Improved the Cache dashboard widget.', '2017-04-14 09:05:23'),
(204, 'Indikator.Backend', 'comment', '1.4.4', 'Updated for latest October.', '2017-04-14 09:05:23'),
(205, 'Indikator.Backend', 'comment', '1.4.5', 'Minor improvements and bugfix.', '2017-04-14 09:05:23'),
(206, 'Indikator.Backend', 'comment', '1.4.6', 'Improved the UI and fixed bug.', '2017-04-14 09:05:23'),
(207, 'Indikator.Backend', 'comment', '1.4.7', 'Hide the label in top menu.', '2017-04-14 09:05:23'),
(208, 'Indikator.Backend', 'comment', '1.4.8', 'Enable the gzip compression.', '2017-04-14 09:05:23'),
(209, 'Indikator.Backend', 'script', '1.5.0', 'create_trash_table.php', '2017-04-14 09:05:24'),
(210, 'Indikator.Backend', 'comment', '1.5.0', 'Delete the unused files and folders.', '2017-04-14 09:05:24'),
(211, 'Indikator.Backend', 'comment', '1.5.1', 'Minor improvements and bugfix.', '2017-04-14 09:05:24'),
(212, 'Indikator.Backend', 'comment', '1.5.2', 'Improved the Trash items page.', '2017-04-14 09:05:24'),
(213, 'Indikator.Backend', 'comment', '1.5.3', 'Expanded the Trash items page.', '2017-04-14 09:05:24'),
(214, 'Indikator.Backend', 'comment', '1.5.4', 'Minor improvements.', '2017-04-14 09:05:24'),
(215, 'Indikator.Backend', 'comment', '1.5.5', 'Added tooltip when hiding the labels.', '2017-04-14 09:05:24'),
(216, 'Indikator.Backend', 'comment', '1.5.6', 'Fixed the page overflow issue.', '2017-04-14 09:05:24'),
(217, 'Indikator.Backend', 'comment', '1.5.7', 'Added the context menu feature.', '2017-04-14 09:05:24'),
(218, 'Indikator.Backend', 'comment', '1.5.8', 'Improved the context menu.', '2017-04-14 09:05:24'),
(219, 'Indikator.Backend', 'comment', '1.6.0', 'Available the Elite version.', '2017-04-14 09:05:25'),
(220, 'Indikator.Backend', 'comment', '1.6.1', 'Added the Russian translation.', '2017-04-14 09:05:25'),
(221, 'Indikator.Backend', 'comment', '1.6.2', 'Added the Brazilian Portuguese lang.', '2017-04-14 09:05:25'),
(222, 'Indikator.Backend', 'comment', '1.6.3', 'Minor improvements.', '2017-04-14 09:05:25'),
(223, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2017-04-14 09:09:53'),
(224, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2017-04-14 09:09:53'),
(225, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2017-04-14 09:09:53'),
(226, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2017-04-14 09:09:53'),
(227, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2017-04-14 09:09:53'),
(228, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2017-04-14 09:09:53'),
(229, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2017-04-14 09:09:53'),
(230, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2017-04-14 09:09:53'),
(231, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2017-04-14 09:09:53'),
(232, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2017-04-14 09:09:54'),
(233, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2017-04-14 09:09:54'),
(234, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2017-04-14 09:09:54'),
(235, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2017-04-14 09:09:54'),
(236, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2017-04-14 09:09:54'),
(237, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2017-04-14 09:09:54'),
(238, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2017-04-14 09:09:54'),
(239, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2017-04-14 09:09:54'),
(240, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2017-04-14 09:09:54'),
(241, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2017-04-14 09:09:54'),
(242, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the "current.hasAttribute is not a function" error.', '2017-04-14 09:09:54'),
(243, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2017-04-14 09:09:54'),
(244, 'AnandPatel.SeoExtension', 'script', '1.0.1', 'create_blog_posts_table.php', '2017-04-14 09:10:19'),
(245, 'AnandPatel.SeoExtension', 'comment', '1.0.1', 'First version of Seo Extension', '2017-04-14 09:10:19'),
(246, 'AnandPatel.SeoExtension', 'comment', '1.0.2', 'Bug fixes', '2017-04-14 09:10:20'),
(247, 'AnandPatel.SeoExtension', 'comment', '1.0.3', 'Backend Settings added to configure meta tags & Open Graph tags added', '2017-04-14 09:10:20'),
(248, 'AnandPatel.SeoExtension', 'comment', '1.0.4', 'Code clean up and change path naming in settings model', '2017-04-14 09:10:20'),
(249, 'AnandPatel.SeoExtension', 'comment', '1.0.5', 'Add Turkish, Russian, cs_CZ locale', '2017-04-14 09:10:20'),
(250, 'AnandPatel.SeoExtension', 'comment', '1.0.6', 'Fix issue of SEO Settings Errors', '2017-04-14 09:10:20');

-- --------------------------------------------------------

--
-- Структура таблицы `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2017-04-13 04:54:51', 0, 0),
(2, 'RainLab.Blog', '1.2.16', '2017-04-14 08:46:06', 0, 0),
(3, 'RainLab.Pages', '1.2.16', '2017-04-14 08:46:09', 0, 0),
(4, 'RainLab.User', '1.3.4', '2017-04-14 08:46:24', 0, 0),
(5, 'RainLab.Forum', '1.1.1', '2017-04-14 08:47:11', 0, 0),
(6, 'Indikator.Backend', '1.6.3', '2017-04-14 09:05:25', 0, 0),
(7, 'RainLab.Builder', '1.0.21', '2017-04-14 09:09:54', 0, 0),
(8, 'AnandPatel.SeoExtension', '1.0.6', '2017-04-14 09:10:20', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  `new_value` text COLLATE utf8_unicode_ci,
  `revisionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Guest', 'guest', 'Default group for guest users.', '2017-04-14 08:46:18', '2017-04-14 08:46:18'),
(2, 'Registered', 'registered', 'Default group for registered users.', '2017-04-14 08:46:18', '2017-04-14 08:46:18');

-- --------------------------------------------------------

--
-- Структура таблицы `user_throttle`
--

CREATE TABLE `user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`);

--
-- Индексы таблицы `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Индексы таблицы `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Индексы таблицы `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Индексы таблицы `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Индексы таблицы `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Индексы таблицы `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Индексы таблицы `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `indikator_backend_trash`
--
ALTER TABLE `indikator_backend_trash`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Индексы таблицы `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Индексы таблицы `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Индексы таблицы `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rainlab_forum_channels_slug_unique` (`slug`),
  ADD KEY `rainlab_forum_channels_parent_id_index` (`parent_id`),
  ADD KEY `rainlab_forum_channels_embed_code_index` (`embed_code`);

--
-- Индексы таблицы `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_forum_members_user_id_index` (`user_id`),
  ADD KEY `rainlab_forum_members_count_posts_index` (`count_posts`),
  ADD KEY `rainlab_forum_members_count_topics_index` (`count_topics`),
  ADD KEY `rainlab_forum_members_last_active_at_index` (`last_active_at`),
  ADD KEY `rainlab_forum_members_is_moderator_index` (`is_moderator`);

--
-- Индексы таблицы `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_forum_posts_topic_id_index` (`topic_id`),
  ADD KEY `rainlab_forum_posts_member_id_index` (`member_id`);

--
-- Индексы таблицы `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rainlab_forum_topics_slug_unique` (`slug`),
  ADD KEY `sticky_post_time` (`is_sticky`,`last_post_at`),
  ADD KEY `rainlab_forum_topics_channel_id_index` (`channel_id`),
  ADD KEY `rainlab_forum_topics_start_member_id_index` (`start_member_id`),
  ADD KEY `rainlab_forum_topics_last_post_at_index` (`last_post_at`),
  ADD KEY `rainlab_forum_topics_is_private_index` (`is_private`),
  ADD KEY `rainlab_forum_topics_is_locked_index` (`is_locked`),
  ADD KEY `rainlab_forum_topics_count_posts_index` (`count_posts`),
  ADD KEY `rainlab_forum_topics_count_views_index` (`count_views`),
  ADD KEY `rainlab_forum_topics_embed_code_index` (`embed_code`);

--
-- Индексы таблицы `rainlab_forum_topic_followers`
--
ALTER TABLE `rainlab_forum_topic_followers`
  ADD PRIMARY KEY (`topic_id`,`member_id`);

--
-- Индексы таблицы `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_user_mail_blockers_email_index` (`email`),
  ADD KEY `rainlab_user_mail_blockers_template_index` (`template`),
  ADD KEY `rainlab_user_mail_blockers_user_id_index` (`user_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Индексы таблицы `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Индексы таблицы `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Индексы таблицы `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Индексы таблицы `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Индексы таблицы `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Индексы таблицы `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Индексы таблицы `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Индексы таблицы `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_login_unique` (`username`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`),
  ADD KEY `users_login_index` (`username`);

--
-- Индексы таблицы `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Индексы таблицы `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_groups_code_index` (`code`);

--
-- Индексы таблицы `user_throttle`
--
ALTER TABLE `user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_throttle_user_id_index` (`user_id`),
  ADD KEY `user_throttle_ip_address_index` (`ip_address`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `indikator_backend_trash`
--
ALTER TABLE `indikator_backend_trash`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT для таблицы `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `user_throttle`
--
ALTER TABLE `user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
