-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Agu 2024 pada 16.55
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('056fc329aaaa757d31db450f525da23fde4d1b36', 'i:1;', 1714396276),
('056fc329aaaa757d31db450f525da23fde4d1b36:timer', 'i:1714396276;', 1714396276),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:0:{}s:11:\"permissions\";a:0:{}s:5:\"roles\";a:0:{}}', 1714471002);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `expectant_mothers`
--

CREATE TABLE `expectant_mothers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posyandu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `registration_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `spouse_name` varchar(255) DEFAULT NULL,
  `spouse_age` int(11) DEFAULT NULL,
  `no_of_pregnancy` int(11) NOT NULL,
  `address` text DEFAULT NULL,
  `education_level` varchar(255) DEFAULT NULL,
  `spouse_education_level` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `spouse_occupation` varchar(255) DEFAULT NULL,
  `hpht` date DEFAULT NULL,
  `tp` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `expectant_mothers`
--

INSERT INTO `expectant_mothers` (`id`, `posyandu_id`, `user_id`, `registration_number`, `name`, `age`, `spouse_name`, `spouse_age`, `no_of_pregnancy`, `address`, `education_level`, `spouse_education_level`, `occupation`, `spouse_occupation`, `hpht`, `tp`, `created_at`, `updated_at`) VALUES
(1, 3, 102, 'BUMIL00001.POSYD-00003', 'Irma Wati', 37, 'Antoni', 40, 3, 'JAMBANGAN', 'Tidak Tamat', 'SD', 'IRT', 'Tani', '2019-11-20', '2020-08-27', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(2, 10, 103, 'BUMIL00002.POSYD-00010', 'Mimin', 25, 'Suwarno', 39, 1, 'MARDIASRI', 'SMU', 'SD', 'IRT', 'Tani', '2019-11-21', '2020-09-28', '2024-04-29 09:45:20', '2024-04-29 09:45:20'),
(3, 6, 104, 'BUMIL00003.POSYD-00006', 'Desmawati', 29, 'Ruslan', 35, 1, 'KEDUNGPUTRI', 'SD', 'SD', 'IRT', 'Tani', '2019-08-12', '2020-05-19', '2024-04-29 09:45:20', '2024-04-29 09:45:20'),
(4, 8, 105, 'BUMIL00004.POSYD-00008', 'Santi Kurniasih', 17, 'Sudar', 31, 1, 'MARDIASRI', 'SD', 'SD', 'IRT', 'SWASTA', '2020-01-20', '2020-10-27', '2024-04-29 09:45:20', '2024-04-29 09:45:20'),
(5, 3, 106, 'BUMIL00005.POSYD-00003', 'Maya Sartika', 21, 'Aprilian', 24, 1, 'JAMBANGAN', 'SMP', 'SMU', 'IRT', 'Swasta', '2019-12-10', '2020-09-17', '2024-04-29 09:45:21', '2024-04-29 09:45:21'),
(6, 6, 107, 'BUMIL00006.POSYD-00006', 'Dewi Sartika', 29, 'Puji Budianto', 27, 1, 'GELUNG', 'SMU', 'SMU', 'IRT', 'Swasta', '2020-02-28', '2020-12-05', '2024-04-29 09:45:21', '2024-04-29 09:45:21'),
(7, 7, 108, 'BUMIL00007.POSYD-00007', 'Septa Maryani', 22, 'Ari Anggoro', 27, 1, 'NGALE', 'SMU', 'SMU', 'IRT', 'Tani', '2019-09-20', '2020-06-27', '2024-04-29 09:45:21', '2024-04-29 09:45:21'),
(8, 1, 109, 'BUMIL00008.POSYD-00001', 'Fevtiyanti', 17, 'Heru Susilo', 23, 1, 'NGALE', 'SMP', 'SMP', 'IRT', 'Tani', '2019-10-05', '2020-07-12', '2024-04-29 09:45:21', '2024-04-29 09:45:21'),
(9, 4, 110, 'BUMIL00009.POSYD-00004', 'Nurul', 23, 'Isnaini', 31, 1, 'JAMBANGAN', 'PT', 'PT', 'IRT', 'Wirawasta', '2019-11-26', '2020-08-03', '2024-04-29 09:45:22', '2024-04-29 09:45:22'),
(10, 6, 111, 'BUMIL00010.POSYD-00006', 'Nita', 26, 'Ari', 25, 1, 'MARDIASRI', 'SMU', 'SMU', 'IRT', 'Honorer', '2020-01-30', '2020-10-07', '2024-04-29 09:45:22', '2024-04-29 09:45:22'),
(11, 7, 112, 'BUMIL00011.POSYD-00007', 'Susan', 20, 'Epran', 25, 2, 'GELUNG', 'SMU', 'SD', 'IRT', 'Tani', '2019-11-07', '2020-08-14', '2024-04-29 09:45:22', '2024-04-29 09:45:22'),
(12, 2, 113, 'BUMIL00012.POSYD-00002', 'Eli Suryani', 26, 'Andika Lubith', 27, 2, 'BABATAN', 'SMU', 'SMU', 'Dagang', 'Swasta', '2019-10-14', '2020-07-21', '2024-04-29 09:45:23', '2024-04-29 09:45:23'),
(13, 8, 114, 'BUMIL00013.POSYD-00008', 'Vika', 30, 'Burlian', 27, 2, 'SEMEN', 'D3', 'SMU', 'IRT', 'Tani', '2020-01-10', '2020-10-17', '2024-04-29 09:45:23', '2024-04-29 09:45:23'),
(14, 3, 115, 'BUMIL00014.POSYD-00003', 'Atun', 24, 'Eprison', 27, 2, 'JAMBANGAN', 'SMU', 'SMP', 'IRT', 'Tani', '2020-01-05', '2020-10-12', '2024-04-29 09:45:23', '2024-04-29 09:45:23'),
(15, 10, 116, 'BUMIL00015.POSYD-00010', 'Hernika', 19, 'Budi', 29, 2, 'JEGOLAN', 'SMP', 'SD', 'IRT', 'Tani', '2019-10-14', '2020-07-21', '2024-04-29 09:45:23', '2024-04-29 09:45:23'),
(16, 2, 117, 'BUMIL00016.POSYD-00002', 'Desi Lestari', 22, 'Oki', 22, 2, 'MARDIASRI', 'SMP', 'SMA', 'Tani', 'Tani', '2019-12-10', '2020-09-17', '2024-04-29 09:45:24', '2024-04-29 09:45:24'),
(17, 2, 118, 'BUMIL00017.POSYD-00002', 'Purnama Sari', 21, 'Perizai', 27, 1, 'SEMEN', 'SMP', 'Tidak Tamat SD', 'Tani', 'Tani', '2019-12-14', '2020-09-21', '2024-04-29 09:45:24', '2024-04-29 09:45:24'),
(18, 8, 119, 'BUMIL00018.POSYD-00008', 'Puji Lestari', 19, 'Muhtaron', 25, 1, 'JEGOLAN', 'SMP', 'SD', 'IRT', 'Tani', '2019-10-23', '2020-07-30', '2024-04-29 09:45:24', '2024-04-29 09:45:24'),
(19, 1, 120, 'BUMIL00019.POSYD-00001', 'Tri Astuti', 28, 'Andi', 34, 2, 'NGALE', 'SMP', 'PT', 'IRT', 'Honorer', '2020-01-05', '2020-10-12', '2024-04-29 09:45:25', '2024-04-29 09:45:25'),
(20, 3, 121, 'BUMIL00020.POSYD-00003', 'Agustin', 18, 'Juliyanto', 21, 1, 'BABATAN', 'SMU', 'SMU', 'IRT', 'Tani', '2019-09-26', '2020-06-02', '2024-04-29 09:45:25', '2024-04-29 09:45:25'),
(21, 4, 122, 'BUMIL00021.POSYD-00004', 'Novita Sari', 26, 'Eko Saputra', 36, 2, 'KEDUNGPUTRI', 'SMU', 'SMU', 'IRT', 'Swasta', '2020-02-02', '2020-11-09', '2024-04-29 09:45:25', '2024-04-29 09:45:25'),
(22, 9, 123, 'BUMIL00022.POSYD-00009', 'Nasiroh', 25, 'Zairi', 24, 1, 'BABATAN', 'PT', 'PT', 'IRT', 'Pengusaha', '2019-09-26', '2020-07-03', '2024-04-29 09:45:25', '2024-04-29 09:45:25'),
(23, 2, 124, 'BUMIL00023.POSYD-00002', 'Yesi Apriani', 20, 'Andrian Gufa', 24, 1, 'GELUNG', 'SMU', 'SMU', 'IRT', 'Swasta', '2019-11-19', '2020-08-26', '2024-04-29 09:45:26', '2024-04-29 09:45:26'),
(24, 8, 125, 'BUMIL00024.POSYD-00008', 'Kurnia', 27, 'Alen', 30, 2, 'JAMBANGAN', 'SD', 'SD', 'IRT', 'Tani', '2019-12-13', '2020-09-20', '2024-04-29 09:45:26', '2024-04-29 09:45:26'),
(25, 7, 126, 'BUMIL00025.POSYD-00007', 'Riska', 23, 'Tri Helenza', 24, 1, 'KEDUNGPUTRI', 'SMU', 'SMU', 'IRT', 'Swasta', '2020-02-22', '2020-11-29', '2024-04-29 09:45:26', '2024-04-29 09:45:26'),
(26, 3, 127, 'BUMIL00026.POSYD-00003', 'Novita', 22, 'Suganda', 23, 2, 'NGALE', 'SMU', 'SMU', 'IRT', 'Dagang', '2019-12-01', '2020-09-08', '2024-04-29 09:45:27', '2024-04-29 09:45:27'),
(27, 7, 128, 'BUMIL00027.POSYD-00007', 'Riya Maya Sari', 26, 'Romadon', 25, 2, 'SEMEN', 'PT', 'PT', 'IRT', 'Wiraswasta', '2019-09-20', '2020-06-27', '2024-04-29 09:45:27', '2024-04-29 09:45:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
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
-- Struktur dari tabel `job_batches`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_25_173610_create_permission_tables', 1),
(5, '2024_03_25_173835_create_posyandus_table', 1),
(6, '2024_04_25_171809_create_nurses_table', 1),
(7, '2024_04_25_171814_create_officers_table', 1),
(8, '2024_04_25_171815_create_expectant_mothers_table', 1),
(9, '2024_04_25_171816_create_posyandu_schedules_table', 1),
(10, '2024_04_25_171841_create_posyandu_activities_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 31),
(2, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 33),
(2, 'App\\Models\\User', 34),
(2, 'App\\Models\\User', 35),
(2, 'App\\Models\\User', 36),
(2, 'App\\Models\\User', 37),
(2, 'App\\Models\\User', 38),
(2, 'App\\Models\\User', 39),
(2, 'App\\Models\\User', 40),
(2, 'App\\Models\\User', 41),
(2, 'App\\Models\\User', 42),
(2, 'App\\Models\\User', 43),
(2, 'App\\Models\\User', 44),
(2, 'App\\Models\\User', 45),
(2, 'App\\Models\\User', 46),
(2, 'App\\Models\\User', 47),
(2, 'App\\Models\\User', 48),
(2, 'App\\Models\\User', 49),
(2, 'App\\Models\\User', 50),
(2, 'App\\Models\\User', 51),
(3, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 53),
(3, 'App\\Models\\User', 54),
(3, 'App\\Models\\User', 55),
(3, 'App\\Models\\User', 56),
(3, 'App\\Models\\User', 57),
(3, 'App\\Models\\User', 58),
(3, 'App\\Models\\User', 59),
(3, 'App\\Models\\User', 60),
(3, 'App\\Models\\User', 61),
(3, 'App\\Models\\User', 62),
(3, 'App\\Models\\User', 63),
(3, 'App\\Models\\User', 64),
(3, 'App\\Models\\User', 65),
(3, 'App\\Models\\User', 66),
(3, 'App\\Models\\User', 67),
(3, 'App\\Models\\User', 68),
(3, 'App\\Models\\User', 69),
(3, 'App\\Models\\User', 70),
(3, 'App\\Models\\User', 71),
(3, 'App\\Models\\User', 72),
(3, 'App\\Models\\User', 73),
(3, 'App\\Models\\User', 74),
(3, 'App\\Models\\User', 75),
(3, 'App\\Models\\User', 76),
(3, 'App\\Models\\User', 77),
(3, 'App\\Models\\User', 78),
(3, 'App\\Models\\User', 79),
(3, 'App\\Models\\User', 80),
(3, 'App\\Models\\User', 81),
(3, 'App\\Models\\User', 82),
(3, 'App\\Models\\User', 83),
(3, 'App\\Models\\User', 84),
(3, 'App\\Models\\User', 85),
(3, 'App\\Models\\User', 86),
(3, 'App\\Models\\User', 87),
(3, 'App\\Models\\User', 88),
(3, 'App\\Models\\User', 89),
(3, 'App\\Models\\User', 90),
(3, 'App\\Models\\User', 91),
(3, 'App\\Models\\User', 92),
(3, 'App\\Models\\User', 93),
(3, 'App\\Models\\User', 94),
(3, 'App\\Models\\User', 95),
(3, 'App\\Models\\User', 96),
(3, 'App\\Models\\User', 97),
(3, 'App\\Models\\User', 98),
(3, 'App\\Models\\User', 99),
(3, 'App\\Models\\User', 100),
(3, 'App\\Models\\User', 101),
(4, 'App\\Models\\User', 102),
(4, 'App\\Models\\User', 103),
(4, 'App\\Models\\User', 104),
(4, 'App\\Models\\User', 105),
(4, 'App\\Models\\User', 106),
(4, 'App\\Models\\User', 107),
(4, 'App\\Models\\User', 108),
(4, 'App\\Models\\User', 109),
(4, 'App\\Models\\User', 110),
(4, 'App\\Models\\User', 111),
(4, 'App\\Models\\User', 112),
(4, 'App\\Models\\User', 113),
(4, 'App\\Models\\User', 114),
(4, 'App\\Models\\User', 115),
(4, 'App\\Models\\User', 116),
(4, 'App\\Models\\User', 117),
(4, 'App\\Models\\User', 118),
(4, 'App\\Models\\User', 119),
(4, 'App\\Models\\User', 120),
(4, 'App\\Models\\User', 121),
(4, 'App\\Models\\User', 122),
(4, 'App\\Models\\User', 123),
(4, 'App\\Models\\User', 124),
(4, 'App\\Models\\User', 125),
(4, 'App\\Models\\User', 126),
(4, 'App\\Models\\User', 127),
(4, 'App\\Models\\User', 128);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nurses`
--

CREATE TABLE `nurses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posyandu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `identity_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `domicile` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nurses`
--

INSERT INTO `nurses` (`id`, `posyandu_id`, `user_id`, `identity_number`, `name`, `domicile`, `created_at`, `updated_at`) VALUES
(1, 1, 52, 'BIDAN-00001.POSYD-00001', 'Umi Laksita', 'Ds. Moch. Ramdan No. 226', '2024-04-29 09:45:05', '2024-04-29 09:45:05'),
(2, 1, 53, 'BIDAN-00001.POSYD-00001', 'Ulya Wulandari', 'Ds. Laksamana No. 713', '2024-04-29 09:45:05', '2024-04-29 09:45:05'),
(3, 1, 54, 'BIDAN-00001.POSYD-00001', 'Clara Melani', 'Dk. Tambak No. 600', '2024-04-29 09:45:05', '2024-04-29 09:45:05'),
(4, 1, 55, 'BIDAN-00001.POSYD-00001', 'Hilda Haryanti', 'Jr. Bagonwoto  No. 449', '2024-04-29 09:45:05', '2024-04-29 09:45:05'),
(5, 1, 56, 'BIDAN-00001.POSYD-00001', 'Salimah Andriani', 'Ds. Dewi Sartika No. 432', '2024-04-29 09:45:06', '2024-04-29 09:45:06'),
(6, 2, 57, 'BIDAN-00002.POSYD-00002', 'Mila Padma Yuliarti', 'Jr. Babadak No. 840', '2024-04-29 09:45:06', '2024-04-29 09:45:06'),
(7, 2, 58, 'BIDAN-00002.POSYD-00002', 'Iriana Mayasari', 'Jln. Kusmanto No. 676', '2024-04-29 09:45:06', '2024-04-29 09:45:06'),
(8, 2, 59, 'BIDAN-00002.POSYD-00002', 'Wani Agnes Farida ', 'Psr. Baranang Siang No. 634', '2024-04-29 09:45:07', '2024-04-29 09:45:07'),
(9, 2, 60, 'BIDAN-00002.POSYD-00002', 'Usyi Pratiwi ', 'Jln. Umalas No. 268', '2024-04-29 09:45:07', '2024-04-29 09:45:07'),
(10, 2, 61, 'BIDAN-00002.POSYD-00002', 'Nurul Pertiwi', 'Ds. Tubagus Ismail No. 379', '2024-04-29 09:45:07', '2024-04-29 09:45:07'),
(11, 3, 62, 'BIDAN-00003.POSYD-00003', 'Wirda Diah Mayasari', 'Kpg. Abdul Muis No. 456', '2024-04-29 09:45:07', '2024-04-29 09:45:07'),
(12, 3, 63, 'BIDAN-00003.POSYD-00003', 'Patricia Salsabila Yulianti', 'Dk. Bara No. 135', '2024-04-29 09:45:08', '2024-04-29 09:45:08'),
(13, 3, 64, 'BIDAN-00003.POSYD-00003', 'Titin Riyanti ', 'Jr. Villa No. 47', '2024-04-29 09:45:08', '2024-04-29 09:45:08'),
(14, 3, 65, 'BIDAN-00003.POSYD-00003', 'Yuliana Agustina', 'Kpg. Sumpah Pemuda No. 692', '2024-04-29 09:45:08', '2024-04-29 09:45:08'),
(15, 3, 66, 'BIDAN-00003.POSYD-00003', 'Usyi Shakila Halimah ', 'Gg. Moch. Toha No. 905', '2024-04-29 09:45:08', '2024-04-29 09:45:08'),
(16, 4, 67, 'BIDAN-00004.POSYD-00004', 'Kezia Zahra Nasyidah ', 'Jr. M.T. Haryono No. 369', '2024-04-29 09:45:09', '2024-04-29 09:45:09'),
(17, 4, 68, 'BIDAN-00004.POSYD-00004', 'Cornelia Riyanti ', 'Ki. Karel S. Tubun No. 413', '2024-04-29 09:45:09', '2024-04-29 09:45:09'),
(18, 4, 69, 'BIDAN-00004.POSYD-00004', 'Ellis Faizah Usada ', 'Dk. Baranang Siang No. 512', '2024-04-29 09:45:09', '2024-04-29 09:45:09'),
(19, 4, 70, 'BIDAN-00004.POSYD-00004', 'Diah Nuraini ', 'Psr. Gremet No. 779', '2024-04-29 09:45:09', '2024-04-29 09:45:09'),
(20, 4, 71, 'BIDAN-00004.POSYD-00004', 'Hilda Diah Riyanti ', 'Jr. Cikapayang No. 855', '2024-04-29 09:45:10', '2024-04-29 09:45:10'),
(21, 5, 72, 'BIDAN-00005.POSYD-00005', 'Laras Utami', 'Psr. Kyai Gede No. 235', '2024-04-29 09:45:10', '2024-04-29 09:45:10'),
(22, 5, 73, 'BIDAN-00005.POSYD-00005', 'Yulia Rina Uyainah ', 'Kpg. Hang No. 484', '2024-04-29 09:45:10', '2024-04-29 09:45:10'),
(23, 5, 74, 'BIDAN-00005.POSYD-00005', 'Carla Puspa Suartini ', 'Ki. Taman No. 291', '2024-04-29 09:45:11', '2024-04-29 09:45:11'),
(24, 5, 75, 'BIDAN-00005.POSYD-00005', 'Salimah Pudjiastuti', 'Jr. Panjaitan No. 283', '2024-04-29 09:45:11', '2024-04-29 09:45:11'),
(25, 5, 76, 'BIDAN-00005.POSYD-00005', 'Kamila Pratiwi ', 'Dk. Muwardi No. 367', '2024-04-29 09:45:11', '2024-04-29 09:45:11'),
(26, 6, 77, 'BIDAN-00006.POSYD-00006', 'Tina Wahyuni ', 'Ki. Siliwangi No. 278', '2024-04-29 09:45:11', '2024-04-29 09:45:11'),
(27, 6, 78, 'BIDAN-00006.POSYD-00006', 'Sakura Laksmiwati ', 'Jr. Tambak No. 183', '2024-04-29 09:45:12', '2024-04-29 09:45:12'),
(28, 6, 79, 'BIDAN-00006.POSYD-00006', 'Usyi Laksita', 'Psr. Merdeka No. 783', '2024-04-29 09:45:12', '2024-04-29 09:45:12'),
(29, 6, 80, 'BIDAN-00006.POSYD-00006', 'Vanesa Anita Aryani', 'Kpg. Ikan No. 562', '2024-04-29 09:45:12', '2024-04-29 09:45:12'),
(30, 6, 81, 'BIDAN-00006.POSYD-00006', 'Clara Susanti', 'Jln. Pintu Besar Selatan No. 499', '2024-04-29 09:45:12', '2024-04-29 09:45:12'),
(31, 7, 82, 'BIDAN-00007.POSYD-00007', 'Lidya Patricia Safitri ', 'Gg. Pattimura No. 210', '2024-04-29 09:45:13', '2024-04-29 09:45:13'),
(32, 7, 83, 'BIDAN-00007.POSYD-00007', 'Tari Puspasari', 'Ki. Bakin No. 136', '2024-04-29 09:45:13', '2024-04-29 09:45:13'),
(33, 7, 84, 'BIDAN-00007.POSYD-00007', 'Widya Purwanti', 'Gg. Bara No. 572', '2024-04-29 09:45:13', '2024-04-29 09:45:13'),
(34, 7, 85, 'BIDAN-00007.POSYD-00007', 'Pia Vicky Hasanah', 'Jr. Otista No. 47', '2024-04-29 09:45:14', '2024-04-29 09:45:14'),
(35, 7, 86, 'BIDAN-00007.POSYD-00007', 'Zaenab Haryanti', 'Jln. Achmad No. 572', '2024-04-29 09:45:14', '2024-04-29 09:45:14'),
(36, 8, 87, 'BIDAN-00008.POSYD-00008', 'Almira Laila Andriani', 'Psr. Orang No. 451', '2024-04-29 09:45:14', '2024-04-29 09:45:14'),
(37, 8, 88, 'BIDAN-00008.POSYD-00008', 'Restu Wulandari', 'Gg. Ters. Kiaracondong No. 760', '2024-04-29 09:45:14', '2024-04-29 09:45:14'),
(38, 8, 89, 'BIDAN-00008.POSYD-00008', 'Lala Eli Mardhiyah', 'Ds. Baranangsiang No. 526', '2024-04-29 09:45:15', '2024-04-29 09:45:15'),
(39, 8, 90, 'BIDAN-00008.POSYD-00008', 'Gilda Yuliarti', 'Ki. Laswi No. 341', '2024-04-29 09:45:15', '2024-04-29 09:45:15'),
(40, 8, 91, 'BIDAN-00008.POSYD-00008', 'Amalia Nasyidah', 'Psr. Dipatiukur No. 84', '2024-04-29 09:45:15', '2024-04-29 09:45:15'),
(41, 9, 92, 'BIDAN-00009.POSYD-00009', 'Raisa Gawati Usada', 'Kpg. Daan No. 870', '2024-04-29 09:45:16', '2024-04-29 09:45:16'),
(42, 9, 93, 'BIDAN-00009.POSYD-00009', 'Ghaliyati Widiastuti', 'Gg. Tubagus Ismail No. 44', '2024-04-29 09:45:16', '2024-04-29 09:45:16'),
(43, 9, 94, 'BIDAN-00009.POSYD-00009', 'Putri Hani Pertiwi ', 'Kpg. Bakau No. 964', '2024-04-29 09:45:16', '2024-04-29 09:45:16'),
(44, 9, 95, 'BIDAN-00009.POSYD-00009', 'Maria Rahayu', 'Gg. Nakula No. 198', '2024-04-29 09:45:17', '2024-04-29 09:45:17'),
(45, 9, 96, 'BIDAN-00009.POSYD-00009', 'Rachel Pratiwi ', 'Psr. Basuki Rahmat  No. 388', '2024-04-29 09:45:17', '2024-04-29 09:45:17'),
(46, 10, 97, 'BIDAN-00010.POSYD-00010', 'Ophelia Winarsih ', 'Ds. Cut Nyak Dien No. 521', '2024-04-29 09:45:17', '2024-04-29 09:45:17'),
(47, 10, 98, 'BIDAN-00010.POSYD-00010', 'Michelle Wijayanti ', 'Kpg. Padang No. 819', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(48, 10, 99, 'BIDAN-00010.POSYD-00010', 'Sabrina Yuni Winarsih ', 'Ds. Baranang Siang No. 319', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(49, 10, 100, 'BIDAN-00010.POSYD-00010', 'Ayu Lailasari', 'Jln. Radio No. 142', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(50, 10, 101, 'BIDAN-00010.POSYD-00010', 'Nilam Ana Wahyuni', 'Ds. Rajawali Timur No. 68', '2024-04-29 09:45:18', '2024-04-29 09:45:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `officers`
--

CREATE TABLE `officers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posyandu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_headmaster` int(11) DEFAULT NULL,
  `identity_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `domicile` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `officers`
--

INSERT INTO `officers` (`id`, `posyandu_id`, `user_id`, `is_headmaster`, `identity_number`, `name`, `domicile`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'KADER-00001.POSYD-00001', 'Embuh Rajata ', 'Jr. Mahakam No. 747', '2024-04-29 09:44:51', '2024-04-29 09:44:51'),
(2, 1, 3, 0, 'KADER-00001.POSYD-00001', 'Hendri Nasim Hakim', 'Ki. Gotong Royong No. 5', '2024-04-29 09:44:51', '2024-04-29 09:44:51'),
(3, 1, 4, 0, 'KADER-00001.POSYD-00001', 'Raden Nashiruddin ', 'Jr. Ciwastra No. 90', '2024-04-29 09:44:51', '2024-04-29 09:44:51'),
(4, 1, 5, 0, 'KADER-00001.POSYD-00001', 'Wulan Yulianti', 'Ki. Baranang No. 865', '2024-04-29 09:44:52', '2024-04-29 09:44:52'),
(5, 1, 6, 0, 'KADER-00001.POSYD-00001', 'Cornelia Usada ', 'Ds. Baranang Siang No. 797', '2024-04-29 09:44:52', '2024-04-29 09:44:52'),
(6, 2, 7, 1, 'KADER-00002.POSYD-00002', 'Keisha Wahyuni ', 'Jr. M.T. Haryono No. 793', '2024-04-29 09:44:52', '2024-04-29 09:44:52'),
(7, 2, 8, 0, 'KADER-00002.POSYD-00002', 'Catur Hutasoit', 'Jr. Bakaru No. 115', '2024-04-29 09:44:52', '2024-04-29 09:44:52'),
(8, 2, 9, 0, 'KADER-00002.POSYD-00002', 'Najwa Agustina', 'Kpg. Baja Raya No. 934', '2024-04-29 09:44:53', '2024-04-29 09:44:53'),
(9, 2, 10, 0, 'KADER-00002.POSYD-00002', 'Dalima Anggraini', 'Ki. Soekarno Hatta No. 865', '2024-04-29 09:44:53', '2024-04-29 09:44:53'),
(10, 2, 11, 0, 'KADER-00002.POSYD-00002', 'Farah Wulandari', 'Gg. Pahlawan No. 453', '2024-04-29 09:44:53', '2024-04-29 09:44:53'),
(11, 3, 12, 1, 'KADER-00003.POSYD-00003', 'Cici Mandasari', 'Ki. Madiun No. 143', '2024-04-29 09:44:54', '2024-04-29 09:44:54'),
(12, 3, 13, 0, 'KADER-00003.POSYD-00003', 'Vanesa Raisa Kuswandari', 'Ds. Gading No. 678', '2024-04-29 09:44:54', '2024-04-29 09:44:54'),
(13, 3, 14, 0, 'KADER-00003.POSYD-00003', 'Martana Hutagalung', 'Ds. Bak Air No. 167', '2024-04-29 09:44:54', '2024-04-29 09:44:54'),
(14, 3, 15, 0, 'KADER-00003.POSYD-00003', 'Safina Suartini ', 'Ds. Gedebage Selatan No. 226', '2024-04-29 09:44:55', '2024-04-29 09:44:55'),
(15, 3, 16, 0, 'KADER-00003.POSYD-00003', 'Vanya Uchita Puspita', 'Ds. Padang No. 9', '2024-04-29 09:44:55', '2024-04-29 09:44:55'),
(16, 4, 17, 1, 'KADER-00004.POSYD-00004', 'Septi Pertiwi', 'Kpg. Monginsidi No. 640', '2024-04-29 09:44:55', '2024-04-29 09:44:55'),
(17, 4, 18, 0, 'KADER-00004.POSYD-00004', 'Ophelia Sudiati', 'Gg. Gotong Royong No. 574', '2024-04-29 09:44:55', '2024-04-29 09:44:55'),
(18, 4, 19, 0, 'KADER-00004.POSYD-00004', 'Jamal Anggriawan', 'Dk. Cikutra Timur No. 610', '2024-04-29 09:44:56', '2024-04-29 09:44:56'),
(19, 4, 20, 0, 'KADER-00004.POSYD-00004', 'Ajiono Prabowo ', 'Gg. Honggowongso No. 580', '2024-04-29 09:44:56', '2024-04-29 09:44:56'),
(20, 4, 21, 0, 'KADER-00004.POSYD-00004', 'Septi Nasyiah', 'Gg. Cokroaminoto No. 998', '2024-04-29 09:44:56', '2024-04-29 09:44:56'),
(21, 5, 22, 1, 'KADER-00005.POSYD-00005', 'Anastasia Gina Yuliarti', 'Gg. Bambu No. 839', '2024-04-29 09:44:57', '2024-04-29 09:44:57'),
(22, 5, 23, 0, 'KADER-00005.POSYD-00005', 'Cakrabirawa Maryadi', 'Gg. Batako No. 704', '2024-04-29 09:44:57', '2024-04-29 09:44:57'),
(23, 5, 24, 0, 'KADER-00005.POSYD-00005', 'Michelle Pertiwi', 'Psr. Yohanes No. 855', '2024-04-29 09:44:57', '2024-04-29 09:44:57'),
(24, 5, 25, 0, 'KADER-00005.POSYD-00005', 'Caket Mangunsong', 'Ki. Banda No. 85', '2024-04-29 09:44:57', '2024-04-29 09:44:57'),
(25, 5, 26, 0, 'KADER-00005.POSYD-00005', 'Gilda Ajeng Mulyani', 'Psr. Supomo No. 87', '2024-04-29 09:44:58', '2024-04-29 09:44:58'),
(26, 6, 27, 1, 'KADER-00006.POSYD-00006', 'Bagya Marpaung', 'Ki. Bass No. 34', '2024-04-29 09:44:58', '2024-04-29 09:44:58'),
(27, 6, 28, 0, 'KADER-00006.POSYD-00006', 'Vanesa Jasmin Winarsih ', 'Jr. Flora No. 385', '2024-04-29 09:44:58', '2024-04-29 09:44:58'),
(28, 6, 29, 0, 'KADER-00006.POSYD-00006', 'Emas Wijaya', 'Gg. Sutan Syahrir No. 440', '2024-04-29 09:44:58', '2024-04-29 09:44:58'),
(29, 6, 30, 0, 'KADER-00006.POSYD-00006', 'Ulya Elvina Rahayu ', 'Ki. Jagakarsa No. 358', '2024-04-29 09:44:59', '2024-04-29 09:44:59'),
(30, 6, 31, 0, 'KADER-00006.POSYD-00006', 'Ajeng Rahmawati', 'Ds. Dipenogoro No. 868', '2024-04-29 09:44:59', '2024-04-29 09:44:59'),
(31, 7, 32, 1, 'KADER-00007.POSYD-00007', 'Hana Hafshah Novitasari ', 'Ki. Orang No. 298', '2024-04-29 09:44:59', '2024-04-29 09:44:59'),
(32, 7, 33, 0, 'KADER-00007.POSYD-00007', 'Arsipatra Uwais', 'Gg. Ters. Jakarta No. 979', '2024-04-29 09:45:00', '2024-04-29 09:45:00'),
(33, 7, 34, 0, 'KADER-00007.POSYD-00007', 'Cawisono Marpaung', 'Jr. Adisumarmo No. 53', '2024-04-29 09:45:00', '2024-04-29 09:45:00'),
(34, 7, 35, 0, 'KADER-00007.POSYD-00007', 'Galar Dalimin Firmansyah ', 'Gg. Rajiman No. 700', '2024-04-29 09:45:00', '2024-04-29 09:45:00'),
(35, 7, 36, 0, 'KADER-00007.POSYD-00007', 'Devi Andriani', 'Ds. Raden No. 123', '2024-04-29 09:45:00', '2024-04-29 09:45:00'),
(36, 8, 37, 1, 'KADER-00008.POSYD-00008', 'Prayogo Harto Mustofa', 'Ki. Banceng Pondok No. 834', '2024-04-29 09:45:01', '2024-04-29 09:45:01'),
(37, 8, 38, 0, 'KADER-00008.POSYD-00008', 'Winda Oktaviani', 'Psr. Urip Sumoharjo No. 692', '2024-04-29 09:45:01', '2024-04-29 09:45:01'),
(38, 8, 39, 0, 'KADER-00008.POSYD-00008', 'Febi Fujiati ', 'Gg. Bahagia No. 93', '2024-04-29 09:45:01', '2024-04-29 09:45:01'),
(39, 8, 40, 0, 'KADER-00008.POSYD-00008', 'Banawa Simbolon ', 'Jln. Supono No. 183', '2024-04-29 09:45:01', '2024-04-29 09:45:01'),
(40, 8, 41, 0, 'KADER-00008.POSYD-00008', 'Endah Cinta Mandasari', 'Kpg. Baya Kali Bungur No. 646', '2024-04-29 09:45:02', '2024-04-29 09:45:02'),
(41, 9, 42, 1, 'KADER-00009.POSYD-00009', 'Janet Pratiwi', 'Jr. Gading No. 911', '2024-04-29 09:45:02', '2024-04-29 09:45:02'),
(42, 9, 43, 0, 'KADER-00009.POSYD-00009', 'Ibrahim Wahyu Hutagalung', 'Jr. Basudewo No. 752', '2024-04-29 09:45:02', '2024-04-29 09:45:02'),
(43, 9, 44, 0, 'KADER-00009.POSYD-00009', 'Lasmanto Mujur Ramadan', 'Gg. Sutarto No. 533', '2024-04-29 09:45:02', '2024-04-29 09:45:02'),
(44, 9, 45, 0, 'KADER-00009.POSYD-00009', 'Ira Kezia Safitri ', 'Jr. Rajawali Barat No. 59', '2024-04-29 09:45:03', '2024-04-29 09:45:03'),
(45, 9, 46, 0, 'KADER-00009.POSYD-00009', 'Hesti Puspita', 'Ds. Bagis Utama No. 467', '2024-04-29 09:45:03', '2024-04-29 09:45:03'),
(46, 10, 47, 1, 'KADER-00010.POSYD-00010', 'Tari Rahayu Laksita ', 'Jr. Mahakam No. 934', '2024-04-29 09:45:03', '2024-04-29 09:45:03'),
(47, 10, 48, 0, 'KADER-00010.POSYD-00010', 'Manah Yosef Maryadi', 'Kpg. Moch. Yamin No. 874', '2024-04-29 09:45:04', '2024-04-29 09:45:04'),
(48, 10, 49, 0, 'KADER-00010.POSYD-00010', 'Karen Nurdiyanti', 'Dk. Bata Putih No. 70', '2024-04-29 09:45:04', '2024-04-29 09:45:04'),
(49, 10, 50, 0, 'KADER-00010.POSYD-00010', 'Zulfa Utami', 'Jln. Wahid Hasyim No. 185', '2024-04-29 09:45:04', '2024-04-29 09:45:04'),
(50, 10, 51, 0, 'KADER-00010.POSYD-00010', 'Mila Samiah Andriani', 'Jln. Pahlawan No. 784', '2024-04-29 09:45:04', '2024-04-29 09:45:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posyandus`
--

CREATE TABLE `posyandus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posyandus`
--

INSERT INTO `posyandus` (`id`, `code`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'POSYD-00001', 'Posyandu 00001', 'Gg. Gremet No. 969', '2024-04-29 09:44:50', '2024-04-29 09:44:50'),
(2, 'POSYD-00002', 'Posyandu 00002', 'Ki. Abdul Rahmat No. 217', '2024-04-29 09:44:50', '2024-04-29 09:44:50'),
(3, 'POSYD-00003', 'Posyandu 00003', 'Kpg. Peta No. 739', '2024-04-29 09:44:50', '2024-04-29 09:44:50'),
(4, 'POSYD-00004', 'Posyandu 00004', 'Ds. Jaksa No. 369', '2024-04-29 09:44:50', '2024-04-29 09:44:50'),
(5, 'POSYD-00005', 'Posyandu 00005', 'Kpg. Surapati No. 136', '2024-04-29 09:44:50', '2024-04-29 09:44:50'),
(6, 'POSYD-00006', 'Posyandu 00006', 'Jln. Bak Air No. 130', '2024-04-29 09:44:50', '2024-04-29 09:44:50'),
(7, 'POSYD-00007', 'Posyandu 00007', 'Jln. Bata Putih No. 653', '2024-04-29 09:44:50', '2024-04-29 09:44:50'),
(8, 'POSYD-00008', 'Posyandu 00008', 'Ds. Gegerkalong Hilir No. 80', '2024-04-29 09:44:50', '2024-04-29 09:44:50'),
(9, 'POSYD-00009', 'Posyandu 00009', 'Dk. Cikutra Timur No. 29', '2024-04-29 09:44:50', '2024-04-29 09:44:50'),
(10, 'POSYD-00010', 'Posyandu 00010', 'Jr. Zamrud No. 590', '2024-04-29 09:44:50', '2024-04-29 09:44:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posyandu_activities`
--

CREATE TABLE `posyandu_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posyandu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `officer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expectant_mother_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pregnancy_week` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `has_vaccinated` int(11) DEFAULT 1,
  `blood_pressure_level` varchar(255) DEFAULT NULL,
  `blood_sugar_level` decimal(8,2) DEFAULT NULL,
  `systolic_bp` decimal(8,2) DEFAULT NULL,
  `diastolic_bp` decimal(8,2) DEFAULT NULL,
  `lila` decimal(8,2) DEFAULT NULL,
  `body_temperature` decimal(8,2) DEFAULT NULL,
  `heart_rate` int(11) DEFAULT NULL,
  `risk_level` enum('high','mid','low') NOT NULL DEFAULT 'low',
  `complaint` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posyandu_activities`
--

INSERT INTO `posyandu_activities` (`id`, `posyandu_id`, `officer_id`, `expectant_mother_id`, `pregnancy_week`, `height`, `weight`, `has_vaccinated`, `blood_pressure_level`, `blood_sugar_level`, `systolic_bp`, `diastolic_bp`, `lila`, `body_temperature`, `heart_rate`, `risk_level`, `complaint`, `note`, `return_date`, `created_at`, `updated_at`) VALUES
(1, 3, 14, 1, 20, 150, 47, 1, '100/60', 13.00, 140.00, 90.00, 23.02, 36.67, 70, 'high', NULL, NULL, NULL, '2024-04-23 01:00:00', '2024-04-23 01:00:00'),
(2, 10, 50, 2, 20, 155, 53, 1, '90/60', 8.00, 90.00, 70.00, 23.00, 37.78, 80, 'high', NULL, NULL, NULL, '2024-04-19 01:00:00', '2024-04-19 01:00:00'),
(3, 6, 29, 3, 29, 160, 50, 1, '90/60', 7.00, 140.00, 85.00, 23.00, 36.67, 70, 'high', NULL, NULL, NULL, '2024-04-03 01:00:00', '2024-04-03 01:00:00'),
(4, 8, 37, 4, 15, 152, 47, 1, '100/70', 6.01, 120.00, 60.00, 23.01, 36.67, 76, 'low', NULL, NULL, NULL, '2024-04-30 01:00:00', '2024-04-30 01:00:00'),
(5, 3, 14, 5, 16, 153, 46, 1, '100/60', 7.01, 140.00, 80.00, 23.00, 36.67, 70, 'high', NULL, NULL, NULL, '2024-04-23 01:00:00', '2024-04-23 01:00:00'),
(6, 6, 29, 6, 10, 165, 42, 1, '120/70', 7.01, 130.00, 70.00, 22.05, 36.67, 78, 'mid', NULL, NULL, NULL, '2024-04-01 01:00:00', '2024-04-01 01:00:00'),
(7, 7, 33, 7, 24, 162, 53, 1, '110/70', 11.00, 85.00, 60.00, 22.05, 38.89, 86, 'high', NULL, NULL, NULL, '2024-04-29 01:00:00', '2024-04-29 01:00:00'),
(8, 1, 1, 8, 21, 145, 44, 1, '100/60', 6.09, 120.00, 90.00, 22.00, 36.67, 70, 'mid', NULL, NULL, NULL, '2024-04-29 01:00:00', '2024-04-29 01:00:00'),
(9, 4, 19, 9, 20, 155, 48, 1, '100/70', 18.00, 130.00, 80.00, 22.00, 36.67, 70, 'high', NULL, NULL, NULL, '2024-04-18 01:00:00', '2024-04-18 01:00:00'),
(10, 6, 28, 10, 6, 156, 39, 1, '90/60', 7.01, 90.00, 60.00, 21.00, 36.67, 76, 'low', NULL, NULL, NULL, '2024-04-09 01:00:00', '2024-04-09 01:00:00'),
(11, 7, 35, 11, 18, 157, 49, 1, '90/60', 7.00, 120.00, 80.00, 23.00, 36.67, 70, 'mid', NULL, NULL, NULL, '2024-04-24 01:00:00', '2024-04-24 01:00:00'),
(12, 2, 7, 12, 24, 160, 42, 1, '90/60', 7.01, 110.00, 89.00, 22.06, 36.67, 77, 'low', NULL, NULL, NULL, '2024-04-17 01:00:00', '2024-04-17 01:00:00'),
(13, 8, 37, 13, 8, 170, 36, 1, '80/60', 7.01, 120.00, 75.00, 21.00, 37.78, 70, 'mid', NULL, NULL, NULL, '2024-04-18 01:00:00', '2024-04-18 01:00:00'),
(14, 3, 12, 14, 8, 152, 39, 1, '100/60', 11.00, 120.00, 80.00, 23.00, 36.67, 88, 'mid', NULL, NULL, NULL, '2024-04-30 01:00:00', '2024-04-30 01:00:00'),
(15, 10, 46, 15, 22, 153, 49, 1, '110/70', 7.01, 120.00, 80.00, 22.00, 36.67, 70, 'low', NULL, NULL, NULL, '2024-04-23 01:00:00', '2024-04-23 01:00:00'),
(16, 2, 6, 16, 14, 154, 42, 1, '120/80', 15.00, 140.00, 90.00, 23.00, 36.67, 90, 'high', NULL, NULL, NULL, '2024-04-22 01:00:00', '2024-04-22 01:00:00'),
(17, 2, 7, 17, 14, 165, 49, 1, '110/70', 7.01, 140.00, 100.00, 23.00, 36.67, 80, 'high', NULL, NULL, NULL, '2024-04-17 01:00:00', '2024-04-17 01:00:00'),
(18, 8, 37, 18, 20, 162, 35, 1, '100/60', 6.09, 120.00, 80.00, 20.05, 38.33, 76, 'mid', NULL, NULL, NULL, '2024-04-30 01:00:00', '2024-04-30 01:00:00'),
(20, 3, 11, 20, 25, 155, 51, 1, '100/60', 18.00, 140.00, 100.00, 23.01, 36.67, 90, 'high', NULL, NULL, NULL, '2024-04-09 01:00:00', '2024-04-09 01:00:00'),
(21, 4, 17, 21, 10, 156, 44, 1, '110/70', 6.07, 140.00, 80.00, 23.00, 36.67, 70, 'mid', NULL, NULL, NULL, '2024-04-04 01:00:00', '2024-04-04 01:00:00'),
(22, 9, 42, 22, 24, 157, 50, 1, '100/70', 7.05, 90.00, 65.00, 23.02, 36.67, 76, 'low', NULL, NULL, NULL, '2024-04-03 01:00:00', '2024-04-03 01:00:00'),
(23, 2, 8, 23, 16, 160, 39, 1, '110/80', 7.05, 90.00, 60.00, 20.05, 36.67, 70, 'low', NULL, NULL, NULL, '2024-04-08 01:00:00', '2024-04-08 01:00:00'),
(24, 8, 37, 24, 40, 170, 40, 1, '100/70', 7.05, 120.00, 80.00, 22.00, 36.67, 76, 'low', NULL, NULL, NULL, '2024-04-02 01:00:00', '2024-04-02 01:00:00'),
(25, 7, 34, 25, 12, 152, 36, 1, '90/60', 7.02, 100.00, 70.00, 18.00, 36.67, 80, 'low', NULL, NULL, NULL, '2024-04-11 01:00:00', '2024-04-11 01:00:00'),
(26, 3, 12, 26, 16, 153, 35, 1, '100/70', 7.02, 120.00, 75.00, 18.00, 36.67, 66, 'low', NULL, NULL, NULL, '2024-04-30 01:00:00', '2024-04-30 01:00:00'),
(27, 7, 35, 27, 26, 156, 48, 1, '110/70', 7.02, 100.00, 65.00, 22.00, 36.67, 70, 'low', NULL, NULL, NULL, '2024-04-04 01:00:00', '2024-04-04 01:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posyandu_schedules`
--

CREATE TABLE `posyandu_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posyandu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `officer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posyandu_schedules`
--

INSERT INTO `posyandu_schedules` (`id`, `posyandu_id`, `officer_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2024-04-08 01:00:00', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(2, 1, 1, '2024-04-09 01:00:00', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(3, 1, 1, '2024-04-19 01:00:00', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(4, 1, 2, '2024-04-03 01:00:00', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(5, 1, 2, '2024-04-08 01:00:00', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(6, 1, 1, '2024-04-11 01:00:00', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(7, 1, 3, '2024-04-15 01:00:00', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(8, 1, 3, '2024-04-16 01:00:00', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(9, 1, 1, '2024-04-29 01:00:00', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(10, 2, 8, '2024-04-08 01:00:00', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(11, 2, 9, '2024-04-09 01:00:00', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(12, 2, 6, '2024-04-22 01:00:00', '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(13, 2, 6, '2024-04-24 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(14, 2, 9, '2024-04-01 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(15, 2, 8, '2024-04-02 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(16, 2, 10, '2024-04-04 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(17, 2, 7, '2024-04-17 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(18, 2, 7, '2024-04-18 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(19, 2, 9, '2024-04-26 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(20, 3, 13, '2024-04-12 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(21, 3, 12, '2024-04-22 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(22, 3, 11, '2024-04-09 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(23, 3, 15, '2024-04-22 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(24, 3, 14, '2024-04-23 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(25, 3, 12, '2024-04-30 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(26, 4, 19, '2024-04-04 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(27, 4, 19, '2024-04-05 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(28, 4, 19, '2024-04-18 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(29, 4, 19, '2024-04-25 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(30, 4, 16, '2024-04-29 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(31, 4, 17, '2024-04-04 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(32, 4, 16, '2024-04-05 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(33, 4, 17, '2024-04-09 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(34, 4, 16, '2024-04-18 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(35, 4, 19, '2024-04-29 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(36, 5, 22, '2024-04-05 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(37, 5, 23, '2024-04-08 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(38, 5, 24, '2024-04-12 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(39, 5, 24, '2024-04-16 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(40, 5, 22, '2024-04-30 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(41, 5, 22, '2024-04-01 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(42, 5, 21, '2024-04-10 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(43, 5, 24, '2024-04-19 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(44, 6, 29, '2024-04-03 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(45, 6, 26, '2024-04-04 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(46, 6, 26, '2024-04-05 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(47, 6, 29, '2024-04-08 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(48, 6, 28, '2024-04-09 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(49, 6, 28, '2024-04-12 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(50, 6, 29, '2024-04-01 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(51, 6, 28, '2024-04-11 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(52, 6, 29, '2024-04-25 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(53, 7, 32, '2024-04-22 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(54, 7, 32, '2024-04-23 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(55, 7, 35, '2024-04-24 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(56, 7, 33, '2024-04-29 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(57, 7, 32, '2024-04-30 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(58, 7, 35, '2024-04-04 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(59, 7, 33, '2024-04-08 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(60, 7, 34, '2024-04-11 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(61, 7, 35, '2024-04-15 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(62, 7, 34, '2024-04-26 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(63, 8, 37, '2024-04-18 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(64, 8, 37, '2024-04-02 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(65, 8, 40, '2024-04-05 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(66, 8, 36, '2024-04-09 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(67, 8, 36, '2024-04-16 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(68, 8, 38, '2024-04-26 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(69, 8, 37, '2024-04-30 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(70, 9, 42, '2024-04-03 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(71, 9, 42, '2024-04-08 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(72, 9, 41, '2024-04-17 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(73, 9, 42, '2024-04-04 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(74, 9, 41, '2024-04-05 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(75, 10, 50, '2024-04-01 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(76, 10, 50, '2024-04-15 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(77, 10, 46, '2024-04-23 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(78, 10, 46, '2024-04-12 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(79, 10, 50, '2024-04-19 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(80, 10, 49, '2024-04-25 01:00:00', '2024-04-29 09:45:19', '2024-04-29 09:45:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-04-29 09:44:50', '2024-04-29 09:44:50'),
(2, 'officer', 'web', '2024-04-29 09:44:51', '2024-04-29 09:44:51'),
(3, 'nurse', 'web', '2024-04-29 09:45:05', '2024-04-29 09:45:05'),
(4, 'expectant_mother', 'web', '2024-04-29 09:45:19', '2024-04-29 09:45:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
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
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('nc9QEVFDjIH8MSBKhEU9aleWSAxHBMN3uaiGeBWB', 2, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZ0t1SDFzM0F3dlI1bGxhclNXenRLTEtBNlYxSzFERmdXY2s5ZnU5UyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHA6Ly9sb2NhbGhvc3Q6NTE1MS9rYWRlci9leHBlY3RhbnQtbW90aGVycy84L2FjdGl2aXRpZXMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkMGJnS0t4dnpPalZlMDg0MFJVNFcuT1pYQXB0RE1VcG1vOFl5V0h5bFlrS01JeUt5M0Y0NHkiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1714396853);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', '2024-04-29 09:44:50', '$2y$12$0Xc4Rlgi4zfXzM4UXzm0BeCkKiXSs03aGKhz2VTsj9VMcIL75FeDi', NULL, '2024-04-29 09:44:50', '2024-04-29 09:44:50'),
(2, 'Embuh Rajata ', 'kader1@gmail.com', '2024-04-29 09:44:51', '$2y$12$0bgKKxvzOjVe0840RU4W.OZXAptDMUpmo8YyWHylYkKMIyKy3F44y', NULL, '2024-04-29 09:44:51', '2024-04-29 09:44:51'),
(3, 'Hendri Nasim Hakim', 'kader2@mail.com', '2024-04-29 09:44:51', '$2y$12$rWTNd4GRNErfH3ZGIs/cp.k3J29y2v/BgkUwslbZanSkisV0zlcvy', NULL, '2024-04-29 09:44:51', '2024-04-29 09:44:51'),
(4, 'Raden Nashiruddin ', 'kader3@gmail.com', '2024-04-29 09:44:51', '$2y$12$AA3Ga184NofuEnGiyu8DZu1djQX5B6YAAmG4.HgwwiWscEEWnHz.C', NULL, '2024-04-29 09:44:51', '2024-04-29 09:44:51'),
(5, 'Wulan Yulianti', 'kader4@gmail.com', '2024-04-29 09:44:51', '$2y$12$xwixWEd2o/T/iLtoxeLDDOGxu8fuxQtBeA.6lnOmCp6m7uJBLvYzC', NULL, '2024-04-29 09:44:51', '2024-04-29 09:44:51'),
(6, 'Cornelia Usada ', 'kader5@gmail.com', '2024-04-29 09:44:52', '$2y$12$owrU78ssHgcGD51dNiT3D.qE8Rr4.k1cJC3b/dleUHeyXEKUenWvy', NULL, '2024-04-29 09:44:52', '2024-04-29 09:44:52'),
(7, 'Keisha Wahyuni ', 'kader6@gmail.com', '2024-04-29 09:44:52', '$2y$12$3QP8NGMIrmFwA09ldU7vFOCBWpZODq9ZuqZPdUtQVe/d5Tzo9kOkS', NULL, '2024-04-29 09:44:52', '2024-04-29 09:44:52'),
(8, 'Catur Hutasoit', 'kader7@gmail.com', '2024-04-29 09:44:52', '$2y$12$7UHuN7MnDj4C9nRyMNMbhOyV.fGstYfDgRW1794yAuoHr7uQc5Pku', NULL, '2024-04-29 09:44:52', '2024-04-29 09:44:52'),
(9, 'Najwa Agustina', 'kader8@gmail.com', '2024-04-29 09:44:53', '$2y$12$6UOt3ItwTnawigZjWpy3Zeyu6p6lNKe/skiG564G1gWcIyJkitMga', NULL, '2024-04-29 09:44:53', '2024-04-29 09:44:53'),
(10, 'Dalima Anggraini', 'kader9@gmail.com', '2024-04-29 09:44:53', '$2y$12$wlHJMFDiuwtlVXNglmd5se77IJqCdCHtg8kkzwlQ5G4Ap4GkDB7aO', NULL, '2024-04-29 09:44:53', '2024-04-29 09:44:53'),
(11, 'Farah Wulandari', 'kader10@gmail.com', '2024-04-29 09:44:53', '$2y$12$.b4kgGdxKqb6XhbaSUC4JeveCsSRCP9Y4M7gzql06/hqE75sQdDcW', NULL, '2024-04-29 09:44:53', '2024-04-29 09:44:53'),
(12, 'Cici Mandasari', 'kader11@gmail.com', '2024-04-29 09:44:54', '$2y$12$Lp1Fn/9WRxDwXhbjzI9pPOSiydy2aIyBgyxRdN9QJuHWurt.5CTES', NULL, '2024-04-29 09:44:54', '2024-04-29 09:44:54'),
(13, 'Vanesa Raisa Kuswandari', 'kader12@mail.com', '2024-04-29 09:44:54', '$2y$12$lHVg56yVBbsoYFl9FNyeBuSf6C/gh8CrgcFXXkpkOSbtL4W1L1YbC', NULL, '2024-04-29 09:44:54', '2024-04-29 09:44:54'),
(14, 'Martana Hutagalung', 'kader13@gmail.com', '2024-04-29 09:44:54', '$2y$12$7NxedXh9cpTCqMUnAsyDQe1VOvzZ3xcSpJqnFOzTdiOEFQ3jGJqf.', NULL, '2024-04-29 09:44:54', '2024-04-29 09:44:54'),
(15, 'Safina Suartini ', 'kader14@gmail.com', '2024-04-29 09:44:55', '$2y$12$YdSY7DNpF0ihPYfD5vG.BeTKX.9RnEPu5m.J4ADQgE4BDHlR65mm2', NULL, '2024-04-29 09:44:55', '2024-04-29 09:44:55'),
(16, '', 'kader15@mail.com', '2024-04-29 09:44:55', '$2y$12$yvlwSJO/MOpxue4upLrFnu4lITESh9/9OWXDJ2BBZum1.NqnO/VEW', NULL, '2024-04-29 09:44:55', '2024-04-29 09:44:55'),
(17, 'Septi Pertiwi', 'kader16@mail.com', '2024-04-29 09:44:55', '$2y$12$OIFMDvv/3VMMarEvR/45w.GeYTaRdQzjDh0DQL1ScH.BAzgjjPW8C', NULL, '2024-04-29 09:44:55', '2024-04-29 09:44:55'),
(18, 'Ophelia Sudiati', 'kader17@mail.com', '2024-04-29 09:44:55', '$2y$12$ui/uvxCvI4uoo6ymBcUnXO7clpajGIQvf60fnzRcnLTrS8ADJH/0a', NULL, '2024-04-29 09:44:55', '2024-04-29 09:44:55'),
(19, 'Jamal Anggriawan', 'kader18@mail.com', '2024-04-29 09:44:56', '$2y$12$sHSH7vTfMnv67k6uAOOn..DRvCXyTXypudDCjih42VU.rIUyZOGOC', NULL, '2024-04-29 09:44:56', '2024-04-29 09:44:56'),
(20, 'Ajiono Prabowo ', 'kader19@mail.com', '2024-04-29 09:44:56', '$2y$12$sLHLycqnmsFn4NDoUz9mTOSd6Cnr/wgXGJrQGOMV2zk/u0I6GtIoi', NULL, '2024-04-29 09:44:56', '2024-04-29 09:44:56'),
(21, 'Septi Nasyiah', 'kader20@mail.com', '2024-04-29 09:44:56', '$2y$12$V/pUauRxg3upuP8hLfJJD.JWFdBgPIjTZhdj28R7g2RtQazS3nhJS', NULL, '2024-04-29 09:44:56', '2024-04-29 09:44:56'),
(22, 'Anastasia Gina Yuliarti', 'kader21@mail.com', '2024-04-29 09:44:56', '$2y$12$e3Je/8XNg3Z78uOeMMYBXO7dueFm19CV0yoITmhb5sZ5NBLdZv832', NULL, '2024-04-29 09:44:57', '2024-04-29 09:44:57'),
(23, 'Cakrabirawa Maryadi', 'kader22@mail.com', '2024-04-29 09:44:57', '$2y$12$OXQiBJvbsEhqpt3rtAHCTuFIxZcHpjgYk.xYGxgFs0.VSMcqClq2G', NULL, '2024-04-29 09:44:57', '2024-04-29 09:44:57'),
(24, 'Michelle Pertiwi', 'kader23@mail.com', '2024-04-29 09:44:57', '$2y$12$ufUDRni16i.FQmp2DLiKQeO0GqqRCvgBEXBe1327SAN4.CwKJxQY.', NULL, '2024-04-29 09:44:57', '2024-04-29 09:44:57'),
(25, 'Caket Mangunsong', 'kader24@mail.com', '2024-04-29 09:44:57', '$2y$12$TMBbF6GVRaraAv9IRXDvI.IkCD.GXh.9NAmoOYclp4zEP4P5COFF2', NULL, '2024-04-29 09:44:57', '2024-04-29 09:44:57'),
(26, 'Gilda Ajeng Mulyani', 'kader25@mail.com', '2024-04-29 09:44:58', '$2y$12$f5i42RdU.vMykn6uWhes0.ew17ZJk7z5PUaIJA8skmHwazLoXdCI6', NULL, '2024-04-29 09:44:58', '2024-04-29 09:44:58'),
(27, 'Bagya Marpaung', 'kader26@mail.com', '2024-04-29 09:44:58', '$2y$12$KIKdS5LVJHqoTpv6hiEYKe5Z2NQjz3fxOnZJtuqtfn.pIT8yy3WPK', NULL, '2024-04-29 09:44:58', '2024-04-29 09:44:58'),
(28, 'Vanesa Jasmin Winarsih ', 'kader27@mail.com', '2024-04-29 09:44:58', '$2y$12$3on5KZDk8i4ONFWOD36zPeL78jQoUlmh9suuNw2ytguwxIAlErcmS', NULL, '2024-04-29 09:44:58', '2024-04-29 09:44:58'),
(29, 'Emas Wijaya', 'kader28@mail.com', '2024-04-29 09:44:58', '$2y$12$7pc1PhIVKC6QG6Co0wz4YOXAa89zXHmiVMsUAxN2KfT6IZFCnXPkS', NULL, '2024-04-29 09:44:58', '2024-04-29 09:44:58'),
(30, 'Ulya Elvina Rahayu ', 'kader29@mail.com', '2024-04-29 09:44:59', '$2y$12$yPt.rIbAJSBaDsrpMEXKD.UJYrlFyuKUWXpCbtzkJ0WDSgZOC1SRK', NULL, '2024-04-29 09:44:59', '2024-04-29 09:44:59'),
(31, 'Ajeng Rahmawati', 'kader30@mail.com', '2024-04-29 09:44:59', '$2y$12$P/p9p186YFihtRSqHe0xAeey4fV5IhKNV7yvOweD3.LK4A0A1ETCG', NULL, '2024-04-29 09:44:59', '2024-04-29 09:44:59'),
(32, 'Hana Hafshah Novitasari ', 'kader31@mail.com', '2024-04-29 09:44:59', '$2y$12$CG83wqrXIEJ/BUPr6S11EOKRakKF.SIHS2YX.2KIdKwrKpsuCuHYS', NULL, '2024-04-29 09:44:59', '2024-04-29 09:44:59'),
(33, 'Arsipatra Uwais', 'kader32@mail.com', '2024-04-29 09:45:00', '$2y$12$hB43B6LJviYvLh771uXvQOlMtCgP1QjfZXWlSzt64RLJaygyYQhhK', NULL, '2024-04-29 09:45:00', '2024-04-29 09:45:00'),
(34, 'Cawisono Marpaung', 'kader33@mail.com', '2024-04-29 09:45:00', '$2y$12$rCj5QuJ0ViUhOpUQkQTc0e7cxyzA4iqMnEprhlQ32w.029gsaoH.2', NULL, '2024-04-29 09:45:00', '2024-04-29 09:45:00'),
(35, 'Galar Dalimin Firmansyah ', 'kader34@mail.com', '2024-04-29 09:45:00', '$2y$12$2UjdSgwfrOUDnB5E7Osi9.5rkAHo6MexPShvlUprHu6LEsK8V2qde', NULL, '2024-04-29 09:45:00', '2024-04-29 09:45:00'),
(36, 'Devi Andriani', 'kader35@mail.com', '2024-04-29 09:45:00', '$2y$12$avEOoSUa0Gxz4eNqcAPP/OmpX13Naos4dhVFl2ax0z0rrHSM/jnqq', NULL, '2024-04-29 09:45:00', '2024-04-29 09:45:00'),
(37, 'Prayogo Harto Mustofa', 'kader36@mail.com', '2024-04-29 09:45:01', '$2y$12$uPbfJrVX8AsNfP6W8rpWouZH0Fi7AAI6YFGJc5.UUT4JtoTqHTn6y', NULL, '2024-04-29 09:45:01', '2024-04-29 09:45:01'),
(38, 'Winda Oktaviani', 'kader37@mail.com', '2024-04-29 09:45:01', '$2y$12$o9Y63wqCfXdx1NyID9PyGuPa.bQdB4n.UBa6tHUhd38IWcZbN4wp6', NULL, '2024-04-29 09:45:01', '2024-04-29 09:45:01'),
(39, 'Febi Fujiati ', 'kader38@mail.com', '2024-04-29 09:45:01', '$2y$12$CY99O5HhDRRBP7XWTuHe9Om4XTQht0bS.lS4NkyJmlGD/ncdAfV7i', NULL, '2024-04-29 09:45:01', '2024-04-29 09:45:01'),
(40, 'Banawa Simbolon ', 'kader39@mail.com', '2024-04-29 09:45:01', '$2y$12$fOXl9aaAlC.XpyS9z0ORjO0CPRaomegq/KCcizlPWp2iS8KCxh3H6', NULL, '2024-04-29 09:45:01', '2024-04-29 09:45:01'),
(41, 'Endah Cinta Mandasari', 'kader40@mail.com', '2024-04-29 09:45:02', '$2y$12$1PhldIf9.Ti0w.KtqVpPo.me441dtxc/3Uu/VYlmdHWyA87JwC6HG', NULL, '2024-04-29 09:45:02', '2024-04-29 09:45:02'),
(42, 'Janet Pratiwi', 'kader41@mail.com', '2024-04-29 09:45:02', '$2y$12$IjSHy13G0ygWjA6Kw1xeNeS4zZf/Xo/XEQbkKtYB04wUeQ/LZLnma', NULL, '2024-04-29 09:45:02', '2024-04-29 09:45:02'),
(43, 'Ibrahim Wahyu Hutagalung', 'kader42@mail.com', '2024-04-29 09:45:02', '$2y$12$GVS476qZuZi97Xb0O6cgB.EAqWBchDA/1GnLQQESgZKh8SJ0dvtDC', NULL, '2024-04-29 09:45:02', '2024-04-29 09:45:02'),
(44, 'Lasmanto Mujur Ramadan', 'kader43@mail.com', '2024-04-29 09:45:02', '$2y$12$6QRKuQnfqRAenN6644zkGeZYYUr/F4CptN7nDfxxXUafPb0Zr2Zje', NULL, '2024-04-29 09:45:02', '2024-04-29 09:45:02'),
(45, 'Ira Kezia Safitri ', 'kader44@mail.com', '2024-04-29 09:45:03', '$2y$12$/cIGYjTaSVg0fpfL5aaao.tR7J9RPEWcw3SiqG4EY49Tr2XU5mR8O', NULL, '2024-04-29 09:45:03', '2024-04-29 09:45:03'),
(46, 'Hesti Puspita', 'kader45@mail.com', '2024-04-29 09:45:03', '$2y$12$cO3iHipk5BrF/oFdpyjBtuQnyFxN/AOe.9qLDzCv2v/DyHjLqdkxC', NULL, '2024-04-29 09:45:03', '2024-04-29 09:45:03'),
(47, 'Tari Rahayu Laksita ', 'kader46@mail.com', '2024-04-29 09:45:03', '$2y$12$Ld5qDkOO9Rd2qy5QnB/I/uopNJTlbK7LhNMFvb5bFFRiu0tc9dBhm', NULL, '2024-04-29 09:45:03', '2024-04-29 09:45:03'),
(48, 'Manah Yosef Maryadi', 'kader47@mail.com', '2024-04-29 09:45:04', '$2y$12$bzwb.1aojWrxXHkEP0yav.yspNu7dAry2wx0QKF3ArmbpeGDBBkQq', NULL, '2024-04-29 09:45:04', '2024-04-29 09:45:04'),
(49, 'Karen Nurdiyanti', 'kader48@mail.com', '2024-04-29 09:45:04', '$2y$12$UdhPzVuJXSjWqUQ9Q5LD3.gFB8kjjaly3tWjcjckU45Bmqg2IL2oG', NULL, '2024-04-29 09:45:04', '2024-04-29 09:45:04'),
(50, 'Zulfa Utami', 'kader49@mail.com', '2024-04-29 09:45:04', '$2y$12$Nsq5bvN.Fwj4rrRfD/O98O3AAMeW4k/MjRdyMWc5ye7JKHJZ9ezg6', NULL, '2024-04-29 09:45:04', '2024-04-29 09:45:04'),
(51, 'Mila Samiah Andriani', 'kader50@mail.com', '2024-04-29 09:45:04', '$2y$12$NvGkrBc2LcLOvtXENPx3o.xbOhVdFvwXO2Nuleif2qWWT3Q/Swwcy', NULL, '2024-04-29 09:45:04', '2024-04-29 09:45:04'),
(52, 'Umi Laksita', 'bidan1@mail.com', '2024-04-29 09:45:05', '$2y$12$X.lAqwi.ycV5piIfdA2WSe68FIVwQ/GS0fUzE9c.TOmjPZxmn57YC', NULL, '2024-04-29 09:45:05', '2024-04-29 09:45:05'),
(53, 'Ulya Wulandari', 'bidan2@mail.com', '2024-04-29 09:45:05', '$2y$12$UwllnPjoUrdWYGCW7jXyo.nXZwtPa0jwx7syLT2KqVZ5.9FLtILl.', NULL, '2024-04-29 09:45:05', '2024-04-29 09:45:05'),
(54, 'Clara Melani', 'bidan3@mail.com', '2024-04-29 09:45:05', '$2y$12$vBhKRNR1kHYwSVLmtdpEvOwvBsuNQbv2LX6UUJpCRsuAD/CRQQZ6m', NULL, '2024-04-29 09:45:05', '2024-04-29 09:45:05'),
(55, 'Hilda Haryanti', 'bidan4@mail.com', '2024-04-29 09:45:05', '$2y$12$ppYui9CAGFMF9ak.GGa5ROacnqCA7zHdThdRsi6CDdPmis9uK3W7e', NULL, '2024-04-29 09:45:05', '2024-04-29 09:45:05'),
(56, 'Salimah Andriani', 'bidan5@mail.com', '2024-04-29 09:45:06', '$2y$12$9zVvq6nFhhu3ALhE8CdKs.qBTLxt0fwDYFI41J5vPbwWzCwUNKEgG', NULL, '2024-04-29 09:45:06', '2024-04-29 09:45:06'),
(57, 'Mila Padma Yuliarti', 'bidan6@mail.com', '2024-04-29 09:45:06', '$2y$12$S.qyFtrM4aQSpVW8o8ZPSOk1YmxZB2Ql81Wb/WX4If5gWiJKk/7AS', NULL, '2024-04-29 09:45:06', '2024-04-29 09:45:06'),
(58, 'Iriana Mayasari', 'bidan7@mail.com', '2024-04-29 09:45:06', '$2y$12$CfyMxCexA8gTtWMJXR6uM.0Qx.Eoh53mkWDzffAkHBmaO9T2Ziism', NULL, '2024-04-29 09:45:06', '2024-04-29 09:45:06'),
(59, 'Wani Agnes Farida ', 'bidan8@mail.com', '2024-04-29 09:45:07', '$2y$12$WR2j4nKwvM4CZ8qTxluj/e66/63BIgODUEf0giilEiSYqK/nzpyzK', NULL, '2024-04-29 09:45:07', '2024-04-29 09:45:07'),
(60, 'Usyi Pratiwi ', 'bidan9@mail.com', '2024-04-29 09:45:07', '$2y$12$g77uOicmsoQx9XWJ/miKqeC/m.ezaZHycaiYtByC9935ULmNhTk6C', NULL, '2024-04-29 09:45:07', '2024-04-29 09:45:07'),
(61, 'Nurul Pertiwi', 'bidan10@mail.com', '2024-04-29 09:45:07', '$2y$12$fz5r1CnCJkhscYiqIfpTRugqnDCUezF8gXCLVfrfUnlWqdG1g3US2', NULL, '2024-04-29 09:45:07', '2024-04-29 09:45:07'),
(62, 'Wirda Diah Mayasari', 'bidan11@mail.com', '2024-04-29 09:45:07', '$2y$12$AJI0xW8crjBT6umtOm0i1eLAVirq5Xx2g4JiURHgPH5DvcO8cA.9y', NULL, '2024-04-29 09:45:07', '2024-04-29 09:45:07'),
(63, 'Patricia Salsabila Yulianti', 'bidan12@mail.com', '2024-04-29 09:45:08', '$2y$12$4UdLk4S2qlnONaoCIQmuTO3.ZQs4FVZRvgnnEEawW5DfIetDEdmTq', NULL, '2024-04-29 09:45:08', '2024-04-29 09:45:08'),
(64, 'Titin Riyanti ', 'bidan13@mail.com', '2024-04-29 09:45:08', '$2y$12$lm4yWWxy2NaBc8ZMyeTCtOdvWvuC3UsxVlFUIeWpVGu3Vw4MIm3..', NULL, '2024-04-29 09:45:08', '2024-04-29 09:45:08'),
(65, 'Yuliana Agustina', 'bidan14@mail.com', '2024-04-29 09:45:08', '$2y$12$qL2SXgKCp3zPzyhFdxFGjOG6uGM0oz.QW9vv3z8GyqiUsd8KmIwb6', NULL, '2024-04-29 09:45:08', '2024-04-29 09:45:08'),
(66, 'Usyi Shakila Halimah ', 'bidan15@mail.com', '2024-04-29 09:45:08', '$2y$12$jXr6c0mCSat40NqKQtKV0u5APMVwxRRSri7cD4FX0wPRwZ4TJ6kbe', NULL, '2024-04-29 09:45:08', '2024-04-29 09:45:08'),
(67, 'Kezia Zahra Nasyidah ', 'bidan16@mail.com', '2024-04-29 09:45:09', '$2y$12$lvBwuV30JdxmnprUE148NeX8/BdeZuABjpmlktGjl3M03QSg1d89W', NULL, '2024-04-29 09:45:09', '2024-04-29 09:45:09'),
(68, 'Cornelia Riyanti ', 'bidan17@mail.com', '2024-04-29 09:45:09', '$2y$12$hczP/c1JTLxW/QUkShAFneJ0VgYvfGlm5jSHJpOc6sXyoTW3i84su', NULL, '2024-04-29 09:45:09', '2024-04-29 09:45:09'),
(69, 'Ellis Faizah Usada ', 'bidan18@mail.com', '2024-04-29 09:45:09', '$2y$12$L6btyk19qzkXH.QFT9QlpuOuFWtovoROfdy46M5XmP/6LIt.t6HBC', NULL, '2024-04-29 09:45:09', '2024-04-29 09:45:09'),
(70, 'Diah Nuraini ', 'bidan19@mail.com', '2024-04-29 09:45:09', '$2y$12$Dhb3QJbpXl8kvVIaMS7bHOZ//rg3PMJUkNj4V2cdcs7aaHefSVnpa', NULL, '2024-04-29 09:45:09', '2024-04-29 09:45:09'),
(71, 'Hilda Diah Riyanti ', 'bidan20@mail.com', '2024-04-29 09:45:10', '$2y$12$c969cg1NcVuPEojcpmTsiOLw5f.OD6YoM.igbIbY0S1wrkx.L7pxy', NULL, '2024-04-29 09:45:10', '2024-04-29 09:45:10'),
(72, 'Laras Utami', 'bidan21@mail.com', '2024-04-29 09:45:10', '$2y$12$Jz5ZFulo6X1h3MRf5rG2gec/jiRPuP1NXPZijWN8AfcdCKX8ZAxWu', NULL, '2024-04-29 09:45:10', '2024-04-29 09:45:10'),
(73, 'Yulia Rina Uyainah ', 'bidan22@mail.com', '2024-04-29 09:45:10', '$2y$12$fbhMox0SUB6AzxJpV.KXreheRtGVp1R.pMwlu9VQW17914ZbYyDO6', NULL, '2024-04-29 09:45:10', '2024-04-29 09:45:10'),
(74, 'Carla Puspa Suartini ', 'bidan23@mail.com', '2024-04-29 09:45:11', '$2y$12$qOOEG42XTllhbEDYkWOpiOik/qalxIz.ljVm8AHxk6kt1e3feYbhW', NULL, '2024-04-29 09:45:11', '2024-04-29 09:45:11'),
(75, 'Salimah Pudjiastuti', 'bidan24@mail.com', '2024-04-29 09:45:11', '$2y$12$IBn54cZHh0ZNg9P/qdj5ZOmt.iFwyZdH.zqnaAWP3H/uIfM/eIHZ6', NULL, '2024-04-29 09:45:11', '2024-04-29 09:45:11'),
(76, 'Kamila Pratiwi ', 'bidan25@mail.com', '2024-04-29 09:45:11', '$2y$12$KdWuj20uzo2.1hh1z8jE7ezoGD7zOXG5yChw7.N3RKLGV6uXSR7BO', NULL, '2024-04-29 09:45:11', '2024-04-29 09:45:11'),
(77, 'Tina Wahyuni ', 'bidan26@mail.com', '2024-04-29 09:45:11', '$2y$12$Ft9hxe/StV/gfFO5w/x28.igyMnWmHciF/eKvKl2o2QIdxkjx4HuC', NULL, '2024-04-29 09:45:11', '2024-04-29 09:45:11'),
(78, 'Sakura Laksmiwati ', 'bidan27@mail.com', '2024-04-29 09:45:12', '$2y$12$TLoWsaxGwcyBhHHDPbPgteOPPBpymimxamRncZsRQR6QeljYcJ0QC', NULL, '2024-04-29 09:45:12', '2024-04-29 09:45:12'),
(79, 'Usyi Laksita', 'bidan28@mail.com', '2024-04-29 09:45:12', '$2y$12$NZAlKaU3BNK.UTongGcytuT5t30cNshusKs6nMbSMuPnaLCy7iLx6', NULL, '2024-04-29 09:45:12', '2024-04-29 09:45:12'),
(80, 'Vanesa Anita Aryani', 'bidan29@mail.com', '2024-04-29 09:45:12', '$2y$12$Y5V7HViaqQIk5hy7qiaKPezQuYD8ZT6MlQROUj8xbB5Rj5AHogjiS', NULL, '2024-04-29 09:45:12', '2024-04-29 09:45:12'),
(81, 'Clara Susanti', 'bidan30@mail.com', '2024-04-29 09:45:12', '$2y$12$kDMh/YKu4F9mRJLb77o2ZeB0rCZKCtM1b/10xaxNrFCJc3NlM1L5O', NULL, '2024-04-29 09:45:12', '2024-04-29 09:45:12'),
(82, 'Lidya Patricia Safitri ', 'bidan31@mail.com', '2024-04-29 09:45:13', '$2y$12$Zx.LgIG4Xxodw.wjL1jh3eeQCNHd/lIjzTexM.lDmVKNqLQZ0hT.a', NULL, '2024-04-29 09:45:13', '2024-04-29 09:45:13'),
(83, 'Tari Puspasari', 'bidan32@mail.com', '2024-04-29 09:45:13', '$2y$12$4ioKfez4YIDE1TCWzYuyOuup6fXMY8sQX7RIPCfphy7HaszxnT8Xy', NULL, '2024-04-29 09:45:13', '2024-04-29 09:45:13'),
(84, 'Widya Purwanti', 'bidan33@mail.com', '2024-04-29 09:45:13', '$2y$12$X84iMZoPPgFrhCCayRqnY.zgMSBAg6Vu8EYJkBWey.EaTk1Txsppy', NULL, '2024-04-29 09:45:13', '2024-04-29 09:45:13'),
(85, 'Pia Vicky Hasanah', 'bidan34@mail.com', '2024-04-29 09:45:14', '$2y$12$y5Ez9CU1M3BGkj0t9udywOVItLJAcFmGOnHFYBdj86.fJ80whhhVi', NULL, '2024-04-29 09:45:14', '2024-04-29 09:45:14'),
(86, 'Zaenab Haryanti', 'bidan35@mail.com', '2024-04-29 09:45:14', '$2y$12$3AZEHdjrEonvctdzCpWBAOw1.Hv2Iltgqt38qyHMlXg4g4DjzaKkq', NULL, '2024-04-29 09:45:14', '2024-04-29 09:45:14'),
(87, 'Almira Laila Andriani', 'bidan36@mail.com', '2024-04-29 09:45:14', '$2y$12$VWVIh1OSVkvpsnth6vUhke5RQPnbzaCaQaUuwvGcg2TP3kBwq0vw.', NULL, '2024-04-29 09:45:14', '2024-04-29 09:45:14'),
(88, 'Restu Wulandari', 'bidan37@mail.com', '2024-04-29 09:45:14', '$2y$12$g8uonzg.MQ7vjt/0ohYf5OSEukb4ts0KfEuHvDjOa8GmoJLQKcPt.', NULL, '2024-04-29 09:45:14', '2024-04-29 09:45:14'),
(89, 'Lala Eli Mardhiyah', 'bidan38@mail.com', '2024-04-29 09:45:15', '$2y$12$IfpD4XFDe0Pe10FAvr5xmeMtR9h9ju77t1y8M78BOd5BxRYfzE.oC', NULL, '2024-04-29 09:45:15', '2024-04-29 09:45:15'),
(90, 'Gilda Yuliarti', 'bidan39@mail.com', '2024-04-29 09:45:15', '$2y$12$ho0fay4WTje8iZ6/jde2yuEl/G20EPiXsRgQlPkdWkHkz/9s49y1u', NULL, '2024-04-29 09:45:15', '2024-04-29 09:45:15'),
(91, 'Amalia Nasyidah', 'bidan40@mail.com', '2024-04-29 09:45:15', '$2y$12$WfKW6BpJNEu.25TIFJwMae3j3vPtJRqTysBKjNO/u3y22GcWr7Qqq', NULL, '2024-04-29 09:45:15', '2024-04-29 09:45:15'),
(92, 'Raisa Gawati Usada', 'bidan41@mail.com', '2024-04-29 09:45:15', '$2y$12$DtF0wMlexs3rXmi5mfmP2OAAqUxrCY7p9844iawgcmu6BR8giMQTa', NULL, '2024-04-29 09:45:15', '2024-04-29 09:45:15'),
(93, 'Ghaliyati Widiastuti', 'bidan42@mail.com', '2024-04-29 09:45:16', '$2y$12$NgQ27al6nuAGgVPod7wXmO.DoLR37fPBLNReTYbPp4PNdcZbYi76.', NULL, '2024-04-29 09:45:16', '2024-04-29 09:45:16'),
(94, 'Putri Hani Pertiwi ', 'bidan43@mail.com', '2024-04-29 09:45:16', '$2y$12$iqEzEpmSuiP/Zxs2I7n5LOgAqBNntY9dL3xBmc1hQ49gSOFk4eMsK', NULL, '2024-04-29 09:45:16', '2024-04-29 09:45:16'),
(95, 'Maria Rahayu', 'bidan44@mail.com', '2024-04-29 09:45:17', '$2y$12$HGIAvEeptfrgHszSimBNyOt238uSiB9fK7jrEgLYl.jgJY6KpOl82', NULL, '2024-04-29 09:45:17', '2024-04-29 09:45:17'),
(96, 'Rachel Pratiwi ', 'bidan45@mail.com', '2024-04-29 09:45:17', '$2y$12$lhxxAfajTT7ZYUH47SbfPO5vLoWlPU4ryKSIPzWx2DJYX2sc1IB2i', NULL, '2024-04-29 09:45:17', '2024-04-29 09:45:17'),
(97, 'Ophelia Winarsih ', 'bidan46@mail.com', '2024-04-29 09:45:17', '$2y$12$6NYhlkL8oFBlk59Lg9eb0ODr20Oc7rkonG0ptMhkJc0tKag8pDCmq', NULL, '2024-04-29 09:45:17', '2024-04-29 09:45:17'),
(98, 'Michelle Wijayanti ', 'bidan47@mail.com', '2024-04-29 09:45:18', '$2y$12$JI9JJeCRZv.KQeP0WdvNZuKjWhsziYINPs2/NpFGYlsR32FLyP8NS', NULL, '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(99, 'Sabrina Yuni Winarsih ', 'bidan48@mail.com', '2024-04-29 09:45:18', '$2y$12$WyBz48wPOYemp6bRun1IMeKaG2beHgA9NXt0uZGKJWCUxCTfbeifm', NULL, '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(100, 'Ayu Lailasari', 'bidan49@mail.com', '2024-04-29 09:45:18', '$2y$12$sgCCfclMNRkjeiQQmBeLjewrrxeURwlY85/1TPhkzz7g6/BFDGcMq', NULL, '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(101, 'Nilam Ana Wahyuni', 'bidan50@mail.com', '2024-04-29 09:45:18', '$2y$12$ZZcF9f.lBR0Aa.EqXRyO.OTbtVwOVQrHU5iQZz732vMTknOgWX6oa', NULL, '2024-04-29 09:45:18', '2024-04-29 09:45:18'),
(102, 'Irma Wati', 'bumil1@mail.com', '2024-04-29 09:45:19', '$2y$12$gZLrCIdKZliLnT3TB4sieOQ0SeluAk2VYPG4y5.B5eAy7la/Ilctq', NULL, '2024-04-29 09:45:19', '2024-04-29 09:45:19'),
(103, 'Mimin', 'bumil2@mail.com', '2024-04-29 09:45:20', '$2y$12$OpCYheUnwd7ad/sPWnfKrOnEoEsCfOGC/NnBt.PlQutV3bJNZPji6', NULL, '2024-04-29 09:45:20', '2024-04-29 09:45:20'),
(104, 'Desmawati', 'bumil3@mail.com', '2024-04-29 09:45:20', '$2y$12$HR9tPEzxUgYWwvENFaS9ue5slaR5m7uXlddlLN2HnwuvaqdjhhYFu', NULL, '2024-04-29 09:45:20', '2024-04-29 09:45:20'),
(105, 'Santi Kurniasih', 'bumil4@mail.com', '2024-04-29 09:45:20', '$2y$12$OXq2hh9nHpeTjuSSpp7bX.2bR6mTdTqGu6nLLiHiCf7fVZoge94MC', NULL, '2024-04-29 09:45:20', '2024-04-29 09:45:20'),
(106, 'Maya Sartika', 'bumil5@mail.com', '2024-04-29 09:45:21', '$2y$12$kbCUIiKIL5T2oQEpmnm0OesuKsvdRGD4dVZItR.cplSi6ogayaO32', NULL, '2024-04-29 09:45:21', '2024-04-29 09:45:21'),
(107, 'Dewi Sartika', 'bumil6@mail.com', '2024-04-29 09:45:21', '$2y$12$YMyGnyEg204DSZY6NMkYle/eylnsc6NjcEedAQnop22sXxbRkR4i.', NULL, '2024-04-29 09:45:21', '2024-04-29 09:45:21'),
(108, 'Septa Maryani', 'bumil7@mail.com', '2024-04-29 09:45:21', '$2y$12$swMEvmzt1cvj9dwktDqwwupLmoGFmN5cZZ6oMDFA.WANOXMcR.EvC', NULL, '2024-04-29 09:45:21', '2024-04-29 09:45:21'),
(109, 'Fevtiyanti', 'bumil8@mail.com', '2024-04-29 09:45:21', '$2y$12$IqbL2WJKCnRCt44W63kGGO9ZI4GkpUU9bVlLymJNh1.rxSuVnx8dW', NULL, '2024-04-29 09:45:21', '2024-04-29 09:45:21'),
(110, 'Nurul', 'bumil9@mail.com', '2024-04-29 09:45:22', '$2y$12$xt538x3WnkHNvW49czlT6ubqscIK9dgVDgkHSf740QOG9BBATXwpu', NULL, '2024-04-29 09:45:22', '2024-04-29 09:45:22'),
(111, 'Nita', 'bumil10@mail.com', '2024-04-29 09:45:22', '$2y$12$ZfA6onTb89KywGwo/rVfNO93bKPh.vgcQBtYgO4zMn/0oLxLAq1X2', NULL, '2024-04-29 09:45:22', '2024-04-29 09:45:22'),
(112, 'Susan', 'bumil11@mail.com', '2024-04-29 09:45:22', '$2y$12$Sryazf.HgZWKAlYXE1UiSeE4Xpj8.SLquOlR5r5bG.lMhyfn9Mpe2', NULL, '2024-04-29 09:45:22', '2024-04-29 09:45:22'),
(113, 'Eli Suryani', 'bumil12@mail.com', '2024-04-29 09:45:23', '$2y$12$yuNbOxolh4/dDTcRes1UbeeK7UWV6WGYNzdHdvdW54IJIFIrKYTja', NULL, '2024-04-29 09:45:23', '2024-04-29 09:45:23'),
(114, 'Vika', 'bumil13@mail.com', '2024-04-29 09:45:23', '$2y$12$FEXnKmoCk43BlUdVuFiPYOiGH7v8MyEc.4EZ1yaxDh2gbgKrIcL9m', NULL, '2024-04-29 09:45:23', '2024-04-29 09:45:23'),
(115, 'Atun', 'bumil14@mail.com', '2024-04-29 09:45:23', '$2y$12$xIli.hil.rXyXfzwGIXYV.8MBAUz6XOTRXgZvfpCVPVOmh/fsYlzm', NULL, '2024-04-29 09:45:23', '2024-04-29 09:45:23'),
(116, 'Hernika', 'bumil15@mail.com', '2024-04-29 09:45:23', '$2y$12$OE9RjxrrYBytmw/r9eucUu/r7rUPp/Qj9VR/rVcHKsT1zZVZankvq', NULL, '2024-04-29 09:45:23', '2024-04-29 09:45:23'),
(117, 'Desi Lestari', 'bumil16@mail.com', '2024-04-29 09:45:24', '$2y$12$gNXSGe9RHAmFTBJscRdSh.nvo01CSKBrah/J37JwONTfTh33jZ5lS', NULL, '2024-04-29 09:45:24', '2024-04-29 09:45:24'),
(118, 'Purnama Sari', 'bumil17@mail.com', '2024-04-29 09:45:24', '$2y$12$gWsHKO6aAM2IxNsc09mii.6sw0IxFw9hjC2dnqmxTDqsh.lcjQJz.', NULL, '2024-04-29 09:45:24', '2024-04-29 09:45:24'),
(119, 'Puji Lestari', 'bumil18@mail.com', '2024-04-29 09:45:24', '$2y$12$wIrcyqpQf3vld4bOyGpG5.lxLoe44CneaQRNnJqhfF1OwzgwSIuOq', NULL, '2024-04-29 09:45:24', '2024-04-29 09:45:24'),
(120, 'Tri Astuti', 'bumil19@mail.com', '2024-04-29 09:45:25', '$2y$12$fK5gCF1hL.rPK6JnTNj8munkyVcdc6/oMr0DFwUXpWMb4AZ8lYoHy', NULL, '2024-04-29 09:45:25', '2024-04-29 09:45:25'),
(121, 'Agustin', 'bumil20@mail.com', '2024-04-29 09:45:25', '$2y$12$5HJZP7x9QhgKyfyNCk1J1u54L5fCqZFsKSA78Blssazv2A4DI7Jsm', NULL, '2024-04-29 09:45:25', '2024-04-29 09:45:25'),
(122, 'Novita Sari', 'bumil21@mail.com', '2024-04-29 09:45:25', '$2y$12$nmCBxatl0u5tMmjL4hAKMekvczJPAv13nr.ywiXlzL3nHcFwkef.y', NULL, '2024-04-29 09:45:25', '2024-04-29 09:45:25'),
(123, 'Nasiroh', 'bumil22@mail.com', '2024-04-29 09:45:25', '$2y$12$EZqgK4QZHrAe.Eie7FswbOiWKGPkboA399cBmKUclv.akXgRHeDxC', NULL, '2024-04-29 09:45:25', '2024-04-29 09:45:25'),
(124, 'Yesi Apriani', 'bumil23@mail.com', '2024-04-29 09:45:26', '$2y$12$.3NB77H6MGxLsrB9DQIsP.orfqTng9.BEdhoYbrX1GMEw0Ywk3Zrq', NULL, '2024-04-29 09:45:26', '2024-04-29 09:45:26'),
(125, 'Kurnia', 'bumil24@mail.com', '2024-04-29 09:45:26', '$2y$12$TmeyadpP4OsOmQ4NEoWGIuqEyyCT2WY7odEcI1jY3fzB6B.alf4rG', NULL, '2024-04-29 09:45:26', '2024-04-29 09:45:26'),
(126, 'Riska', 'bumil25@mail.com', '2024-04-29 09:45:26', '$2y$12$dgch7UbxdsLS.5FoZ7gHY.FRIvvxk6dd1epRQ2j7KF.zFlz8ERcNW', NULL, '2024-04-29 09:45:26', '2024-04-29 09:45:26'),
(127, 'Novita', 'bumil26@mail.com', '2024-04-29 09:45:27', '$2y$12$VjoLbWOCh4x4IpJxJ9K.Xeba5oj3qkMw39l.yPX7kQZbKHICaV.Hq', NULL, '2024-04-29 09:45:27', '2024-04-29 09:45:27'),
(128, 'Riya Maya Sari', 'bumil27@mail.com', '2024-04-29 09:45:27', '$2y$12$3/vhlZXCbA54V2S/unOPwe2Nmod5X4iHvO40ke.vLui1oY6FXBe/G', NULL, '2024-04-29 09:45:27', '2024-04-29 09:45:27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `expectant_mothers`
--
ALTER TABLE `expectant_mothers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expectant_mothers_posyandu_id_foreign` (`posyandu_id`),
  ADD KEY `expectant_mothers_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nurses_posyandu_id_foreign` (`posyandu_id`),
  ADD KEY `nurses_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `officers_posyandu_id_foreign` (`posyandu_id`),
  ADD KEY `officers_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `posyandus`
--
ALTER TABLE `posyandus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posyandu_activities`
--
ALTER TABLE `posyandu_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posyandu_activities_posyandu_id_foreign` (`posyandu_id`),
  ADD KEY `posyandu_activities_officer_id_foreign` (`officer_id`),
  ADD KEY `posyandu_activities_expectant_mother_id_foreign` (`expectant_mother_id`);

--
-- Indeks untuk tabel `posyandu_schedules`
--
ALTER TABLE `posyandu_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posyandu_schedules_posyandu_id_foreign` (`posyandu_id`),
  ADD KEY `posyandu_schedules_officer_id_foreign` (`officer_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `expectant_mothers`
--
ALTER TABLE `expectant_mothers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `nurses`
--
ALTER TABLE `nurses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `officers`
--
ALTER TABLE `officers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posyandus`
--
ALTER TABLE `posyandus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `posyandu_activities`
--
ALTER TABLE `posyandu_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `posyandu_schedules`
--
ALTER TABLE `posyandu_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `expectant_mothers`
--
ALTER TABLE `expectant_mothers`
  ADD CONSTRAINT `expectant_mothers_posyandu_id_foreign` FOREIGN KEY (`posyandu_id`) REFERENCES `posyandus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `expectant_mothers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nurses`
--
ALTER TABLE `nurses`
  ADD CONSTRAINT `nurses_posyandu_id_foreign` FOREIGN KEY (`posyandu_id`) REFERENCES `posyandus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `nurses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `officers`
--
ALTER TABLE `officers`
  ADD CONSTRAINT `officers_posyandu_id_foreign` FOREIGN KEY (`posyandu_id`) REFERENCES `posyandus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `officers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `posyandu_activities`
--
ALTER TABLE `posyandu_activities`
  ADD CONSTRAINT `posyandu_activities_expectant_mother_id_foreign` FOREIGN KEY (`expectant_mother_id`) REFERENCES `expectant_mothers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posyandu_activities_officer_id_foreign` FOREIGN KEY (`officer_id`) REFERENCES `officers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posyandu_activities_posyandu_id_foreign` FOREIGN KEY (`posyandu_id`) REFERENCES `posyandus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `posyandu_schedules`
--
ALTER TABLE `posyandu_schedules`
  ADD CONSTRAINT `posyandu_schedules_officer_id_foreign` FOREIGN KEY (`officer_id`) REFERENCES `officers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posyandu_schedules_posyandu_id_foreign` FOREIGN KEY (`posyandu_id`) REFERENCES `posyandus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
