-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2025 at 11:17 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supernova_db_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_sekolah`
--

CREATE TABLE `admin_sekolah` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_sekolah`
--

INSERT INTO `admin_sekolah` (`id`, `nama`, `email`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Abner Kovacek', 'christina85@example.com', 'jrolfson', '$2y$12$1Wkb2mJE3BysYvh.r2WcnuNAFwWiH0HRtp9h2Xk0WLQkSrOsfjr7a', '2025-03-11 04:14:26', '2025-03-11 04:14:26'),
(2, 'Mr. Myrl Runolfsson', 'dach.effie@example.org', 'stephanie.rowe', '$2y$12$P3BL7KMJzCP8ZfmHsIQnhOcIy8DWMp75w128TjBgRmN.KNlN3ZD3K', '2025-03-11 04:14:26', '2025-03-11 04:14:26'),
(3, 'Emily Reinger DDS', 'senger.domenic@example.org', 'beulah.farrell', '$2y$12$a0r4AUegCFey9q4BnRgF2.1iCFboKiusjVUd4SVCWxxNqepPQWQK6', '2025-03-11 04:14:27', '2025-03-11 04:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calon_siswa`
--

CREATE TABLE `calon_siswa` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usia` int NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `riwayat_penyakit` text COLLATE utf8mb4_unicode_ci,
  `nama_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pendaftaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Menunggu',
  `status_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calon_siswa`
--

INSERT INTO `calon_siswa` (`id`, `nama_lengkap`, `tanggal_lahir`, `tempat_lahir`, `usia`, `jenis_kelamin`, `agama`, `status_keluarga`, `alamat`, `riwayat_penyakit`, `nama_ayah`, `pekerjaan_ayah`, `hp_ayah`, `nama_ibu`, `pekerjaan_ibu`, `hp_ibu`, `status_pendaftaran`, `status_pembayaran`, `created_at`, `updated_at`) VALUES
(1, 'Jevon Gerlach', '2020-05-07', 'Lisetteton', 5, 'Laki-laki', 'Islam', 'Anak Kandung', '55232 Eli Lodge\nSouth Margueritestad, NM 53330', NULL, 'Brian Gleichner', 'Healthcare Support Worker', '310-931-3690', 'Verlie Lynch Sr.', 'Cement Mason and Concrete Finisher', '281.567.5385', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(2, 'Dr. Lucas White II', '2021-09-06', 'Naderview', 5, 'Laki-laki', 'Kristen', 'Anak Angkat', '953 Meredith Manor Apt. 775\nRippinshire, KS 13465-0176', NULL, 'Dr. Lionel West', 'Forest and Conservation Technician', '(469) 346-6760', 'Dr. Alysa Parker III', 'Urban Planner', '+1.541.353.7012', 'Diterima', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(3, 'Marshall Grant', '2021-05-25', 'Harveyview', 7, 'Laki-laki', 'Islam', 'Anak Angkat', '62683 Haley Estate Apt. 234\nDonnellport, OH 03569-6772', NULL, 'Bailey Lynch', 'Statement Clerk', '989-286-0422', 'Mozelle Carroll', 'Transportation Equipment Painters', '352.312.4529', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(4, 'Mrs. Josiane Turcotte', '2018-08-23', 'North Vita', 7, 'Perempuan', 'Konghucu', 'Anak Kandung', '24410 Jo Burgs Apt. 721\nSouth Emmethaven, KY 96838', NULL, 'Rogelio Jast', 'Foundry Mold and Coremaker', '+12405863694', 'Precious O\'Hara', 'Plant and System Operator', '(248) 765-2166', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(5, 'Mrs. Brionna Walker', '2020-10-02', 'East Justyn', 4, 'Perempuan', 'Konghucu', 'Anak Kandung', '33403 Clovis Port\nAgustinafurt, WI 04753-9321', 'dolorem', 'Prof. Emil Herzog DDS', 'Floor Finisher', '+1 (206) 871-1345', 'Ms. Tamia Rodriguez', 'Financial Analyst', '(906) 561-2776', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(6, 'Rachel Toy', '2021-03-21', 'West Friedrich', 7, 'Laki-laki', 'Buddha', 'Anak Kandung', '894 Heller Manor Apt. 248\nJohnsonborough, UT 76287-1248', 'hic', 'Domenic Gaylord', 'Cement Mason and Concrete Finisher', '+1 (872) 260-9760', 'Prof. Kailey Brown', 'Marketing Manager', '+1-737-474-3818', 'Diterima', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(7, 'Dr. Elton Bechtelar I', '2020-11-21', 'Hayesshire', 7, 'Laki-laki', 'Hindu', 'Anak Angkat', '414 Sherman Grove\nEast Verona, SC 84624-9211', NULL, 'Jonatan Wunsch', 'Crane and Tower Operator', '1-352-524-4991', 'Ms. Shana Douglas', 'Laundry OR Dry-Cleaning Worker', '(224) 350-8252', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(8, 'Iva Sipes', '2018-01-19', 'Susanville', 7, 'Laki-laki', 'Katolik', 'Anak Angkat', '176 Leffler Station Suite 047\nEast Santiago, SC 04636', 'aspernatur', 'Ernie Nitzsche IV', 'Instrument Sales Representative', '1-845-289-6281', 'Ms. Della Windler V', 'Substation Maintenance', '+1-234-936-2398', 'Ditolak', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(9, 'Dr. Ahmad Hermiston', '2018-09-26', 'New Coltfort', 6, 'Perempuan', 'Katolik', 'Anak Angkat', '54522 Mann Streets\nLake Marielle, IA 07053-6101', 'illum', 'Prof. Abraham Ortiz DVM', 'Scientific Photographer', '1-315-916-1412', 'Meghan Koelpin', 'Usher', '847-994-5241', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(10, 'Eulalia Thiel', '2021-08-05', 'Lebsackville', 6, 'Perempuan', 'Konghucu', 'Anak Kandung', '53142 Cartwright Turnpike\nMyrnaview, OH 92131', NULL, 'Prof. Cletus Friesen', 'Philosophy and Religion Teacher', '(781) 562-3611', 'Dr. Adrienne Fay', 'Customer Service Representative', '714-852-7992', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(11, 'Prof. Dayton Labadie', '2020-05-10', 'Trompland', 5, 'Laki-laki', 'Hindu', 'Anak Kandung', '351 Morar Freeway\nReichelview, AR 85225-7930', 'aut', 'Russell Gerhold I', 'Health Technologist', '1-984-785-3420', 'Mrs. Abbey Gorczany', 'Materials Engineer', '769-323-9439', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(12, 'Dayana Abernathy Jr.', '2019-02-16', 'Rippinborough', 6, 'Laki-laki', 'Konghucu', 'Anak Kandung', '3683 Amira Ports Apt. 115\nWest Providenci, AR 52838', NULL, 'Evert Ortiz DDS', 'Interpreter OR Translator', '534-534-2820', 'Dr. Kellie Hettinger III', 'Postsecondary Teacher', '651-326-0102', 'Ditolak', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(13, 'Jillian Dare', '2021-04-09', 'Schneidertown', 6, 'Laki-laki', 'Kristen', 'Anak Kandung', '7937 Gunnar Ranch Suite 422\nCassandrehaven, WV 65120-8213', 'at', 'Hardy Ortiz', 'Bailiff', '+18724548270', 'Ava Tremblay', 'Rehabilitation Counselor', '1-262-870-2632', 'Diterima', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(14, 'Antonio Stehr', '2019-11-06', 'New Christianaburgh', 7, 'Laki-laki', 'Katolik', 'Anak Angkat', '13521 Mohammed Glens Suite 715\nBrendonburgh, AL 70977-4266', 'corrupti', 'Darion Mohr', 'Government', '847.793.9087', 'Samantha Leuschke', 'Licensing Examiner and Inspector', '1-480-959-2638', 'Menunggu', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(15, 'Prof. Caesar Jenkins PhD', '2020-01-08', 'Keanuburgh', 7, 'Perempuan', 'Konghucu', 'Anak Angkat', '36016 Arthur Haven\nNorth Xzavier, CT 22182', 'quia', 'Monserrate Heidenreich', 'Claims Adjuster', '+16504747089', 'Tamia D\'Amore', 'Commercial Diver', '432.664.9153', 'Menunggu', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(16, 'Ila Monahan', '2017-03-19', 'Port Rory', 7, 'Perempuan', 'Katolik', 'Anak Angkat', '7311 Kuvalis Garden Apt. 623\nNew Shaniya, GA 23812-9779', 'hic', 'Trent Feil', 'Wellhead Pumper', '585-896-9704', 'Juanita Ratke DVM', 'Heaters', '+1.667.292.5129', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(17, 'Ms. Delia Ebert II', '2018-09-25', 'Mertzborough', 7, 'Perempuan', 'Kristen', 'Anak Kandung', '619 Simonis Rest\nJamarmouth, IL 35670-0651', 'praesentium', 'Dr. Colin Abshire', 'Production Helper', '1-608-760-5112', 'Rita Okuneva', 'Sewing Machine Operator', '+15593575372', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(18, 'Michelle Simonis', '2023-11-08', 'Lake Salvador', 6, 'Laki-laki', 'Islam', 'Anak Angkat', '7757 Vena Mountains\nLavernebury, AR 35023-1171', NULL, 'Mr. Alek Wolf Jr.', 'Computer Security Specialist', '586.643.9308', 'Vida Jaskolski', 'Multiple Machine Tool Setter', '754.915.1812', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(19, 'Ms. Ellen Dibbert', '2017-10-03', 'New Fermin', 6, 'Perempuan', 'Buddha', 'Anak Kandung', '4454 Schamberger Islands\nKundemouth, CO 69073', 'soluta', 'Theodore Kris', 'Keyboard Instrument Repairer and Tuner', '260.227.3890', 'Dr. Stacey Kutch', 'Power Plant Operator', '(909) 594-6200', 'Menunggu', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(20, 'Mr. Enrique Roob', '2022-08-23', 'Lake Katelynn', 5, 'Perempuan', 'Katolik', 'Anak Angkat', '8133 Botsford Heights Suite 934\nMillsport, ND 70354-9364', NULL, 'Estevan Marks', 'Bookbinder', '832-391-1489', 'Therese Langworth V', 'Aircraft Launch and Recovery Officer', '256-768-2897', 'Diterima', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(21, 'Montana Collier', '2019-03-24', 'Bradtkeport', 4, 'Laki-laki', 'Hindu', 'Anak Angkat', '8338 Ashly Extension Apt. 121\nSouth Khalid, NC 96647', NULL, 'Mckenzie Dietrich', 'Health Educator', '458.925.4556', 'Miss Claudine Beatty', 'Petroleum Technician', '(952) 237-3190', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(22, 'Wilbert Haley', '2017-12-15', 'Chelseabury', 4, 'Perempuan', 'Katolik', 'Anak Angkat', '544 Isabelle Manors Apt. 245\nLake Breannechester, OH 14173-4046', NULL, 'Kieran Bauch DDS', 'Interviewer', '520-962-1185', 'Wilhelmine Swift', 'First-Line Supervisor-Manager of Landscaping, Lawn Service, and Groundskeeping Worker', '(331) 263-0911', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(23, 'Gordon Schoen', '2023-03-15', 'New Athenashire', 5, 'Perempuan', 'Kristen', 'Anak Kandung', '9906 Jabari Lock Suite 726\nSouth Josueburgh, TX 24481-8513', 'enim', 'Jeramie Klocko', 'Radio and Television Announcer', '+1 (669) 657-8827', 'Estella Stamm', 'Physical Therapist Aide', '+1.334.478.6577', 'Diterima', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(24, 'Chaya Brakus', '2021-11-06', 'North Maximus', 7, 'Perempuan', 'Buddha', 'Anak Angkat', '143 Layla Mill\nArdellamouth, RI 27271', NULL, 'Kole Carter I', 'Industrial Machinery Mechanic', '740.735.4555', 'Gregoria Kautzer', 'Meter Mechanic', '+1-763-645-5879', 'Diterima', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(25, 'Marian Christiansen', '2018-07-24', 'Janamouth', 7, 'Perempuan', 'Buddha', 'Anak Kandung', '56291 Auer Meadow Suite 145\nAbernathyview, NC 82964-5720', 'quo', 'Irving Gerhold', 'Maintenance and Repair Worker', '+15809689582', 'Dr. Patsy Schinner I', 'Computer Scientist', '602.920.3863', 'Menunggu', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(26, 'Javier Gorczany', '2023-10-01', 'Ullrichmouth', 4, 'Perempuan', 'Katolik', 'Anak Angkat', '1528 Pearlie Route\nSatterfieldland, VA 25221', 'delectus', 'Colin Koepp', 'Geography Teacher', '(364) 599-8634', 'Mariam Beatty', 'Health Specialties Teacher', '(386) 604-5483', 'Ditolak', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(27, 'Hosea Macejkovic', '2023-05-06', 'New Madisen', 4, 'Perempuan', 'Buddha', 'Anak Angkat', '83210 German Gardens\nAbigayleton, IL 50572', 'voluptas', 'Prof. Darrel O\'Reilly', 'Radio Mechanic', '(469) 969-0625', 'Fay Terry MD', 'Airframe Mechanic', '(248) 850-7099', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(28, 'Harold Treutel', '2023-07-27', 'Anafort', 4, 'Laki-laki', 'Kristen', 'Anak Kandung', '809 Daniel Brooks Apt. 183\nLake Anthonyland, PA 75775', 'doloremque', 'Vidal Hahn', 'Logging Tractor Operator', '832.393.3670', 'Ms. Lilliana Feeney V', 'Personal Care Worker', '(586) 791-0541', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(29, 'Favian Shanahan', '2021-04-28', 'Tyshawnmouth', 5, 'Perempuan', 'Buddha', 'Anak Kandung', '2593 Eladio Road\nPriceside, NY 35913', NULL, 'Keenan Abbott DDS', 'Transportation Inspector', '+1.239.702.2186', 'Donna King', 'Mail Clerk', '1-806-617-4682', 'Diterima', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(30, 'Lyric Pfeffer', '2019-02-25', 'North Alysson', 7, 'Perempuan', 'Katolik', 'Anak Angkat', '27612 Alexis Crossing\nNorth Rosina, AR 52035-1043', NULL, 'Hal Wuckert', 'Financial Manager', '480.656.9219', 'Miss Fae Robel', 'Mechanical Door Repairer', '+1-585-581-6841', 'Ditolak', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(31, 'Donnell Klein', '2020-04-12', 'Howellview', 7, 'Perempuan', 'Hindu', 'Anak Kandung', '33853 Schoen Brook\nWest Myrl, LA 10031-9116', NULL, 'Javier Mraz', 'Council', '+1-630-360-0660', 'Mrs. Tanya Will MD', 'Art Director', '+15408625682', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(32, 'Kevon Williamson', '2025-01-18', 'Kadenstad', 4, 'Laki-laki', 'Islam', 'Anak Angkat', '955 D\'Amore Corner Apt. 839\nConnton, MT 98091', 'laudantium', 'Dr. Kyleigh Durgan DVM', 'Aircraft Cargo Handling Supervisor', '1-509-517-4835', 'Ms. Verna Emmerich DVM', 'Parking Enforcement Worker', '+1.534.393.4348', 'Ditolak', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(33, 'Mr. Jaren Roob II', '2024-07-01', 'Millsfurt', 6, 'Laki-laki', 'Katolik', 'Anak Angkat', '9763 Carlee Ridges Apt. 365\nHackettmouth, LA 97147', 'in', 'Marques McKenzie', 'Patrol Officer', '(717) 595-1034', 'Megane Rowe', 'Oil Service Unit Operator', '(682) 725-2286', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(34, 'Madaline Barton', '2020-06-20', 'Osinskiville', 6, 'Perempuan', 'Katolik', 'Anak Kandung', '5714 Kari Valley Suite 166\nDachfurt, VA 49301', 'enim', 'Dr. Modesto Hagenes Jr.', 'Parking Lot Attendant', '716.220.7584', 'Nayeli Heaney', 'Floor Layer', '571.746.3597', 'Menunggu', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(35, 'Laurianne O\'Kon', '2024-07-23', 'Elissamouth', 4, 'Perempuan', 'Islam', 'Anak Kandung', '36073 Gibson Drives\nSchummhaven, MO 65475', 'ratione', 'Orland Wilkinson', 'Human Resource Director', '1-302-228-6804', 'Molly Morar', 'Fish Hatchery Manager', '+1-320-398-1004', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(36, 'Jedediah Jacobson', '2019-10-04', 'West Alyciaside', 7, 'Laki-laki', 'Buddha', 'Anak Kandung', '604 McCullough Village Apt. 678\nNew Othaview, KY 30661-8160', NULL, 'Robin Donnelly', 'Epidemiologist', '680.253.4499', 'Miss Marjory Kreiger', 'Medical Equipment Preparer', '828-933-0293', 'Diterima', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(37, 'Mr. Cyrus Kassulke', '2021-11-04', 'New Selina', 5, 'Perempuan', 'Kristen', 'Anak Kandung', '29045 Shanahan Mall Apt. 025\nEast Leoville, OK 95918-6635', 'omnis', 'Giovani Stanton PhD', 'Production Laborer', '+1-551-306-8760', 'Connie Gottlieb', 'Sailor', '708-990-1667', 'Menunggu', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(38, 'Solon Zemlak', '2019-10-17', 'Tracymouth', 7, 'Laki-laki', 'Konghucu', 'Anak Kandung', '863 Alexane Meadows Apt. 002\nWest Rebeccaside, MN 30755-8484', NULL, 'Mr. Jaron Nolan MD', 'Umpire and Referee', '1-812-567-8877', 'Ms. Ilene Anderson II', 'Fish Hatchery Manager', '1-248-402-3265', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(39, 'Nathanial Schroeder', '2025-01-24', 'Strackechester', 5, 'Laki-laki', 'Hindu', 'Anak Angkat', '71418 Stracke Land Suite 915\nCareyborough, NC 06114', NULL, 'Herman Franecki', 'Textile Machine Operator', '847-466-6606', 'Ms. Marcella Crist', 'Computer Software Engineer', '+1-640-837-6844', 'Diterima', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(40, 'Dr. Otha DuBuque', '2019-09-03', 'Port Jordon', 5, 'Perempuan', 'Konghucu', 'Anak Kandung', '542 Padberg Lock Apt. 732\nPort Shanon, OH 63703', 'a', 'Javon Berge', 'Psychiatric Technician', '(323) 535-7420', 'Kathlyn Hill III', 'Molding and Casting Worker', '+18484992737', 'Menunggu', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(41, 'Mercedes Jones', '2024-05-12', 'Nehatown', 5, 'Perempuan', 'Kristen', 'Anak Kandung', '908 Watsica Loaf\nPort Cathrine, MN 98804-8033', NULL, 'Jennings Haley', 'Scientific Photographer', '669.882.4552', 'Raina Labadie', 'Nuclear Power Reactor Operator', '762.322.4772', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(42, 'Dr. Valentina Leuschke', '2023-10-11', 'Lake Yvonne', 5, 'Perempuan', 'Katolik', 'Anak Angkat', '548 Fritsch Lakes Apt. 267\nNew Elianbury, DE 57628-8563', 'quis', 'Mr. Gerald Runolfsdottir', 'Law Enforcement Teacher', '+1-240-559-0767', 'Danika Doyle', 'Plumber', '+1 (475) 524-9798', 'Menunggu', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(43, 'Renee McClure', '2019-01-01', 'Dedricborough', 4, 'Laki-laki', 'Katolik', 'Anak Kandung', '5847 Wiza Ways\nWest Brooklyn, AK 31116', 'ea', 'Tad Windler III', 'Artillery Crew Member', '765.977.7152', 'Gwendolyn Mueller', 'Refrigeration Mechanic', '(279) 487-8003', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(44, 'Jaqueline Kilback', '2022-06-27', 'Lake Leopoldoborough', 6, 'Laki-laki', 'Islam', 'Anak Kandung', '3686 Gleason Prairie\nLake Annabelle, MN 46604', NULL, 'Dr. Monserrat Greenfelder', 'Coil Winders', '715.570.3923', 'Dr. Rose O\'Reilly', 'Locomotive Engineer', '+1-984-288-1271', 'Menunggu', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(45, 'Maybell Bradtke V', '2024-07-09', 'Port Lesly', 4, 'Perempuan', 'Kristen', 'Anak Angkat', '1367 Maggio Shore\nPort Josephfort, MO 44079', 'nam', 'Everett Metz', 'Ship Carpenter and Joiner', '+1.364.754.2557', 'Angela Senger I', 'Medical Equipment Repairer', '(480) 269-1322', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(46, 'Autumn Aufderhar', '2019-08-13', 'Lake Erik', 4, 'Perempuan', 'Hindu', 'Anak Angkat', '65570 Dickens Tunnel Apt. 154\nBeahanstad, NC 28108-9882', NULL, 'Mr. Brain Hahn', 'Printing Press Machine Operator', '304-689-6817', 'Mireya Cronin', 'Freight Inspector', '769-258-1771', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(47, 'Marlee Weissnat', '2020-12-24', 'O\'Haraville', 4, 'Laki-laki', 'Islam', 'Anak Angkat', '51490 Abigale Loop\nSouth Jayshire, AL 57877-5462', 'eum', 'Alexandre Welch', 'Curator', '1-567-315-7036', 'Jaida Howell', 'Watch Repairer', '+16408963247', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(48, 'Jerry Nolan', '2018-01-15', 'East Danteshire', 4, 'Perempuan', 'Islam', 'Anak Angkat', '751 Satterfield Dam Apt. 673\nLeannonstad, WV 46884-4372', 'ex', 'Emmitt Cassin', 'Middle School Teacher', '+1.458.905.6242', 'June Kautzer', 'Diesel Engine Specialist', '1-810-765-7748', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(49, 'Reina McDermott', '2018-12-03', 'Port Kathleenfort', 7, 'Laki-laki', 'Konghucu', 'Anak Kandung', '59944 Pablo Circle Apt. 324\nNew Laura, NH 05004-2406', NULL, 'Lazaro Ernser', 'Medical Technician', '629-467-1773', 'Stephania O\'Kon', 'Mathematical Science Teacher', '830-291-1481', 'Menunggu', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(50, 'Arturo Grimes', '2018-10-07', 'Arnefurt', 6, 'Laki-laki', 'Hindu', 'Anak Kandung', '9478 Tod Valley Suite 902\nLurlinefort, TN 86612-0324', 'explicabo', 'Lourdes Lynch', 'Crossing Guard', '(872) 415-5817', 'Clotilde Hill', 'Captain', '1-575-675-9822', 'Diterima', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(51, 'Mrs. Juliet Lakin Sr.', '2019-07-01', 'New Cyrilport', 5, 'Perempuan', 'Hindu', 'Anak Kandung', '37485 Beatty Mission Suite 498\nWest Theoshire, NJ 30028', NULL, 'Brannon Durgan', 'Healthcare Support Worker', '1-640-839-4534', 'Mariam Hilpert', 'Medical Equipment Preparer', '1-754-639-7618', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(52, 'Gustave Mueller Sr.', '2022-11-18', 'Waelchimouth', 7, 'Perempuan', 'Kristen', 'Anak Kandung', '5808 Flatley Junction Apt. 497\nLake Dellaport, TX 35671', NULL, 'Prof. Doyle Murazik Sr.', 'Signal Repairer OR Track Switch Repairer', '+1 (380) 360-7481', 'Mrs. Aiyana Borer', 'Network Admin OR Computer Systems Administrator', '+1.941.200.3641', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(53, 'Rose Schmitt', '2021-02-05', 'West Devontechester', 5, 'Laki-laki', 'Hindu', 'Anak Kandung', '67024 Ayla Walks Suite 464\nNorth Carley, NC 26676', NULL, 'Brock Kuvalis', 'Sailor', '+1-619-232-8460', 'Clare Yost', 'Stonemason', '731.666.1320', 'Ditolak', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(54, 'Ms. Susan Adams', '2020-04-09', 'East Dolly', 7, 'Laki-laki', 'Kristen', 'Anak Kandung', '13276 Tyra Club\nNorth Felicia, HI 46079-4209', 'dolorum', 'Gustave Block', 'Respiratory Therapist', '+1 (908) 906-6535', 'Prof. Danika Breitenberg', 'Calibration Technician OR Instrumentation Technician', '+1-351-827-8862', 'Diterima', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(55, 'Brielle Kirlin', '2020-06-23', 'New Dayana', 6, 'Perempuan', 'Katolik', 'Anak Kandung', '301 Marietta Cliff Suite 067\nMoseville, PA 59361', 'iste', 'Russ Baumbach', 'Landscape Artist', '(772) 789-9911', 'Dominique Kessler', 'Scientific Photographer', '1-802-931-6170', 'Diterima', 'Lunas', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(56, 'Prof. Camila Cremin V', '2022-07-06', 'Greysonmouth', 6, 'Laki-laki', 'Buddha', 'Anak Kandung', '91383 Joanie Viaduct Apt. 844\nSengerside, TN 20631', 'et', 'Prof. London Denesik I', 'Underground Mining', '+1-989-829-5062', 'Laurianne Beier Jr.', 'Drycleaning Machine Operator', '1-734-862-0015', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(57, 'Karelle Schulist', '2018-02-08', 'Langoshhaven', 4, 'Perempuan', 'Islam', 'Anak Kandung', '787 Konopelski Flat Apt. 951\nLake Kenton, MA 75208-9579', NULL, 'Willard Monahan', 'Photoengraving Machine Operator', '(620) 635-0163', 'Prof. Norma Brakus', 'Physician Assistant', '1-574-786-0064', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(58, 'Jessica DuBuque', '2024-08-10', 'North Sydniemouth', 6, 'Laki-laki', 'Kristen', 'Anak Angkat', '24311 Jannie Forges\nNew Bethville, DC 02295', 'error', 'Harley Mante', 'Food Batchmaker', '351-452-5538', 'Noemie Deckow', 'Life Science Technician', '+1-951-904-6668', 'Diterima', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(59, 'Dr. Pete Kuhlman', '2019-06-23', 'Eldridgefurt', 5, 'Laki-laki', 'Kristen', 'Anak Angkat', '53613 Yost Hollow\nNew Henderson, WI 02878-1028', 'nam', 'Alexzander Hayes IV', 'Railroad Switch Operator', '1-458-750-6331', 'Mrs. Palma Feeney', 'Prosthodontist', '+1.425.257.0624', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(60, 'Clemmie Champlin', '2021-07-01', 'Marksbury', 5, 'Laki-laki', 'Konghucu', 'Anak Angkat', '9632 Manuel Valley\nMetzborough, IA 14970-8959', NULL, 'Preston Casper', 'Financial Services Sales Agent', '424-348-4397', 'Prof. Marianne Graham Sr.', 'Waiter', '+1 (820) 779-5023', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(61, 'Robbie Pollich', '2019-12-19', 'Anikafurt', 4, 'Laki-laki', 'Hindu', 'Anak Kandung', '39745 Cordell Path\nEvabury, NC 64054', NULL, 'Benny Murphy', 'Landscaping', '337.566.9267', 'Prof. Katheryn Fisher', 'Stationary Engineer', '(615) 573-0190', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(62, 'Clementine Johns', '2020-03-14', 'Boyerfort', 6, 'Laki-laki', 'Kristen', 'Anak Angkat', '68933 Goyette Stravenue Suite 945\nLake Bernita, MT 88859-8482', NULL, 'Mr. Erin Lubowitz I', 'Electromechanical Equipment Assembler', '(820) 322-5660', 'Prof. Lempi Stroman', 'Offset Lithographic Press Operator', '+1-602-268-0873', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(63, 'Edd Rice', '2018-12-11', 'Flatleyhaven', 5, 'Laki-laki', 'Kristen', 'Anak Kandung', '8269 Lily Lock Apt. 173\nDillonberg, NH 83797', 'eos', 'Anderson Thompson', 'Geological Sample Test Technician', '1-540-672-2147', 'Loma Cassin', 'Welfare Eligibility Clerk', '+1 (562) 875-9360', 'Diterima', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(64, 'Darien Muller', '2024-03-03', 'Jaunitaberg', 4, 'Laki-laki', 'Islam', 'Anak Kandung', '84429 Kessler Parkways Suite 468\nWest Edenborough, WA 32746-1794', 'dignissimos', 'Freddy Oberbrunner', 'Building Cleaning Worker', '713-540-9151', 'Pat Emmerich', 'Social and Human Service Assistant', '+19526338190', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(65, 'Mrs. Carmella Mayert DVM', '2018-05-18', 'North Everetteview', 5, 'Perempuan', 'Katolik', 'Anak Angkat', '641 Jessie Lights\nPort Adela, FL 44816', NULL, 'Reed Pollich', 'Optical Instrument Assembler', '1-689-731-7427', 'Dr. Salma Douglas', 'Animal Scientist', '207-831-8887', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(66, 'Oleta Considine MD', '2024-03-25', 'Estellefort', 7, 'Perempuan', 'Kristen', 'Anak Angkat', '24975 Pacocha Corners Suite 220\nNicolastown, CT 43676', 'qui', 'Giovanny Stokes', 'Artist', '+1-479-263-3889', 'Ms. Magali Hickle', 'Production Manager', '+1.727.441.6484', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(67, 'Lauren Hackett', '2017-08-05', 'New Wilberthaven', 4, 'Laki-laki', 'Buddha', 'Anak Angkat', '636 Gleichner Meadows Apt. 958\nHettingerborough, NC 18325-9201', 'cumque', 'Santiago Kiehn', 'Order Filler', '240-481-7698', 'Piper Leannon', 'Welder', '+1.385.782.8672', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(68, 'Ms. Ramona Bins', '2024-08-31', 'West Shaniaberg', 6, 'Laki-laki', 'Buddha', 'Anak Kandung', '756 Bednar Viaduct\nAryannatown, NJ 46771', NULL, 'Gavin Strosin', 'Molder', '1-772-883-3979', 'Dr. Muriel Zulauf', 'Coaches and Scout', '+12282716244', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(69, 'Aylin Prohaska', '2022-02-06', 'Medaland', 5, 'Perempuan', 'Katolik', 'Anak Angkat', '599 Wunsch Crossroad\nEast Gussie, PA 18543-3065', NULL, 'Charlie Corkery', 'Business Operations Specialist', '1-650-863-2301', 'Brooke Paucek', 'Engineering', '+18568123673', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(70, 'Prof. Charlene Cremin', '2020-11-03', 'East Manuelton', 6, 'Perempuan', 'Katolik', 'Anak Angkat', '33710 Xzavier Rapid Apt. 296\nBellafort, ND 45608-1990', NULL, 'Mr. Deonte Kuphal MD', 'Skin Care Specialist', '628-685-6006', 'Mrs. Ella Aufderhar', 'Forensic Science Technician', '203.739.8352', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(71, 'Yasmin Greenfelder', '2023-12-21', 'North Casey', 5, 'Laki-laki', 'Islam', 'Anak Kandung', '90592 Freeman Shores Suite 232\nWest Norval, TX 48035-2009', 'et', 'Glen Smith III', 'Loan Interviewer', '+12513409256', 'Madilyn Kovacek', 'Instructional Coordinator', '1-417-734-3624', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(72, 'Asha O\'Kon', '2020-10-28', 'Kayberg', 7, 'Laki-laki', 'Konghucu', 'Anak Angkat', '913 Jerde Harbors Apt. 608\nElmorefort, AR 83819-2522', NULL, 'Dr. Ayden Harris DDS', 'Industrial-Organizational Psychologist', '478-710-3562', 'Kaelyn Quigley', 'Loading Machine Operator', '+1 (662) 758-4187', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(73, 'Mose Rempel III', '2023-12-29', 'Keeblerton', 6, 'Perempuan', 'Islam', 'Anak Kandung', '50605 VonRueden Mountains Apt. 715\nLake Lue, DE 31655', NULL, 'Terrill Osinski Sr.', 'Manager of Air Crew', '1-775-897-3987', 'Melissa Nikolaus', 'Clinical School Psychologist', '(989) 859-3476', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(74, 'Johan Ortiz', '2023-08-16', 'Othaview', 6, 'Perempuan', 'Kristen', 'Anak Angkat', '58914 Nola Point\nTurcottefort, HI 44651', NULL, 'Grover Weissnat', 'Food Batchmaker', '860-349-2908', 'Sydnie Beatty II', 'Order Filler OR Stock Clerk', '734-346-2409', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(75, 'Miss Josefina Predovic', '2024-06-20', 'East Zellaburgh', 7, 'Laki-laki', 'Islam', 'Anak Kandung', '826 Mohr Passage Apt. 516\nAlejandrintown, VT 13472-3523', NULL, 'Prof. Thurman Treutel', 'Plasterer OR Stucco Mason', '+1 (202) 783-1995', 'Ara Lesch', 'Electronics Engineer', '+1-256-595-2502', 'Diterima', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(76, 'Mr. Russ Grimes', '2017-04-22', 'Howellborough', 7, 'Laki-laki', 'Katolik', 'Anak Angkat', '4447 Brock Meadow\nNew Antonettabury, IN 00974', NULL, 'Prof. Sydney Marks', 'Forging Machine Setter', '+1 (919) 662-7154', 'Ms. Renee Bogisich IV', 'Brickmason', '+1-602-586-3107', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(77, 'Prof. Orland Lindgren', '2019-01-26', 'West Heathfort', 6, 'Laki-laki', 'Konghucu', 'Anak Angkat', '63562 Michael Turnpike Apt. 275\nKristinatown, OH 11641', 'omnis', 'Morgan Wehner', 'Medical Laboratory Technologist', '1-513-898-2895', 'Addie Schuster V', 'Glazier', '667.367.8400', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(78, 'Dakota Bode', '2018-04-20', 'South Linwood', 7, 'Perempuan', 'Kristen', 'Anak Kandung', '91464 Thompson Overpass Apt. 698\nHarrisbury, UT 16293-8037', NULL, 'Solon Hammes', 'Anthropology Teacher', '+1-972-849-3463', 'Adelle Kiehn', 'Product Management Leader', '843.800.4563', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(79, 'Gayle Bailey V', '2022-04-02', 'West Cecelia', 6, 'Perempuan', 'Katolik', 'Anak Angkat', '45342 Robel Freeway\nVivaport, WY 31848-9197', NULL, 'Peter Rohan', 'Library Science Teacher', '972-266-8442', 'Ms. Madalyn Kilback', 'Telecommunications Line Installer', '210-542-7670', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(80, 'Monserrat Upton', '2019-11-19', 'Jamalhaven', 7, 'Perempuan', 'Kristen', 'Anak Angkat', '431 Turner Tunnel Suite 539\nSouth Sonya, NC 49707', NULL, 'Terrell Christiansen', 'Municipal Clerk', '585-727-6269', 'Bernita Willms', 'Automotive Master Mechanic', '283-210-5845', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(81, 'Alena Gutkowski IV', '2019-12-06', 'Lake Brennonbury', 6, 'Laki-laki', 'Islam', 'Anak Angkat', '6495 Ezra Harbor\nEast Robinberg, WA 48630', 'saepe', 'Prof. Noah Donnelly', 'Building Cleaning Worker', '859.773.5674', 'Miss Vickie Turner II', 'Computer Operator', '1-775-716-4769', 'Diterima', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(82, 'Maddison Hoeger', '2024-05-17', 'Wisokyland', 7, 'Perempuan', 'Katolik', 'Anak Angkat', '930 Leonie Street Suite 612\nSouth Chetfurt, UT 26214-4700', 'dicta', 'Aurelio Volkman PhD', 'Stonemason', '+1 (949) 424-1322', 'Mathilde O\'Reilly', 'Political Science Teacher', '+14703344360', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(83, 'Fernando Kuvalis', '2022-01-21', 'Lake Roxaneview', 7, 'Perempuan', 'Buddha', 'Anak Angkat', '2180 Sabina Ferry Apt. 995\nKatarinahaven, LA 98341-3644', 'aut', 'Oral Larkin', 'Slot Key Person', '1-629-348-2762', 'Ada Koss', 'Legal Support Worker', '+1-209-649-8044', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(84, 'Rubye Farrell', '2018-05-05', 'Port Brionnaside', 7, 'Laki-laki', 'Katolik', 'Anak Angkat', '54486 Hermann Circle Suite 131\nMariliehaven, AK 14956-9986', NULL, 'Sheridan Denesik', 'Archeologist', '+14587741179', 'Dr. Natalie Harber', 'Tool and Die Maker', '+1 (938) 381-6418', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(85, 'Maxine Predovic', '2021-08-28', 'South Nicoletown', 7, 'Perempuan', 'Kristen', 'Anak Angkat', '947 Blanda Rue Suite 625\nVandervortside, UT 67334', 'deleniti', 'Amani Howe V', 'Precision Devices Inspector', '(352) 951-0151', 'Yasmin Friesen', 'Marriage and Family Therapist', '+1.253.413.4031', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(86, 'Dalton Huels', '2024-06-03', 'West Trudie', 7, 'Laki-laki', 'Islam', 'Anak Angkat', '7320 Rau Estate\nPort Sherwoodfurt, NJ 09980-2180', 'praesentium', 'Adam Schulist', 'Boilermaker', '+1.430.350.7032', 'Ms. Caterina Casper', 'Stone Cutter', '520.665.4992', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(87, 'Boyd Bins', '2017-04-27', 'Ziemebury', 6, 'Laki-laki', 'Islam', 'Anak Angkat', '8062 Greenfelder Mountain Apt. 662\nHermistonbury, HI 97637', NULL, 'Dock Gaylord', 'Electrical Power-Line Installer', '725.259.5271', 'Cordie Gutkowski', 'Bailiff', '1-863-808-5361', 'Diterima', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(88, 'Dr. Tevin Bayer Jr.', '2018-11-07', 'Fannymouth', 7, 'Perempuan', 'Konghucu', 'Anak Kandung', '313 Enola Rest Suite 046\nMayaburgh, MI 98334', 'ut', 'Orin Hermiston', 'Oil and gas Operator', '(878) 615-6344', 'Dr. Herta Kunde Jr.', 'Electrolytic Plating Machine Operator', '+15645648552', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(89, 'Marlin Raynor', '2020-11-28', 'Kunzeport', 7, 'Perempuan', 'Konghucu', 'Anak Kandung', '395 Kevon Neck\nLupefort, GA 24487-6323', 'optio', 'Mr. Cielo Dare PhD', 'Transportation Attendant', '715.713.7790', 'Kasandra Macejkovic', 'Infantry Officer', '458.505.9918', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(90, 'Mrs. Callie Mayer', '2018-04-17', 'Eldridgeport', 6, 'Perempuan', 'Konghucu', 'Anak Angkat', '7464 Marks River\nNorth Howardburgh, VA 20151', 'est', 'Mr. Victor Koepp V', 'Receptionist and Information Clerk', '+1 (231) 585-6173', 'Aylin Fahey', 'Teller', '+1 (559) 637-0329', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(91, 'Prof. Kiara Maggio II', '2023-02-20', 'North Liliane', 6, 'Perempuan', 'Kristen', 'Anak Kandung', '3574 Macie Avenue Suite 832\nKlingfurt, RI 03613-0571', 'autem', 'Kim Kilback', 'Soil Scientist', '531.766.0517', 'Elissa Kunde DDS', 'Plant and System Operator', '+1 (830) 275-6823', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(92, 'Jorge Ledner', '2024-03-16', 'Caryborough', 6, 'Perempuan', 'Hindu', 'Anak Kandung', '78424 Barrows Ports\nNorth Eldridge, KS 81457', NULL, 'Lloyd Daugherty', 'Plumber', '+17279131409', 'Dr. Ana Jakubowski', 'Drafter', '941-287-9388', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(93, 'Mr. Maxine Hagenes Sr.', '2023-05-06', 'New Jerodport', 5, 'Perempuan', 'Konghucu', 'Anak Kandung', '152 Addison Place Suite 758\nBodestad, VT 08584', NULL, 'Prof. Toni Wisozk', 'Pressure Vessel Inspector', '941.917.7585', 'Abbigail Raynor Sr.', 'Parking Enforcement Worker', '+1.575.938.4662', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(94, 'Gordon Doyle', '2021-03-28', 'Trudieberg', 6, 'Perempuan', 'Konghucu', 'Anak Angkat', '284 Lolita Stream Apt. 202\nNorth Monty, OK 70295-2882', 'harum', 'Unique Metz', 'Film Laboratory Technician', '+1-828-266-2547', 'Abagail Turner', 'Medical Laboratory Technologist', '+1.843.948.5836', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(95, 'Kiley Stoltenberg', '2024-04-11', 'Chancefort', 7, 'Perempuan', 'Buddha', 'Anak Kandung', '39010 Chelsie Branch\nWest Darronfurt, NJ 07743', 'modi', 'Mr. Wilbert Johnson', 'Court Clerk', '541-303-2203', 'Lilliana Ritchie', 'Soil Scientist', '901.522.6692', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(96, 'Prof. Max Breitenberg', '2024-06-18', 'Ryanland', 5, 'Laki-laki', 'Islam', 'Anak Kandung', '257 Mozell Fork\nLennieshire, ND 09992', NULL, 'Judah Herzog', 'Business Operations Specialist', '+17066966144', 'Rita Kutch', 'Precision Lens Grinders and Polisher', '(678) 595-1851', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(97, 'Colin Bayer Sr.', '2019-07-05', 'New Ryley', 7, 'Perempuan', 'Kristen', 'Anak Angkat', '899 Llewellyn Ports Suite 965\nWest Kendallland, NJ 81384-0025', 'ipsum', 'Denis Lubowitz', 'Judge', '724-497-3999', 'Pink Robel I', 'Nursery Manager', '410-885-7683', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(98, 'Mr. Blair Fritsch III', '2024-01-05', 'East Maudeside', 5, 'Laki-laki', 'Buddha', 'Anak Angkat', '861 Earlene Isle Apt. 751\nNew Jamalmouth, MS 65483-0561', NULL, 'Oliver Schulist IV', 'Visual Designer', '1-520-325-0136', 'Sandrine Towne', 'Forensic Science Technician', '567-748-3647', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(99, 'Gaetano Leffler', '2017-04-07', 'South Maida', 6, 'Laki-laki', 'Konghucu', 'Anak Angkat', '753 Blick Via Suite 857\nBlockville, MI 62893-9239', NULL, 'Prof. Raheem Friesen I', 'Secretary', '+1-774-280-8381', 'Hulda Reynolds III', 'Baker', '+1-978-349-6760', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(100, 'Price Waelchi', '2022-06-17', 'Karsonmouth', 7, 'Perempuan', 'Hindu', 'Anak Kandung', '75186 Santa Heights Apt. 591\nSouth Estelle, KY 67355', NULL, 'Jean Zieme', 'Employment Interviewer', '(478) 424-7515', 'Vena Gulgowski', 'Drilling and Boring Machine Tool Setter', '+1 (929) 383-1262', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(101, 'Neva Dooley', '2021-09-17', 'East Litzy', 5, 'Laki-laki', 'Islam', 'Anak Angkat', '673 Barrett Walks Suite 900\nEarnestchester, NJ 43565-0711', NULL, 'Prof. Clark Hagenes', 'Precision Etcher and Engraver', '+15415964304', 'Myrtie Wisozk', 'Dental Assistant', '(580) 684-9535', 'Diterima', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(102, 'Dominique Gulgowski III', '2017-07-03', 'East Abdulborough', 6, 'Perempuan', 'Katolik', 'Anak Angkat', '814 Mohr Harbors Suite 037\nSigmundmouth, NC 29831-6709', NULL, 'Dr. Adalberto Collier II', 'Educational Counselor OR Vocationall Counselor', '954-449-3208', 'Joanie Gutkowski', 'Textile Dyeing Machine Operator', '657.833.9030', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(103, 'Chelsey Gerlach', '2024-12-04', 'New Lou', 5, 'Laki-laki', 'Konghucu', 'Anak Angkat', '82962 Novella View Suite 152\nTyreseshire, RI 05877', NULL, 'Hillard Hickle', 'Mail Machine Operator', '+1.564.914.6490', 'Ms. Mattie Ward IV', 'Electronic Equipment Assembler', '+1-231-712-7626', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(104, 'Abigail Carter', '2022-10-22', 'East Thaddeusbury', 5, 'Laki-laki', 'Buddha', 'Anak Angkat', '56862 Jose Trafficway\nWest Jerrellberg, WA 74348', NULL, 'Keenan Cummerata', 'Legal Support Worker', '585.639.0824', 'Heloise Hand II', 'Food Preparation Worker', '740-584-1148', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(105, 'Dr. Logan Heaney', '2017-09-08', 'Dulceport', 4, 'Laki-laki', 'Hindu', 'Anak Angkat', '5722 Jaleel Park Apt. 177\nBrownfurt, IL 11615-9202', 'aut', 'Mr. Garland Mosciski', 'Deburring Machine Operator', '351.221.3953', 'Dixie Nicolas', 'Construction Laborer', '+14159457354', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(106, 'Beau Halvorson', '2017-05-15', 'North Francoside', 4, 'Perempuan', 'Buddha', 'Anak Kandung', '6019 Anjali Highway Apt. 295\nNorth Elissaport, MD 82477', 'qui', 'Gerard Terry', 'Nuclear Engineer', '1-551-212-4230', 'Lupe Stracke PhD', 'Transportation Worker', '+1.331.977.6725', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(107, 'Delilah Marks', '2018-11-12', 'Elnashire', 4, 'Laki-laki', 'Katolik', 'Anak Angkat', '1082 Bahringer Island\nNorth Delfinamouth, AK 29391-5010', 'nihil', 'Dr. Anderson Mohr I', 'Oil Service Unit Operator', '+1 (480) 599-7591', 'Dr. Mya Mertz', 'Makeup Artists', '(252) 453-3610', 'Diterima', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(108, 'Mrs. Janelle Olson', '2023-03-17', 'New Robin', 5, 'Laki-laki', 'Islam', 'Anak Angkat', '590 Ernestina Mews Apt. 263\nFeestland, NH 47200', 'eum', 'Dr. Tyree Nader', 'Psychiatric Technician', '+1 (754) 306-7647', 'Odessa Veum', 'Announcer', '1-480-212-3588', 'Diterima', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(109, 'Zoila Wiza II', '2020-11-25', 'North Oswaldomouth', 4, 'Laki-laki', 'Konghucu', 'Anak Angkat', '3866 Katelynn Locks Apt. 850\nJudahville, NC 08756-9979', 'odio', 'Delmer McClure V', 'Political Scientist', '551-387-0067', 'Lisa Kessler', 'Nutritionist', '+1 (773) 262-6017', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(110, 'Jannie Hudson', '2024-05-05', 'North Jeffrey', 7, 'Perempuan', 'Kristen', 'Anak Kandung', '6079 Kelly Ports\nEast Christelleborough, IN 50943', 'dicta', 'Harley Schneider', 'Public Relations Manager', '385-990-6960', 'Ardith Balistreri', 'Order Filler OR Stock Clerk', '443.953.5707', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(111, 'Jean Schumm', '2024-08-26', 'Antoniashire', 4, 'Perempuan', 'Kristen', 'Anak Kandung', '624 Kunze Dam Apt. 623\nVandervortberg, RI 07519', 'dolore', 'Dr. Torrey Kovacek', 'Entertainment Attendant', '980-357-1975', 'Jaida Frami', 'Silversmith', '586-814-3045', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(112, 'Tremaine Dicki', '2023-08-09', 'Luettgenhaven', 4, 'Perempuan', 'Buddha', 'Anak Angkat', '95186 Daisy Curve\nMoorechester, IL 94467', NULL, 'Prof. Sonny Carter I', 'Radiologic Technologist and Technician', '+1-586-421-9684', 'Darlene Bashirian', 'Recreation and Fitness Studies Teacher', '832-792-1670', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(113, 'Francisco Botsford', '2018-02-22', 'Lake Joesphstad', 5, 'Perempuan', 'Katolik', 'Anak Angkat', '596 Runolfsdottir Parks Apt. 045\nChristineshire, NV 92290-7036', NULL, 'Salvador Lindgren', 'Operations Research Analyst', '901-461-2377', 'Bonita Gaylord', 'Proofreaders and Copy Marker', '267-337-9556', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(114, 'Valentina Runte', '2017-03-25', 'Mireyaborough', 6, 'Laki-laki', 'Konghucu', 'Anak Angkat', '2061 Caleb Alley\nNew Clintonfort, OR 55703', 'nihil', 'Jesus Lockman III', 'Eligibility Interviewer', '+1-425-355-4365', 'Alysha Welch', 'Legislator', '+1-747-247-3029', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(115, 'Mr. Justen Wisozk I', '2022-10-01', 'South Roscoe', 7, 'Laki-laki', 'Buddha', 'Anak Kandung', '81595 Donato Common\nBillborough, KS 71035-8963', 'quod', 'Mr. Guy Bednar', 'Computer', '+13619454734', 'Shanelle Gerlach', 'Music Director', '(607) 901-5394', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(116, 'Ronny Macejkovic IV', '2024-09-02', 'Thurmanburgh', 4, 'Perempuan', 'Islam', 'Anak Angkat', '803 Shanahan Coves\nCartwrightview, MO 86800', 'sunt', 'Mr. Marshall Wiza II', 'Security Systems Installer OR Fire Alarm Systems Installer', '1-651-574-4287', 'Amalia Murphy', 'Automotive Glass Installers', '1-915-549-8828', 'Diterima', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(117, 'Miss May Wisoky Sr.', '2025-01-21', 'Port Etha', 5, 'Laki-laki', 'Katolik', 'Anak Angkat', '4876 Francisco Crossing\nHaneview, KS 38099', 'est', 'Julien Hodkiewicz', 'Automotive Specialty Technician', '(423) 464-0358', 'Pascale Pfeffer', 'Vice President Of Marketing', '(878) 334-3294', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(118, 'Mr. Angelo McDermott Jr.', '2023-03-27', 'Roobside', 7, 'Laki-laki', 'Konghucu', 'Anak Angkat', '465 Eldridge Valley\nDannystad, NM 79308', 'voluptas', 'Maximillian Thompson', 'Director Of Social Media Marketing', '847-938-8493', 'Kara Cruickshank', 'Police Identification OR Records Officer', '(202) 431-0758', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(119, 'Magnus McCullough', '2021-08-20', 'New Anabeltown', 4, 'Perempuan', 'Hindu', 'Anak Kandung', '2380 Bertha Ways Suite 140\nHarveychester, VA 87582-2838', 'labore', 'Claud Weissnat', 'Plate Finisher', '346.814.3022', 'Prof. Eveline Hirthe', 'Electrolytic Plating Machine Operator', '+1 (480) 565-1146', 'Diterima', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(120, 'Prof. Cydney Kuhic IV', '2023-01-08', 'Port Nelson', 6, 'Perempuan', 'Hindu', 'Anak Kandung', '422 Soledad Trace Apt. 979\nKubshire, PA 34362', 'et', 'Mr. Judge Parisian DVM', 'Healthcare Support Worker', '+1-325-404-1275', 'Ms. Eula Halvorson DDS', 'Train Crew', '727.668.8762', 'Diterima', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(121, 'Prof. Tia Reilly', '2018-06-25', 'Bradyberg', 4, 'Laki-laki', 'Hindu', 'Anak Kandung', '366 Farrell Bypass\nBogisichstad, DE 11284', NULL, 'Scot Berge', 'Plate Finisher', '(219) 295-8981', 'Rosella Windler', 'Art Teacher', '+1-567-495-5678', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(122, 'Era Gleichner', '2020-12-24', 'North Natalia', 7, 'Laki-laki', 'Konghucu', 'Anak Angkat', '27607 Carley Roads Suite 389\nNew Magdalena, GA 13736', NULL, 'Walker Jakubowski', 'Correctional Officer', '504-789-7436', 'Billie Hoppe', 'Wind Instrument Repairer', '(678) 236-2016', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(123, 'Ms. Mabel Graham', '2019-05-14', 'Luciobury', 4, 'Perempuan', 'Konghucu', 'Anak Kandung', '722 Hahn Tunnel\nLake Goldaville, MI 19925', NULL, 'Tracey Raynor DVM', 'Railroad Conductors', '240.257.0527', 'Miss Michaela Labadie', 'Psychiatrist', '+1.830.769.6981', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(124, 'Ms. Elinore Kuhlman', '2023-12-01', 'Boganland', 6, 'Laki-laki', 'Konghucu', 'Anak Angkat', '80587 Crist Shores Suite 133\nLake Britney, MD 85068-1404', NULL, 'Dr. Rex Beer', 'Motor Vehicle Inspector', '+1.386.523.4233', 'Dr. Martina Medhurst II', 'Engineering Technician', '+1 (413) 956-2183', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(125, 'Fanny Casper Sr.', '2017-11-01', 'Isaiashaven', 5, 'Laki-laki', 'Katolik', 'Anak Kandung', '97825 Bogan Stravenue Suite 216\nSouth Alizaton, HI 43464', 'qui', 'Merritt Fritsch', 'Environmental Engineer', '+1-949-972-1358', 'Meta Spencer', 'Watch Repairer', '657.244.0711', 'Diterima', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(126, 'Mr. Alford Fisher IV', '2024-12-03', 'Port Oleta', 5, 'Perempuan', 'Hindu', 'Anak Kandung', '64048 Leonor Pines\nRosestad, NH 13303', NULL, 'Tyson Lang MD', 'Pump Operators', '+1 (321) 540-0740', 'Katarina Ankunding', 'Electrician', '540-471-4076', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(127, 'Mrs. Andreane Jaskolski IV', '2023-02-02', 'Melanystad', 4, 'Laki-laki', 'Konghucu', 'Anak Angkat', '367 Jordyn Way Suite 323\nSouth Marciashire, WY 76990-8614', 'suscipit', 'Prof. Ed Baumbach I', 'Office Clerk', '364-362-5792', 'Madge Cummings', 'Personnel Recruiter', '1-901-942-4738', 'Ditolak', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(128, 'Vincenzo Parker', '2020-01-05', 'New Donato', 5, 'Laki-laki', 'Katolik', 'Anak Kandung', '17857 Kiehn Passage\nNorth Jovaniside, MA 00879-2972', NULL, 'Leone Beatty', 'Insulation Installer', '+13372339413', 'Isabell Crist', 'Locomotive Engineer', '(623) 829-1239', 'Menunggu', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(129, 'Dahlia VonRueden', '2022-02-02', 'East Demond', 4, 'Perempuan', 'Buddha', 'Anak Angkat', '5384 Aiyana Throughway Suite 845\nWest Lea, OK 25297-7677', NULL, 'Ubaldo Sporer', 'Pharmacy Aide', '+1-862-543-0889', 'Arlene Leffler', 'Concierge', '1-815-962-7140', 'Ditolak', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(130, 'Miss Athena Lind MD', '2023-01-28', 'West Brendan', 4, 'Laki-laki', 'Konghucu', 'Anak Angkat', '793 Pouros Plains\nHeathcoteport, AK 08318-7605', 'doloremque', 'Deondre Von', 'Occupational Health Safety Technician', '518.221.2216', 'Prof. Dina Hamill II', 'Occupational Health Safety Specialist', '+1 (352) 684-1023', 'Menunggu', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usia` int NOT NULL,
  `kelas_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `tanggal_lahir`, `tempat_lahir`, `usia`, `kelas_id`, `created_at`, `updated_at`) VALUES
(1, 'Moses Berge', '2001-12-16', 'Lake Desmond', 22, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(2, 'Mrs. Tanya West', '1980-12-09', 'West Kyleeview', 37, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(3, 'Miss Gudrun Goodwin IV', '1978-01-22', 'Grahamton', 43, 3, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(4, 'Prof. Dora Paucek', '1972-05-23', 'Brittanyville', 30, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(5, 'Dr. Rosina Schaefer', '2003-11-09', 'Lake Dorcasside', 35, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(6, 'Daryl Bailey MD', '2003-03-18', 'Aliyastad', 39, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(7, 'Danika Cormier', '2017-12-13', 'Lake Coryport', 49, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(8, 'Deven Grady', '1979-12-13', 'Bashirianhaven', 60, 3, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(9, 'Pedro Yundt', '2023-06-27', 'West Erick', 21, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(10, 'Lucie Wisoky', '1996-07-04', 'Reecetown', 39, 1, '2025-03-11 04:14:26', '2025-03-11 04:14:26'),
(11, 'Alia Greenholt', '1981-12-01', 'Oswaldoberg', 35, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(12, 'Prof. Makayla Yundt', '1979-01-29', 'Camilaville', 48, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(13, 'Kamren Roberts', '1982-04-27', 'South Wellington', 41, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(14, 'Rodrigo Crooks', '1972-06-03', 'Baileeshire', 44, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(15, 'Lambert Ruecker', '2016-03-16', 'New Spencerfort', 49, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(16, 'Katharina Botsford DDS', '2023-06-01', 'Wardville', 49, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(17, 'Flavio Waters', '1981-10-15', 'Bernhardton', 34, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(18, 'Flavie Wiegand', '2014-12-25', 'Hahnchester', 58, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(19, 'Dr. Jerrell Rippin', '2007-03-05', 'Izabellatown', 27, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(20, 'Mr. Tyrell Harvey MD', '1979-06-12', 'Corwinstad', 27, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(21, 'Eliza Kuhn IV', '2024-09-02', 'Lake Alberto', 55, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(22, 'Mr. Agustin Stiedemann', '1981-11-10', 'South Katharina', 33, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(23, 'America Stanton', '2020-05-12', 'Alexanneland', 30, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(24, 'Celine Prosacco', '2013-08-29', 'Jaspertown', 32, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(25, 'Henry Goodwin MD', '1970-05-27', 'New Hallefort', 32, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(26, 'Dr. Bennie Kovacek', '1970-01-11', 'West Giovaniview', 42, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(27, 'Dr. Giovanny Bartell MD', '2010-02-26', 'Johannaland', 44, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(28, 'Dr. Selina Kunze V', '1992-01-01', 'Port Ottoburgh', 24, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(29, 'Aimee Abshire MD', '1971-07-05', 'Nelsport', 39, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(30, 'Rowland Feil DVM', '1989-04-04', 'East Pete', 22, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(31, 'Sigrid Christiansen', '1970-08-22', 'Tyrellfurt', 25, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(32, 'Mr. Cyril Wunsch I', '2021-08-05', 'Maymieport', 23, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(33, 'Harvey Schulist', '2015-02-12', 'Lake Kraigfort', 54, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(34, 'Ms. Sheila Konopelski PhD', '2013-03-31', 'North Seamus', 20, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(35, 'Haley Runte', '1987-12-10', 'Cummerataview', 20, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(36, 'Joesph Huel', '1974-04-19', 'Port Garrickport', 50, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(37, 'Crystal Berge', '1987-05-13', 'Florianport', 23, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(38, 'Murl D\'Amore DVM', '2001-02-28', 'Port Delphine', 37, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(39, 'Gia Connelly', '2024-09-30', 'Ondrickachester', 51, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(40, 'Issac Zulauf', '1997-09-25', 'Port Maybelle', 49, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(41, 'Lexie Mante', '1991-10-13', 'Vandervortville', 24, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(42, 'Alexandra Botsford', '2016-12-21', 'Gerlachmouth', 57, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(43, 'Violette Swaniawski', '1973-10-27', 'Lake Miller', 30, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(44, 'Miss Juliana Hoeger', '1987-12-11', 'East Rosamond', 43, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(45, 'Idella Watsica IV', '1975-07-31', 'Wolfburgh', 43, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(46, 'Mary Konopelski', '2020-07-15', 'Birdiefort', 22, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(47, 'Dr. Kane Kozey MD', '2009-05-27', 'Sadiemouth', 43, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(48, 'Mrs. Carley Davis DVM', '1973-09-30', 'Port Fabianborough', 39, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(49, 'Mrs. Lilyan Little', '1980-07-13', 'Javierland', 24, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(50, 'Sienna Christiansen', '1974-10-12', 'Lake Alexander', 43, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(51, 'Raphaelle Littel', '1992-09-17', 'Hillsmouth', 48, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(52, 'Mrs. Rosetta Conn I', '2010-01-26', 'Hartmannport', 50, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(53, 'Ambrose Blanda', '1986-08-09', 'Gutkowskiburgh', 33, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(54, 'Prof. Forrest Wisozk MD', '1995-12-02', 'Emmerichfort', 58, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(55, 'Ms. Princess Upton I', '2024-12-16', 'North Brigitte', 40, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(56, 'Brandt Schamberger', '2003-04-03', 'Feeneyberg', 25, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(57, 'Fiona Kunde', '1989-09-13', 'Cordellchester', 51, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(58, 'Ayana Murphy', '2016-04-06', 'Monahanfort', 51, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(59, 'Dr. Destin Legros V', '1986-04-24', 'West Marshallborough', 33, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(60, 'Kayleigh Kshlerin', '2007-02-10', 'Amarahaven', 23, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_aktivitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_aktivitas` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pembuat_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembuat_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
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
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tingkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `deskripsi`, `tingkat`, `created_at`, `updated_at`) VALUES
(1, 'quo', 'Nesciunt qui pariatur odit ut.', '1', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(2, 'occaecati', 'Provident id quia eligendi quas est nostrum commodi.', '3', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(3, 'in', 'Voluptatibus hic deserunt voluptatem et.', '3', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(4, 'error', 'Totam nisi ipsa quo rerum hic.', '2', '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(5, 'nisi', 'Et tenetur consequatur vel iste necessitatibus.', '3', '2025-03-11 04:14:25', '2025-03-11 04:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_09_052108_create_kelas_table', 1),
(5, '2025_03_09_052142_create_calon_siswa_table', 1),
(6, '2025_03_09_052148_create_siswa_table', 1),
(7, '2025_03_09_052228_create_guru_table', 1),
(8, '2025_03_09_052241_create_nilai_table', 1),
(9, '2025_03_09_052251_create_admin_sekolah_table', 1),
(10, '2025_03_09_052253_create_jadwal_table', 1),
(11, '2025_03_11_110927_create_pembayaran_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` bigint UNSIGNED NOT NULL,
  `siswa_id` bigint UNSIGNED NOT NULL,
  `guru_id` bigint UNSIGNED NOT NULL,
  `kelas_id` int NOT NULL,
  `nilai` int NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `siswa_id`, `guru_id`, `kelas_id`, `nilai`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 31, 11, 1, 65, 'Ex et aut earum sunt quo iste aut impedit. Maxime enim nulla veritatis suscipit. Officiis ipsam nostrum possimus maxime. Omnis minima quaerat itaque possimus.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(2, 32, 12, 1, 96, 'Aliquam sed itaque et perspiciatis repudiandae nobis eum. Ea atque possimus voluptatibus aut voluptatibus voluptatem. Quia cupiditate nemo omnis in sunt.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(3, 33, 13, 1, 95, 'Perferendis voluptate molestias deleniti. Sunt id debitis similique nesciunt ratione.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(4, 34, 14, 1, 52, 'Repellendus id quis sed molestiae deserunt tenetur. Corrupti in sit consequatur et voluptates. Nesciunt error quia placeat et cupiditate eum. Nemo asperiores suscipit error iusto sit voluptatem unde.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(5, 35, 15, 3, 56, 'Deserunt cumque qui nihil accusantium sit quam. Velit ut officia voluptates iusto. Saepe corrupti accusantium nesciunt. Nam in atque aut nostrum beatae.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(6, 36, 16, 1, 1, 'Tempora nemo dolorem quasi sequi rerum ipsa. Aut voluptas ullam dolorem molestias. Nam adipisci dolorem laborum excepturi at vitae veniam. Rerum cum nisi qui exercitationem quibusdam est architecto.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(7, 37, 17, 2, 79, 'Aut est voluptatum veniam. Id totam omnis totam aut corrupti velit eaque. Eum porro molestiae quia et. Neque animi est temporibus quia minus qui.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(8, 38, 18, 3, 93, 'Et sed tempora modi nihil dolores fuga. Corporis vero perspiciatis repellat expedita voluptas quas. Reprehenderit porro commodi consequatur illum sed.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(9, 39, 19, 1, 10, 'Fuga fugiat sunt quisquam doloribus. Qui eaque quas laboriosam nulla eos cum. Ipsam sed quod autem. Et facere harum et.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(10, 40, 20, 3, 97, 'Omnis consequuntur quia nam ipsam quo. Ea qui suscipit ducimus nulla dolorem qui vel. Cumque quia molestiae molestias molestiae.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(11, 41, 21, 1, 98, 'Incidunt perspiciatis iure sapiente ipsa. Tenetur et sit alias odio ea similique. Neque laborum rerum nostrum. Sit non qui debitis iusto numquam amet.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(12, 42, 22, 1, 24, 'Suscipit dolor perferendis eligendi dignissimos facilis. Atque debitis velit illo omnis. Mollitia aperiam voluptatem molestiae suscipit sed enim. Sapiente beatae temporibus blanditiis et pariatur.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(13, 43, 23, 3, 2, 'Maxime ad odit voluptatum ut perspiciatis eos. Fugiat quod quos aut eum ipsum voluptatibus. Esse sed est dolores nisi. Illum repellendus quisquam corrupti quod aliquam ullam voluptate aliquam.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(14, 44, 24, 2, 70, 'Aperiam ipsum natus ipsam distinctio. Eum placeat provident alias delectus. Quo non molestiae occaecati saepe eveniet enim.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(15, 45, 25, 1, 27, 'Suscipit suscipit nulla doloribus dolor ut alias quasi et. Aut ab iure dolorem reiciendis. Corporis officiis aut qui et.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(16, 46, 26, 1, 13, 'Ea aut in inventore omnis. Vitae autem rerum occaecati et. Distinctio unde sit aut at dignissimos quis. Sequi quia et pariatur ipsam rerum distinctio libero. Quasi dolorem fuga recusandae fugit.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(17, 47, 27, 1, 18, 'Perferendis saepe totam voluptatum molestias accusamus et. Aut fugit odio quasi dolorum quia. Doloremque quia sapiente aut in.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(18, 48, 28, 1, 31, 'Blanditiis eos est consectetur eius. Minima quod libero ut in deleniti voluptatum voluptatum. Quibusdam inventore omnis rerum iusto voluptatem provident voluptatum sint.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(19, 49, 29, 2, 81, 'Repudiandae quia commodi tempore et animi laudantium molestias. Nobis et accusamus aut nihil dolores. Minus cupiditate alias dolor et asperiores voluptatem minus.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(20, 50, 30, 3, 54, 'Consequuntur veniam culpa ab natus rem occaecati est. Illum iste voluptatem dolorem expedita quae incidunt dolores. Dolorum enim recusandae quod et perferendis nemo.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(21, 51, 31, 3, 59, 'Cum iste debitis praesentium inventore. Aut ratione quia ut eum. Incidunt ipsam nobis voluptatem vel quo ut.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(22, 52, 32, 1, 78, 'Deleniti natus vel ratione deleniti nihil nemo. Commodi praesentium natus iste adipisci quo consequatur. Ut minima commodi eius. Expedita ea excepturi molestias sed minus earum recusandae harum.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(23, 53, 33, 3, 24, 'Mollitia dolor accusamus inventore accusamus minus saepe adipisci. Impedit ut adipisci omnis vel amet doloremque. Minima fuga laudantium dolores voluptas in officia.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(24, 54, 34, 1, 20, 'Vel totam occaecati aut vero aut sunt voluptatum. Cupiditate aut facere impedit id. Accusantium adipisci non eveniet impedit quo.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(25, 55, 35, 2, 12, 'Eos autem id ex. Qui laboriosam ut officia ipsa non qui iste. Blanditiis molestiae alias voluptate. Quo minima et et debitis quae.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(26, 56, 36, 3, 44, 'Voluptatibus architecto sed tempore blanditiis quo soluta maxime. Sed ut quo et voluptas necessitatibus qui. Ut eaque omnis libero quia.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(27, 57, 37, 1, 42, 'Minus et voluptas omnis quod blanditiis inventore. Et voluptate fuga quisquam quod consectetur et cum. Distinctio et magni aspernatur suscipit molestiae.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(28, 58, 38, 1, 8, 'Praesentium optio minus alias omnis. Fugiat et harum quis aut quas qui alias voluptatem. Consequuntur laboriosam est consequatur modi laudantium.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(29, 59, 39, 3, 15, 'Officiis id voluptas error corporis odio occaecati. Quo odit quia harum voluptas et rerum.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(30, 60, 40, 2, 33, 'Libero aut est dolor distinctio. Consequuntur eum quae distinctio veniam nihil deserunt occaecati. Et omnis aut dicta rerum esse est minus consequatur. Illum voluptatem assumenda vitae aut velit et.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(31, 61, 41, 1, 39, 'Unde molestiae iusto delectus ullam quia commodi. Sit sit et quae deserunt modi. Aperiam molestiae voluptatem qui repellat est omnis et.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(32, 62, 42, 3, 74, 'Harum recusandae laudantium dolorem ea ratione ea. Eligendi officiis eius excepturi. Quia nesciunt nobis nobis voluptatem. Possimus natus maxime repellat vel nihil deleniti tempore.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(33, 63, 43, 1, 71, 'Possimus explicabo omnis aut. Quia velit voluptatum magnam alias et fugiat dolores. Molestias quisquam maxime possimus unde tenetur. Suscipit et et et ut unde veniam aspernatur voluptates.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(34, 64, 44, 1, 24, 'Qui amet natus expedita laboriosam modi veritatis. Eius odio animi nihil libero ea in. Et minima a voluptatem sit tenetur est culpa. A dolorem unde nemo.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(35, 65, 45, 1, 10, 'Molestiae velit voluptatibus ipsa. Rerum totam repudiandae totam explicabo vitae id reprehenderit. Id maiores vel libero aut.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(36, 66, 46, 2, 97, 'Autem iste consequuntur iste provident id. Possimus commodi aspernatur aliquid incidunt ad possimus necessitatibus. Sit omnis maxime eligendi tenetur.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(37, 67, 47, 2, 64, 'Libero alias atque impedit dolor provident quaerat quia. Sit nulla consequatur et ut. Excepturi ab eos qui culpa. Vel quis suscipit veritatis nesciunt. Facere odio consequatur eum ab.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(38, 68, 48, 2, 23, 'Fugit eum explicabo officia temporibus. Illum dicta commodi inventore fugiat. Impedit inventore deserunt cupiditate itaque. Ducimus hic qui doloribus dicta eaque.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(39, 69, 49, 3, 87, 'Facere temporibus et distinctio quia et. Et qui nulla voluptates rem dignissimos consequatur. Ab omnis perspiciatis et.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(40, 70, 50, 2, 32, 'Aliquid non reiciendis rem aut in qui id quidem. Corporis corrupti est ut adipisci. Soluta et tenetur sequi temporibus dolore.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(41, 71, 51, 3, 35, 'Necessitatibus aspernatur quas non facilis et. Ipsa ea iusto voluptas corporis. Dicta consequatur culpa dicta et.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(42, 72, 52, 2, 66, 'Ea aut et ut. Est ut nostrum minima fugiat libero beatae.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(43, 73, 53, 1, 76, 'Adipisci iste est est eum. Eius suscipit exercitationem corporis animi unde ipsam. Quis illo fuga non possimus.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(44, 74, 54, 3, 40, 'Magnam alias qui iusto ut doloremque. Omnis dolore blanditiis molestiae. Esse molestias optio voluptatem molestias.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(45, 75, 55, 1, 44, 'Magnam et dicta in aliquid itaque corporis. Et dicta est est ut fuga ut amet. Recusandae nostrum quia vitae aspernatur non ea. Consequuntur tempore non maxime non.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(46, 76, 56, 2, 52, 'Velit explicabo blanditiis omnis beatae voluptatum corrupti. Vitae ut temporibus illo non. A recusandae odio eligendi modi.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(47, 77, 57, 1, 3, 'Quae quibusdam voluptatibus totam recusandae. Aspernatur optio iure veniam quis facilis totam dolore. Quia aperiam blanditiis velit est inventore.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(48, 78, 58, 3, 70, 'Culpa et nobis nostrum laboriosam eligendi sed. Aut distinctio et quo quasi atque placeat sint enim. Maxime dolor enim rerum eos et dolores. Odio aspernatur eum ea eum quia vero.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(49, 79, 59, 2, 61, 'Dolores enim amet et voluptate dolores tenetur nostrum. Itaque numquam ut eius quasi. Consequatur nihil recusandae quod quo quis iure. Sint ut officiis quia expedita aliquam ut.', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(50, 80, 60, 3, 99, 'Adipisci nemo ducimus animi molestias. Dolore ratione reiciendis ducimus eius qui alias ab. Est numquam autem quisquam aut.', '2025-03-11 04:14:27', '2025-03-11 04:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint UNSIGNED NOT NULL,
  `calon_siswa_id` bigint UNSIGNED NOT NULL,
  `biaya` decimal(10,2) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `calon_siswa_id`, `biaya`, `tanggal_pembayaran`, `bukti_pembayaran`, `metode`, `status`, `created_at`, `updated_at`) VALUES
(1, 106, '2044429.89', '2024-11-07', 'https://via.placeholder.com/640x480.png/00ee44?text=hic', 'Cash', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(2, 107, '1827944.35', '1997-12-29', 'https://via.placeholder.com/640x480.png/0022cc?text=veritatis', 'Transfer', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(3, 108, '3608272.44', '1981-11-09', 'https://via.placeholder.com/640x480.png/00ee99?text=sit', 'Transfer', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(4, 109, '3338038.80', '2007-03-26', 'https://via.placeholder.com/640x480.png/007722?text=repellendus', 'Transfer', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(5, 110, '4358272.23', '2008-06-28', 'https://via.placeholder.com/640x480.png/005566?text=dolorem', 'Cash', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(6, 111, '1831504.43', '1994-06-22', 'https://via.placeholder.com/640x480.png/0000cc?text=aut', 'Cash', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(7, 112, '3552590.46', '1980-02-17', 'https://via.placeholder.com/640x480.png/008866?text=autem', 'Cash', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(8, 113, '1956324.54', '1997-08-12', 'https://via.placeholder.com/640x480.png/001122?text=molestias', 'Transfer', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(9, 114, '1983042.61', '1973-12-04', 'https://via.placeholder.com/640x480.png/003399?text=ea', 'Cash', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(10, 115, '2045958.45', '2018-05-26', 'https://via.placeholder.com/640x480.png/00cc55?text=praesentium', 'Transfer', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(11, 116, '3778492.62', '1996-05-11', 'https://via.placeholder.com/640x480.png/0055dd?text=ut', 'Transfer', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(12, 117, '2099975.56', '1996-08-15', 'https://via.placeholder.com/640x480.png/006666?text=dolorum', 'Transfer', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(13, 118, '1324732.47', '1988-08-06', 'https://via.placeholder.com/640x480.png/002222?text=aliquid', 'Transfer', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(14, 119, '3450144.33', '2007-07-13', 'https://via.placeholder.com/640x480.png/001188?text=quo', 'Cash', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(15, 120, '4306727.11', '1970-11-21', 'https://via.placeholder.com/640x480.png/0055bb?text=numquam', 'Transfer', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(16, 121, '2799785.31', '1986-10-27', 'https://via.placeholder.com/640x480.png/007700?text=maiores', 'Cash', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(17, 122, '4345643.96', '1983-10-11', 'https://via.placeholder.com/640x480.png/00ff33?text=aut', 'Cash', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(18, 123, '2864286.86', '2002-09-30', 'https://via.placeholder.com/640x480.png/0055bb?text=saepe', 'Cash', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(19, 124, '4797834.74', '2022-01-14', 'https://via.placeholder.com/640x480.png/00ff22?text=qui', 'Cash', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(20, 125, '1908966.64', '1986-04-23', 'https://via.placeholder.com/640x480.png/00ee55?text=voluptatibus', 'Transfer', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(21, 126, '2214520.35', '2001-01-13', 'https://via.placeholder.com/640x480.png/0033ff?text=eos', 'Transfer', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(22, 127, '4972805.89', '2013-03-05', 'https://via.placeholder.com/640x480.png/0022ee?text=rerum', 'Cash', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(23, 128, '4058953.07', '1983-02-07', 'https://via.placeholder.com/640x480.png/007722?text=voluptatem', 'Cash', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(24, 129, '4939319.82', '2019-04-20', 'https://via.placeholder.com/640x480.png/00ff33?text=quasi', 'Cash', 'Belum Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(25, 130, '3646840.61', '1996-11-13', 'https://via.placeholder.com/640x480.png/00cc55?text=dolorem', 'Transfer', 'Lunas', '2025-03-11 04:14:27', '2025-03-11 04:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint UNSIGNED NOT NULL,
  `calon_siswa_id` bigint UNSIGNED NOT NULL,
  `kelas_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `calon_siswa_id`, `kelas_id`, `created_at`, `updated_at`) VALUES
(1, 26, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(2, 27, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(3, 28, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(4, 29, 3, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(5, 30, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(6, 31, 3, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(7, 32, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(8, 33, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(9, 34, 3, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(10, 35, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(11, 36, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(12, 37, 3, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(13, 38, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(14, 39, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(15, 40, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(16, 41, 3, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(17, 42, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(18, 43, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(19, 44, 3, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(20, 45, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(21, 46, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(22, 47, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(23, 48, 3, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(24, 49, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(25, 50, 3, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(26, 51, 3, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(27, 52, 1, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(28, 53, 3, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(29, 54, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(30, 55, 2, '2025-03-11 04:14:25', '2025-03-11 04:14:25'),
(31, 56, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(32, 57, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(33, 58, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(34, 59, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(35, 60, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(36, 61, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(37, 62, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(38, 63, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(39, 64, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(40, 65, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(41, 66, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(42, 67, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(43, 68, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(44, 69, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(45, 70, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(46, 71, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(47, 72, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(48, 73, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(49, 74, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(50, 75, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(51, 76, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(52, 77, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(53, 78, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(54, 79, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(55, 80, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(56, 81, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(57, 82, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(58, 83, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(59, 84, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(60, 85, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(61, 86, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(62, 87, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(63, 88, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(64, 89, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(65, 90, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(66, 91, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(67, 92, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(68, 93, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(69, 94, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(70, 95, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(71, 96, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(72, 97, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(73, 98, 1, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(74, 99, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(75, 100, 3, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(76, 101, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(77, 102, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(78, 103, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(79, 104, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27'),
(80, 105, 2, '2025-03-11 04:14:27', '2025-03-11 04:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test1741691665@example.com', '2025-03-11 04:14:25', '$2y$12$ONvqFBaspzJBygRDbh2G8enFsmSKUJS985UhmoXbZxSyiOprSBq7C', 'KAZN5Ke969', '2025-03-11 04:14:25', '2025-03-11 04:14:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_sekolah`
--
ALTER TABLE `admin_sekolah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_sekolah_email_unique` (`email`),
  ADD UNIQUE KEY `admin_sekolah_username_unique` (`username`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `calon_siswa`
--
ALTER TABLE `calon_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_pembuat_type_pembuat_id_index` (`pembuat_type`,`pembuat_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_siswa_id_foreign` (`siswa_id`),
  ADD KEY `nilai_guru_id_foreign` (`guru_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayaran_calon_siswa_id_foreign` (`calon_siswa_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_calon_siswa_id_foreign` (`calon_siswa_id`),
  ADD KEY `siswa_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_sekolah`
--
ALTER TABLE `admin_sekolah`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `calon_siswa`
--
ALTER TABLE `calon_siswa`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_calon_siswa_id_foreign` FOREIGN KEY (`calon_siswa_id`) REFERENCES `calon_siswa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_calon_siswa_id_foreign` FOREIGN KEY (`calon_siswa_id`) REFERENCES `calon_siswa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `siswa_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
