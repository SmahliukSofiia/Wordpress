-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 18, 2019 at 10:14 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `green_fair`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-10-17 14:16:38', '2019-10-17 11:16:38', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'green_fair', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'smahliuk4@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:143:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:49:\"category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?category=$matches[1]&feed=$matches[2]\";s:44:\"category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?category=$matches[1]&feed=$matches[2]\";s:25:\"category/([^/]+)/embed/?$\";s:41:\"index.php?category=$matches[1]&embed=true\";s:37:\"category/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?category=$matches[1]&paged=$matches[2]\";s:19:\"category/([^/]+)/?$\";s:30:\"index.php?category=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:39:\"index.php?events=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:33:\"index.php?events=$matches[1]&tb=1\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?events=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"events_min/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"events_min/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"events_min/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"events_min/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"events_min/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"events_min/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"events_min/([^/]+)/embed/?$\";s:43:\"index.php?events_min=$matches[1]&embed=true\";s:31:\"events_min/([^/]+)/trackback/?$\";s:37:\"index.php?events_min=$matches[1]&tb=1\";s:39:\"events_min/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?events_min=$matches[1]&paged=$matches[2]\";s:46:\"events_min/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?events_min=$matches[1]&cpage=$matches[2]\";s:35:\"events_min/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?events_min=$matches[1]&page=$matches[2]\";s:27:\"events_min/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"events_min/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"events_min/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"events_min/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"events_min/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"events_min/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"latest_work/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"latest_work/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"latest_work/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"latest_work/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"latest_work/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"latest_work/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"latest_work/([^/]+)/embed/?$\";s:44:\"index.php?latest_work=$matches[1]&embed=true\";s:32:\"latest_work/([^/]+)/trackback/?$\";s:38:\"index.php?latest_work=$matches[1]&tb=1\";s:40:\"latest_work/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?latest_work=$matches[1]&paged=$matches[2]\";s:47:\"latest_work/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?latest_work=$matches[1]&cpage=$matches[2]\";s:36:\"latest_work/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?latest_work=$matches[1]&page=$matches[2]\";s:28:\"latest_work/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"latest_work/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"latest_work/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"latest_work/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"latest_work/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"latest_work/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:33:\"[^/]+/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"[^/]+/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"[^/]+/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"[^/]+/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"[^/]+/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"[^/]+/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"([^/]+)/([^/]+)/embed/?$\";s:58:\"index.php?category=$matches[1]&name=$matches[2]&embed=true\";s:28:\"([^/]+)/([^/]+)/trackback/?$\";s:52:\"index.php?category=$matches[1]&name=$matches[2]&tb=1\";s:48:\"([^/]+)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?category=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:43:\"([^/]+)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?category=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:36:\"([^/]+)/([^/]+)/page/?([0-9]{1,})/?$\";s:65:\"index.php?category=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:43:\"([^/]+)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?category=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:32:\"([^/]+)/([^/]+)(?:/([0-9]+))?/?$\";s:64:\"index.php?category=$matches[1]&name=$matches[2]&page=$matches[3]\";s:22:\"[^/]+/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"[^/]+/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"[^/]+/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"[^/]+/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"[^/]+/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"[^/]+/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?category=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?category=$matches[1]&feed=$matches[2]\";s:16:\"([^/]+)/embed/?$\";s:41:\"index.php?category=$matches[1]&embed=true\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?category=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?category=$matches[1]&cpage=$matches[2]\";s:10:\"([^/]+)/?$\";s:30:\"index.php?category=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'green-fair', 'yes'),
(41, 'stylesheet', 'green-fair', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1571436998;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1571440598;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1571483798;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1571483810;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1571483812;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:1:{s:22:\"pNhOyv50t4lShGUerAwPS1\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BlIpW0FTO1L5gjOjgce.F7u0xPhmxs0\";s:10:\"created_at\";i:1571426913;}}', 'yes'),
(124, '_site_transient_timeout_browser_ad878a2d78cfdc400650f39aea9a1c29', '1571915811', 'no'),
(125, '_site_transient_browser_ad878a2d78cfdc400650f39aea9a1c29', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"77.0.3865.90\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, '_site_transient_timeout_php_check_90e738eca301c4d89366b1a4d15fe37f', '1571915812', 'no'),
(127, '_site_transient_php_check_90e738eca301c4d89366b1a4d15fe37f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(142, 'theme_mods_twentynineteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1571311020;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(143, 'current_theme', 'green fair', 'yes'),
(144, 'theme_mods_green-fair', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:4:\"main\";i:2;s:3:\"top\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:17;}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(146, 'recovery_mode_email_last_sent', '1571426913', 'yes'),
(151, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(342, '_transient_timeout_plugin_slugs', '1571423896', 'no'),
(343, '_transient_plugin_slugs', 'a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'no'),
(344, 'recently_activated', 'a:0:{}', 'yes'),
(350, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1571419354;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(351, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1571419355;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(352, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1571419355;s:7:\"checked\";a:1:{s:10:\"green-fair\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(353, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1571348295;s:7:\"version\";s:5:\"5.1.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(629, '_site_transient_timeout_theme_roots', '1571421155', 'no'),
(630, '_site_transient_theme_roots', 'a:1:{s:10:\"green-fair\";s:7:\"/themes\";}', 'no'),
(641, 'category_children', 'a:0:{}', 'yes'),
(1608, '_address', 'Elephant Road, Dhaka 1205, Bangladesh', 'no'),
(1609, '_phone', '+ 8801532-987039', 'no'),
(1610, '_email', 'youremail@mail.com', 'no'),
(1611, '_socials|||0|value', '_', 'no'),
(1612, '_socials|||1|value', '_', 'no'),
(1613, '_socials|||2|value', '_', 'no'),
(1614, '_socials|||3|value', '_', 'no'),
(1615, '_socials|icon|0|0|value', 'fa fa-facebook', 'no'),
(1616, '_socials|link|0|0|value', '#', 'no'),
(1617, '_socials|icon|1|0|value', 'fa fa-twitter', 'no'),
(1618, '_socials|link|1|0|value', '#', 'no'),
(1619, '_socials|icon|2|0|value', 'fa fa-google-plus', 'no'),
(1620, '_socials|link|2|0|value', '#', 'no'),
(1621, '_socials|icon|3|0|value', 'fa fa-youtube', 'no'),
(1622, '_socials|link|3|0|value', '#', 'no'),
(1623, '_slider|||0|value', '_', 'no'),
(1624, '_slider|||1|value', '_', 'no'),
(1625, '_slider|||2|value', '_', 'no'),
(1626, '_slider|img|0|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/img1.jpg', 'no'),
(1627, '_slider|title|0|0|value', 'PROTECT', 'no'),
(1628, '_slider|subtitle|0|0|value', 'NATURE THE ENVIRONMENT', 'no'),
(1629, '_slider|desc|0|0|value', 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT.  READ MORE', 'no'),
(1630, '_slider|img|1|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/img2.jpg', 'no'),
(1631, '_slider|title|1|0|value', 'PROTECT', 'no'),
(1632, '_slider|subtitle|1|0|value', 'NATURE THE ENVIRONMENT', 'no'),
(1633, '_slider|desc|1|0|value', 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT.  READ MORE', 'no'),
(1634, '_slider|img|2|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/img3.jpg', 'no'),
(1635, '_slider|title|2|0|value', 'PROTECT', 'no'),
(1636, '_slider|subtitle|2|0|value', 'NATURE THE ENVIRONMENT', 'no'),
(1637, '_slider|desc|2|0|value', 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT.  READ MORE', 'no'),
(1638, '_welcome|||0|value', '_', 'no'),
(1639, '_welcome|||1|value', '_', 'no'),
(1640, '_welcome|||2|value', '_', 'no'),
(1641, '_welcome|||3|value', '_', 'no'),
(1642, '_welcome|welcome_icon|0|0|value', 'fa fa-leaf', 'no'),
(1643, '_welcome|welcome_title|0|0|value', 'eco system', 'no'),
(1644, '_welcome|welcome_desc|0|0|value', 'Lorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.', 'no'),
(1645, '_welcome|welcome_icon|1|0|value', 'fa fa-refresh', 'no'),
(1646, '_welcome|welcome_title|1|0|value', 'recycling', 'no'),
(1647, '_welcome|welcome_desc|1|0|value', 'Lorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.', 'no'),
(1648, '_welcome|welcome_icon|2|0|value', 'fa fa-tint', 'no'),
(1649, '_welcome|welcome_title|2|0|value', 'water refine', 'no'),
(1650, '_welcome|welcome_desc|2|0|value', 'Lorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.', 'no'),
(1651, '_welcome|welcome_icon|3|0|value', 'fa fa-cog', 'no'),
(1652, '_welcome|welcome_title|3|0|value', 'solar system', 'no'),
(1653, '_welcome|welcome_desc|3|0|value', 'Lorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.', 'no'),
(1654, '_achivement_icon|||0|value', '_', 'no'),
(1655, '_achivement_icon|||1|value', '_', 'no'),
(1656, '_achivement_icon|||2|value', '_', 'no'),
(1657, '_achivement_icon|||3|value', '_', 'no'),
(1658, '_achivement_icon|icon_url|0|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/tree.png', 'no'),
(1659, '_achivement_icon|achivement_num|0|0|value', '1542', 'no'),
(1660, '_achivement_icon|achivement_title|0|0|value', 'tree cut', 'no'),
(1661, '_achivement_icon|icon_url|1|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/hand.png', 'no'),
(1662, '_achivement_icon|achivement_num|1|0|value', '1458', 'no'),
(1663, '_achivement_icon|achivement_title|1|0|value', 'animal lost', 'no'),
(1664, '_achivement_icon|icon_url|2|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/tuhnder.png', 'no'),
(1665, '_achivement_icon|achivement_num|2|0|value', '9854', 'no'),
(1666, '_achivement_icon|achivement_title|2|0|value', 'blubs collected', 'no'),
(1667, '_achivement_icon|icon_url|3|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/cloud.png', 'no'),
(1668, '_achivement_icon|achivement_num|3|0|value', '5412', 'no'),
(1669, '_achivement_icon|achivement_title|3|0|value', 'water level', 'no'),
(1670, '_testimonials|||0|value', '_', 'no'),
(1671, '_testimonials|||1|value', '_', 'no'),
(1672, '_testimonials|testimonials_img|0|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/tree_cut_3.jpg', 'no'),
(1673, '_testimonials|testimonials_text|0|0|value', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque laboriosam quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus.', 'no'),
(1674, '_testimonials|testimonials_name|0|0|value', 'Sadequr Rahman Sojib', 'no'),
(1675, '_testimonials|testimonials_position|0|0|value', 'CEO, Fourder', 'no'),
(1676, '_testimonials|testimonials_img|1|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/tree_cut_3.jpg', 'no'),
(1677, '_testimonials|testimonials_text|1|0|value', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque laboriosam quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus.', 'no'),
(1678, '_testimonials|testimonials_name|1|0|value', 'Sadequr Rahman Sojib', 'no'),
(1679, '_testimonials|testimonials_position|1|0|value', 'CEO, Fourder', 'no'),
(1680, '_market_logo|||0|value', '_', 'no'),
(1681, '_market_logo|||1|value', '_', 'no'),
(1682, '_market_logo|||2|value', '_', 'no'),
(1683, '_market_logo|||3|value', '_', 'no'),
(1684, '_market_logo|logo_url|0|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/audiojungle.png', 'no'),
(1685, '_market_logo|logo_url|1|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/codecanyon.png', 'no'),
(1686, '_market_logo|logo_url|2|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/graphicriver.png', 'no'),
(1687, '_market_logo|logo_url|3|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/audiojungle.png', 'no'),
(1688, '_latest_work|||0|value', '_', 'no'),
(1689, '_latest_work|||1|value', '_', 'no'),
(1690, '_latest_work|||2|value', '_', 'no'),
(1691, '_latest_work|||3|value', '_', 'no'),
(1692, '_latest_work|||4|value', '_', 'no'),
(1693, '_latest_work|work_url|0|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/environment.jpg', 'no'),
(1694, '_latest_work|work_url|1|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/portfolio_1.jpg', 'no'),
(1695, '_latest_work|work_url|2|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/cliemate.jpg', 'no'),
(1696, '_latest_work|work_url|3|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/photography.jpg', 'no'),
(1697, '_latest_work|work_url|4|0|value', 'http://localhost/wordpress/wp-content/uploads/2019/10/species.jpg', 'no'),
(1698, '_footer_title', 'get in touch', 'no'),
(1699, '_footer_subtitle', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'no'),
(1700, '_left_title', 'our office info', 'no'),
(1701, '_right_title', 'Drop A Message', 'no'),
(1702, '_copyright', '@ 2016 - Design By', 'no'),
(1703, '_copyright_icon', '&#9798;', 'no'),
(1704, '_designer', 'A Design By ', 'no'),
(1705, '_designer_name', 'XpeedStudio', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/wordpress/'),
(11, 5, '_menu_item_orphaned', '1571311671'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(20, 6, '_menu_item_orphaned', '1571311671'),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', 'http://localhost/wordpress/'),
(29, 7, '_menu_item_orphaned', '1571315644'),
(30, 8, '_menu_item_type', 'post_type'),
(31, 8, '_menu_item_menu_item_parent', '0'),
(32, 8, '_menu_item_object_id', '2'),
(33, 8, '_menu_item_object', 'page'),
(34, 8, '_menu_item_target', ''),
(35, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 8, '_menu_item_xfn', ''),
(37, 8, '_menu_item_url', ''),
(38, 8, '_menu_item_orphaned', '1571315644'),
(39, 9, '_menu_item_type', 'custom'),
(40, 9, '_menu_item_menu_item_parent', '0'),
(41, 9, '_menu_item_object_id', '9'),
(42, 9, '_menu_item_object', 'custom'),
(43, 9, '_menu_item_target', ''),
(44, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 9, '_menu_item_xfn', ''),
(46, 9, '_menu_item_url', '#header'),
(48, 10, '_menu_item_type', 'custom'),
(49, 10, '_menu_item_menu_item_parent', '0'),
(50, 10, '_menu_item_object_id', '10'),
(51, 10, '_menu_item_object', 'custom'),
(52, 10, '_menu_item_target', ''),
(53, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 10, '_menu_item_xfn', ''),
(55, 10, '_menu_item_url', '#welcome'),
(57, 11, '_menu_item_type', 'custom'),
(58, 11, '_menu_item_menu_item_parent', '0'),
(59, 11, '_menu_item_object_id', '11'),
(60, 11, '_menu_item_object', 'custom'),
(61, 11, '_menu_item_target', ''),
(62, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 11, '_menu_item_xfn', ''),
(64, 11, '_menu_item_url', '#portfolio'),
(66, 12, '_menu_item_type', 'custom'),
(67, 12, '_menu_item_menu_item_parent', '0'),
(68, 12, '_menu_item_object_id', '12'),
(69, 12, '_menu_item_object', 'custom'),
(70, 12, '_menu_item_target', ''),
(71, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 12, '_menu_item_xfn', ''),
(73, 12, '_menu_item_url', '#counter'),
(75, 13, '_menu_item_type', 'custom'),
(76, 13, '_menu_item_menu_item_parent', '0'),
(77, 13, '_menu_item_object_id', '13'),
(78, 13, '_menu_item_object', 'custom'),
(79, 13, '_menu_item_target', ''),
(80, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 13, '_menu_item_xfn', ''),
(82, 13, '_menu_item_url', '#event'),
(84, 14, '_menu_item_type', 'custom'),
(85, 14, '_menu_item_menu_item_parent', '0'),
(86, 14, '_menu_item_object_id', '14'),
(87, 14, '_menu_item_object', 'custom'),
(88, 14, '_menu_item_target', ''),
(89, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 14, '_menu_item_xfn', ''),
(91, 14, '_menu_item_url', '#testimonial'),
(93, 15, '_menu_item_type', 'custom'),
(94, 15, '_menu_item_menu_item_parent', '0'),
(95, 15, '_menu_item_object_id', '15'),
(96, 15, '_menu_item_object', 'custom'),
(97, 15, '_menu_item_target', ''),
(98, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 15, '_menu_item_xfn', ''),
(100, 15, '_menu_item_url', '#blog'),
(102, 16, '_menu_item_type', 'custom'),
(103, 16, '_menu_item_menu_item_parent', '0'),
(104, 16, '_menu_item_object_id', '16'),
(105, 16, '_menu_item_object', 'custom'),
(106, 16, '_menu_item_target', ''),
(107, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 16, '_menu_item_xfn', ''),
(109, 16, '_menu_item_url', '#contact'),
(111, 17, '_wp_attached_file', '2019/10/logo.png'),
(112, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:152;s:6:\"height\";i:45;s:4:\"file\";s:16:\"2019/10/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x45.png\";s:5:\"width\";i:150;s:6:\"height\";i:45;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 18, '_wp_trash_meta_status', 'publish'),
(114, 18, '_wp_trash_meta_time', '1571320441'),
(115, 1, '_edit_lock', '1571328119:1'),
(116, 19, '_edit_lock', '1571328185:1'),
(117, 20, '_edit_lock', '1571328341:1'),
(118, 21, '_edit_lock', '1571328393:1'),
(119, 22, '_edit_lock', '1571328447:1'),
(120, 23, '_edit_lock', '1571328471:1'),
(121, 24, '_edit_lock', '1571328492:1'),
(122, 25, '_edit_lock', '1571328637:1'),
(123, 26, '_edit_lock', '1571328731:1'),
(124, 27, '_edit_lock', '1571328876:1'),
(125, 28, '_edit_lock', '1571328938:1'),
(126, 29, '_edit_lock', '1571328953:1'),
(127, 30, '_edit_lock', '1571329098:1'),
(128, 31, '_edit_lock', '1571329370:1'),
(129, 32, '_edit_lock', '1571329373:1'),
(130, 33, '_edit_lock', '1571329411:1'),
(131, 34, '_wp_attached_file', '2019/10/img1.jpg'),
(132, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:700;s:4:\"file\";s:16:\"2019/10/img1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img1-300x111.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"img1-768x283.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"img1-1024x377.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:377;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 35, '_wp_attached_file', '2019/10/img2.jpg'),
(134, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:700;s:4:\"file\";s:16:\"2019/10/img2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img2-300x111.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"img2-768x283.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"img2-1024x377.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:377;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 36, '_wp_attached_file', '2019/10/img3.jpg'),
(136, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:700;s:4:\"file\";s:16:\"2019/10/img3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img3-300x111.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"img3-768x283.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"img3-1024x377.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:377;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 38, '_form', '<div class=\"form-group\">\n  <div class=\"col-sm-6\">\n    [text your-name id:name class:form-control placeholder \"Name\"]\n  </div>\n  <div class=\"col-sm-6\">\n    [email your-email id:email class:form-control placeholder \"Emal\"]\n  </div>\n</div>\n<div class=\"form-group\">\n  <div class=\"col-sm-12\">\n      [text* your-subject id:subject class:form-control placeholder \"Subject *\"]\n\n    <div class=\"text_area\">\n      [textarea textarea id:msg class:form-control \"Message\"]\n    </div>\n\n    <button type=\"submit\" class=\"btn custom-btn\" data-loading-text=\"Loading...\">Send</button>\n  </div>\n</div>'),
(144, 38, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"green_fair \"[your-subject]\"\";s:6:\"sender\";s:32:\"green_fair <smahliuk4@gmail.com>\";s:9:\"recipient\";s:19:\"smahliuk4@gmail.com\";s:4:\"body\";s:199:\"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта green_fair (http://localhost/wordpress)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(145, 38, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:27:\"green_fair \"[your-subject]\"\";s:6:\"sender\";s:32:\"green_fair <smahliuk4@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта green_fair (http://localhost/wordpress)\";s:18:\"additional_headers\";s:29:\"Reply-To: smahliuk4@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(146, 38, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:17:\"captcha_not_match\";s:35:\"Код введен неверно.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(147, 38, '_additional_settings', ''),
(148, 38, '_locale', 'ru_RU'),
(150, 39, '_wp_attached_file', '2019/10/audiojungle.png'),
(151, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:215;s:6:\"height\";i:41;s:4:\"file\";s:23:\"2019/10/audiojungle.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"audiojungle-150x41.png\";s:5:\"width\";i:150;s:6:\"height\";i:41;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 40, '_wp_attached_file', '2019/10/codecanyon.png'),
(153, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:215;s:6:\"height\";i:41;s:4:\"file\";s:22:\"2019/10/codecanyon.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"codecanyon-150x41.png\";s:5:\"width\";i:150;s:6:\"height\";i:41;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 41, '_wp_attached_file', '2019/10/graphicriver.png'),
(155, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:215;s:6:\"height\";i:41;s:4:\"file\";s:24:\"2019/10/graphicriver.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"graphicriver-150x41.png\";s:5:\"width\";i:150;s:6:\"height\";i:41;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 42, '_edit_lock', '1571422865:1'),
(158, 1, '_wp_trash_meta_status', 'publish'),
(159, 1, '_wp_trash_meta_time', '1571419727'),
(160, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(161, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(162, 45, '_edit_lock', '1571421247:1'),
(164, 47, '_edit_lock', '1571419770:1'),
(165, 48, '_edit_lock', '1571426013:1'),
(167, 50, '_wp_attached_file', '2019/10/threat_bear.jpg'),
(168, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:632;s:6:\"height\";i:475;s:4:\"file\";s:23:\"2019/10/threat_bear.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"threat_bear-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"threat_bear-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 48, '_thumbnail_id', '50'),
(171, 51, '_edit_lock', '1571421353:1'),
(172, 52, '_wp_attached_file', '2019/10/air_pollutuon.jpg'),
(173, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:25:\"2019/10/air_pollutuon.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"air_pollutuon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"air_pollutuon-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(175, 45, '_thumbnail_id', '52'),
(176, 53, '_wp_attached_file', '2019/10/climate_effect.jpg'),
(177, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:711;s:6:\"height\";i:450;s:4:\"file\";s:26:\"2019/10/climate_effect.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"climate_effect-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"climate_effect-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(179, 42, '_thumbnail_id', '53'),
(180, 54, '_edit_last', '1'),
(181, 54, '_edit_lock', '1571427731:1'),
(182, 55, '_wp_attached_file', '2019/10/tree_cut_1.jpg'),
(183, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:475;s:6:\"height\";i:340;s:4:\"file\";s:22:\"2019/10/tree_cut_1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"tree_cut_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"tree_cut_1-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 54, '_thumbnail_id', '58'),
(185, 57, '_edit_last', '1'),
(186, 57, '_edit_lock', '1571427267:1'),
(187, 58, '_wp_attached_file', '2019/10/tree_cut_2.jpg'),
(188, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:475;s:6:\"height\";i:340;s:4:\"file\";s:22:\"2019/10/tree_cut_2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"tree_cut_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"tree_cut_2-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 57, '_thumbnail_id', '55'),
(190, 59, '_edit_last', '1'),
(191, 59, '_edit_lock', '1571426561:1'),
(192, 59, '_thumbnail_id', '58'),
(193, 59, '_wp_trash_meta_status', 'publish'),
(194, 59, '_wp_trash_meta_time', '1571426708'),
(195, 59, '_wp_desired_post_slug', 'lets-plant-200-tree-each'),
(196, 60, '_edit_last', '1'),
(197, 60, '_edit_lock', '1571426910:1'),
(198, 60, '_thumbnail_id', '58'),
(199, 61, '_edit_last', '1'),
(200, 61, '_edit_lock', '1571426935:1'),
(201, 61, '_thumbnail_id', '55'),
(202, 62, '_edit_last', '1'),
(203, 62, '_edit_lock', '1571426976:1'),
(204, 62, '_thumbnail_id', '58'),
(205, 63, '_edit_last', '1'),
(206, 63, '_thumbnail_id', '55'),
(207, 63, '_edit_lock', '1571427001:1'),
(208, 64, '_edit_last', '1'),
(209, 64, '_thumbnail_id', '58'),
(210, 64, '_edit_lock', '1571427251:1'),
(211, 66, '_wp_attached_file', '2019/10/environment.jpg'),
(212, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2019/10/environment.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"environment-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"environment-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 76, '_edit_last', '1'),
(214, 76, '_edit_lock', '1571429462:1'),
(215, 76, '_thumbnail_id', '66'),
(216, 78, '_wp_attached_file', '2019/10/cliemate.jpg'),
(217, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2019/10/cliemate.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"cliemate-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"cliemate-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 77, '_edit_last', '1'),
(219, 77, '_thumbnail_id', '78'),
(220, 77, '_edit_lock', '1571429444:1'),
(221, 80, '_wp_attached_file', '2019/10/species.jpg'),
(222, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2019/10/species.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"species-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"species-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 79, '_edit_last', '1'),
(224, 79, '_thumbnail_id', '80'),
(225, 79, '_edit_lock', '1571430652:1'),
(226, 82, '_wp_attached_file', '2019/10/portfolio_1.jpg'),
(227, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:515;s:6:\"height\";i:200;s:4:\"file\";s:23:\"2019/10/portfolio_1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio_1-300x117.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:117;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 81, '_edit_last', '1'),
(229, 81, '_thumbnail_id', '82'),
(230, 81, '_edit_lock', '1571429426:1'),
(231, 83, '_edit_last', '1'),
(232, 83, '_edit_lock', '1571429528:1'),
(233, 84, '_wp_attached_file', '2019/10/photography.jpg'),
(234, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2019/10/photography.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"photography-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"photography-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(235, 83, '_thumbnail_id', '84'),
(236, 86, '_wp_attached_file', '2019/10/tree.png'),
(237, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:66;s:6:\"height\";i:80;s:4:\"file\";s:16:\"2019/10/tree.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 87, '_wp_attached_file', '2019/10/hand.png'),
(239, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:76;s:6:\"height\";i:70;s:4:\"file\";s:16:\"2019/10/hand.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(240, 88, '_wp_attached_file', '2019/10/tuhnder.png'),
(241, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:42;s:6:\"height\";i:76;s:4:\"file\";s:19:\"2019/10/tuhnder.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(242, 89, '_wp_attached_file', '2019/10/cloud.png'),
(243, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:88;s:6:\"height\";i:65;s:4:\"file\";s:17:\"2019/10/cloud.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(244, 90, '_wp_attached_file', '2019/10/tree_cut_3.jpg'),
(245, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:95;s:6:\"height\";i:90;s:4:\"file\";s:22:\"2019/10/tree_cut_3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-10-17 14:16:38', '2019-10-17 11:16:38', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2019-10-18 20:28:47', '2019-10-18 17:28:47', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-10-17 14:16:38', '2019-10-17 11:16:38', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/wordpress/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-10-17 14:16:38', '2019-10-17 11:16:38', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-10-17 14:16:38', '2019-10-17 11:16:38', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-10-17 14:16:38', '2019-10-17 11:16:38', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-10-17 14:16:52', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 14:16:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2019-10-17 14:27:51', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-17 14:27:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2019-10-17 14:27:51', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-17 14:27:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2019-10-17 15:34:03', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-17 15:34:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2019-10-17 15:34:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-17 15:34:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2019-10-17 15:35:50', '2019-10-17 12:35:50', '', 'home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-17 15:41:29', '2019-10-17 12:41:29', '', 0, 'http://localhost/wordpress/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2019-10-17 15:35:50', '2019-10-17 12:35:50', '', 'about', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-10-17 15:41:29', '2019-10-17 12:41:29', '', 0, 'http://localhost/wordpress/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2019-10-17 15:35:50', '2019-10-17 12:35:50', '', 'project', '', 'publish', 'closed', 'closed', '', 'project', '', '', '2019-10-17 15:41:29', '2019-10-17 12:41:29', '', 0, 'http://localhost/wordpress/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2019-10-17 15:37:20', '2019-10-17 12:37:20', '', 'achivment', '', 'publish', 'closed', 'closed', '', 'achivment', '', '', '2019-10-17 15:41:29', '2019-10-17 12:41:29', '', 0, 'http://localhost/wordpress/?p=12', 4, 'nav_menu_item', '', 0),
(13, 1, '2019-10-17 15:37:20', '2019-10-17 12:37:20', '', 'event', '', 'publish', 'closed', 'closed', '', 'event', '', '', '2019-10-17 15:41:29', '2019-10-17 12:41:29', '', 0, 'http://localhost/wordpress/?p=13', 5, 'nav_menu_item', '', 0),
(14, 1, '2019-10-17 15:37:20', '2019-10-17 12:37:20', '', 'testimonial', '', 'publish', 'closed', 'closed', '', 'testimonial', '', '', '2019-10-17 15:41:29', '2019-10-17 12:41:29', '', 0, 'http://localhost/wordpress/?p=14', 6, 'nav_menu_item', '', 0),
(15, 1, '2019-10-17 15:37:20', '2019-10-17 12:37:20', '', 'blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-10-17 15:41:29', '2019-10-17 12:41:29', '', 0, 'http://localhost/wordpress/?p=15', 7, 'nav_menu_item', '', 0),
(16, 1, '2019-10-17 15:37:20', '2019-10-17 12:37:20', '', 'contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-10-17 15:41:29', '2019-10-17 12:41:29', '', 0, 'http://localhost/wordpress/?p=16', 8, 'nav_menu_item', '', 0),
(17, 1, '2019-10-17 16:08:36', '2019-10-17 13:08:36', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-10-17 16:08:36', '2019-10-17 13:08:36', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/logo.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2019-10-17 16:54:01', '2019-10-17 13:54:01', '{\n    \"green-fair::custom_logo\": {\n        \"value\": 17,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-17 13:54:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c860b7cc-0ef0-472f-98c9-cc53f3f0164a', '', '', '2019-10-17 16:54:01', '2019-10-17 13:54:01', '', 0, 'http://localhost/wordpress/2019/10/17/c860b7cc-0ef0-472f-98c9-cc53f3f0164a/', 0, 'customize_changeset', '', 0),
(19, 1, '2019-10-17 19:04:24', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:04:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=19', 0, 'post', '', 0),
(20, 1, '2019-10-17 19:05:31', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:05:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=20', 0, 'post', '', 0),
(21, 1, '2019-10-17 19:08:07', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:08:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=21', 0, 'post', '', 0),
(22, 1, '2019-10-17 19:08:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:08:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=22', 0, 'post', '', 0),
(23, 1, '2019-10-17 19:09:52', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:09:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=23', 0, 'post', '', 0),
(24, 1, '2019-10-17 19:10:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:10:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=24', 0, 'post', '', 0),
(25, 1, '2019-10-17 19:10:37', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:10:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=25', 0, 'post', '', 0),
(26, 1, '2019-10-17 19:14:19', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:14:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=26', 0, 'post', '', 0),
(27, 1, '2019-10-17 19:14:36', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:14:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=27', 0, 'post', '', 0),
(28, 1, '2019-10-17 19:15:38', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:15:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=28', 0, 'post', '', 0),
(29, 1, '2019-10-17 19:17:24', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:17:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=29', 0, 'post', '', 0),
(30, 1, '2019-10-17 19:18:18', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:18:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=30', 0, 'post', '', 0),
(31, 1, '2019-10-17 19:22:28', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:22:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=31', 0, 'post', '', 0),
(32, 1, '2019-10-17 19:25:15', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:25:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=32', 0, 'post', '', 0),
(33, 1, '2019-10-17 19:25:52', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-17 19:25:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=33', 0, 'post', '', 0),
(34, 1, '2019-10-17 20:31:42', '2019-10-17 17:31:42', '', 'img1', '', 'inherit', 'open', 'closed', '', 'img1', '', '', '2019-10-17 20:31:42', '2019-10-17 17:31:42', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-10-17 20:32:15', '2019-10-17 17:32:15', '', 'img2', '', 'inherit', 'open', 'closed', '', 'img2', '', '', '2019-10-17 20:32:15', '2019-10-17 17:32:15', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-10-17 20:32:50', '2019-10-17 17:32:50', '', 'img3', '', 'inherit', 'open', 'closed', '', 'img3', '', '', '2019-10-17 20:32:50', '2019-10-17 17:32:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-10-17 21:38:51', '2019-10-17 18:38:51', '<div class=\"form-group\">\r\n  <div class=\"col-sm-6\">\r\n    [text your-name id:name class:form-control placeholder \"Name\"]\r\n  </div>\r\n  <div class=\"col-sm-6\">\r\n    [email your-email id:email class:form-control placeholder \"Emal\"]\r\n  </div>\r\n</div>\r\n<div class=\"form-group\">\r\n  <div class=\"col-sm-12\">\r\n      [text* your-subject id:subject class:form-control placeholder \"Subject *\"]\r\n\r\n    <div class=\"text_area\">\r\n      [textarea textarea id:msg class:form-control \"Message\"]\r\n    </div>\r\n\r\n    <button type=\"submit\" class=\"btn custom-btn\" data-loading-text=\"Loading...\">Send</button>\r\n  </div>\r\n</div>\n1\ngreen_fair \"[your-subject]\"\ngreen_fair <smahliuk4@gmail.com>\nsmahliuk4@gmail.com\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта green_fair (http://localhost/wordpress)\n\n\n\n\n\ngreen_fair \"[your-subject]\"\ngreen_fair <smahliuk4@gmail.com>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта green_fair (http://localhost/wordpress)\nReply-To: smahliuk4@gmail.com\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nКод введен неверно.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Контактная форма в footer', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-%d0%b2-footer', '', '', '2019-10-17 21:49:42', '2019-10-17 18:49:42', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=38', 0, 'wpcf7_contact_form', '', 0),
(39, 1, '2019-10-17 22:25:47', '2019-10-17 19:25:47', '', 'audiojungle', '', 'inherit', 'open', 'closed', '', 'audiojungle', '', '', '2019-10-17 22:25:47', '2019-10-17 19:25:47', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/audiojungle.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2019-10-17 22:26:06', '2019-10-17 19:26:06', '', 'codecanyon', '', 'inherit', 'open', 'closed', '', 'codecanyon', '', '', '2019-10-17 22:26:06', '2019-10-17 19:26:06', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/codecanyon.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2019-10-17 22:26:17', '2019-10-17 19:26:17', '', 'graphicriver', '', 'inherit', 'open', 'closed', '', 'graphicriver', '', '', '2019-10-17 22:26:17', '2019-10-17 19:26:17', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/graphicriver.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2019-10-18 20:28:40', '2019-10-18 17:28:40', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipscing elit. Lorem ipsum dolor sit amet, conse ctetur adipiscing elit. consectetur Lorem ipsum dolor sitamet, conse ctetur adipiscing elit. </p>\n<!-- /wp:paragraph -->', 'Climate change is affecting bird migration', '', 'publish', 'closed', 'closed', '', 'climate-change-is-affecting-bird-migration', '', '', '2019-10-18 20:56:48', '2019-10-18 17:56:48', '', 0, 'http://localhost/wordpress/?p=42', 0, 'post', '', 0),
(43, 1, '2019-10-18 20:28:40', '2019-10-18 17:28:40', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipscing elit. Lorem ipsum dolor sit amet, conse ctetur adipiscing elit. consectetur Lorem ipsum dolor sitamet, conse ctetur adipiscing elit. </p>\n<!-- /wp:paragraph -->', 'Climate change is affecting bird migration', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-10-18 20:28:40', '2019-10-18 17:28:40', '', 42, 'http://localhost/wordpress/2019/10/18/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-10-18 20:28:47', '2019-10-18 17:28:47', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-18 20:28:47', '2019-10-18 17:28:47', '', 1, 'http://localhost/wordpress/2019/10/18/1-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-10-18 20:29:27', '2019-10-18 17:29:27', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipscing elit. Lorem ipsum dolor sit amet, conse ctetur adipiscing elit. consectetur Lorem ipsum dolor sitamet, conse ctetur adipiscing elit. </p>\n<!-- /wp:paragraph -->', 'How to avoid indoor air pollution?', '', 'publish', 'closed', 'closed', '', 'how-to-avoid-indoor-air-pollution', '', '', '2019-10-18 20:56:24', '2019-10-18 17:56:24', '', 0, 'http://localhost/wordpress/?p=45', 0, 'post', '', 0),
(46, 1, '2019-10-18 20:29:27', '2019-10-18 17:29:27', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipscing elit. Lorem ipsum dolor sit amet, conse ctetur adipiscing elit. consectetur Lorem ipsum dolor sitamet, conse ctetur adipiscing elit. </p>\n<!-- /wp:paragraph -->', 'How to avoid indoor air pollution?', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-10-18 20:29:27', '2019-10-18 17:29:27', '', 45, 'http://localhost/wordpress/2019/10/18/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-10-18 20:29:30', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-18 20:29:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=47', 0, 'post', '', 0),
(48, 1, '2019-10-18 20:30:01', '2019-10-18 17:30:01', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipscing elit. Lorem ipsum dolor sit amet, conse ctetur adipiscing elit. consectetur Lorem ipsum dolor sitamet, conse ctetur adipiscing elit. </p>\n<!-- /wp:paragraph -->', 'Threat to Yellowstone’s grizzly bears.', '', 'publish', 'closed', 'closed', '', 'threat-to-yellowstones-grizzly-bears', '', '', '2019-10-18 20:55:49', '2019-10-18 17:55:49', '', 0, 'http://localhost/wordpress/?p=48', 0, 'post', '', 0),
(49, 1, '2019-10-18 20:30:01', '2019-10-18 17:30:01', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipscing elit. Lorem ipsum dolor sit amet, conse ctetur adipiscing elit. consectetur Lorem ipsum dolor sitamet, conse ctetur adipiscing elit. </p>\n<!-- /wp:paragraph -->', 'Threat to Yellowstone’s grizzly bears.', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2019-10-18 20:30:01', '2019-10-18 17:30:01', '', 48, 'http://localhost/wordpress/2019/10/18/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-10-18 20:55:43', '2019-10-18 17:55:43', '', 'threat_bear', '', 'inherit', 'open', 'closed', '', 'threat_bear', '', '', '2019-10-18 20:55:43', '2019-10-18 17:55:43', '', 48, 'http://localhost/wordpress/wp-content/uploads/2019/10/threat_bear.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-10-18 20:55:53', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-18 20:55:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=51', 0, 'post', '', 0),
(52, 1, '2019-10-18 20:56:20', '2019-10-18 17:56:20', '', 'air_pollutuon', '', 'inherit', 'open', 'closed', '', 'air_pollutuon', '', '', '2019-10-18 20:56:20', '2019-10-18 17:56:20', '', 45, 'http://localhost/wordpress/wp-content/uploads/2019/10/air_pollutuon.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-10-18 20:56:45', '2019-10-18 17:56:45', '', 'climate_effect', '', 'inherit', 'open', 'closed', '', 'climate_effect', '', '', '2019-10-18 20:56:45', '2019-10-18 17:56:45', '', 42, 'http://localhost/wordpress/wp-content/uploads/2019/10/climate_effect.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-10-18 21:25:22', '2019-10-18 18:25:22', 'Lorem ipsum dolor sit amet, consectetur adip scing elit. Lorem ipsum dolor sit amet,consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'One Tree Thousand Hope', '', 'publish', 'closed', 'closed', '', 'one-tree-thousand-hope', '', '', '2019-10-18 22:37:02', '2019-10-18 19:37:02', '', 0, 'http://localhost/wordpress/?post_type=events&#038;p=54', 0, 'events', '', 0),
(55, 1, '2019-10-18 21:24:33', '2019-10-18 18:24:33', '', 'tree_cut_1', '', 'inherit', 'open', 'closed', '', 'tree_cut_1', '', '', '2019-10-18 21:24:33', '2019-10-18 18:24:33', '', 54, 'http://localhost/wordpress/wp-content/uploads/2019/10/tree_cut_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-10-18 21:25:22', '2019-10-18 18:25:22', 'Lorem ipsum dolor sit amet, consectetur adip scing elit. Lorem ipsum dolor sit amet,consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'One Tree Thousand Hope', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-10-18 21:25:22', '2019-10-18 18:25:22', '', 54, 'http://localhost/wordpress/2019/10/18/54-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-10-18 21:52:34', '2019-10-18 18:52:34', 'Lorem ipsum dolor sit amet, consectetur adip scing elit. Lorem ipsum dolor sit amet,consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'One Tree Thousand Hope', '', 'publish', 'closed', 'closed', '', 'one-tree-thousand-hope-2', '', '', '2019-10-18 22:36:48', '2019-10-18 19:36:48', '', 0, 'http://localhost/wordpress/?post_type=events&#038;p=57', 0, 'events', '', 0),
(58, 1, '2019-10-18 21:52:29', '2019-10-18 18:52:29', '', 'tree_cut_2', '', 'inherit', 'open', 'closed', '', 'tree_cut_2', '', '', '2019-10-18 21:52:29', '2019-10-18 18:52:29', '', 57, 'http://localhost/wordpress/wp-content/uploads/2019/10/tree_cut_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2019-10-18 22:07:49', '2019-10-18 19:07:49', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, veniam.', 'Let’s plant 200 tree each...', '', 'trash', 'closed', 'closed', '', 'lets-plant-200-tree-each__trashed', '', '', '2019-10-18 22:25:08', '2019-10-18 19:25:08', '', 0, 'http://localhost/wordpress/?post_type=events&#038;p=59', 0, 'events', '', 0),
(60, 1, '2019-10-18 22:30:47', '2019-10-18 19:30:47', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, veniam.', 'One Tree Thousand Hope', '', 'publish', 'closed', 'closed', '', 'one-tree-thousand-hope', '', '', '2019-10-18 22:30:47', '2019-10-18 19:30:47', '', 0, 'http://localhost/wordpress/?post_type=events_min&#038;p=60', 0, 'events_min', '', 0),
(61, 1, '2019-10-18 22:31:16', '2019-10-18 19:31:16', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, veniam.', 'One Tree Thousand Hope', '', 'publish', 'closed', 'closed', '', 'one-tree-thousand-hope-2', '', '', '2019-10-18 22:31:16', '2019-10-18 19:31:16', '', 0, 'http://localhost/wordpress/?post_type=events_min&#038;p=61', 0, 'events_min', '', 0),
(62, 1, '2019-10-18 22:31:46', '2019-10-18 19:31:46', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, veniam.', 'Urgent Clothe Needed Needed', '', 'publish', 'closed', 'closed', '', 'urgent-clothe-needed-needed', '', '', '2019-10-18 22:31:46', '2019-10-18 19:31:46', '', 0, 'http://localhost/wordpress/?post_type=events_min&#038;p=62', 0, 'events_min', '', 0),
(63, 1, '2019-10-18 22:32:12', '2019-10-18 19:32:12', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, veniam.', 'Keep your house envirome..', '', 'publish', 'closed', 'closed', '', 'keep-your-house-envirome', '', '', '2019-10-18 22:32:12', '2019-10-18 19:32:12', '', 0, 'http://localhost/wordpress/?post_type=events_min&#038;p=63', 0, 'events_min', '', 0),
(64, 1, '2019-10-18 22:32:48', '2019-10-18 19:32:48', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, veniam.', 'Let’s plant 200 tree each...', '', 'publish', 'closed', 'closed', '', 'lets-plant-200-tree-each', '', '', '2019-10-18 22:32:48', '2019-10-18 19:32:48', '', 0, 'http://localhost/wordpress/?post_type=events_min&#038;p=64', 0, 'events_min', '', 0),
(65, 1, '2019-10-18 23:00:07', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-18 23:00:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=latest_work&p=65', 0, 'latest_work', '', 0),
(66, 1, '2019-10-18 23:00:29', '2019-10-18 20:00:29', '', 'environment', '', 'inherit', 'open', 'closed', '', 'environment', '', '', '2019-10-18 23:00:29', '2019-10-18 20:00:29', '', 65, 'http://localhost/wordpress/wp-content/uploads/2019/10/environment.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-10-18 23:01:42', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-18 23:01:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=latest_work&p=67', 0, 'latest_work', '', 0),
(68, 1, '2019-10-18 23:03:38', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-18 23:03:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=latest_work&p=68', 0, 'latest_work', '', 0),
(69, 1, '2019-10-18 23:03:55', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-18 23:03:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=latest_work&p=69', 0, 'latest_work', '', 0),
(70, 1, '2019-10-18 23:04:36', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-18 23:04:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=latest_work&p=70', 0, 'latest_work', '', 0),
(71, 1, '2019-10-18 23:05:01', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-18 23:05:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=latest_work&p=71', 0, 'latest_work', '', 0),
(72, 1, '2019-10-18 23:05:22', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-18 23:05:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=latest_work&p=72', 0, 'latest_work', '', 0),
(73, 1, '2019-10-18 23:06:44', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-18 23:06:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=latest_work&p=73', 0, 'latest_work', '', 0),
(74, 1, '2019-10-18 23:08:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-18 23:08:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=latest_work&p=74', 0, 'latest_work', '', 0),
(75, 1, '2019-10-18 23:08:45', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-18 23:08:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=latest_work&p=75', 0, 'latest_work', '', 0),
(76, 1, '2019-10-18 23:11:02', '2019-10-18 20:11:02', '', 'Sun Homes, Dhaka', '', 'publish', 'closed', 'closed', '', 'sun-homes-dhaka', '', '', '2019-10-18 23:13:23', '2019-10-18 20:13:23', '', 0, 'http://localhost/wordpress/?post_type=latest_work&#038;p=76', 0, 'latest_work', '', 0),
(77, 1, '2019-10-18 23:11:32', '2019-10-18 20:11:32', '', 'Sun Homes, Dhaka', '', 'publish', 'closed', 'closed', '', 'sun-homes-dhaka-2', '', '', '2019-10-18 23:13:01', '2019-10-18 20:13:01', '', 0, 'http://localhost/wordpress/?post_type=latest_work&#038;p=77', 0, 'latest_work', '', 0),
(78, 1, '2019-10-18 23:11:26', '2019-10-18 20:11:26', '', 'cliemate', '', 'inherit', 'open', 'closed', '', 'cliemate', '', '', '2019-10-18 23:11:26', '2019-10-18 20:11:26', '', 77, 'http://localhost/wordpress/wp-content/uploads/2019/10/cliemate.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2019-10-18 23:12:00', '2019-10-18 20:12:00', '', 'Sun Homes, Dhaka', '', 'publish', 'closed', 'closed', '', 'sun-homes-dhaka-3', '', '', '2019-10-18 23:14:46', '2019-10-18 20:14:46', '', 0, 'http://localhost/wordpress/?post_type=latest_work&#038;p=79', 0, 'latest_work', '', 0),
(80, 1, '2019-10-18 23:11:57', '2019-10-18 20:11:57', '', 'species', '', 'inherit', 'open', 'closed', '', 'species', '', '', '2019-10-18 23:11:57', '2019-10-18 20:11:57', '', 79, 'http://localhost/wordpress/wp-content/uploads/2019/10/species.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2019-10-18 23:12:47', '2019-10-18 20:12:47', '', 'Sun Homes, Dhaka', '', 'publish', 'closed', 'closed', '', 'sun-homes-dhaka-4', '', '', '2019-10-18 23:12:47', '2019-10-18 20:12:47', '', 0, 'http://localhost/wordpress/?post_type=latest_work&#038;p=81', 0, 'latest_work', '', 0),
(82, 1, '2019-10-18 23:12:43', '2019-10-18 20:12:43', '', 'portfolio_1', '', 'inherit', 'open', 'closed', '', 'portfolio_1', '', '', '2019-10-18 23:12:43', '2019-10-18 20:12:43', '', 81, 'http://localhost/wordpress/wp-content/uploads/2019/10/portfolio_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2019-10-18 23:14:26', '2019-10-18 20:14:26', '', 'Sun Homes, Dhaka', '', 'publish', 'closed', 'closed', '', 'sun-homes-dhaka-5', '', '', '2019-10-18 23:14:26', '2019-10-18 20:14:26', '', 0, 'http://localhost/wordpress/?post_type=latest_work&#038;p=83', 0, 'latest_work', '', 0),
(84, 1, '2019-10-18 23:14:23', '2019-10-18 20:14:23', '', 'photography', '', 'inherit', 'open', 'closed', '', 'photography', '', '', '2019-10-18 23:14:23', '2019-10-18 20:14:23', '', 83, 'http://localhost/wordpress/wp-content/uploads/2019/10/photography.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2019-10-18 23:14:37', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-18 23:14:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=latest_work&p=85', 0, 'latest_work', '', 0),
(86, 1, '2019-10-18 23:44:57', '2019-10-18 20:44:57', '', 'tree', '', 'inherit', 'open', 'closed', '', 'tree', '', '', '2019-10-18 23:44:57', '2019-10-18 20:44:57', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/tree.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2019-10-18 23:45:13', '2019-10-18 20:45:13', '', 'hand', '', 'inherit', 'open', 'closed', '', 'hand', '', '', '2019-10-18 23:45:13', '2019-10-18 20:45:13', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/hand.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2019-10-18 23:45:29', '2019-10-18 20:45:29', '', 'tuhnder', '', 'inherit', 'open', 'closed', '', 'tuhnder', '', '', '2019-10-18 23:45:29', '2019-10-18 20:45:29', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/tuhnder.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2019-10-18 23:45:40', '2019-10-18 20:45:40', '', 'cloud', '', 'inherit', 'open', 'closed', '', 'cloud', '', '', '2019-10-18 23:45:40', '2019-10-18 20:45:40', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/cloud.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2019-10-19 00:19:07', '2019-10-18 21:19:07', '', 'tree_cut_3', '', 'inherit', 'open', 'closed', '', 'tree_cut_3', '', '', '2019-10-19 00:19:07', '2019-10-18 21:19:07', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/tree_cut_3.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'environment', 'environment', 0),
(2, 'Главное меню', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(3, 'climate', 'climate', 0),
(4, 'photography', 'photography', 0),
(5, 'species', 'species', 0),
(6, 'environment', 'environment', 0),
(7, 'climate', 'climate', 0),
(8, 'photography', 'photography', 0),
(9, 'species', 'species', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(42, 1, 0),
(45, 1, 0),
(48, 1, 0),
(76, 6, 0),
(76, 8, 0),
(77, 6, 0),
(77, 7, 0),
(79, 6, 0),
(79, 8, 0),
(79, 9, 0),
(81, 7, 0),
(83, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category_portfolio', '', 0, 3),
(7, 7, 'category_portfolio', '', 0, 2),
(8, 8, 'category_portfolio', '', 0, 3),
(9, 9, 'category_portfolio', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4b3ae946850444b1b351fb6ff8345e844cf3d7a7a1fb93930b755c895953fc1f\";a:4:{s:10:\"expiration\";i:1571483810;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1571311010;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1571325245'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.1\";}'),
(24, 1, 'closedpostboxes_latest_work', 'a:0:{}'),
(25, 1, 'metaboxhidden_latest_work', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B2yitU70Hy/KCBSzlX7WSl89velRz/.', 'admin', 'smahliuk4@gmail.com', '', '2019-10-17 11:16:37', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1706;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
