-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2022 pada 18.34
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `literasikuy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin 1', 'joyravelo@gmail.com', '2022-04-22 01:20:28', '$2y$10$RVcEnWA.d/P3oKmPq0Rq8uTNpP.ycMW1gC3NW2LkE7s1cb7H1CtFW', 'ecGsdVjGPZN28p4vHAGqmCkxzYwLOmmMYKeIrYPDNjbQTnV3kcTdaa67Bg9A', '2022-04-22 01:20:29', '2022-04-22 01:20:29'),
(2, 'Super Admin 2', 'admin2@admin.com', '2022-04-22 01:20:29', '$2y$10$QeQgK3J7pTDAJ18jd80NyedBpXQ3GlMnQW78gOVznRD2keXUhhvxO', 'QGno18LFYj', '2022-04-22 01:20:29', '2022-04-22 01:20:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `literasi`
--

CREATE TABLE `literasi` (
  `id_literasi` int(150) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `waktu_post` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(10000) NOT NULL DEFAULT 'default.png',
  `slug` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `literasi`
--

INSERT INTO `literasi` (`id_literasi`, `judul`, `isi`, `kategori`, `name`, `waktu_post`, `image`, `slug`) VALUES
(31, 'wefwfwefwfss122351', 'dfsffsf', 'Dongeng', 'Naldzy', '2022-04-24 14:14:57', 'IMG20200111154419.jpg', ''),
(32, 'Testiing enter', 'Nama \r\n\r\nSaya\r\n\r\n\r\nGithub\r\n\r\n<b>AADA</b>', 'Puisi', 'Naldzy', '2022-04-26 05:35:34', 'IMG20200111154432.jpg', ''),
(33, 'asdasd', '<p>asdasdssad<strong>sad</strong></p><p>&nbsp;</p><p><strong>asd</strong></p>', 'Cerita Pendek', 'Naldzy', '2022-04-26 10:38:20', 'notif1.jpg', ''),
(34, 'Nama Gua Lil O', '<p>Kemarin ada beruang kutub</p><p><i>Warna nya merah</i></p><p><i><strong>Ada sedikit kebiruan</strong></i></p>', 'Cerita Rakyat', 'Naldzy', '2022-04-26 10:44:13', 'notif.jpg', ''),
(35, 'Ramboiaa', '<p>Ini rambo</p>', 'Review Buku', 'Naldzy', '2022-04-27 04:47:28', 'notif1.jpg', ''),
(36, 'Find', '<ul><li>SSS<i>sssssUhshshshhshshshadasd</i></li></ul>', 'Sport', 'Naldzy', '2022-04-27 04:51:28', 'riwayat2.jpg', ''),
(37, 'AGAAHH', '<p>Yoy are normiess so f*king bored <strong>boredd</strong></p>', 'Cerita Pendek', 'Naldzy', '2022-04-27 04:54:34', 'sadJan.png', ''),
(38, 'AAAA', '<p>SSSS</p>', 'Kesehatan', 'Naldzy', '2022-04-27 05:01:14', 'sddefaultyy.png', ''),
(39, 'zdsdf', '<p>sdfsdfsdf</p>', 'Kesehatan', 'Naldzy', '2022-04-27 05:01:40', 'sddefaultyy.png', ''),
(40, 'RAnnnss', '<p>as<strong>asdasdsad</strong></p>', 'Dongeng', 'Naldzy', '2022-04-27 05:02:26', 'sadJan.png', ''),
(41, 'Ameikksdsa', '<p>asdasd<strong>asdasd</strong></p>', 'Cerita Rakyat', 'Naldzy', '2022-04-27 10:23:54', 'facebook.png', ''),
(42, 'adffdsf', '<p>werwerw</p>', 'Cerita Rakyat', 'Naldzy', '2022-04-27 10:27:39', '1651055259.jpg', ''),
(43, 'sfsdfdfsdfsdf', '<p>efdfdfs<i>dsfsdfsdf</i></p>', 'Dongeng', 'Naldzy', '2022-04-27 10:28:44', '1651055324.png', ''),
(44, 'sdfsdfd', '<p>asdas<i>sadasd</i></p>', 'Dongeng', 'Naldzy', '2022-04-27 10:29:35', 'best-zoom-backgrounds-free-westelm-city-1587413050.jpg', ''),
(45, 'Ransdasd', '<p>asdasd<strong>asdasdasd</strong></p>', 'Dongeng', 'Naldzy', '2022-04-27 10:30:14', 'linkedin.png', ''),
(46, 'Rambo songong', '<p>DFDFAFDDA<strong>FDF</strong></p>', 'Kesehatan', 'Naldzy', '2022-04-27 10:31:09', 'Untitled.png', ''),
(47, 'You make me strong', '<p>ITUOAHSASC</p>', 'Kesehatan', 'Naldzy', '2022-04-28 07:01:01', 'sadJan.png', ''),
(48, 'Nawoawdaw656565', '<p>sfsdf<i>dfsdfsdfdsfsd<strong>sdfsdfs asdasd</strong></i></p><ul><li><i><strong>asd</strong></i></li></ul>', 'Puisi', 'Naldzy', '2022-04-28 07:19:58', 'organi (1).png', ''),
(50, 'GOOGOG', '<blockquote><ol><li><a href=\"google.com\">google.com</a> dasdasdasxsax</li></ol></blockquote><blockquote><p>ascasccasxasxasxxas</p></blockquote>', 'Fashion', 'Naldzy', '2022-04-28 08:08:49', 'sddefaultyy.png', ''),
(51, 'iam sorry', '<p>adads<strong>asdasdds</strong></p>', 'Dongeng', 'Naldzy', '2022-04-28 15:44:44', 'organi (1).png', ''),
(52, 'asasd', '<p>asdsd<strong>sdasd</strong></p>', 'Kesehatan', 'Naldzy', '2022-04-29 02:20:40', 'organi (1).png', ''),
(53, 'asdad', '<p>asdd<strong>asdad</strong></p>', 'Cerita Rakyat', 'Naldzy', '2022-04-29 02:24:18', 'IMG20200309165843.jpg', ''),
(54, 'asdsdasda', '<p>l</p>', 'Dongeng', 'Naldzy', '2022-04-29 03:57:46', 'sddefaultyy.png', ''),
(55, 'sdasdasd11', '<h3>sdsds</h3>', 'Kesehatan', 'Naldzy', '2022-04-29 04:00:36', 'organi (1).png', ''),
(56, 'sdasdasd1', '<p>s</p>', 'Sport', 'Naldzy', '2022-04-29 04:20:32', 'organi (1).png', ''),
(57, 'Mengapasd13qq11', '<p>&nbsp;</p><p>11</p><p>For Laravel 5.6+</p><p>Publish vendor template:</p><p>php artisan vendor:publish --tag=laravel-pagination</p><p>Edit bootstrap-4.blade.php as following:</p><p>@if ($paginator-&gt;hasPages()) &lt;ul class=\"pagination\" role=\"navigation\"&gt; &nbsp; &nbsp;{{-- Previous Page Link --}} &nbsp; &nbsp;@if ($paginator-&gt;onFirstPage()) &nbsp; &nbsp; &nbsp; &nbsp;&lt;li class=\"page-item disabled\" aria-disabled=\"true\" aria-label=\"@lang(\'pagination.previous\')\"&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;span class=\"page-link\" aria-hidden=\"true\"&gt;&amp;lsaquo;&lt;/span&gt; &nbsp; &nbsp; &nbsp; &nbsp;&lt;/li&gt; &nbsp; &nbsp;@else &nbsp; &nbsp; &nbsp; &nbsp;&lt;li class=\"page-item\"&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;a class=\"page-link\" href=\"{{ $paginator-&gt;previousPageUrl() }}\" rel=\"prev\" aria-label=\"@lang(\'pagination.previous\')\"&gt;&amp;lsaquo;&lt;/a&gt; &nbsp; &nbsp; &nbsp; &nbsp;&lt;/li&gt; &nbsp; &nbsp;@endif &nbsp; &nbsp;&lt;?php &nbsp; &nbsp; &nbsp; &nbsp;$start = $paginator-&gt;currentPage() - 2; // show 3 pagination links before current &nbsp; &nbsp; &nbsp; &nbsp;$end = $paginator-&gt;currentPage() + 2; // show 3 pagination links after current &nbsp; &nbsp; &nbsp; &nbsp;if($start &lt; 1) { &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$start = 1; // reset start to 1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$end += 1; &nbsp; &nbsp; &nbsp; &nbsp;} &nbsp; &nbsp; &nbsp; &nbsp;if($end &gt;= $paginator-&gt;lastPage() ) $end = $paginator-&gt;lastPage(); // reset end to last page &nbsp; &nbsp;?&gt; &nbsp; &nbsp;@if($start &gt; 1)</p>', 'Puisi', 'Naldzy', '2022-04-30 05:37:40', 'download.jpg', ''),
(58, 'Jangan Lihat dari Belakang, Lihatlah dari Depan', '<p>Siang itu Viktor dan Budi duduk di sebuah taman. Tak selang beberapa lama lewatlah seorang berpakaian wanita dengan rambut panjang dan sepatu yang tinggi. Sontak keduanya melihat ke arah wanita tersebut. Dan tentu saja keduanya memiliki keniatan untuk mengikuti wanita tersebut.</p><p>Karena penasaran, keduanya pun mengikuti ke mana wanita tersebut itu berjalan. Ternyata ia berhenti pada sebuah <i>cafe.</i> Keduanya pun mengikutinya hingga masuk ke dalam. Namun sayangnya tak menemukan wanita yang diikutinya.</p><p>Mereka pun mencari hingga ke lantai dua dalam <i>cafe</i> tersebut,&nbsp; ternyata memang benar wanita yang diikutinya tersebut ada di lantai dua.</p><p>Namun sayangnya keduanya tak memiliki keberanian untuk menegur sang wanita. Sehingga mereka hanya mampu mendengarnya dari belakang. Hingga sangat lama, karena asa penasaran yang begitu besar, maka Viktor pun memiliki keberanian untuk menyapa sang wanita.</p><p>Dari belakang, Viktor pun menepuk pundak snag wanita sambil mengatakan “Hai”. Sang wanita pun menoleh ke arah Viktor. Sontak Viktor pun kaget dengan wajah yang aman sangat menyesal dan malu. Sebab wanita yang diikuti bersama Budi bukanlah wanita, namun pria yang menyamar sebagai wanita.</p><p>Suatu hari Ali dan Indra sedang berbincang-bincang di pinggir lapangan saat istirahat sedang berlangsung. Ali dan Indra berada di satu kelas yang sama yaitu kelas 12. Sudah satu minggu teman mereka Andi tidak kunjung masuk.</p><p>Kabarnya Andi sedang sakit dan dirawat. Indra yang merupakan tetangga sebelah rumah Andi pun sering ditanyakan bagaimana kabar Andi. Ali pun ikut menanyakan pada Indra,</p><p>“Ndra, keadaan Andi bagaimana? Sudah kembali dari rumah sakit belum?” Indra yang sudah sering mendapatkan pertanyaan ini pun menjawab dengan nada lemas dan malas.</p><p>“Indra sudah meninggal, Li” kira-kira seperti itulah bunyi jawaban yang didengar oleh Ali.</p><p>Karena suara di pinggir lapangan terlalu kencang ternyata Ali salah mendengar.</p><p>“Apa Andi sudah meninggal Ndra?”</p><p>Lalu Indra menjawab dengan suara yang lebih kencang, “Sembarang kamu Ali. Maksud aku Andi sudah mendingan bukan meninggal.”</p><p>“Oh.” Jawab Ali sambil tertawa karena terkejut setelah salah mendengar kabar kondisi Andi.</p><p>Si Gareng dan si Semar pergi ke pasar baru, senang membeli sepatu futsal dipasar tersebut. si Gareng senang beli sepatu membuat dia sekalian senang <i>bayarin</i> sepatu termasuk membuat si Semar. Setelah keliling2 di seputar pasar tersebut selanjutnya mereka berhenti di suatu toko yang menjajakan sepatu futsal dan mereka mendapatkan sepatu yang diinginkan di toko tersebut.</p><p>Mereka pun telah sepakat dan deal tentang harga bersama si penjajal sepatu tersebut, untuk 2 gunakan sepatu dihargai Rp300.000. Namun sesudah senang membayar, ternyata duit cash yang Gareng bawa hanya Rp 100 ribu. Kemudian si Gareng menyita inisiatif menyuruh Semar ke ATM untuk ambil uangnya di atm. maka dikasihlah dompet si Gareng ke si Semar.</p><p>Gareng: “Mar!”</p><p>Semar: “Iya Reng, jadi gimana nih?”</p><p>Gareng: “Lo ke atm, terus ambilin duit 200 ribu aja di mesin itu pake kartu atm gue, lo tau kan cara ambil duit di atm?”</p><p>Semar: “Ya bisalah, lo kira gue orang cupu, ngambil duit di atm aja gak tau huh! Jangan ngeremehin gitulah.”</p><p>Gareng: “Yaudah nih bawa dompet gue, nanti ambil duitnya pake kartu gue. Terus kalo ada apa-apa lo telpon gue. Buruan sana, gue enggak enak mirip abang penjualnya kalo kelamaan, nanti dikira lagi pura-pura beli tapi enggak punya duit.”</p><p>Semar: “Oke gue berangkat, lo standby hp aja. Nanti gue telepon lo kalo duitnya udah gue ambil ok boss?”</p><p>Gareng: “Yaudah sana berangkat, gue tungguin cepet!”</p><p>(Setelah 15 menit menunggu, tiba2 si Semar nelpon ke hp si Gareng).</p><p>Semar: “Reng, waduh celaka kita.”</p><p>Gareng: “Celaka gimana maksud lo?”</p><p>Semar: “Duit lo gak bisa diambil, kartu lo di tolak terus sama atm, gue udah nanya ke satpam, katanya kartu lo tuh enggak bisa, bakalan keluar terus kalo masukin ke atm.</p><p>Gareng: “Ah masa sih, padahal kan gue baru aja ganti itu kartu. Masa gak bisa?”</p><p>Semar: “Duh gimana nih? Mending batalin aja beli sepatunya dan lo kabur diem-diem dari si abang itu. Besok lo tanyain ke banknya kenapa kartunya ga bisa dipake.”</p><p>Gareng: “Emang kartunya yang mana yang lo masukin?”</p><p>Semar: “Itu tadi gue masukin kartu yang ada nama, tanggal lahir, alamat sama agama lo ke mesin itu.”</p><p>Gareng: “Sampe taun jebot dan gajah bisa ngelahirin onta pun kagak bakal bisa, ktp kok buat ambil duit di ATM.”</p>', 'Cerita Pendek', 'Naldzy', '2022-05-03 06:51:53', 'pikacu.png', ''),
(59, 'afdasd', '<p>aasdasd</p><figure class=\"media\"><oembed url=\"https://youtu.be/UmFwApxD5ow\"></oembed></figure>', 'Dongeng', 'Naldzy', '2022-05-03 06:57:41', 'IMG20200111153546.jpg', ''),
(60, 'Kemarin ada hewan', '<p>sdsdfdf</p>', 'Cerita Rakyat', 'Naldzy', '2022-05-03 13:06:01', 'sddefaultyy.png', 'kemarin-ada-hewan'),
(61, 'Aku suka pikacu karna warnanya kuning', '<p>Ini pikauducucuuc</p>', 'Dongeng', 'Naldzy', '2022-05-03 13:11:58', 'pikacu.png', 'aku-suka-pikacu-karna-warnanya-kuning');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_04_22_051719_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `request_laporan`
--

CREATE TABLE `request_laporan` (
  `id_laporan` int(200) NOT NULL,
  `judul_laporan` varchar(1000) NOT NULL,
  `isi_laporan` varchar(4000) NOT NULL,
  `image_laporan` varchar(10000) DEFAULT NULL,
  `waktu` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `name` varchar(200) NOT NULL,
  `status` varchar(150) NOT NULL,
  `id_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `request_laporan`
--

INSERT INTO `request_laporan` (`id_laporan`, `judul_laporan`, `isi_laporan`, `image_laporan`, `waktu`, `name`, `status`, `id_user`) VALUES
(11, 'adsasd', '<p>asdasd</p>', NULL, '2022-05-03 16:21:07.654136', 'Naldzy', 'Belum Ditanggapi', '2'),
(13, 'Imposible bro', '<p>I would like to go throught that fidle again! Witch version of Firefox was not supported there! I tested it with some version i dont remember! Kudos! –&nbsp;<br>Alen Saqe<br>Nov 14, 2014 at 12:48<br>I dont\' know which version of FF I was on. I just had a look on FF34.0 and I am getting functionality now, so no worries. However, the default toggling option \"Other\" can be cleared away. When I remove \"Other\" by editing the value, the dropmenu doesn\'t offer an intuitive value to select (to access the editing feature). I think this comes down to personal preference. Because the dropmenu arrow is still present when the field is editable, users may not realize the field is editable. Not having a dig at you; just some feedback. My snippet also considers field naming inside of a &lt;form&gt;. –&nbsp;<br>mickmackusa<br>Dec 8, 2014 at 5:13<br>The end result of this ingenious but indecipherable (to me) script+html is to attach the selected option value, or entered text, to a GET of the same page as a query string. Does anyone know how to convert the action to a POST, so I can grab the value in a php file and do something with it there? –&nbsp;<br>Han<br>Sep 29, 2019 at 8:17&nbsp;<br>I composed this script with the specific intention for it to behave in accordance with html form submissions. Are you using the post method as an attribute in the form tag? @Han if you create a 3v4l.org link of your isolated snippet, I can take a quick look and possibly advise. –&nbsp;<br>mickmackusa<br>Sep 29, 2019 at 9:04<br>1<br>Boy do I feel dumb. I forgot to put a method in the form tag. It worked as posted with this very slight modification: &lt;form name=\"BrowserSurvey\" method=\"post\" action=\"/gotThis.php\"&gt; ...Beautiful script, mickmackusa. Thanks for your followup hint! –&nbsp;<br>Han<br>Sep 29, 2019 at 17:54</p>', NULL, '2022-05-03 16:24:44.916431', 'Naldzy', 'Belum Ditanggapi', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'joy', 'joy@gmail.com', NULL, '$2y$10$mKWpROFySmmg6r7zR9qC4utGI1ubxz9KpxXf5c8k5zC7EEazgJTnS', NULL, '2022-04-22 01:21:14', '2022-04-22 01:21:14'),
(2, 'Naldzy', 'sinaga@gmail.com', NULL, '$2y$10$YXhmkeX/w9GLV2/0WiRbUejQe0dM13zLkQX6pwixwichWeTQe5XFu', NULL, '2022-04-23 21:10:34', '2022-04-23 21:10:34'),
(7, 'sdfdfs', 'sdfsdf', NULL, '', NULL, NULL, NULL),
(10, 'dfsdf', 'sdfssdsd', NULL, '', NULL, NULL, NULL),
(12, 'Anda', 'a@gmail.com', NULL, '$2y$10$Jsg7h9h69UMoKmfaY1k94eWbeIet3j32O61qyCJtrJlmiNbWjUx2q', NULL, '2022-05-03 07:30:41', '2022-05-03 07:30:41');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `literasi`
--
ALTER TABLE `literasi`
  ADD PRIMARY KEY (`id_literasi`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `request_laporan`
--
ALTER TABLE `request_laporan`
  ADD PRIMARY KEY (`id_laporan`);

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
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `literasi`
--
ALTER TABLE `literasi`
  MODIFY `id_literasi` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `request_laporan`
--
ALTER TABLE `request_laporan`
  MODIFY `id_laporan` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
