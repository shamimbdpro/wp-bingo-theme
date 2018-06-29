-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 29, 2018 at 09:36 AM
-- Server version: 10.0.35-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shamiminfo_wp1`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-07 13:59:00', '2018-05-07 13:59:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(3, 98, 'shamim', 'md.shamimtpi@gmail.com', '', '::1', '2018-05-07 13:12:03', '2018-05-07 13:12:03', 'dsfsdfds', 0, '1', '', '', 0, 1),
(4, 104, 'Hasan', 'shamimtpi1@gmail.com', '', '::1', '2018-05-07 13:39:02', '2018-05-07 13:39:02', 'Hello How are you? i\'m seeing that you are everyday publish all awesome post', 0, '0', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_create_map`
--

CREATE TABLE `wp_create_map` (
  `map_id` int(11) NOT NULL,
  `map_title` varchar(255) DEFAULT NULL,
  `map_width` varchar(255) DEFAULT NULL,
  `map_height` varchar(255) DEFAULT NULL,
  `map_zoom_level` varchar(255) DEFAULT NULL,
  `map_type` varchar(255) DEFAULT NULL,
  `map_scrolling_wheel` varchar(255) DEFAULT NULL,
  `map_visual_refresh` varchar(255) DEFAULT NULL,
  `map_45imagery` varchar(255) DEFAULT NULL,
  `map_street_view_setting` text,
  `map_route_direction_setting` text,
  `map_all_control` text,
  `map_info_window_setting` text,
  `style_google_map` text,
  `map_locations` longtext,
  `map_layer_setting` text,
  `map_polygon_setting` longtext,
  `map_polyline_setting` longtext,
  `map_cluster_setting` text,
  `map_overlay_setting` text,
  `map_geotags` text,
  `map_infowindow_setting` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_create_map`
--

INSERT INTO `wp_create_map` (`map_id`, `map_title`, `map_width`, `map_height`, `map_zoom_level`, `map_type`, `map_scrolling_wheel`, `map_visual_refresh`, `map_45imagery`, `map_street_view_setting`, `map_route_direction_setting`, `map_all_control`, `map_info_window_setting`, `style_google_map`, `map_locations`, `map_layer_setting`, `map_polygon_setting`, `map_polyline_setting`, `map_cluster_setting`, `map_overlay_setting`, `map_geotags`, `map_infowindow_setting`) VALUES
(1, 'gogle map', '600', '300', '5', 'ROADMAP', '', NULL, '', 'a:2:{s:11:\"pov_heading\";s:0:\"\";s:9:\"pov_pitch\";s:0:\"\";}', 'N;', 'a:12:{s:19:\"map_center_latitude\";s:9:\"51.508742\";s:20:\"map_center_longitude\";s:9:\"-0.120850\";s:21:\"zoom_control_position\";s:8:\"TOP_LEFT\";s:18:\"zoom_control_style\";s:5:\"LARGE\";s:25:\"map_type_control_position\";s:9:\"TOP_RIGHT\";s:22:\"map_type_control_style\";s:14:\"HORIZONTAL_BAR\";s:28:\"full_screen_control_position\";s:9:\"TOP_RIGHT\";s:28:\"street_view_control_position\";s:8:\"TOP_LEFT\";s:18:\"infowindow_setting\";s:0:\"\";s:21:\"infowindow_openoption\";s:5:\"click\";s:19:\"marker_default_icon\";s:108:\"http://www.shamiminfo.com/demo/wp1/wp-content/plugins/wp-google-map-plugin/assets/images//default_marker.png\";s:27:\"infowindow_bounce_animation\";s:0:\"\";}', 'N;', 'N;', 'a:0:{}', 'N;', 'N;', NULL, 'N;', 'N;', 'N;', 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `wp_group_map`
--

CREATE TABLE `wp_group_map` (
  `group_map_id` int(11) NOT NULL,
  `group_map_title` varchar(255) DEFAULT NULL,
  `group_marker` text,
  `extensions_fields` text,
  `group_parent` int(11) DEFAULT '0',
  `group_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_map_locations`
--

CREATE TABLE `wp_map_locations` (
  `location_id` int(11) NOT NULL,
  `location_title` varchar(255) DEFAULT NULL,
  `location_address` varchar(255) DEFAULT NULL,
  `location_draggable` varchar(255) DEFAULT NULL,
  `location_infowindow_default_open` varchar(255) DEFAULT NULL,
  `location_animation` varchar(255) DEFAULT NULL,
  `location_latitude` varchar(255) DEFAULT NULL,
  `location_longitude` varchar(255) DEFAULT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_state` varchar(255) DEFAULT NULL,
  `location_country` varchar(255) DEFAULT NULL,
  `location_postal_code` varchar(255) DEFAULT NULL,
  `location_zoom` int(11) DEFAULT NULL,
  `location_author` int(11) DEFAULT NULL,
  `location_messages` text,
  `location_settings` text,
  `location_group_map` text,
  `location_extrafields` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.shamiminfo.com/demo/wp1', 'yes'),
(2, 'home', 'http://www.shamiminfo.com/demo/wp1', 'yes'),
(3, 'blogname', 'Home | Bingo', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'md.shamimtpi@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:280:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:23:\"index.php/html-block/?$\";s:30:\"index.php?post_type=html-block\";s:53:\"index.php/html-block/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=html-block&feed=$matches[1]\";s:48:\"index.php/html-block/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=html-block&feed=$matches[1]\";s:40:\"index.php/html-block/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=html-block&paged=$matches[1]\";s:19:\"index.php/slider/?$\";s:26:\"index.php?post_type=slider\";s:49:\"index.php/slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:44:\"index.php/slider/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:36:\"index.php/slider/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=slider&paged=$matches[1]\";s:24:\"index.php/testimonial/?$\";s:31:\"index.php?post_type=testimonial\";s:54:\"index.php/testimonial/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=testimonial&feed=$matches[1]\";s:49:\"index.php/testimonial/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=testimonial&feed=$matches[1]\";s:41:\"index.php/testimonial/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=testimonial&paged=$matches[1]\";s:20:\"index.php/service/?$\";s:27:\"index.php?post_type=service\";s:50:\"index.php/service/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:45:\"index.php/service/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:37:\"index.php/service/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=service&paged=$matches[1]\";s:22:\"index.php/portfolio/?$\";s:29:\"index.php?post_type=portfolio\";s:52:\"index.php/portfolio/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:47:\"index.php/portfolio/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:39:\"index.php/portfolio/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=portfolio&paged=$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\"index.php/html-block/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:58:\"index.php/html-block/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"index.php/html-block/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"index.php/html-block/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"index.php/html-block/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:54:\"index.php/html-block/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"index.php/html-block/([^/]+)/embed/?$\";s:43:\"index.php?html-block=$matches[1]&embed=true\";s:41:\"index.php/html-block/([^/]+)/trackback/?$\";s:37:\"index.php?html-block=$matches[1]&tb=1\";s:61:\"index.php/html-block/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?html-block=$matches[1]&feed=$matches[2]\";s:56:\"index.php/html-block/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?html-block=$matches[1]&feed=$matches[2]\";s:49:\"index.php/html-block/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?html-block=$matches[1]&paged=$matches[2]\";s:56:\"index.php/html-block/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?html-block=$matches[1]&cpage=$matches[2]\";s:45:\"index.php/html-block/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?html-block=$matches[1]&page=$matches[2]\";s:37:\"index.php/html-block/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/html-block/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/html-block/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/html-block/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/html-block/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/html-block/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"index.php/slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"index.php/slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"index.php/slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"index.php/slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"index.php/slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"index.php/slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"index.php/slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:37:\"index.php/slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:57:\"index.php/slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:52:\"index.php/slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:45:\"index.php/slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:52:\"index.php/slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:41:\"index.php/slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:33:\"index.php/slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"index.php/slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"index.php/slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"index.php/slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"index.php/slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"index.php/slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:49:\"index.php/testimonial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:59:\"index.php/testimonial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:79:\"index.php/testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"index.php/testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"index.php/testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:55:\"index.php/testimonial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"index.php/testimonial/([^/]+)/embed/?$\";s:44:\"index.php?testimonial=$matches[1]&embed=true\";s:42:\"index.php/testimonial/([^/]+)/trackback/?$\";s:38:\"index.php?testimonial=$matches[1]&tb=1\";s:62:\"index.php/testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?testimonial=$matches[1]&feed=$matches[2]\";s:57:\"index.php/testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?testimonial=$matches[1]&feed=$matches[2]\";s:50:\"index.php/testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&paged=$matches[2]\";s:57:\"index.php/testimonial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&cpage=$matches[2]\";s:46:\"index.php/testimonial/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?testimonial=$matches[1]&page=$matches[2]\";s:38:\"index.php/testimonial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"index.php/testimonial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"index.php/testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"index.php/testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"index.php/testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"index.php/testimonial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"index.php/service/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/service/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/service/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/service/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:38:\"index.php/service/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:58:\"index.php/service/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:53:\"index.php/service/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:46:\"index.php/service/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:53:\"index.php/service/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:42:\"index.php/service/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:34:\"index.php/service/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/service/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/service/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"index.php/portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"index.php/portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"index.php/portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"index.php/portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"index.php/portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"index.php/portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"index.php/portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:40:\"index.php/portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:60:\"index.php/portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:55:\"index.php/portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:48:\"index.php/portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:55:\"index.php/portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:44:\"index.php/portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:36:\"index.php/portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"index.php/portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"index.php/portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"index.php/portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"index.php/portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"index.php/portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"index.php/product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:38:\"index.php/product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:46:\"index.php/product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:53:\"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:42:\"index.php/product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:34:\"index.php/product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:42:\"index.php/category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:39:\"index.php/tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:46:\"index.php/html-block/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?html-block=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/html-block/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:63:\"index.php/html-block/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"index.php/slider/([^/]+)/wc-api(/(.*))?/?$\";s:47:\"index.php?slider=$matches[1]&wc-api=$matches[3]\";s:48:\"index.php/slider/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:59:\"index.php/slider/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"index.php/testimonial/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?testimonial=$matches[1]&wc-api=$matches[3]\";s:53:\"index.php/testimonial/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:64:\"index.php/testimonial/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:43:\"index.php/service/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?service=$matches[1]&wc-api=$matches[3]\";s:49:\"index.php/service/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"index.php/service/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:45:\"index.php/portfolio/([^/]+)/wc-api(/(.*))?/?$\";s:50:\"index.php?portfolio=$matches[1]&wc-api=$matches[3]\";s:51:\"index.php/portfolio/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:62:\"index.php/portfolio/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:43:\"index.php/product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:49:\"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:65:\"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:60:\"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:41:\"index.php/product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:53:\"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:35:\"index.php/product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:62:\"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:57:\"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:38:\"index.php/product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:50:\"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:32:\"index.php/product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"index.php/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:36:\"index.php/comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:39:\"index.php/search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:64:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:51:\"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:38:\"index.php/([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:72:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:72:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:83:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:38:\"index.php/(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:43:\"index.php/(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:35:\"index.php/(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:39:\"index.php/(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:38:\"index.php/(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:44:\"index.php/(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:42:\"index.php/(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:44:\"index.php/(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:47:\"index.php/(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:50:\"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:55:\"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:35:\"index.php/(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:41:\"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:41:\"wordpress-importer/wordpress-importer.php\";i:4;s:31:\"wp-html-block/wp-html-block.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:70:\"/home/shamiminfo/public_html/demo/wp1/wp-content/themes/bingo/page.php\";i:2;s:71:\"/home/shamiminfo/public_html/demo/wp1/wp-content/themes/bingo/style.css\";i:3;s:75:\"/home/shamiminfo/public_html/demo/wp1/wp-content/themes/bingo/portfolio.php\";i:4;s:98:\"/home/shamiminfo/public_html/demo/wp1/wp-content/themes/bingo/template-parts/page/content-page.php\";i:5;s:95:\"/home/shamiminfo/public_html/demo/wp1/wp-content/themes/bingo/template-parts/page/portfolio.php\";}', 'no'),
(40, 'template', 'bingo', 'yes'),
(41, 'stylesheet', 'bingo', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(79, 'widget_text', 'a:10:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:5:\"About\";s:4:\"text\";s:132:\"Integer posuere erat a ante venenati dapibus posuere velit aliquet. Fusce dapibus, tellus cursus commodo, tortor mauris sed posuere.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Service\";s:4:\"text\";s:137:\"<ul>\r\n 	<li><a href=\"#\">Graphic Design</a></li>\r\n 	<li><a href=\"#\">Web Design</a></li>\r\n 	<li><a href=\"#\">Web Development</a></li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:6;a:4:{s:5:\"title\";s:5:\"About\";s:4:\"text\";s:132:\"Integer posuere erat a ante venenati dapibus posuere velit aliquet. Fusce dapibus, tellus cursus commodo, tortor mauris sed posuere.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:25:\"Connect with our contruct\";s:4:\"text\";s:158:\"<ul>\r\n 	<li><a href=\"#\">Facebook</a></li>\r\n 	<li><a href=\"#\">Twitter</a></li>\r\n 	<li><a href=\"#\">Youtube</a></li>\r\n 	<li><a href=\"#\">Pinterest</a></li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:11:\"Our service\";s:4:\"text\";s:137:\"<ul>\r\n 	<li><a href=\"#\">Graphic Design</a></li>\r\n 	<li><a href=\"#\">Web Design</a></li>\r\n 	<li><a href=\"#\">Web Development</a></li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:9;a:4:{s:5:\"title\";s:10:\"Quick link\";s:4:\"text\";s:153:\"<ul>\r\n 	<li><a href=\"#\">Partners</a></li>\r\n 	<li><a href=\"#\">About</a></li>\r\n 	<li><a href=\"#\">FAQâ€™s</a></li>\r\n 	<li><a href=\"#\">Badges</a></li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
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
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:123:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpgmp_admin_overview\";b:1;s:18:\"wpgmp_how_overview\";b:1;s:19:\"wpgmp_form_location\";b:1;s:21:\"wpgmp_manage_location\";b:1;s:14:\"wpgmp_form_map\";b:1;s:16:\"wpgmp_manage_map\";b:1;s:20:\"wpgmp_form_group_map\";b:1;s:22:\"wpgmp_manage_group_map\";b:1;s:21:\"wpgmp_manage_settings\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:6:\"text-9\";i:1;s:6:\"text-2\";i:2;s:6:\"text-3\";i:3;s:6:\"text-4\";i:4;s:6:\"text-5\";i:5;s:8:\"search-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:10:\"archives-2\";i:9;s:12:\"categories-2\";}s:23:\"footer_widget_first_col\";a:1:{i:0;s:6:\"text-6\";}s:24:\"footer_widget_second_col\";a:1:{i:0;s:6:\"text-8\";}s:23:\"footer_widget_third_col\";a:1:{i:0;s:7:\"pages-4\";}s:22:\"footer_widget_four_col\";a:1:{i:0;s:6:\"text-7\";}s:13:\"array_version\";i:3;}', 'yes'),
(584, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(585, 'product_cat_children', 'a:0:{}', 'yes'),
(586, 'default_product_cat', '20', 'yes'),
(607, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(589, 'woocommerce_version', '3.3.5', 'yes'),
(590, 'woocommerce_db_version', '3.3.5', 'yes'),
(100, 'widget_pages', 'a:2:{i:4;a:3:{s:5:\"title\";s:0:\"\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(109, 'cron', 'a:5:{i:1530275511;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1530280740;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1530280750;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530348319;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525948312;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(175, 'max_file_size', '200M', 'yes'),
(604, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(180, 'theme_mods_shamim', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525722690;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(603, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(183, 'theme_mods_wp2', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525872271;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(736, '_site_transient_timeout_theme_roots', '1530276123', 'no'),
(737, '_site_transient_theme_roots', 'a:2:{s:5:\"bingo\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no'),
(255, 'theme_mods_Bino_theme', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525948308;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:23:\"footer_widget_first_col\";a:0:{}s:24:\"footer_widget_second_col\";a:0:{}s:23:\"footer_widget_third_col\";a:0:{}s:22:\"footer_widget_four_col\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(699, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1530274322;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(129, 'can_compress_scripts', '0', 'no'),
(623, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:6;}}', 'yes'),
(504, 'woocommerce_calc_taxes', 'no', 'yes'),
(505, 'woocommerce_currency', 'GBP', 'yes'),
(506, 'woocommerce_currency_pos', 'left', 'yes'),
(493, 'woocommerce_store_address', '', 'yes'),
(494, 'woocommerce_store_address_2', '', 'yes'),
(495, 'woocommerce_store_city', '', 'yes'),
(496, 'woocommerce_default_country', 'GB', 'yes'),
(497, 'woocommerce_store_postcode', '', 'yes'),
(498, 'woocommerce_allowed_countries', 'all', 'yes'),
(499, 'woocommerce_all_except_countries', '', 'yes'),
(500, 'woocommerce_specific_allowed_countries', '', 'yes'),
(501, 'woocommerce_ship_to_countries', '', 'yes'),
(502, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(503, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(483, 'fbc_enabled', 'yes', 'yes'),
(484, 'fbc_app_id', '89787987897987', 'yes'),
(485, 'fbc_width', '550', 'yes'),
(486, 'fbc_share_enabled', '', 'yes'),
(487, 'fbc_color_scheme', 'default', 'yes'),
(488, 'fbc_twitter', 'shameemreza_', 'yes'),
(573, 'woocommerce_email_from_address', 'md.shamimtpi@gmail.com', 'no'),
(574, 'woocommerce_email_header_image', '', 'no'),
(575, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(576, 'woocommerce_email_base_color', '#96588a', 'no'),
(577, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(578, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(579, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(580, 'woocommerce_api_enabled', 'yes', 'yes'),
(474, 'pixel_your_site', 'a:5:{s:7:\"general\";a:15:{s:8:\"pixel_id\";s:0:\"\";s:7:\"enabled\";i:0;s:18:\"add_traffic_source\";i:1;s:23:\"enable_advance_matching\";i:1;s:9:\"in_footer\";i:0;s:21:\"general_event_enabled\";i:1;s:18:\"general_event_name\";s:12:\"GeneralEvent\";s:30:\"general_event_on_posts_enabled\";i:1;s:30:\"general_event_on_pages_enabled\";i:1;s:28:\"general_event_on_tax_enabled\";i:1;s:28:\"general_event_on_woo_enabled\";i:0;s:28:\"general_event_on_edd_enabled\";i:0;s:22:\"general_event_add_tags\";i:0;s:18:\"timeonpage_enabled\";i:1;s:20:\"search_event_enabled\";i:1;}s:3:\"std\";a:1:{s:7:\"enabled\";i:0;}s:3:\"dyn\";a:3:{s:7:\"enabled\";i:0;s:18:\"enabled_on_content\";i:0;s:17:\"enabled_on_widget\";i:0;}s:3:\"woo\";a:47:{s:7:\"enabled\";i:0;s:10:\"content_id\";s:2:\"id\";s:12:\"variation_id\";s:9:\"variation\";s:24:\"enable_additional_params\";i:1;s:11:\"enable_tags\";i:1;s:3:\"tax\";s:4:\"incl\";s:15:\"on_view_content\";i:1;s:25:\"enable_view_content_value\";i:1;s:25:\"view_content_value_option\";s:5:\"price\";s:26:\"view_content_percent_value\";s:0:\"\";s:25:\"view_content_global_value\";s:0:\"\";s:16:\"on_view_category\";i:1;s:18:\"on_add_to_cart_btn\";i:1;s:19:\"on_add_to_cart_page\";i:0;s:23:\"on_add_to_cart_checkout\";i:0;s:24:\"enable_add_to_cart_value\";i:1;s:24:\"add_to_cart_value_option\";s:5:\"price\";s:25:\"add_to_cart_percent_value\";s:0:\"\";s:24:\"add_to_cart_global_value\";s:0:\"\";s:16:\"on_checkout_page\";i:1;s:21:\"enable_checkout_value\";i:1;s:21:\"checkout_value_option\";s:5:\"price\";s:22:\"checkout_percent_value\";s:0:\"\";s:21:\"checkout_global_value\";s:0:\"\";s:17:\"on_thank_you_page\";i:1;s:21:\"enable_purchase_value\";i:1;s:18:\"purchase_fire_once\";i:1;s:18:\"purchase_transport\";s:8:\"included\";s:21:\"purchase_value_option\";s:5:\"total\";s:22:\"purchase_percent_value\";s:0:\"\";s:21:\"purchase_global_value\";s:0:\"\";s:20:\"purchase_add_address\";i:1;s:27:\"purchase_add_payment_method\";i:1;s:28:\"purchase_add_shipping_method\";i:1;s:20:\"purchase_add_coupons\";i:1;s:16:\"enable_aff_event\";i:0;s:9:\"aff_event\";s:10:\"predefined\";s:20:\"aff_predefined_value\";s:4:\"Lead\";s:16:\"aff_custom_value\";s:0:\"\";s:16:\"aff_value_option\";s:4:\"none\";s:16:\"aff_global_value\";s:0:\"\";s:19:\"enable_paypal_event\";i:0;s:8:\"pp_event\";s:10:\"predefined\";s:19:\"pp_predefined_value\";s:15:\"InitiatePayment\";s:15:\"pp_custom_value\";s:0:\"\";s:15:\"pp_value_option\";s:4:\"none\";s:15:\"pp_global_value\";s:0:\"\";}s:3:\"edd\";a:32:{s:7:\"enabled\";i:0;s:10:\"content_id\";s:2:\"id\";s:24:\"enable_additional_params\";i:1;s:11:\"enable_tags\";i:1;s:3:\"tax\";s:4:\"incl\";s:15:\"on_view_content\";i:1;s:21:\"on_view_content_delay\";N;s:25:\"enable_view_content_value\";i:1;s:25:\"view_content_value_option\";s:5:\"price\";s:26:\"view_content_percent_value\";N;s:25:\"view_content_global_value\";N;s:16:\"on_view_category\";i:1;s:18:\"on_add_to_cart_btn\";i:1;s:23:\"on_add_to_cart_checkout\";i:0;s:24:\"enable_add_to_cart_value\";i:1;s:24:\"add_to_cart_value_option\";s:5:\"price\";s:25:\"add_to_cart_percent_value\";N;s:24:\"add_to_cart_global_value\";N;s:16:\"on_checkout_page\";i:1;s:21:\"enable_checkout_value\";i:1;s:21:\"checkout_value_option\";s:5:\"price\";s:22:\"checkout_percent_value\";N;s:21:\"checkout_global_value\";N;s:15:\"on_success_page\";i:1;s:21:\"enable_purchase_value\";i:1;s:18:\"purchase_fire_once\";i:1;s:21:\"purchase_value_option\";s:5:\"total\";s:22:\"purchase_percent_value\";N;s:21:\"purchase_global_value\";N;s:20:\"purchase_add_address\";b:1;s:27:\"purchase_add_payment_method\";b:1;s:20:\"purchase_add_coupons\";b:1;}}', 'yes'),
(475, 'pys_free_activation_time', '1526132966', 'yes'),
(476, 'pys_free_notices_version', '5.0.0', 'yes'),
(477, 'pys_free_dismissed_options', 'a:0:{}', 'yes'),
(478, 'pixel_your_site_std_events', 'a:2:{i:0;b:0;s:13:\"5af6f10050454\";a:15:{s:7:\"pageurl\";s:34:\"http://www.shamiminfo.com/demo/wp1\";s:9:\"eventtype\";s:9:\"AddToCart\";s:5:\"value\";s:2:\"20\";s:8:\"currency\";s:3:\"USD\";s:15:\"custom_currency\";s:0:\"\";s:12:\"content_name\";s:20:\"Facebook Page Review\";s:11:\"content_ids\";s:18:\"facebook.com/pages\";s:12:\"content_type\";s:4:\"page\";s:16:\"content_category\";s:0:\"\";s:9:\"num_items\";s:0:\"\";s:8:\"order_id\";s:0:\"\";s:13:\"search_string\";s:0:\"\";s:6:\"status\";s:0:\"\";s:4:\"code\";s:0:\"\";s:11:\"custom_name\";s:0:\"\";}}', 'yes'),
(738, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1530274325;s:7:\"checked\";a:2:{s:5:\"bingo\";s:5:\"4.9.5\";s:15:\"twentyseventeen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.6.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(739, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1530274325;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.1\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";s:31:\"wp-html-block/wp-html-block.php\";s:5:\"1.0.1\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:69:\"https://s.w.org/plugins/geopattern-icon/wordpress-importer_5696b3.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-html-block/wp-html-block.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wp-html-block\";s:4:\"slug\";s:13:\"wp-html-block\";s:6:\"plugin\";s:31:\"wp-html-block/wp-html-block.php\";s:11:\"new_version\";s:5:\"1.0.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-html-block/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/wp-html-block.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-html-block/assets/icon-256x256.png?rev=1315948\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-html-block/assets/icon-128x128.png?rev=1315948\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-html-block/assets/banner-772x250.png?rev=1315948\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(702, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"md.shamimtpi@gmail.com\";s:7:\"version\";s:5:\"4.9.6\";s:9:\"timestamp\";i:1527157681;}', 'no'),
(566, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(567, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(583, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(568, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(569, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(570, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(571, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(572, 'woocommerce_email_from_name', 'Home | Bingo', 'no'),
(431, 'arrow-google-maps-admin-options', 'a:1:{s:9:\"instances\";a:0:{}}', 'yes'),
(554, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(413, 'WPGMZA_OTHER_SETTINGS', 'a:10:{s:23:\"wpgmza_settings_map_pan\";s:3:\"yes\";s:24:\"wpgmza_settings_map_type\";s:3:\"yes\";s:15:\"use_fontawesome\";s:3:\"5.*\";s:34:\"wpgmza_settings_map_open_marker_by\";s:1:\"1\";s:18:\"wpgmza_api_version\";s:4:\"3.30\";s:17:\"wpgmza_custom_css\";s:0:\"\";s:16:\"wpgmza_custom_js\";s:0:\"\";s:28:\"wpgmza_settings_access_level\";s:14:\"manage_options\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";s:26:\"wpgmza_store_locator_radii\";s:31:\"1,5,10,25,50,75,100,150,200,300\";}', 'yes'),
(414, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(415, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(416, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(417, 'wpgmza_db_version', '7.0.04', 'yes'),
(418, 'wpgmaps_current_version', '7.0.04', 'yes'),
(555, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(419, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(420, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(421, 'WPGMZA_FIRST_TIME', '7.0.04', 'yes'),
(422, 'wpgmza_stats', 'a:3:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:7;s:13:\"last_accessed\";s:19:\"2018-05-11 09:31:00\";s:14:\"first_accessed\";s:19:\"2018-05-11 08:44:06\";}s:14:\"settings_basic\";a:3:{s:5:\"views\";i:3;s:13:\"last_accessed\";s:19:\"2018-05-11 08:46:53\";s:14:\"first_accessed\";s:19:\"2018-05-11 08:46:09\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:1;s:13:\"last_accessed\";s:19:\"2018-05-11 09:31:06\";s:14:\"first_accessed\";s:19:\"2018-05-11 09:31:06\";}}', 'yes'),
(428, 'wpgmza_google_maps_api_key', '', 'yes'),
(556, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(602, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(557, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(558, 'woocommerce_myaccount_page_id', '', 'yes'),
(559, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(560, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(561, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(562, 'woocommerce_registration_generate_username', 'yes', 'no'),
(563, 'woocommerce_registration_generate_password', 'no', 'no'),
(564, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(565, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(439, 'wpgmp_allow_meta', 's:6:\"a:0:{}\";', 'yes'),
(432, 'widget_wpgmp_google_map_widget_class', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(435, 'wpgmp_language', 'en', 'yes'),
(436, 'wpgmp_api_key', 'YOUR_KEY&callback=myMap', 'yes'),
(437, 'wpgmp_scripts_place', 'footer', 'yes'),
(438, 'wpgmp_location_extrafields', 's:6:\"a:0:{}\";', 'yes'),
(581, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(582, 'current_theme_supports_woocommerce', 'no', 'yes'),
(529, 'woocommerce_file_download_method', 'force', 'no'),
(530, 'woocommerce_downloads_require_login', 'no', 'no'),
(531, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(532, 'woocommerce_prices_include_tax', 'no', 'yes'),
(533, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(534, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(535, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(536, 'woocommerce_tax_classes', 'Reduced rate\nZero rate', 'yes'),
(537, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(538, 'woocommerce_tax_display_cart', 'excl', 'no'),
(539, 'woocommerce_price_display_suffix', '', 'yes'),
(540, 'woocommerce_tax_total_display', 'itemized', 'no'),
(541, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(542, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(543, 'woocommerce_ship_to_destination', 'billing', 'no'),
(544, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(545, 'woocommerce_enable_coupons', 'yes', 'yes'),
(546, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(547, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(548, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(549, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(550, 'woocommerce_cart_page_id', '', 'yes'),
(551, 'woocommerce_checkout_page_id', '', 'yes'),
(552, 'woocommerce_terms_page_id', '', 'no'),
(553, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(507, 'woocommerce_price_thousand_sep', ',', 'yes'),
(508, 'woocommerce_price_decimal_sep', '.', 'yes'),
(509, 'woocommerce_price_num_decimals', '2', 'yes'),
(510, 'woocommerce_shop_page_id', '', 'yes'),
(511, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(512, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(513, 'woocommerce_weight_unit', 'kg', 'yes'),
(514, 'woocommerce_dimension_unit', 'cm', 'yes'),
(515, 'woocommerce_enable_reviews', 'yes', 'yes'),
(516, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(517, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(518, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(519, 'woocommerce_review_rating_required', 'yes', 'no'),
(520, 'woocommerce_manage_stock', 'yes', 'yes'),
(521, 'woocommerce_hold_stock_minutes', '60', 'no'),
(522, 'woocommerce_notify_low_stock', 'yes', 'no'),
(523, 'woocommerce_notify_no_stock', 'yes', 'no'),
(524, 'woocommerce_stock_email_recipient', 'md.shamimtpi@gmail.com', 'no'),
(525, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(526, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(527, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(528, 'woocommerce_stock_format', '', 'yes'),
(338, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1525948456;s:7:\"version\";s:5:\"5.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(325, '_cs_options', 'a:64:{s:9:\"preloader\";b:1;s:8:\"breadcum\";a:6:{s:5:\"image\";s:78:\"http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/about-header.jpg\";s:6:\"repeat\";s:0:\"\";s:8:\"position\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"color\";s:0:\"\";}s:15:\"widget_switcher\";b:1;s:9:\"logo_type\";b:1;s:10:\"logo_image\";s:3:\"181\";s:11:\"logo_image1\";s:3:\"180\";s:9:\"logo_text\";s:5:\"Bingo\";s:19:\"Offer_heading_title\";s:16:\"What Do We Offer\";s:22:\"Offer_heading_subtitle\";s:133:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates, earum.\";s:14:\"we_offer_image\";s:3:\"182\";s:14:\"We_offer_group\";a:4:{i:1;a:3:{s:10:\"Offer_icon\";s:24:\"tf-ion-ios-alarm-outline\";s:17:\"Offer_items_title\";s:15:\"Time Management\";s:16:\"Offer_icons_text\";s:93:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae risus nec dui venenatis.\";}i:2;a:3:{s:10:\"Offer_icon\";s:24:\"tf-ion-ios-alarm-outline\";s:17:\"Offer_items_title\";s:15:\"Marketing Ideas\";s:16:\"Offer_icons_text\";s:93:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae risus nec dui venenatis.\";}i:3;a:3:{s:10:\"Offer_icon\";s:24:\"tf-ion-ios-email-outline\";s:17:\"Offer_items_title\";s:12:\"Mail Support\";s:16:\"Offer_icons_text\";s:93:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae risus nec dui venenatis.\";}i:4;a:3:{s:10:\"Offer_icon\";s:28:\"tf-ion-ios-briefcase-outline\";s:17:\"Offer_items_title\";s:13:\"Secure System\";s:16:\"Offer_icons_text\";s:93:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae risus nec dui venenatis.\";}}s:12:\"agency_title\";s:19:\"We Are Bingo Agency\";s:15:\"agency_subtitle\";s:146:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam reprehenderit accusamus labore iusto, aut, eum itaque illo totam tempora eius.\";s:12:\"Agency_image\";s:3:\"183\";s:12:\"Agency_group\";a:4:{i:1;a:1:{s:11:\"agency_text\";s:91:\"Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem laca quam venenatis shamim.\";}i:2;a:1:{s:11:\"agency_text\";s:91:\"Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem laca quam venenatis shamim.\";}i:3;a:1:{s:11:\"agency_text\";s:91:\"Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem laca quam venenatis shamim.\";}i:4;a:1:{s:11:\"agency_text\";s:91:\"Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem laca quam venenatis shamim.\";}}s:10:\"learn_more\";s:34:\"https://www.facebook.com/shamimtpi\";s:18:\"contact_background\";a:6:{s:5:\"image\";s:77:\"http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/04/slider-bg-2.jpg\";s:6:\"repeat\";s:9:\"no-repeat\";s:8:\"position\";s:13:\"center center\";s:10:\"attachment\";s:5:\"fixed\";s:4:\"size\";s:5:\"cover\";s:5:\"color\";s:0:\"\";}s:12:\"Home_c_title\";s:32:\"Let\\\'s Create Something Together\";s:14:\"Home_c_details\";s:159:\"Proin gravida nibh vel velit auctor aliquet. Aenean sollicudin bibendum auctor,\r\nnisi elit consequat ipsum, nesagittis sem nid elit. Duis sed odio sitain elit.\";s:10:\"Home_c_url\";s:26:\"www.facebook.com/shamimtpi\";s:16:\"award_background\";a:6:{s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:0:\"\";s:8:\"position\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"color\";s:0:\"\";}s:13:\"award_c_title\";s:20:\"Award-Winning Agency\";s:15:\"Award_c_details\";s:211:\"Vestibulum nisl tortor, consectetur quis imperdiet bibendum, laoreet sed arcu. Sed condimentum iaculis ex, in faucibus lorem accumsan non. Donec mattis tincidunt metus. Morbi sed tortor a risus luctus dignissim.\";s:13:\"counter_group\";a:4:{i:1;a:3:{s:12:\"counter_icon\";s:24:\"tf-ion-ios-alarm-outline\";s:14:\"counter_number\";s:3:\"150\";s:15:\"counter_Details\";s:13:\"Happy Clients\";}i:2;a:3:{s:12:\"counter_icon\";s:27:\"f-ion-ios-analytics-outline\";s:14:\"counter_number\";s:3:\"130\";s:15:\"counter_Details\";s:19:\"Projects completed \";}i:3;a:3:{s:12:\"counter_icon\";s:26:\"tf-ion-ios-compose-outline\";s:14:\"counter_number\";s:2:\"99\";s:15:\"counter_Details\";s:17:\"Positive feedback\";}i:4;a:3:{s:12:\"counter_icon\";s:23:\"tf-ion-ios-bolt-outline\";s:14:\"counter_number\";s:3:\"250\";s:15:\"counter_Details\";s:14:\"Cups of Coffee\";}}s:10:\"blog_title\";s:13:\" Latest Posts\";s:13:\"blog_subtitle\";s:119:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus facere accusamus, reprehenderit libero inventore nam.\";s:25:\"about_first_section_title\";s:32:\"We Create Designs and technology\";s:27:\"about_first_section_detials\";s:585:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat voluptate molestias, quaerat quo natus dolor harum voluptatibus modi dicta ducimus.</p>\r\n				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum quae officia earum dolore est quaerat cupiditate voluptatibus id, magni alias veniam voluptate, libero explicabo, distinctio atque!</p>\r\n				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas, fugit itaque ratione incidunt voluptas. Quaerat quidem dolor, quisquam amet inventore quas adipisci ea sint qui placeat beatae molestias aut, aperiam!\";s:24:\"about_first_section_imae\";s:3:\"192\";s:13:\"mission_group\";a:2:{i:1;a:3:{s:7:\"Mission\";s:11:\"Our Mission\";s:12:\"mission_text\";s:210:\"Vestibulum nisl tortor, consectetur quis imperdiet bibendum, laoreet sed arcu.Sed condimentum iaculis ex, in faucibus lorem accumsan non. Donec mattis tincidunt metus. Morbi sed tortor a risus luctus dignissim.\";s:12:\"Misson_image\";s:3:\"193\";}i:2;a:3:{s:7:\"Mission\";s:10:\"Our Vision\";s:12:\"mission_text\";s:210:\"Vestibulum nisl tortor, consectetur quis imperdiet bibendum, laoreet sed arcu.Sed condimentum iaculis ex, in faucibus lorem accumsan non. Donec mattis tincidunt metus. Morbi sed tortor a risus luctus dignissim.\";s:12:\"Misson_image\";s:3:\"194\";}}s:11:\"Video_title\";s:16:\"Our Promo Video \";s:13:\"video_details\";s:210:\"Vestibulum nisl tortor, consectetur quis imperdiet bibendum, laoreet sed arcu.Sed condimentum iaculis ex, in faucibus lorem accumsan non. Donec mattis tincidunt metus. Morbi sed tortor a risus luctus dignissim.\";s:12:\"video_source\";s:39:\"https://player.vimeo.com/video/51119176\";s:22:\"video_bottom_secion_bg\";a:6:{s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:0:\"\";s:8:\"position\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"color\";s:7:\"#1e73be\";}s:28:\"video_bottom_section_details\";s:157:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a tempor eros. Pellentesque elementum nulla sed justo tempor posuere sit amet sit amet ligula.\";s:13:\"gellery_title\";s:18:\"Sneak Peak Gallery\";s:15:\"Gallery_details\";s:240:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore numquam esse vitae recusandae qui aspernatur, blanditiis, laboriosam dignissimos dolore facere provident ex? Porro, praesentium consectetur tempore. Nulla, error eius dolorem.\";s:17:\"About_gellery_img\";a:6:{i:1;a:1:{s:13:\"Image_gellery\";s:3:\"196\";}i:2;a:1:{s:13:\"Image_gellery\";s:3:\"195\";}i:3;a:1:{s:13:\"Image_gellery\";s:3:\"200\";}i:4;a:1:{s:13:\"Image_gellery\";s:3:\"201\";}i:5;a:1:{s:13:\"Image_gellery\";s:3:\"202\";}i:6;a:1:{s:13:\"Image_gellery\";s:3:\"199\";}}s:10:\"Team_title\";s:8:\"Our Team\";s:12:\"Team_details\";s:114:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque quasi tempora obcaecati, quis similique quos.\";s:8:\"Team_img\";a:3:{i:1;a:8:{s:10:\"Team_image\";s:3:\"203\";s:9:\"team_name\";s:14:\"Michael Jonson\";s:15:\"team_profession\";s:17:\"Head Of Marketing\";s:9:\"team_info\";s:101:\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur necessitatibus ullam, culpa odio.\";s:8:\"facebook\";s:27:\"http://fiverr.com/shamimtpi\";s:7:\"twitter\";s:27:\"http://fiverr.com/shamimtpi\";s:6:\"google\";s:27:\"http://fiverr.com/shamimtpi\";s:7:\"dribble\";s:27:\"http://fiverr.com/shamimtpi\";}i:2;a:8:{s:10:\"Team_image\";s:3:\"204\";s:9:\"team_name\";s:14:\"Michael Jonson\";s:15:\"team_profession\";s:13:\"Web Developer\";s:9:\"team_info\";s:101:\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur necessitatibus ullam, culpa odio.\";s:8:\"facebook\";s:27:\"http://fiverr.com/shamimtpi\";s:7:\"twitter\";s:27:\"http://fiverr.com/shamimtpi\";s:6:\"google\";s:27:\"http://fiverr.com/shamimtpi\";s:7:\"dribble\";s:27:\"http://fiverr.com/shamimtpi\";}i:3;a:8:{s:10:\"Team_image\";s:3:\"205\";s:9:\"team_name\";s:14:\"Michael Jonson\";s:15:\"team_profession\";s:18:\"Head Of Management\";s:9:\"team_info\";s:101:\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur necessitatibus ullam, culpa odio.\";s:8:\"facebook\";s:27:\"http://fiverr.com/shamimtpi\";s:7:\"twitter\";s:27:\"http://fiverr.com/shamimtpi\";s:6:\"google\";s:27:\"http://fiverr.com/shamimtpi\";s:7:\"dribble\";s:27:\"http://fiverr.com/shamimtpi\";}}s:13:\"service_title\";s:0:\"\";s:16:\"service_subtitle\";s:0:\"\";s:11:\"Skill_title\";s:0:\"\";s:14:\"Skill_subtitle\";s:0:\"\";s:16:\"descript_heading\";s:0:\"\";s:16:\"service_des_text\";s:0:\"\";s:16:\"service_des_link\";s:0:\"\";s:13:\"pricing_title\";s:0:\"\";s:16:\"pricing_subtitle\";s:0:\"\";s:10:\"pricing_bg\";a:6:{s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:0:\"\";s:8:\"position\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"color\";s:0:\"\";}s:15:\"portfolio_title\";s:9:\"Our Works\";s:18:\"portfolio_subtitle\";s:149:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro, veritatis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima, vitae? \";s:13:\"Contact_title\";s:12:\"Get In Touch\";s:16:\"Contact_subtitle\";s:144:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate facilis eveniet maiores ab maxime nam ut numquam molestiae quaerat incidunt?\";s:14:\"Contact_dtitle\";s:15:\"Contact Details\";s:17:\"Contact_dsubtitle\";s:226:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, vero, provident, eum eligendi blanditiis ex explicabo vitae nostrum facilis asperiores dolorem illo officiis ratione vel fugiat dicta laboriosam labore adipisci.\";s:19:\"Contact_description\";s:471:\"	<li>\r\n							<i class=\"tf-ion-ios-home\"></i>\r\n							<span>Khaja Road, Bayzid, Chittagong, Bangladesh</span>\r\n						</li>\r\n						<li>\r\n							<i class=\"tf-ion-android-phone-portrait\"></i>\r\n							<span>Phone: +880-31-000-000</span>\r\n						</li>\r\n						<li>\r\n							<i class=\"tf-ion-android-globe\"></i>\r\n							<span>Fax: +880-31-000-000</span>\r\n						</li>\r\n						<li>\r\n							<i class=\"tf-ion-android-mail\"></i>\r\n							<span>Email: hello@meghna.com</span>\r\n						</li>\";s:9:\"contact_d\";a:3:{i:1;a:2:{s:11:\"social_name\";s:22:\"tf-ion-social-facebook\";s:17:\"Enter_Social_Link\";s:21:\"tf-ion-social-twitter\";}i:2;a:2:{s:11:\"social_name\";s:30:\"tf-ion-social-dribbble-outline\";s:17:\"Enter_Social_Link\";s:0:\"\";}i:3;a:2:{s:11:\"social_name\";s:30:\"tf-ion-social-linkedin-outline\";s:17:\"Enter_Social_Link\";s:0:\"\";}}s:11:\"footer_text\";s:22:\"[wphtmlblock id=\"109\"]\";s:6:\"import\";s:0:\"\";s:11:\"skill_lavel\";s:0:\"\";s:10:\"client_img\";s:0:\"\";s:15:\"pricing_package\";s:0:\"\";}', 'yes'),
(136, 'current_theme', 'Free', 'yes'),
(137, 'theme_mods_bingo', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"mainmenu\";i:6;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525935172;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(591, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(610, '_transient_product_query-transient-version', '1526134705', 'yes'),
(592, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(593, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(594, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(595, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(596, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(597, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(598, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(599, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(600, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(601, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'theme_mods_template-parts/..', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525722142;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(144, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525930471;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(153, 'theme_mods_twentysixteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(170, 'recently_activated', 'a:7:{s:27:\"woocommerce/woocommerce.php\";i:1526134912;s:47:\"fb-comment-share-for-woocommerce/fb-comment.php\";i:1526134906;s:39:\"pixelyoursite/facebook-pixel-master.php\";i:1526133642;s:37:\"wp-store-locator/wp-store-locator.php\";i:1526132521;s:31:\"wp-google-maps/wpGoogleMaps.php\";i:1526031097;s:45:\"wp-google-map-plugin/wp-google-map-plugin.php\";i:1526030751;s:36:\"ap-google-maps/arrow-google-maps.php\";i:1526029894;}', 'yes'),
(258, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(289, 'widget_my-text', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(351, 'category_children', 'a:0:{}', 'yes'),
(352, 'portfolio_category_children', 'a:0:{}', 'yes'),
(244, 'theme_mods_new', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525934258;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(257, 'theme_switched_via_customizer', '', 'yes'),
(242, '_transient_twentyfifteen_categories', '1', 'yes'),
(250, 'theme_mods_new1', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525936208;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(606, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:3;s:3:\"all\";i:3;s:9:\"moderated\";s:1:\"1\";s:8:\"approved\";s:1:\"2\";s:12:\"post-trashed\";s:1:\"1\";s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(611, '_transient_shipping-transient-version', '1526134457', 'yes'),
(614, '_transient_product-transient-version', '1526134705', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(12, 9, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(13, 9, '_mail', 'a:8:{s:7:\"subject\";s:29:\"Home | Bingo \"[your-subject]\"\";s:6:\"sender\";s:38:\"[your-name] <wordpress@shamiminfo.com>\";s:4:\"body\";s:185:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Home | Bingo (http://www.shamiminfo.com/demo/wp1)\";s:9:\"recipient\";s:22:\"md.shamimtpi@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(14, 9, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:29:\"Home | Bingo \"[your-subject]\"\";s:6:\"sender\";s:39:\"Home | Bingo <wordpress@shamiminfo.com>\";s:4:\"body\";s:127:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Home | Bingo (http://www.shamiminfo.com/demo/wp1)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:32:\"Reply-To: md.shamimtpi@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(15, 9, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(16, 9, '_additional_settings', NULL),
(17, 9, '_locale', 'en_US'),
(587, 105, '_edit_lock', '1526134711:1'),
(28, 109, '_edit_last', '1'),
(29, 109, '_htmlblock_description', ''),
(30, 109, '_htmlblock_wrapper_class', ''),
(31, 109, '_htmlblock_active', 'Yes'),
(32, 109, '_htmlblock_display_title', 'No'),
(33, 109, '_htmlblock_display_desc', 'No'),
(34, 109, '_htmlblock_include_img', 'No'),
(35, 109, '_htmlblock_img_location', 'Top'),
(36, 109, '_htmlblock_img_size', 'thumbnail'),
(869, 272, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(65, 47, '_edit_last', '1'),
(66, 47, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(67, 47, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(68, 47, '_wp_page_template', 'index.php'),
(69, 51, '_edit_last', '1'),
(70, 51, '_wp_page_template', 'about.php'),
(71, 51, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(72, 51, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(799, 253, '_edit_lock', '1526145904:1'),
(857, 272, '_edit_last', '1'),
(858, 272, '_wp_page_template', 'service.php'),
(105, 60, '_edit_last', '1'),
(106, 60, '_wp_page_template', 'contact.php'),
(107, 60, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(108, 60, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(789, 254, '_menu_item_type', 'post_type'),
(788, 254, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(711, 236, '_menu_item_target', ''),
(710, 236, '_menu_item_object', 'page'),
(704, 235, '_menu_item_xfn', ''),
(705, 235, '_menu_item_url', ''),
(707, 236, '_menu_item_type', 'post_type'),
(708, 236, '_menu_item_menu_item_parent', '0'),
(709, 236, '_menu_item_object_id', '47'),
(689, 234, '_menu_item_type', 'post_type'),
(690, 234, '_menu_item_menu_item_parent', '0'),
(691, 234, '_menu_item_object_id', '60'),
(692, 234, '_menu_item_object', 'page'),
(693, 234, '_menu_item_target', ''),
(694, 234, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(695, 234, '_menu_item_xfn', ''),
(696, 234, '_menu_item_url', ''),
(698, 235, '_menu_item_type', 'post_type'),
(699, 235, '_menu_item_menu_item_parent', '0'),
(700, 235, '_menu_item_object_id', '51'),
(701, 235, '_menu_item_object', 'page'),
(702, 235, '_menu_item_target', ''),
(703, 235, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(133, 144, '_edit_last', '1'),
(134, 146, '_edit_last', '1'),
(135, 146, '_portfolio_portfolio_img_id', '147'),
(136, 146, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-1.jpg'),
(137, 146, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(138, 155, '_edit_last', '1'),
(139, 155, '_portfolio_portfolio_img_id', '154'),
(140, 155, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-8.jpg'),
(141, 155, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(148, 40, '_edit_last', '1'),
(149, 40, '_thumbnail_id', '191'),
(150, 40, '_slider_slider_btn', 'Exclusive'),
(151, 40, '_slider_btn_url', 'http://shamiminfo.com'),
(152, 40, '_slider_slider_btn2', 'Loren More.'),
(153, 40, '_slider_btn_url2', 'http://www.w3schools.com'),
(154, 42, '_edit_last', '1'),
(155, 42, '_thumbnail_id', '190'),
(156, 42, 'slider_button', 'a:2:{s:15:\"slider_left_btn\";s:10:\"Explore Us\";s:7:\"buttons\";s:0:\"\";}'),
(157, 42, 'slider_options', 'a:1:{s:7:\"buttons\";a:1:{i:1;a:2:{s:11:\"button_text\";s:6:\"Shamim\";s:11:\"button_link\";s:25:\"http://www.shamiminfo.com\";}}}'),
(158, 42, '_slider_slider_btn', 'Exclusive More'),
(159, 42, '_slider_btn_url', 'http://shamiminfo.com'),
(160, 42, '_slider_slider_btn2', 'Loren More'),
(161, 42, '_slider_btn_url2', 'http://www.w3schools.com'),
(162, 98, '_edit_last', '1'),
(163, 98, '_thumbnail_id', '186'),
(164, 98, '_custom_post_options', 'a:4:{s:14:\"section_4_text\";s:0:\"\";s:18:\"section_4_textarea\";s:0:\"\";s:16:\"section_4_upload\";s:0:\"\";s:18:\"section_4_switcher\";b:0;}'),
(165, 103, '_edit_last', '1'),
(166, 103, '_thumbnail_id', '184'),
(167, 103, '_custom_post_options', 'a:4:{s:14:\"section_4_text\";s:0:\"\";s:18:\"section_4_textarea\";s:0:\"\";s:16:\"section_4_upload\";s:0:\"\";s:18:\"section_4_switcher\";b:0;}'),
(168, 104, '_edit_last', '1'),
(169, 104, '_thumbnail_id', '183'),
(170, 104, '_custom_post_options', 'a:4:{s:14:\"section_4_text\";s:0:\"\";s:18:\"section_4_textarea\";s:0:\"\";s:16:\"section_4_upload\";s:0:\"\";s:18:\"section_4_switcher\";b:0;}'),
(171, 105, '_edit_last', '1'),
(172, 105, '_thumbnail_id', '101'),
(173, 105, '_custom_post_options', 'a:4:{s:14:\"section_4_text\";s:0:\"\";s:18:\"section_4_textarea\";s:0:\"\";s:16:\"section_4_upload\";s:0:\"\";s:18:\"section_4_switcher\";b:0;}'),
(174, 127, '_edit_last', '1'),
(175, 127, '_service_service_icon', 'tf-ion-ios-copy-outline'),
(176, 127, '_service_service_des', 'Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.'),
(177, 128, '_edit_last', '1'),
(178, 128, '_service_service_icon', 'tf-ion-ios-alarm-outline'),
(179, 128, '_service_service_des', 'Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.'),
(180, 129, '_edit_last', '1'),
(181, 129, '_service_service_icon', 'tf-ion-ios-book-outline'),
(182, 129, '_service_service_des', 'Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.'),
(183, 130, '_edit_last', '1'),
(184, 130, '_service_service_icon', 'tf-ion-ios-briefcase-outline'),
(185, 130, '_service_service_des', 'Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.'),
(186, 131, '_edit_last', '1'),
(187, 131, '_service_service_icon', 'tf-ion-ios-crop'),
(188, 131, '_service_service_des', 'Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.'),
(189, 132, '_edit_last', '1'),
(190, 132, '_service_service_icon', 'tf-ion-ios-home-outline'),
(191, 132, '_service_service_des', 'Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.'),
(196, 157, '_edit_last', '1'),
(197, 157, '_portfolio_portfolio_img_id', '153'),
(198, 157, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-7.jpg'),
(199, 157, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(200, 158, '_edit_last', '1'),
(201, 158, '_portfolio_portfolio_img_id', '151'),
(202, 158, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-5.jpg'),
(203, 158, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(204, 159, '_edit_last', '1'),
(205, 159, '_portfolio_portfolio_img_id', '147'),
(206, 159, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-1.jpg'),
(207, 159, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(208, 160, '_edit_last', '1'),
(209, 160, '_portfolio_portfolio_img_id', '154'),
(210, 160, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-8.jpg'),
(211, 160, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(212, 161, '_edit_last', '1'),
(213, 161, '_portfolio_portfolio_img_id', '151'),
(214, 161, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-5.jpg'),
(215, 161, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(216, 162, '_edit_last', '1'),
(217, 162, '_portfolio_portfolio_img_id', '153'),
(218, 162, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-7.jpg'),
(219, 162, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(226, 93, '_edit_last', '1'),
(227, 93, '_testimonial_testimonial_icon', 'tf-ion-chatbubbles'),
(228, 93, '_testimonial_testimonial_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum nulla, soluta dolorum. Eos earum, magni asperiores, unde corporis labore, enim, voluptatum officiis voluptates alias natus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, officia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, quia?'),
(229, 93, '_testimonial_testimonial_image_id', '94'),
(230, 93, '_testimonial_testimonial_image', 'http://localhost/wp1/wp-content/uploads/2018/05/clients-1.jpg'),
(231, 93, '_testimonial_testimonial_Name', 'Abul Mal Muhit'),
(232, 93, '_testimonial_testimonial_Title', 'CEO , Company Name'),
(233, 95, '_edit_last', '1'),
(234, 95, '_testimonial_testimonial_icon', 'tf-ion-chatbubbles'),
(235, 95, '_testimonial_testimonial_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum nulla, soluta dolorum. Eos earum, magni asperiores, unde corporis labore, enim, voluptatum officiis voluptates alias natus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, officia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, quia?'),
(236, 95, '_testimonial_testimonial_image_id', '97'),
(237, 95, '_testimonial_testimonial_image', 'http://localhost/wp1/wp-content/uploads/2018/05/shamim.jpg'),
(238, 95, '_testimonial_testimonial_Name', 'Md Shamim Hasan'),
(239, 95, '_testimonial_testimonial_Title', 'CEO , Company Name'),
(240, 96, '_edit_last', '1'),
(241, 96, '_testimonial_testimonial_icon', 'tf-ion-chatbubbles'),
(242, 96, '_testimonial_testimonial_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum nulla, soluta dolorum. Eos earum, magni asperiores, unde corporis labore, enim, voluptatum officiis voluptates alias natus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, officia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, quia?'),
(243, 96, '_testimonial_testimonial_image_id', '94'),
(244, 96, '_testimonial_testimonial_image', 'http://localhost/wp1/wp-content/uploads/2018/05/clients-1.jpg'),
(245, 96, '_testimonial_testimonial_Name', 'Abul Mal Muhit'),
(246, 96, '_testimonial_testimonial_Title', 'CEO , Company Name'),
(247, 163, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n<label> Your Email (required)\n    [email* your-email] </label>\n<label> Subject\n    [text your-subject] </label>\n<label> Your Message\n    [textarea your-message] </label>\n[submit \"Send\"]'),
(248, 163, '_mail', ''),
(249, 163, '_mail_2', ''),
(250, 163, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(251, 163, '_additional_settings', ''),
(252, 163, '_locale', 'en_US'),
(253, 164, '_form', '<div class=\"form-group\">\n	[text* names id:name class:form-control placeholder \"Your Name\"]\n						</div>\n						<div class=\"form-group\">\n[email* your-email id:email class:form-control placeholder \"Your Email\"]\n						</div>\n<div class=\"form-group\">\n[text* your-subject id:subject class:form-control placeholder \"Your Name\"]\n						</div>\n						<div class=\"form-group\">\n[textarea Message id:message class:form-control placeholder \"Message\"]\n						</div>\n[submit id:contact-submit  class:btn class:btn-transparen  \"submit\"]'),
(254, 164, '_mail', ''),
(255, 164, '_mail_2', ''),
(256, 164, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(257, 164, '_additional_settings', ''),
(258, 164, '_locale', 'en_US'),
(271, 109, '_edit_last', '1'),
(272, 109, '_htmlblock_description', ''),
(273, 109, '_htmlblock_wrapper_class', ''),
(274, 109, '_htmlblock_active', 'Yes'),
(275, 109, '_htmlblock_display_title', 'No'),
(276, 109, '_htmlblock_display_desc', 'No'),
(277, 109, '_htmlblock_include_img', 'No'),
(278, 109, '_htmlblock_img_location', 'Top'),
(279, 109, '_htmlblock_img_size', 'thumbnail'),
(308, 47, '_edit_last', '1'),
(309, 47, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(310, 47, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(311, 47, '_wp_page_template', 'index.php'),
(312, 51, '_edit_last', '1'),
(313, 51, '_wp_page_template', 'about.php'),
(314, 51, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(315, 51, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(790, 254, '_menu_item_menu_item_parent', '0'),
(791, 254, '_menu_item_object_id', '253'),
(792, 254, '_menu_item_object', 'page'),
(793, 254, '_menu_item_target', ''),
(794, 254, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(795, 254, '_menu_item_xfn', ''),
(796, 254, '_menu_item_url', ''),
(797, 253, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(348, 60, '_edit_last', '1'),
(349, 60, '_wp_page_template', 'contact.php'),
(350, 60, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(351, 60, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(629, 60, '_edit_lock', '1526139096:1'),
(628, 51, '_edit_lock', '1526139064:1'),
(785, 253, '_edit_last', '1'),
(786, 253, '_wp_page_template', 'portfolio.php'),
(787, 254, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(714, 236, '_menu_item_url', ''),
(870, 272, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(871, 272, '_edit_lock', '1526146744:1'),
(872, 276, '_menu_item_type', 'post_type'),
(873, 276, '_menu_item_menu_item_parent', '0'),
(874, 276, '_menu_item_object_id', '272'),
(875, 276, '_menu_item_object', 'page'),
(876, 276, '_menu_item_target', ''),
(798, 253, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(877, 276, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(878, 276, '_menu_item_xfn', ''),
(879, 276, '_menu_item_url', ''),
(376, 144, '_edit_last', '1'),
(377, 146, '_edit_last', '1'),
(378, 146, '_portfolio_portfolio_img_id', '147'),
(379, 146, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-1.jpg'),
(380, 146, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(381, 155, '_edit_last', '1'),
(382, 155, '_portfolio_portfolio_img_id', '154'),
(383, 155, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-8.jpg'),
(384, 155, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(391, 40, '_edit_last', '1'),
(392, 40, '_thumbnail_id', '191'),
(393, 40, '_slider_slider_btn', 'Exclusive'),
(394, 40, '_slider_btn_url', 'http://shamiminfo.com'),
(395, 40, '_slider_slider_btn2', 'Loren More.'),
(396, 40, '_slider_btn_url2', 'http://www.w3schools.com'),
(397, 42, '_edit_last', '1'),
(398, 42, '_thumbnail_id', '190'),
(399, 42, 'slider_button', 'a:2:{s:15:\"slider_left_btn\";s:10:\"Explore Us\";s:7:\"buttons\";s:0:\"\";}'),
(400, 42, 'slider_options', 'a:1:{s:7:\"buttons\";a:1:{i:1;a:2:{s:11:\"button_text\";s:6:\"Shamim\";s:11:\"button_link\";s:25:\"http://www.shamiminfo.com\";}}}'),
(401, 42, '_slider_slider_btn', 'Exclusive More'),
(402, 42, '_slider_btn_url', 'http://shamiminfo.com'),
(403, 42, '_slider_slider_btn2', 'Loren More'),
(404, 42, '_slider_btn_url2', 'http://www.w3schools.com'),
(405, 98, '_edit_last', '1'),
(406, 98, '_thumbnail_id', '186'),
(407, 98, '_custom_post_options', 'a:4:{s:14:\"section_4_text\";s:0:\"\";s:18:\"section_4_textarea\";s:0:\"\";s:16:\"section_4_upload\";s:0:\"\";s:18:\"section_4_switcher\";b:0;}'),
(408, 103, '_edit_last', '1'),
(409, 103, '_thumbnail_id', '184'),
(410, 103, '_custom_post_options', 'a:4:{s:14:\"section_4_text\";s:0:\"\";s:18:\"section_4_textarea\";s:0:\"\";s:16:\"section_4_upload\";s:0:\"\";s:18:\"section_4_switcher\";b:0;}'),
(411, 104, '_edit_last', '1'),
(412, 104, '_thumbnail_id', '183'),
(413, 104, '_custom_post_options', 'a:4:{s:14:\"section_4_text\";s:0:\"\";s:18:\"section_4_textarea\";s:0:\"\";s:16:\"section_4_upload\";s:0:\"\";s:18:\"section_4_switcher\";b:0;}'),
(414, 105, '_edit_last', '1'),
(415, 105, '_thumbnail_id', '101'),
(416, 105, '_custom_post_options', 'a:4:{s:14:\"section_4_text\";s:0:\"\";s:18:\"section_4_textarea\";s:0:\"\";s:16:\"section_4_upload\";s:0:\"\";s:18:\"section_4_switcher\";b:0;}'),
(417, 127, '_edit_last', '1'),
(418, 127, '_service_service_icon', 'tf-ion-ios-copy-outline'),
(419, 127, '_service_service_des', 'Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.'),
(420, 128, '_edit_last', '1'),
(421, 128, '_service_service_icon', 'tf-ion-ios-alarm-outline'),
(422, 128, '_service_service_des', 'Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.'),
(423, 129, '_edit_last', '1'),
(424, 129, '_service_service_icon', 'tf-ion-ios-book-outline'),
(425, 129, '_service_service_des', 'Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.'),
(426, 130, '_edit_last', '1'),
(427, 130, '_service_service_icon', 'tf-ion-ios-briefcase-outline'),
(428, 130, '_service_service_des', 'Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.'),
(429, 131, '_edit_last', '1'),
(430, 131, '_service_service_icon', 'tf-ion-ios-crop'),
(431, 131, '_service_service_des', 'Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.'),
(432, 132, '_edit_last', '1'),
(433, 132, '_service_service_icon', 'tf-ion-ios-home-outline'),
(434, 132, '_service_service_des', 'Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.'),
(439, 157, '_edit_last', '1'),
(440, 157, '_portfolio_portfolio_img_id', '153'),
(441, 157, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-7.jpg'),
(442, 157, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(443, 158, '_edit_last', '1'),
(444, 158, '_portfolio_portfolio_img_id', '151'),
(445, 158, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-5.jpg'),
(446, 158, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(447, 159, '_edit_last', '1'),
(448, 159, '_portfolio_portfolio_img_id', '147'),
(449, 159, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-1.jpg'),
(450, 159, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(451, 160, '_edit_last', '1'),
(452, 160, '_portfolio_portfolio_img_id', '154'),
(453, 160, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-8.jpg'),
(454, 160, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(455, 161, '_edit_last', '1'),
(456, 161, '_portfolio_portfolio_img_id', '151'),
(457, 161, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-5.jpg'),
(458, 161, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(459, 162, '_edit_last', '1'),
(460, 162, '_portfolio_portfolio_img_id', '153'),
(461, 162, '_portfolio_portfolio_img', 'http://localhost/wp1/wp-content/uploads/2018/05/portfolio-7.jpg'),
(462, 162, '_portfolio_portfolio_title', 'AirBnB Postcard'),
(469, 93, '_edit_last', '1'),
(470, 93, '_testimonial_testimonial_icon', 'tf-ion-chatbubbles'),
(471, 93, '_testimonial_testimonial_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum nulla, soluta dolorum. Eos earum, magni asperiores, unde corporis labore, enim, voluptatum officiis voluptates alias natus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, officia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, quia?'),
(472, 93, '_testimonial_testimonial_image_id', '94'),
(473, 93, '_testimonial_testimonial_image', 'http://localhost/wp1/wp-content/uploads/2018/05/clients-1.jpg'),
(474, 93, '_testimonial_testimonial_Name', 'Abul Mal Muhit'),
(475, 93, '_testimonial_testimonial_Title', 'CEO , Company Name'),
(476, 95, '_edit_last', '1'),
(477, 95, '_testimonial_testimonial_icon', 'tf-ion-chatbubbles'),
(478, 95, '_testimonial_testimonial_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum nulla, soluta dolorum. Eos earum, magni asperiores, unde corporis labore, enim, voluptatum officiis voluptates alias natus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, officia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, quia?'),
(479, 95, '_testimonial_testimonial_image_id', '97'),
(480, 95, '_testimonial_testimonial_image', 'http://localhost/wp1/wp-content/uploads/2018/05/shamim.jpg'),
(481, 95, '_testimonial_testimonial_Name', 'Md Shamim Hasan'),
(482, 95, '_testimonial_testimonial_Title', 'CEO , Company Name'),
(483, 96, '_edit_last', '1'),
(484, 96, '_testimonial_testimonial_icon', 'tf-ion-chatbubbles'),
(485, 96, '_testimonial_testimonial_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum nulla, soluta dolorum. Eos earum, magni asperiores, unde corporis labore, enim, voluptatum officiis voluptates alias natus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, officia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, quia?'),
(486, 96, '_testimonial_testimonial_image_id', '94'),
(487, 96, '_testimonial_testimonial_image', 'http://localhost/wp1/wp-content/uploads/2018/05/clients-1.jpg'),
(488, 96, '_testimonial_testimonial_Name', 'Abul Mal Muhit'),
(489, 96, '_testimonial_testimonial_Title', 'CEO , Company Name'),
(490, 163, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n<label> Your Email (required)\n    [email* your-email] </label>\n<label> Subject\n    [text your-subject] </label>\n<label> Your Message\n    [textarea your-message] </label>\n[submit \"Send\"]'),
(491, 163, '_mail', ''),
(492, 163, '_mail_2', ''),
(493, 163, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(494, 163, '_additional_settings', ''),
(495, 163, '_locale', 'en_US'),
(496, 164, '_form', '<div class=\"form-group\">\n	[text* names id:name class:form-control placeholder \"Your Name\"]\n						</div>\n						<div class=\"form-group\">\n[email* your-email id:email class:form-control placeholder \"Your Email\"]\n						</div>\n<div class=\"form-group\">\n[text* your-subject id:subject class:form-control placeholder \"Your Name\"]\n						</div>\n						<div class=\"form-group\">\n[textarea Message id:message class:form-control placeholder \"Message\"]\n						</div>\n[submit id:contact-submit  class:btn class:btn-transparen  \"submit\"]'),
(497, 164, '_mail', ''),
(498, 164, '_mail_2', ''),
(499, 164, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(500, 164, '_additional_settings', ''),
(501, 164, '_locale', 'en_US'),
(712, 236, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(713, 236, '_menu_item_xfn', ''),
(514, 47, '_edit_lock', '1525949505:1'),
(515, 180, '_wp_attached_file', '2018/05/logo.png'),
(516, 180, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:88;s:6:\"height\";i:25;s:4:\"file\";s:16:\"2018/05/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(517, 181, '_wp_attached_file', '2018/05/logo-white.png'),
(518, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:88;s:6:\"height\";i:25;s:4:\"file\";s:22:\"2018/05/logo-white.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(519, 182, '_wp_attached_file', '2018/05/member.jpg'),
(520, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:245;s:6:\"height\";i:623;s:4:\"file\";s:18:\"2018/05/member.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"member-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"member-118x300.jpg\";s:5:\"width\";i:118;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(521, 183, '_wp_attached_file', '2018/05/post-3.jpg'),
(522, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:880;s:4:\"file\";s:18:\"2018/05/post-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post-3-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"post-3-768x578.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"post-3-1024x770.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:770;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(523, 103, '_edit_lock', '1525950422:1'),
(524, 184, '_wp_attached_file', '2018/05/post-1.jpg'),
(525, 184, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:880;s:4:\"file\";s:18:\"2018/05/post-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post-1-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"post-1-768x578.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"post-1-1024x770.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:770;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(526, 185, '_wp_attached_file', '2018/05/post-2.jpg'),
(527, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:880;s:4:\"file\";s:18:\"2018/05/post-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post-2-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"post-2-768x578.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"post-2-1024x770.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:770;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(528, 186, '_wp_attached_file', '2018/05/post-3-1.jpg'),
(529, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:880;s:4:\"file\";s:20:\"2018/05/post-3-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"post-3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"post-3-1-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"post-3-1-768x578.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"post-3-1-1024x770.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:770;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(531, 104, '_edit_lock', '1525951197:1'),
(533, 98, '_edit_lock', '1525950465:1'),
(535, 42, '_edit_lock', '1525951155:1'),
(536, 190, '_wp_attached_file', '2018/04/slider-bg-1.jpg'),
(537, 190, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1076;s:4:\"file\";s:23:\"2018/04/slider-bg-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"slider-bg-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"slider-bg-1-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"slider-bg-1-768x430.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:430;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"slider-bg-1-1024x574.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(538, 191, '_wp_attached_file', '2018/04/slider-bg-2.jpg'),
(539, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1940;s:6:\"height\";i:1293;s:4:\"file\";s:23:\"2018/04/slider-bg-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"slider-bg-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"slider-bg-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"slider-bg-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"slider-bg-2-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(540, 40, '_edit_lock', '1525951459:1'),
(541, 109, '_edit_lock', '1525974372:1'),
(542, 192, '_wp_attached_file', '2018/05/about-2.png'),
(543, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:484;s:6:\"height\";i:337;s:4:\"file\";s:19:\"2018/05/about-2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"about-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"about-2-300x209.png\";s:5:\"width\";i:300;s:6:\"height\";i:209;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(544, 193, '_wp_attached_file', '2018/05/gallery-5.jpg'),
(545, 193, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:386;s:6:\"height\";i:253;s:4:\"file\";s:21:\"2018/05/gallery-5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-5-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(546, 194, '_wp_attached_file', '2018/05/gallery-2.jpg'),
(547, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:386;s:6:\"height\";i:253;s:4:\"file\";s:21:\"2018/05/gallery-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-2-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(548, 195, '_wp_attached_file', '2018/05/company-image.jpg'),
(549, 195, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:853;s:6:\"height\";i:569;s:4:\"file\";s:25:\"2018/05/company-image.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"company-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"company-image-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"company-image-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(550, 196, '_wp_attached_file', '2018/05/company-image-2.jpg'),
(551, 196, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:380;s:4:\"file\";s:27:\"2018/05/company-image-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"company-image-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"company-image-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(552, 197, '_wp_attached_file', '2018/05/company-image-3.jpg'),
(553, 197, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:380;s:4:\"file\";s:27:\"2018/05/company-image-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"company-image-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"company-image-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(554, 198, '_wp_attached_file', '2018/05/gallery-1.jpg'),
(555, 198, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:386;s:6:\"height\";i:253;s:4:\"file\";s:21:\"2018/05/gallery-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-1-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(556, 199, '_wp_attached_file', '2018/05/gallery-2-1.jpg'),
(557, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:386;s:6:\"height\";i:253;s:4:\"file\";s:23:\"2018/05/gallery-2-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"gallery-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"gallery-2-1-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(558, 200, '_wp_attached_file', '2018/05/gallery-3.jpg'),
(559, 200, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:386;s:6:\"height\";i:253;s:4:\"file\";s:21:\"2018/05/gallery-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-3-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(560, 201, '_wp_attached_file', '2018/05/gallery-4.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(561, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:386;s:6:\"height\";i:253;s:4:\"file\";s:21:\"2018/05/gallery-4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-4-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(562, 202, '_wp_attached_file', '2018/05/gallery-5-1.jpg'),
(563, 202, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:386;s:6:\"height\";i:253;s:4:\"file\";s:23:\"2018/05/gallery-5-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"gallery-5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"gallery-5-1-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(564, 203, '_wp_attached_file', '2018/05/member-1.jpg'),
(565, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:670;s:6:\"height\";i:670;s:4:\"file\";s:20:\"2018/05/member-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"member-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"member-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(566, 204, '_wp_attached_file', '2018/05/member-2.jpg'),
(567, 204, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:670;s:6:\"height\";i:670;s:4:\"file\";s:20:\"2018/05/member-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"member-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"member-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(568, 205, '_wp_attached_file', '2018/05/member-3.jpg'),
(569, 205, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:670;s:6:\"height\";i:670;s:4:\"file\";s:20:\"2018/05/member-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"member-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"member-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(572, 207, '_wp_attached_file', '2018/05/about-header.jpg'),
(573, 207, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1315;s:6:\"height\";i:479;s:4:\"file\";s:24:\"2018/05/about-header.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"about-header-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"about-header-300x109.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:109;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"about-header-768x280.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"about-header-1024x373.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:373;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:8:\"Bigstock\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(591, 222, '_wc_review_count', '0'),
(592, 222, '_wc_rating_count', 'a:0:{}'),
(593, 222, '_wc_average_rating', '0'),
(594, 222, '_edit_last', '1'),
(595, 222, '_edit_lock', '1526134757:1'),
(596, 222, '_sku', ''),
(597, 222, '_regular_price', '200'),
(598, 222, '_sale_price', '150'),
(599, 222, '_sale_price_dates_from', ''),
(600, 222, '_sale_price_dates_to', ''),
(601, 222, 'total_sales', '0'),
(602, 222, '_tax_status', 'taxable'),
(603, 222, '_tax_class', ''),
(604, 222, '_manage_stock', 'no'),
(605, 222, '_backorders', 'no'),
(606, 222, '_sold_individually', 'no'),
(607, 222, '_weight', ''),
(608, 222, '_length', ''),
(609, 222, '_width', ''),
(610, 222, '_height', ''),
(611, 222, '_upsell_ids', 'a:0:{}'),
(612, 222, '_crosssell_ids', 'a:0:{}'),
(613, 222, '_purchase_note', 'Hi.....tHSI SI PROJECT PAGE'),
(614, 222, '_default_attributes', 'a:0:{}'),
(615, 222, '_virtual', 'yes'),
(616, 222, '_downloadable', 'no'),
(617, 222, '_product_image_gallery', ''),
(618, 222, '_download_limit', '-1'),
(619, 222, '_download_expiry', '-1'),
(620, 222, '_stock', NULL),
(621, 222, '_stock_status', 'instock'),
(622, 222, '_product_version', '3.3.5'),
(623, 222, '_price', '150'),
(624, 222, 'fbc_wc_tab_enabled', 'no'),
(625, 222, 'fbc_wc_soc_share', 'no'),
(626, 222, 'fbc_wc_tab_title', ''),
(627, 222, 'fbc_wc_tab_count', '');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-07 13:59:00', '2018-05-07 13:59:00', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-05-07 13:59:00', '2018-05-07 13:59:00', '', 0, 'http://www.shamiminfo.com/demo/wp1/?p=1', 0, 'post', '', 1),
(9, 1, '2018-05-10 10:34:16', '2018-05-10 10:34:16', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nHome | Bingo \"[your-subject]\"\n[your-name] <wordpress@shamiminfo.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Home | Bingo (http://www.shamiminfo.com/demo/wp1)\nmd.shamimtpi@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nHome | Bingo \"[your-subject]\"\nHome | Bingo <wordpress@shamiminfo.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Home | Bingo (http://www.shamiminfo.com/demo/wp1)\n[your-email]\nReply-To: md.shamimtpi@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-05-10 10:34:16', '2018-05-10 10:34:16', '', 0, 'http://www.shamiminfo.com/demo/wp1/?post_type=wpcf7_contact_form&p=9', 0, 'wpcf7_contact_form', '', 0),
(109, 1, '2018-05-05 10:19:58', '2018-05-05 10:19:58', '<h5>Copyright 2016. All rights reserved.</h5>\r\n<h6>Design and Developed by <a>Shamim</a></h6>', 'Footer', '', 'publish', 'closed', 'closed', '', 'footer', '', '', '2018-05-10 17:47:44', '2018-05-10 17:47:44', '', 0, 'http://localhost/wp1/?post_type=html-block&#038;p=109', 0, 'html-block', '', 0),
(47, 1, '2018-05-01 11:06:27', '2018-05-01 11:06:27', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-05-10 10:53:59', '2018-05-10 10:53:59', '', 0, 'http://localhost/wp1/?page_id=47', 0, 'page', '', 0),
(51, 1, '2018-05-01 11:10:28', '2018-05-01 11:10:28', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-05-12 15:33:25', '2018-05-12 15:33:25', '', 0, 'http://localhost/wp1/?page_id=51', 0, 'page', '', 0),
(60, 1, '2018-05-01 11:22:52', '2018-05-01 11:22:52', '', 'contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-05-12 15:33:37', '2018-05-12 15:33:37', '', 0, 'http://localhost/wp1/?page_id=60', 0, 'page', '', 0),
(234, 1, '2018-05-12 16:40:51', '2018-05-12 16:40:51', ' ', '', '', 'publish', 'closed', 'closed', '', '234', '', '', '2018-05-12 17:41:24', '2018-05-12 17:41:24', '', 0, 'http://www.shamiminfo.com/demo/wp1/?p=234', 5, 'nav_menu_item', '', 0),
(235, 1, '2018-05-12 16:40:51', '2018-05-12 16:40:51', ' ', '', '', 'publish', 'closed', 'closed', '', '235', '', '', '2018-05-12 17:41:24', '2018-05-12 17:41:24', '', 0, 'http://www.shamiminfo.com/demo/wp1/?p=235', 2, 'nav_menu_item', '', 0),
(236, 1, '2018-05-12 16:40:51', '2018-05-12 16:40:51', ' ', '', '', 'publish', 'closed', 'closed', '', '236', '', '', '2018-05-12 17:41:24', '2018-05-12 17:41:24', '', 0, 'http://www.shamiminfo.com/demo/wp1/?p=236', 1, 'nav_menu_item', '', 0),
(254, 1, '2018-05-12 17:24:40', '2018-05-12 17:24:40', ' ', '', '', 'publish', 'closed', 'closed', '', '254', '', '', '2018-05-12 17:41:24', '2018-05-12 17:41:24', '', 0, 'http://www.shamiminfo.com/demo/wp1/index.php/2018/05/12/254/', 4, 'nav_menu_item', '', 0),
(253, 1, '2018-05-12 17:24:40', '2018-05-12 17:24:40', 'hfghfgh', 'Portfolio', '', 'publish', 'closed', 'closed', '', '253-2', '', '', '2018-05-12 17:25:04', '2018-05-12 17:25:04', '', 0, 'http://www.shamiminfo.com/demo/wp1/?page_id=253', 0, 'page', '', 0),
(256, 1, '2018-05-12 17:25:04', '2018-05-12 17:25:04', 'hfghfgh', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '253-revision-v1', '', '', '2018-05-12 17:25:04', '2018-05-12 17:25:04', '', 253, 'http://www.shamiminfo.com/demo/wp1/index.php/2018/05/12/253-revision-v1/', 0, 'revision', '', 0),
(272, 1, '2018-05-12 17:40:16', '2018-05-12 17:40:16', '', 'Service', '', 'publish', 'closed', 'closed', '', 'all-service', '', '', '2018-05-12 17:40:41', '2018-05-12 17:40:41', '', 0, 'http://www.shamiminfo.com/demo/wp1/?page_id=272', 0, 'page', '', 0),
(274, 1, '2018-05-12 17:40:16', '2018-05-12 17:40:16', '', 'all-service', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2018-05-12 17:40:16', '2018-05-12 17:40:16', '', 272, 'http://www.shamiminfo.com/demo/wp1/index.php/2018/05/12/272-revision-v1/', 0, 'revision', '', 0),
(275, 1, '2018-05-12 17:40:41', '2018-05-12 17:40:41', '', 'Service', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2018-05-12 17:40:41', '2018-05-12 17:40:41', '', 272, 'http://www.shamiminfo.com/demo/wp1/index.php/2018/05/12/272-revision-v1/', 0, 'revision', '', 0),
(276, 1, '2018-05-12 17:41:24', '2018-05-12 17:41:24', ' ', '', '', 'publish', 'closed', 'closed', '', '276', '', '', '2018-05-12 17:41:24', '2018-05-12 17:41:24', '', 0, 'http://www.shamiminfo.com/demo/wp1/?p=276', 3, 'nav_menu_item', '', 0),
(144, 1, '2018-05-06 18:44:09', '0000-00-00 00:00:00', '', 'item one', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-06 18:44:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp1/?post_type=portfolio&#038;p=144', 0, 'portfolio', '', 0),
(146, 1, '2018-05-06 18:54:18', '2018-05-06 18:54:18', '', 'Item 1', '', 'publish', 'closed', 'closed', '', '146', '', '', '2018-05-06 18:54:18', '2018-05-06 18:54:18', '', 0, 'http://localhost/wp1/?post_type=portfolio&#038;p=146', 0, 'portfolio', '', 0),
(155, 1, '2018-05-06 19:06:00', '2018-05-06 19:06:00', '', 'itme2', '', 'publish', 'closed', 'closed', '', 'itme2', '', '', '2018-05-06 19:06:00', '2018-05-06 19:06:00', '', 0, 'http://localhost/wp1/?post_type=portfolio&#038;p=155', 0, 'portfolio', '', 0),
(40, 1, '2018-04-25 16:31:55', '2018-04-25 16:31:55', '<h1 class=\"wow fadeInUp\" data-wow-duration=\".5s\" data-wow-delay=\".3s\">We are smart\r\nCreative Agency</h1>\r\n<p class=\"wow fadeInUp\" data-wow-duration=\".5s\" data-wow-delay=\".5s\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, ad rerum repellat. Sequi, labore, illo. Ducimus voluptates quidem obcaecati, ad.</p>', 'First slider', '', 'publish', 'closed', 'closed', '', 'first-slider', '', '', '2018-05-10 11:21:50', '2018-05-10 11:21:50', '', 0, 'http://localhost/wp1/?post_type=slider&#038;p=40', 0, 'slider', '', 0),
(42, 1, '2018-04-27 12:50:53', '2018-04-27 12:50:53', '<h1 class=\"wow fadeInUp\" data-wow-duration=\".5s\" data-wow-delay=\".3s\">We are smart\r\nCreative Agency</h1>\r\n<p class=\"wow fadeInUp\" data-wow-duration=\".5s\" data-wow-delay=\".5s\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, ad rerum repellat. Sequi, labore, illo. Ducimus voluptates quidem obcaecati, ad.</p>', 'second slider', '', 'publish', 'closed', 'closed', '', 'second-slider', '', '', '2018-05-10 11:21:32', '2018-05-10 11:21:32', '', 0, 'http://localhost/wp1/?post_type=slider&#038;p=42', 0, 'slider', '', 0),
(98, 1, '2018-05-05 09:07:35', '2018-05-05 09:07:35', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.', 'Simple Image Post', '', 'publish', 'open', 'open', '', 'simple-image-post', '', '', '2018-05-10 11:09:41', '2018-05-10 11:09:41', '', 0, 'http://localhost/wp1/?p=98', 0, 'post', '', 1),
(103, 1, '2018-05-05 09:07:51', '2018-05-05 09:07:51', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.', 'Simple Image Post  Copy', '', 'publish', 'open', 'open', '', 'simple-image-post-copy', '', '', '2018-05-10 11:08:03', '2018-05-10 11:08:03', '', 0, 'http://localhost/wp1/2018/05/05/simple-image-post-copy/', 0, 'post', '', 0),
(104, 1, '2018-05-05 09:07:55', '2018-05-05 09:07:55', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.', 'Simple Image Post  Copy', '', 'publish', 'open', 'open', '', 'simple-image-post-copy-2', '', '', '2018-05-10 11:09:06', '2018-05-10 11:09:06', '', 0, 'http://localhost/wp1/2018/05/05/simple-image-post-copy-2/', 0, 'post', '', 0),
(105, 1, '2018-05-05 09:07:59', '2018-05-05 09:07:59', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.', 'Simple Image Post', '', 'publish', 'open', 'open', '', 'simple-image-post-copy-3', '', '', '2018-05-05 09:07:59', '2018-05-05 09:07:59', '', 0, 'http://localhost/wp1/2018/05/05/simple-image-post-copy-3/', 0, 'post', '', 0),
(127, 1, '2018-05-06 13:48:08', '2018-05-06 13:48:08', '', 'WordPress Theme', '', 'publish', 'closed', 'closed', '', 'wordpress-theme', '', '', '2018-05-06 13:48:08', '2018-05-06 13:48:08', '', 0, 'http://localhost/wp1/?post_type=service&#038;p=127', 0, 'service', '', 0),
(128, 1, '2018-05-06 13:49:50', '2018-05-06 13:49:50', '', 'Responsive Design', '', 'publish', 'closed', 'closed', '', 'responsive-design', '', '', '2018-05-06 13:49:50', '2018-05-06 13:49:50', '', 0, 'http://localhost/wp1/?post_type=service&#038;p=128', 0, 'service', '', 0),
(129, 1, '2018-05-06 13:50:16', '2018-05-06 13:50:16', '', 'Media &amp; Advertisement', '', 'publish', 'closed', 'closed', '', 'media-advertisement', '', '', '2018-05-06 13:50:16', '2018-05-06 13:50:16', '', 0, 'http://localhost/wp1/?post_type=service&#038;p=129', 0, 'service', '', 0),
(130, 1, '2018-05-06 13:50:39', '2018-05-06 13:50:39', '', 'Graphic Design', '', 'publish', 'closed', 'closed', '', 'graphic-design', '', '', '2018-05-06 13:50:39', '2018-05-06 13:50:39', '', 0, 'http://localhost/wp1/?post_type=service&#038;p=130', 0, 'service', '', 0),
(131, 1, '2018-05-06 13:51:08', '2018-05-06 13:51:08', '', 'Apps Development', '', 'publish', 'closed', 'closed', '', 'apps-development', '', '', '2018-05-06 13:51:08', '2018-05-06 13:51:08', '', 0, 'http://localhost/wp1/?post_type=service&#038;p=131', 0, 'service', '', 0),
(132, 1, '2018-05-06 13:51:33', '2018-05-06 13:51:33', '', 'Networking', '', 'publish', 'closed', 'closed', '', 'networking', '', '', '2018-05-06 13:51:33', '2018-05-06 13:51:33', '', 0, 'http://localhost/wp1/?post_type=service&#038;p=132', 0, 'service', '', 0),
(157, 1, '2018-05-06 19:06:25', '2018-05-06 19:06:25', '', 'itme3', '', 'publish', 'closed', 'closed', '', 'itme3', '', '', '2018-05-06 19:06:25', '2018-05-06 19:06:25', '', 0, 'http://localhost/wp1/?post_type=portfolio&#038;p=156', 0, 'portfolio', '', 0),
(158, 1, '2018-05-06 19:10:20', '2018-05-06 19:10:20', '', 'item4', '', 'publish', 'closed', 'closed', '', 'item4', '', '', '2018-05-06 19:10:20', '2018-05-06 19:10:20', '', 0, 'http://localhost/wp1/?post_type=portfolio&#038;p=157', 0, 'portfolio', '', 0),
(159, 1, '2018-05-06 19:16:25', '2018-05-06 19:16:25', '', 'Item 1  Copy', '', 'publish', 'closed', 'closed', '', '146-copy', '', '', '2018-05-06 19:16:25', '2018-05-06 19:16:25', '', 0, 'http://localhost/wp1/portfolio/146-copy/', 0, 'portfolio', '', 0),
(160, 1, '2018-05-06 19:16:33', '2018-05-06 19:16:33', '', 'itme2  Copy', '', 'publish', 'closed', 'closed', '', 'itme2-copy', '', '', '2018-05-06 19:16:33', '2018-05-06 19:16:33', '', 0, 'http://localhost/wp1/portfolio/itme2-copy/', 0, 'portfolio', '', 0),
(161, 1, '2018-05-06 19:16:37', '2018-05-06 19:16:37', '', 'item4  Copy', '', 'publish', 'closed', 'closed', '', 'item4-copy', '', '', '2018-05-06 19:16:37', '2018-05-06 19:16:37', '', 0, 'http://localhost/wp1/portfolio/item4-copy/', 0, 'portfolio', '', 0),
(162, 1, '2018-05-06 19:16:41', '2018-05-06 19:16:41', '', 'itme3  Copy', '', 'publish', 'closed', 'closed', '', 'itme3-copy', '', '', '2018-05-06 19:16:41', '2018-05-06 19:16:41', '', 0, 'http://localhost/wp1/portfolio/itme3-copy/', 0, 'portfolio', '', 0),
(93, 1, '2018-05-04 16:40:10', '2018-05-04 16:40:10', '', 'First Item', '', 'publish', 'closed', 'closed', '', 'first-item', '', '', '2018-05-04 16:40:10', '2018-05-04 16:40:10', '', 0, 'http://localhost/wp1/?post_type=testimonial&#038;p=93', 0, 'testimonial', '', 0),
(95, 1, '2018-05-04 16:45:59', '2018-05-04 16:45:59', '', 'First Item  Copy', '', 'publish', 'closed', 'closed', '', 'first-item-copy', '', '', '2018-05-04 16:45:59', '2018-05-04 16:45:59', '', 0, 'http://localhost/wp1/testimonial/first-item-copy/', 0, 'testimonial', '', 0),
(96, 1, '2018-05-04 16:46:03', '2018-05-04 16:46:03', '', 'First Item  Copy', '', 'publish', 'closed', 'closed', '', 'first-item-copy-2', '', '', '2018-05-04 16:46:03', '2018-05-04 16:46:03', '', 0, 'http://localhost/wp1/testimonial/first-item-copy-2/', 0, 'testimonial', '', 0),
(163, 1, '2018-05-06 20:03:09', '2018-05-06 20:03:09', '<label> Your Name (required)\n    [text* your-name] </label>\n<label> Your Email (required)\n    [email* your-email] </label>\n<label> Subject\n    [text your-subject] </label>\n<label> Your Message\n    [textarea your-message] </label>\n[submit \"Send\"]\nHome \"[your-subject]\"\n[your-name] <md.shamimtpi@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\nMessage Body:\n[your-message]\n--\nThis e-mail was sent from a contact form on Home (http://localhost/wp1)\nmd.shamimtpi@gmail.com\nReply-To: [your-email]\nHome \"[your-subject]\"\nHome <md.shamimtpi@gmail.com>\nMessage Body:\n[your-message]\n--\nThis e-mail was sent from a contact form on Home (http://localhost/wp1)\n[your-email]\nReply-To: md.shamimtpi@gmail.com\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1-2', '', '', '2018-05-06 20:03:09', '2018-05-06 20:03:09', '', 0, 'http://localhost/wp1/?post_type=wpcf7_contact_form&#038;p=163', 0, 'wpcf7_contact_form', '', 0),
(164, 1, '2018-05-06 20:10:12', '2018-05-06 20:10:12', '<div class=\"form-group\">\n	[text* names id:name class:form-control placeholder \"Your Name\"]\n						</div>\n						<div class=\"form-group\">\n[email* your-email id:email class:form-control placeholder \"Your Email\"]\n						</div>\n<div class=\"form-group\">\n[text* your-subject id:subject class:form-control placeholder \"Your Name\"]\n						</div>\n						<div class=\"form-group\">\n[textarea Message id:message class:form-control placeholder \"Message\"]\n						</div>\n[submit id:contact-submit  class:btn class:btn-transparen  \"submit\"]\n1\nHome \"[your-subject]\"\n[your-name] <md.shamimtpi@gmail.com>\nmd.shamimtpi@gmail.com\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\nMessage Body:\n[your-message]\n--\nThis e-mail was sent from a contact form on Home (http://localhost/wp1)\nReply-To: [your-email]\nHome \"[your-subject]\"\nHome <md.shamimtpi@gmail.com>\n[your-email]\nMessage Body:\n[your-message]\n--\nThis e-mail was sent from a contact form on Home (http://localhost/wp1)\nReply-To: md.shamimtpi@gmail.com\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'contact form', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2018-05-06 20:10:12', '2018-05-06 20:10:12', '', 0, 'http://localhost/wp1/?post_type=wpcf7_contact_form&#038;p=164', 0, 'wpcf7_contact_form', '', 0),
(255, 1, '2018-05-12 17:24:40', '2018-05-12 17:24:40', 'hfghfgh', '', '', 'inherit', 'closed', 'closed', '', '253-revision-v1', '', '', '2018-05-12 17:24:40', '2018-05-12 17:24:40', '', 253, 'http://www.shamiminfo.com/demo/wp1/index.php/2018/05/12/253-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2018-05-12 15:33:37', '2018-05-12 15:33:37', '', 'contact', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-05-12 15:33:37', '2018-05-12 15:33:37', '', 60, 'http://www.shamiminfo.com/demo/wp1/index.php/2018/05/12/60-revision-v1/', 0, 'revision', '', 0),
(223, 1, '2018-05-12 15:33:25', '2018-05-12 15:33:25', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-05-12 15:33:25', '2018-05-12 15:33:25', '', 51, 'http://www.shamiminfo.com/demo/wp1/index.php/2018/05/12/51-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2018-05-10 10:53:59', '2018-05-10 10:53:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-05-10 10:53:59', '2018-05-10 10:53:59', '', 47, 'http://www.shamiminfo.com/demo/wp1/index.php/2018/05/10/47-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2018-05-10 10:57:44', '2018-05-10 10:57:44', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-05-10 10:57:44', '2018-05-10 10:57:44', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/logo.png', 0, 'attachment', 'image/png', 0),
(181, 1, '2018-05-10 10:58:29', '2018-05-10 10:58:29', '', 'logo-white', '', 'inherit', 'open', 'closed', '', 'logo-white', '', '', '2018-05-10 10:58:29', '2018-05-10 10:58:29', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/logo-white.png', 0, 'attachment', 'image/png', 0),
(182, 1, '2018-05-10 10:59:35', '2018-05-10 10:59:35', '', 'member', '', 'inherit', 'open', 'closed', '', 'member', '', '', '2018-05-10 10:59:35', '2018-05-10 10:59:35', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/member.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2018-05-10 11:05:13', '2018-05-10 11:05:13', '', 'post-3', '', 'inherit', 'open', 'closed', '', 'post-3', '', '', '2018-05-10 11:05:13', '2018-05-10 11:05:13', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/post-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2018-05-10 11:07:57', '2018-05-10 11:07:57', '', 'post-1', '', 'inherit', 'open', 'closed', '', 'post-1', '', '', '2018-05-10 11:07:57', '2018-05-10 11:07:57', '', 103, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/post-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2018-05-10 11:08:00', '2018-05-10 11:08:00', '', 'post-2', '', 'inherit', 'open', 'closed', '', 'post-2', '', '', '2018-05-10 11:08:00', '2018-05-10 11:08:00', '', 103, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/post-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2018-05-10 11:08:02', '2018-05-10 11:08:02', '', 'post-3', '', 'inherit', 'open', 'closed', '', 'post-3-2', '', '', '2018-05-10 11:08:02', '2018-05-10 11:08:02', '', 103, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/post-3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2018-05-10 11:08:03', '2018-05-10 11:08:03', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.', 'Simple Image Post  Copy', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-05-10 11:08:03', '2018-05-10 11:08:03', '', 103, 'http://www.shamiminfo.com/demo/wp1/index.php/2018/05/10/103-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2018-05-10 11:09:06', '2018-05-10 11:09:06', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.', 'Simple Image Post  Copy', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2018-05-10 11:09:06', '2018-05-10 11:09:06', '', 104, 'http://www.shamiminfo.com/demo/wp1/index.php/2018/05/10/104-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(189, 1, '2018-05-10 11:09:41', '2018-05-10 11:09:41', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.', 'Simple Image Post', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2018-05-10 11:09:41', '2018-05-10 11:09:41', '', 98, 'http://www.shamiminfo.com/demo/wp1/index.php/2018/05/10/98-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2018-05-10 11:21:27', '2018-05-10 11:21:27', '', 'slider-bg-1', '', 'inherit', 'open', 'closed', '', 'slider-bg-1', '', '', '2018-05-10 11:21:27', '2018-05-10 11:21:27', '', 42, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/04/slider-bg-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 1, '2018-05-10 11:21:30', '2018-05-10 11:21:30', '', 'slider-bg-2', '', 'inherit', 'open', 'closed', '', 'slider-bg-2', '', '', '2018-05-10 11:21:30', '2018-05-10 11:21:30', '', 42, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/04/slider-bg-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2018-05-10 17:51:18', '2018-05-10 17:51:18', '', 'about-2', '', 'inherit', 'open', 'closed', '', 'about-2', '', '', '2018-05-10 17:51:18', '2018-05-10 17:51:18', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/about-2.png', 0, 'attachment', 'image/png', 0),
(193, 1, '2018-05-10 17:52:07', '2018-05-10 17:52:07', '', 'gallery-5', '', 'inherit', 'open', 'closed', '', 'gallery-5', '', '', '2018-05-10 17:52:07', '2018-05-10 17:52:07', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/gallery-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(194, 1, '2018-05-10 17:52:44', '2018-05-10 17:52:44', '', 'gallery-2', '', 'inherit', 'open', 'closed', '', 'gallery-2', '', '', '2018-05-10 17:52:44', '2018-05-10 17:52:44', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/gallery-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 1, '2018-05-10 17:54:08', '2018-05-10 17:54:08', '', 'company-image', '', 'inherit', 'open', 'closed', '', 'company-image', '', '', '2018-05-10 17:54:08', '2018-05-10 17:54:08', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/company-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(196, 1, '2018-05-10 17:54:10', '2018-05-10 17:54:10', '', 'company-image-2', '', 'inherit', 'open', 'closed', '', 'company-image-2', '', '', '2018-05-10 17:54:10', '2018-05-10 17:54:10', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/company-image-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(197, 1, '2018-05-10 17:54:12', '2018-05-10 17:54:12', '', 'company-image-3', '', 'inherit', 'open', 'closed', '', 'company-image-3', '', '', '2018-05-10 17:54:12', '2018-05-10 17:54:12', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/company-image-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(198, 1, '2018-05-10 17:54:13', '2018-05-10 17:54:13', '', 'gallery-1', '', 'inherit', 'open', 'closed', '', 'gallery-1', '', '', '2018-05-10 17:54:13', '2018-05-10 17:54:13', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/gallery-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2018-05-10 17:54:15', '2018-05-10 17:54:15', '', 'gallery-2', '', 'inherit', 'open', 'closed', '', 'gallery-2-2', '', '', '2018-05-10 17:54:15', '2018-05-10 17:54:15', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/gallery-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2018-05-10 17:54:17', '2018-05-10 17:54:17', '', 'gallery-3', '', 'inherit', 'open', 'closed', '', 'gallery-3', '', '', '2018-05-10 17:54:17', '2018-05-10 17:54:17', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/gallery-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2018-05-10 17:54:18', '2018-05-10 17:54:18', '', 'gallery-4', '', 'inherit', 'open', 'closed', '', 'gallery-4', '', '', '2018-05-10 17:54:18', '2018-05-10 17:54:18', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/gallery-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2018-05-10 17:54:20', '2018-05-10 17:54:20', '', 'gallery-5', '', 'inherit', 'open', 'closed', '', 'gallery-5-2', '', '', '2018-05-10 17:54:20', '2018-05-10 17:54:20', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/gallery-5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(203, 1, '2018-05-10 17:56:01', '2018-05-10 17:56:01', '', 'member-1', '', 'inherit', 'open', 'closed', '', 'member-1', '', '', '2018-05-10 17:56:01', '2018-05-10 17:56:01', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/member-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(204, 1, '2018-05-10 17:56:03', '2018-05-10 17:56:03', '', 'member-2', '', 'inherit', 'open', 'closed', '', 'member-2', '', '', '2018-05-10 17:56:03', '2018-05-10 17:56:03', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/member-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2018-05-10 17:56:05', '2018-05-10 17:56:05', '', 'member-3', '', 'inherit', 'open', 'closed', '', 'member-3', '', '', '2018-05-10 17:56:05', '2018-05-10 17:56:05', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/member-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(207, 1, '2018-05-10 18:07:58', '2018-05-10 18:07:58', '', 'about-header', '', 'inherit', 'open', 'closed', '', 'about-header', '', '', '2018-05-10 18:07:58', '2018-05-10 18:07:58', '', 0, 'http://www.shamiminfo.com/demo/wp1/wp-content/uploads/2018/05/about-header.jpg', 0, 'attachment', 'image/jpeg', 0),
(222, 1, '2018-05-12 14:17:32', '2018-05-12 14:17:32', 'WooComWooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.merce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.', 'Product', 'WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.', 'publish', 'open', 'closed', '', 'product', '', '', '2018-05-12 14:18:25', '2018-05-12 14:18:25', '', 0, 'http://www.shamiminfo.com/demo/wp1/?post_type=product&#038;p=222', 1, 'product', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 20, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Design', 'design', 0),
(3, 'Development', 'development', 0),
(4, 'IOS App', 'ios-app', 0),
(5, 'Photography', 'photography', 0),
(6, 'Mainmenu', 'mainmenu', 0),
(7, 'simple', 'simple', 0),
(8, 'grouped', 'grouped', 0),
(9, 'variable', 'variable', 0),
(10, 'external', 'external', 0),
(11, 'exclude-from-search', 'exclude-from-search', 0),
(12, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(13, 'featured', 'featured', 0),
(14, 'outofstock', 'outofstock', 0),
(15, 'rated-1', 'rated-1', 0),
(16, 'rated-2', 'rated-2', 0),
(17, 'rated-3', 'rated-3', 0),
(18, 'rated-4', 'rated-4', 0),
(19, 'rated-5', 'rated-5', 0),
(20, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(235, 6, 0),
(254, 6, 0),
(146, 2, 0),
(155, 3, 0),
(98, 1, 0),
(103, 1, 0),
(104, 1, 0),
(105, 1, 0),
(157, 4, 0),
(158, 5, 0),
(159, 2, 0),
(160, 3, 0),
(161, 5, 0),
(162, 4, 0),
(234, 6, 0),
(276, 6, 0),
(236, 6, 0),
(222, 7, 0),
(222, 20, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'portfolio_category', '', 0, 2),
(3, 3, 'portfolio_category', '', 0, 2),
(4, 4, 'portfolio_category', '', 0, 2),
(5, 5, 'portfolio_category', '', 0, 2),
(6, 6, 'nav_menu', '', 0, 5),
(7, 7, 'product_type', '', 0, 1),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_type', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 0),
(20, 20, 'product_cat', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'shamim'),
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
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html,wpsl_signup_pointer,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"5bbc7990f531bf8b45a5334f22e830691f8c440e077b612158ca98d00a9baaff\";a:4:{s:10:\"expiration\";i:1526911150;s:2:\"ip\";s:14:\"180.148.215.74\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0\";s:5:\"login\";i:1525701550;}s:64:\"5d580fadad26283edf78d9b452bce9f866372ceee6c3b14c7d02656908f8f4f1\";a:4:{s:10:\"expiration\";i:1526929200;s:2:\"ip\";s:14:\"180.148.215.74\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0\";s:5:\"login\";i:1525719600;}s:64:\"d0161bb0048191db3f0fba731dab4a82354f4c0a2bfd07db6267fd31f4a4428f\";a:4:{s:10:\"expiration\";i:1527107157;s:2:\"ip\";s:13:\"103.84.245.74\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0\";s:5:\"login\";i:1525897557;}s:64:\"9fc1afcb62059420da5d47ac6ec41a5088e781cf27d11ce3befbd59810363de6\";a:4:{s:10:\"expiration\";i:1526316806;s:2:\"ip\";s:13:\"103.84.245.74\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0\";s:5:\"login\";i:1526144006;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"103.84.245.0\";}'),
(19, 1, 'default_password_nag', ''),
(27, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"bcbe3365e6ac95ea2c0343a2395834dd\";a:10:{s:3:\"key\";s:32:\"bcbe3365e6ac95ea2c0343a2395834dd\";s:10:\"product_id\";i:222;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:300;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:300;s:8:\"line_tax\";i:0;}}}'),
(28, 1, 'dismissed_install_notice', '1'),
(29, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:55:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(20, 1, 'closedpostboxes_page', 'a:0:{}'),
(21, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(23, 1, 'wp_user-settings-time', '1525951236'),
(24, 1, 'nav_menu_recently_edited', '6'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:24:\"add-post-type-html-block\";i:1;s:20:\"add-post-type-slider\";i:2;s:25:\"add-post-type-testimonial\";i:3;s:21:\"add-post-type-service\";i:4;s:23:\"add-post-type-portfolio\";i:5;s:12:\"add-post_tag\";i:6;s:22:\"add-portfolio_category\";}'),
(30, 1, 'screen_layout_product', '2');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'shamim', '$P$B5Jall6VFmYhfkbVIEKLKZvtOJK3kr/', 'shamim', 'md.shamimtpi@gmail.com', '', '2018-05-07 13:59:00', '', 0, 'shamim');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(3, '1', 'a:8:{s:4:\"cart\";s:357:\"a:1:{s:32:\"bcbe3365e6ac95ea2c0343a2395834dd\";a:10:{s:3:\"key\";s:32:\"bcbe3365e6ac95ea2c0343a2395834dd\";s:10:\"product_id\";i:222;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:300;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:300;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:408:\"a:15:{s:8:\"subtotal\";s:6:\"300.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"300.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"300.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:710:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:22:\"md.shamimtpi@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;}', 1526307631);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`, `latlng`) VALUES
(1, 1, 'California', '', '', '', '', '36.778261', '-119.4179323999', '0', '', '', '', 1, 0, 0, '', '', '\0\0\0\0\0\0\0J`sžcB@˜`‰g¿Ú]À'),
(2, 1, 'California', '', '', '', '', '36.778261', '-119.4179323999', '0', '', '', '', 1, 0, 0, '', '', '\0\0\0\0\0\0\0J`sžcB@˜`‰g¿Ú]À');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_categories`
--

CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_category_maps`
--

CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_circles`
--

CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '400', '45.950464398418106', '-109.81550500000003', '45.950464398418106,-109.81550500000003', 2, '0', 1, 0, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '%', 'px', 1, 0, 1, 2, 0, '', 'a:2:{s:19:\"store_locator_style\";s:6:\"modern\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_rectangles`
--

CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_create_map`
--
ALTER TABLE `wp_create_map`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `wp_group_map`
--
ALTER TABLE `wp_group_map`
  ADD PRIMARY KEY (`group_map_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_map_locations`
--
ALTER TABLE `wp_map_locations`
  ADD PRIMARY KEY (`location_id`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_create_map`
--
ALTER TABLE `wp_create_map`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_group_map`
--
ALTER TABLE `wp_group_map`
  MODIFY `group_map_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_map_locations`
--
ALTER TABLE `wp_map_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=740;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=881;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
