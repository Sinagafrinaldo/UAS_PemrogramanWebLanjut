-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2022 at 12:00 AM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18849258_db_literasikuy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
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
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin 1', 'joyravelo@gmail.com', '2022-04-22 01:20:28', '$2y$10$RVcEnWA.d/P3oKmPq0Rq8uTNpP.ycMW1gC3NW2LkE7s1cb7H1CtFW', '93Rl4bRAQEU6O3FxfiQwHgB8Uu4w8AFiqzNLQ1MmSPG3gifIeNzfRjjrX8ap', '2022-04-22 01:20:29', '2022-04-22 01:20:29'),
(2, 'Super Admin 2', 'admin2@admin.com', '2022-04-22 01:20:29', '$2y$10$QeQgK3J7pTDAJ18jd80NyedBpXQ3GlMnQW78gOVznRD2keXUhhvxO', 'QGno18LFYj', '2022-04-22 01:20:29', '2022-04-22 01:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `literasi`
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
-- Dumping data for table `literasi`
--

INSERT INTO `literasi` (`id_literasi`, `judul`, `isi`, `kategori`, `name`, `waktu_post`, `image`, `slug`) VALUES
(64, 'Burung Bangau yang Angkuh', '<p>Seekor bangau berjalan dengan langkah yang anggun di sepanjang sebuah sungai kecil, matanya menatap air sungai yang jernih, leher dan paruhnya yang panjang siap untuk menangkap mangsa di air sebagai sarapan paginya. Saat itu, sungai dipenuhi dengan ikan-ikan yang berenang, tetapi sang Bangau merasa sedikit angkuh di pagi hari itu.</p><p>\"Saya tak mau makan ikan-ikan yang kecil,\" katanya kepada diri sendiri. \"Ikan yang kecil tidak pantas dimakan oleh bangau yang anggun seperti saya.\"</p><p>Sekarang, seekor ikan yang sedikit lebih besar dari ikan lain, lewat di dekatnya.</p><p>\"Tidak,\" kata sang Bangau. \"Saya tidak akan merepotkan diri saya untuk membuka paruh dan memakan ikan sebesar itu!\"</p><p>Saat matahari mulai meninggi, ikan-ikan yang berada pada air yang dangkal dekat pinggiran sungai, akhirnya berenang pindah ke tengah sungai yang lebih dalam dan dingin. Sang Bangau yang tidak melihat ikan lagi, terpaksa harus puas dengan memakan siput kecil di pinggiran sungai.</p><p>Cerita ini mengajarkan anak untuk tidak bersikap angkuh, Bunda. Karena sifat ini hanya akan merugikan, baik orang lain maupun pada diri sendiri.</p>', 'Puisi', 'Naldzy', '2022-05-06 14:28:38', 'bangau1.jpg', 'burung-bangau-yang-angkuh'),
(65, 'Malin Kundang Si Anak Durhaka', '<p>Cerita Maling Kundang telah menjadi cerita rakyat paling populer karena alur kisah yang menarik dan mengandung pesan moral , menjadi pengingat anak ketika tidak menurut kepada orang tuanya.</p><p><strong>Hiduplah Mandeh Rubayah dan anak nya yang bernama Maling Kundang</strong><br>Pada zaman dahulu di sebuah perkampungan nelayan Pantai Air Manis di daerah Padang, Sumatera Barat hiduplah seorang janda bernama Mande Rubayah bersama seorang anak laki-lakinya yang bernama Malin Kundang. Mande Rubayah amat menyayangi dan memanjakan Malin Kundang. Malin adalah seorang anak yang rajin dan penurut.</p><p>Mande Rubayah sudah tua, ia hanya mampu bekerja sebagai penjual kue untuk mencupi kebutuhan ia dan anak tunggalnya. Suatu hari, Malin jatuh-sakit. Sakit yang amat keras, nyawanya hampir melayang namun akhirnya ia dapat diseiamatkan-berkat usaha keras ibunya. Setelah sembuh dari sakitnya ia semakin disayang. Mereka adalah ibu dan anak yang saling menyayangi. Kini, Malin sudah dewasa ia meminta izin kepada ibunya untuk pergi merantau ke kota, karena saat itu sedang ada kapal besar merapat di Pantai Air Manis.<br>“Jangan Malin, ibu takut terjadi sesuatu denganmu di tanah rantau sana. Menetaplah saja di sini, temani ibu,” ucap ibunya sedih setelah mendengar keinginan Malin yang ingin merantau.</p><p>“Ibu tenanglah, tidak akan terjadi apa-apa denganku,” kata Malin sambil menggenggam tangan ibunya. “Ini kesempatan Bu, kerena belum tentu setahun sekali ada kapal besar merapat di pantai ini. Aku ingin mengubah nasib kita Bu, izinkanlah” pinta Malin memohon.</p><p><strong>Malin Kundang Pergi Merantau</strong><br>“Baiklah, ibu izinkan. Cepatlah kembali, ibu akan selalu menunggumu Nak,” kata ibunya sambil menangis. Meski dengan berat hati akhirnya Mande Rubayah mengizinkan anaknya pergi. Kemudian Malin dibekali dengan nasi berbungkus daun pisang sebanyak tujuh bungkus, “Untuk bekalmu di perjalanan,” katanya sambil menyerahkannya pada Malin. Setelah itu berangkatiah Malin Kundang ke tanah rantau meninggalkan ibunya sendirian.</p><p>Hari-hari terus berlalu, hari yang terasa lambat bagi Mande Rubayah. Setiap pagi dan sore Mande Rubayah memandang ke laut, “Sudah sampai manakah kamu berlayar Nak?” tanyanya dalam hati sambil terus memandang laut. la selalu mendo’akan anaknya agar selalu selamat dan cepat kembali.</p><p>Beberapa waktu kemudian jika ada kapal yang datang merapat ia selalu menanyakan kabar tentang anaknya. “Apakah kalian melihat anakku, Malin? Apakah dia baik-baik saja? Kapan ia pulang?” tanyanya. Namun setiap ia bertanya pada awak kapal atau nahkoda tidak pernah mendapatkan jawaban. Malin tidak pernah menitipkan barang atau pesan apapun kepada ibunya.</p><p>Bertahun-tahun Mande Rubayah terus bertanya namun tak pernah ada jawaban hingga tubuhnya semakin tua, kini ia jalannya mulai terbungkuk-bungkuk. Pada suatu hari Mande Rubayah mendapat kabar dari nakhoda dulu membawa Malin, nahkoda itu memberi kabar bahagia pada Mande Rubayah.</p><p>“Mande, tahukah kau, anakmu kini telah menikah dengan gadis cantik, putri seorang bangsawan yang sangat kaya raya,” ucapnya saat itu.</p><p>“Malin cepatlah pulang kemari Nak, ibu sudah tua Malin, kapan kau pulang…,” rintihnya pilu setiap malam. Ia yakin anaknya pasti datang. Benar saja tak berapa lama kemudian di suatu hari yang cerah dari kejauhan tampak sebuah kapal yang megah nan indah berlayar menuju pantai.</p><p><strong>Maling Kundang telah menjadi saudagar sukses.</strong><br>Orang kampung berkumpul, mereka mengira kapal itu milik seorang sultan atau seorang pangeran. Mereka menyambutnya dengan gembira.Mande Rubayah amat gembira mendengar hal itu, ia selalu berdoa agar anaknya selamat dan segera kembali menjenguknya, sinar keceriaan mulai mengampirinya kembali. Namun hingga berbulan-bulan semenjak ia menerima kabar Malin dari nahkoda itu, Malin tak kunjung kembali untuk menengoknya.</p><p>Ketika kapal itu mulai merapat, terlihat sepasang anak muda berdiri di anjungan. Pakaian mereka berkiiauan terkena sinar matahari. Wajah mereka cerah dihiasi senyum karena bahagia disambut dengan meriah.</p><p>Mande Rubayah juga ikut berdesakan mendekati kapal. Jantungnya berdebar keras saat melihat lelaki muda yang berada di kapal itu, ia sangat yakin sekali bahwa lelaki muda itu adalah anaknya, Malin Kundang. Belum sempat para sesepuh kampung menyambut, Ibu Malin terlebih dahulu menghampiri Malin. la langsung memeluknya erat, ia takut kehilangan anaknya lagi.</p><p>“Malin, anakku. Kau benar anakku kan?” katanya menahan isak tangis karena gembira, “Mengapa begitu lamanya kau tidak memberi kabar?”</p><p><strong>Malin Kundang durhaka pada ibunya.</strong><br>Malin terkejut karena dipeluk wanita tua renta yang berpakaian compang—camping itu. Ia tak percaya bahwa wanita itu adalah ibunya. Sebelum dia sempat berpikir berbicara, istrinya yang cantik itu meludah sambil berkata, “Wanita jelek inikah ibumu? Mengapa dahulu kau bohong padaku!” ucapnya sinis, “Bukankah dulu kau katakan bahwa ibumu adalah seorang bangsawan yang sederajat denganku?!”</p><p>Orang-orang yang meilhatnya ikut terpana dan kemudian pulang ke rumah masing-masing. Mande Rubayah pingsan dan terbaring sendiri. Ketika ia sadar, Pantai Air Manis sudah sepi. Dilihatnya kapal Malin semakin menjauh. Ia tak menyangka Malin yang dulu disayangi tega berbuat demikian.</p><p><strong>Maling Kundang dikutuk menjadi batu.</strong><br>Hatinya perih dan sakit, lalu tangannya ditengadahkannya ke langit. Ia kemudian berdoa dengan hatinya yang pilu, “Ya, Tuhan, kalau memang dia bukan anakku, aku maafhan perbuatannya tadi. Tapi kalau memang dia benar anakku yang bernama Malin Kundang, aku mohon keadilanmu, Ya Tuhan!” ucapnya pilu sambil menangis. Tak lama kemudian cuaca di tengah laut yang tadinya cerah, mendadak berubah menjadi gelap. Hujan tiba-tiba turun dengan teramat lebatnya.</p><p>Tiba-tiba datanglah badai besar, menghantam kapal Malin Kundang. Laiu sambaran petir yang menggelegar. Saat itu juga kapal hancur berkeping- keping. Kemudian terbawa ombak hingga ke pantai.</p><p>Esoknya saat matahari pagi muncul di ufuk timur, badai telah reda. Di kaki bukit terlihat kepingan kapal yang telah menjadi batu. Itulah kapal Malin Kundang! Tampak sebongkah batu yang menyerupai tubuh manusia.</p><p>Itulah tubuh Malin Kundang anak durhaka yang kena kutuk ibunya menjadi batu karena telah durhaka. Disela-sela batu itu berenang-renang ikan teri, ikan belanak, dan ikan tengiri. Konon, ikan itu berasal dari serpihan tubuh sang istri yang terus mencari Malin Kundang.</p><p>Sampai sekarang jika ada ombak besar menghantam batu-batu yang mirip kapal dan manusia itu, terdengar bunyi seperti lolongan jeritan manusia, terkadang bunyinya seperti orang meratap menyesali diri, “Ampun, Bu…! Ampuun!” konon itulah suara si Malin Kundang, anak yang durhaka pada ibunya.</p><p>Mendengar kata-kata pedas istrinya, Malin Kundang langsung mendorong ibunya hingga terguling ke pasir, “Wanita gila! Aku bukan anakmu!” ucapnya kasar.</p><p>Mande Rubayah tidak percaya akan perilaku anaknya, ia jatuh terduduk sambil berkata, “Malin, Malin, anakku. Aku ini ibumu, Nak! Mengapa kau jadi seperti ini Nak?!” Malin Kundang tidak memperdulikan perkataan ibunya. Dia tidak akan mengakui ibunya. la malu kepada istrinya. Melihat wanita itu beringsut hendak memeluk kakinya, Malin menendangnya sambil berkata, “Hai, wanita gila! lbuku tidak seperti engkau! Melarat dan kotor!” Wanita tua itu terkapar di pasir, menangis, dan sakit hati.</p>', 'Cerita Rakyat', 'Naldzy', '2022-05-06 15:08:57', 'malin.jpg', 'malin-kundang-si-anak-durhaka'),
(66, 'Singa dan Tikus', '<p>Suatu hari seekor tikus melakukan kejahilan pada seekor singa. Dengan sengaja, tikus membangunkan&nbsp;si Singa.</p><p>Tak disangka, Singa sangat marah dan menangkap si Tikus yang hendak memakannya. Namun, si Tikus menangis memohon supaya Singa memaafkannya.</p><p>Dengan berbesar hati, Singa pun memaafkan dan melepaskan si Tikus. Tikus sangat berterima kasih dan berjanji akan membalas kebaikan Singa suatu hari nanti.</p><p>Beberapa hari kemudian, Singa tertangkap jerat yang dipasang oleh para pemburu. Singa sangat ketakutan akan dibunuh.</p><p>Ia menangis semalaman. Mendengar tangis Singa, Tikus menghampiri dan melihat Singa sudah diam di dalam jerat tak berdaya.</p><p>Teringat akan kebaikan Singa, Tikus pun membantu melepaskan Singa dengan cara menggerogoti jaring tersebut hingga putus. Singa pun terbebas. Sejak saat itu, Singa dan Tikus pun menjadi teman baik.</p><p>Pesan dari cerita ini, jangan pernah melupakan kebaikan orang lain dan jangan sungkan untuk membalas kebaikan itu.</p>', 'Dongeng', 'fahriza', '2022-05-08 06:36:55', '2-dongeng untuk balita-edc6dc02fd5ba760b4e87b81f5f576ba.jpeg', 'singa-dan-tikus'),
(67, 'Hidup Sehat Dengan Cara Mengetahui Penyakit Menular & Tidak Menular', '<p>Judul buku : Pos Pembinaan Terpadu Penyakit tidak menular</p><p>Pengarang : Yandrizal, dkk</p><p>Kategori : Buku Referensi</p><p>Bidang Ilmu : Kesehatan</p><p>ISBN : 978-602-401-900-6</p><p>Ukuran : 14×20 cm</p><p>Halaman : viii, 51 hlm</p><p>Harga : Rp. 56.000</p><p>Tahun Terbit : 2017</p><p>Pos pembinaan terpadu penyakit tidak menular (Posbindu PTM) karya Yandrizal dan kawan-kawan merupakan buku yang diharapkan mampu mewujudkan peran serta masyrakat dalam kegiatan deteksi dini. Jadi buku ini mengedukasi masyarakat bagaimana cara menyikapi dan melakukan pemantauan terhadap faktor risiko penyakit menular secara mandiri dan berkesinambungan.</p><p>Belakangan ini banyak masyarakat hidup serba cepat. Sehingga banyak orang yang tidak mempedulikan faktor terjadinya risiko PTM. Apalai PTM ini salah satu penyakit yang tidak memperlihatkan gejala.&nbsp;</p><p>BUku setebal&nbsp; 51 halaman ini sangat direkomendasikan untuk di baca. Di buku ini penulis akan memaparkan tujuan dan peranan stakeholder pada proses pembentukan, persiapan pelaksanaan, monitoring evaluasi untuk meningkatkan pengetahuan.&nbsp;</p><p>Sebenarnya tidak hanya meningkatkan dan membentuk secara persiapan pelaksanaan saja, tetapi juga membentuk sikap, perilaku masyarakat untuk melakukan deteksi dini. Bagaimanapun juga, faktor risiko dan kemungkinan yang terjadi di dalam tubuh kita mengintai.&nbsp;</p><p>Kelebihan buku ini menjelaskan tujuan tujuan pos pembinaan terpadu penyakit tidak menular, yaitu untuk menggerakan peran stakeholder dalam upaya meningkatkan kesadaran untuk masyarakat. Sehingga masyarakat memiliki kesadaran diri untuk melakukan pemeriksaan secara dini dan mulai hidup dengan cara sehat. Ada upaya pencegahan dan mengendalikan faktor risiko penyakit itu lebih penting.&nbsp;</p><p>Di halaman 9, kita akan diajak cara melakukan identifikasi penyakit tidak menular itu seperti apa dan bagaimana. Salah satunya dengan menerapkan hidup sehat.</p><p>Menurut WHO (2011) kategori penyakit tidak menular adalah penyakit kardiovaskuler yang meliputi jantung dan stroke. Ada pula penyakit lain seperti kanker, diabetes dan penyakit pernapasan kronis. Meskipun beberapa penyakit tersebut tidak menular, tetap saja cikal bakal lahirnya penyakit-penyakit tersebut karena beberapa faktor.&nbsp;</p><p>Salah satu faktornya adalah diat tidak sehat, kebiasaan merokok, mengkonsumsi makanan dan minuman dari alkohol hingga karena kurangnya aktivitas fisik. Penyakit tidak menular dapat diartikan sebagai kondisi kronis yang tidak dihasilkan dari proses infeksi dank arena tidak menular. Bisa juga karena penyakit tersebut memiliki perjalanan panjang, yang tidak sembuh secara spontan. Masih mengacu pada WHO bahwa karakteristik penyakit tidak menular dipengaruhi oleh penyebab, faktor risiko, periode latin yang panjang, asal tidak menular, penyakit berkepanjangan dan karena terjadi gangguan fungsional atau cacat.&nbsp;</p><p>Buku yang diterbitkan di tahun 2017 ini pun juga akan mempelajari tentang bagaimana sih cara membentuk pos pembinaan terpadu penyakit tidak menular. Sayangnya buku ini dari cara penyampaian masih terkesan kaku dan formal. Meskipun demikian, dari segi tips, dan ilmu yang dibagikan sangat membukakan pandangan kita.</p>', 'Review Buku', 'Naldzy', '2022-05-08 08:17:00', 'Posbindu-Convert-dpn.jpg', 'hidup-sehat-dengan-cara-mengetahui-penyakit-menular-tidak-menular'),
(68, 'Legenda Dewi Bulan', '<p>Bulan Jelita adalah anak dari sepasang petani miskin yang tinggal di pedesaan. Karena sangat miskin, tidak ada yang peduli dengan keluarganya. Bulan jelita memiliki penyakit kulit yang aneh di wajahnya sehingga menyebabkan kulitnya menghitam dan kusam. Jika tidak mengenalnya sebelumnya, orang-orang akan mengira ia adalah monster atau jelmaan hewan yang sangat buruk rupa.</p><p>Masyakat di desa itu sangat takut terhadap Bulan jelita dan karena selain wajahnya yang seram juga takut tertular penyakit Bulan Jelita. Warga desa selalu mencibir dan mencemooh Bulan karena wajahnya yang tampak menyeramkan. Untuk menutupi wajahnya, ketika hendak keluar rumah, Bulan Jelita selalu menutup wajahnya agar penduduk desa tidak jijik ketika berpapasan dengannya.</p><p>Di suatu malam, Bulan Jelita bermimpi bertemu dengan seorang pangeran tampan dan sangat ramah. Setelah mimpi tersebut, Bulan Jelita selalu memikirkan wajah tampan dan tingkah laku pangeran sehingga Bulan Jelita sangat mengharapkan kehadiran pangeran tersebut di dunia nyata. Keinginannya yang kuat itu membuat Bulan Jelita selalu memimpikan pangeran setiap malamnya.</p><p>Suatu hari, bulan Jelita menceritakan mimpinya kepada sang ibu dan mengungkapkan keinginannya untuk bertemu dengan sang pangeran tampan. Sang ibu yang merasa anaknya tidak pantas untuk bertemu pangeran lantas berujar “Sudahlah Bulan anakku, kau tidak pantas bertemu pangeran. Lupakan saja mimpimu itu. Itu tidak akan menjadi kenyataan dan jangan pernah bercerita kepada tetangga”.</p><p>“Ibu sungguh tidak ingin menyakiti perasaanmu anakku, ibu hanya tidak ingin anak gadis ibu satu-satunya kecewa dan menjadi bahan olok-olokan tetangga” lanjut sang ibu sembari mengusap kepala Bulan. Bulan pun sebenarnya menyadari bahwa mimpi tersebut terlalu mustahil dan terlalu tinggi untuk bisa terwujud apalagi melihat raut wajah Bulan Jelita, tentu saja pangeran akan takut melihatnya.</p><p>Malam berikutnya, Bulan Jelita termenung dan melamun menghadap langit yang ditaburi bintang berkilau yang mengelilingi bulan sebagai sumber cahaya keemasan yang sangat indah dan mempesona. “Sungguh pemandangan yang sangat cantik, andai saja aku secantik bulan”, gumam Bulan Jelita. Seketika saja Bulan Jelita teringat akan Dewi Bulan, yaitu Dewi yang menghuni bulan.</p><p>Konon katanya Dewi Bulan adalah Dewi yang memiliki paras cantik dan rupawan. Kecantikannya lah yang membuat bulan terus bersinar. Setiap orang tua mengharapkan anak perempuannya memiliki kecantikan dan keanggunan seperti Dewi Bulan. Tidak terkecuali dengan orang tua Bulan Jelita sehingga ketika Bulan Jelita lahir, orang tuanya memberi nama yang sama dengan Dewi Bulan.</p><p>Selain cantik, Dewi Bulan merupakan Dewi yang sangat cantik, baik dan penyayang. Dia seringkali turun dan berkunjung ke bumi untuk membantu manusia yang sedang mendapat masalah dan mengalami kesulitan hidup. Bulan Jelita sangat ingin bertemu dengan Dewi Bulan dan meminta agar wajahnya dapat secantik wajah Dewi Bulan atau wajahnya bisa cantik kembali seperti dahulu.</p><p>Bulan Jelita kemudian menyadari bahwa Dewi Bulan hanyalah sebuah cerita dongeng yang sering diceritakan orang tua kepada anak perempuannya danmengharapkan anak perempuannya kan secantik wajah Dewi Bulan kelak. Dengan perasaan bersedih, Bulan Jelita kemudian mengubur harapannya untuk bertemu Dewi Bulan, apalagi memiliki wajah cantik seperti wajah Dewi Bulan.</p><p>Sebenarnya, Bulan Jelita adalah gadis desa yang memiliki hati lembut, penyabar, baik hati, dan senang membantu orang lain. akan tetapi, warga desa tidak ingin pekerjaannya dibantu Bulan Jelita karena takut tertular penyakit yang di derita Bulan Jelita. Di suatu sore, Bulan Jelita diminta oleh ibunya untuk menjenguk nenek tua yang merupakan salah satu tetangganya di desa tersebut.</p><p>Setelah menjenguk dan mengantar makanan sembari membantu dan merawat nenek tua, tak terasa hari semakin gelap dan sudah larut malam. Ketika hendak pulang, Bulan Jelita sangat kebingungan karena di luar sangat gelap dan tidak ada obor penerangan. Beberapa saat kemudian ribuan kunang-kunang muncul entah dari mana dan memancarkan cahaya terang yang bersinar di sekitar Bulan Jelita.</p><p>Kunang-kunang tersebut seolah menuntun dan menerangi Bulan Jelita untuk pulang. Setelah berjalan cukup jauh, akan tetapi rumah yang dituju tidak kunjung sampai. “Sepertinya ini bukan arah menuju rumahku?” gumam Bulan Jelita. Ribuan kunang-kunang tersebut ternyata menuntun Bulan Jelita masuk ke dalam hutan yang sangat lebat dan gelap gulita.</p><p>Bulan Jelita yang tampak panik kemudian mulai mencemaskan keadaan. “Jangan cemas Bulan Jelita, kami tidak akan menyakitimu, kami menuntunmu kesini karena kami akan membantumu menyembuhkan penyakitmu dan mengembalikan wajahmu seperti sedia kala” ujar salah satu kunang-kunang. Dengan perasaan cemas dan kini bercampur heran, lantas Bulan Jelita bertanya kepada kunang-kunang.</p><p>“Siapa kau kalian ini yang akan membuat wajah ku kembali cantik?”. “Kami adalah utusan Dewi Bulan. Kami diminta untuk membawamu kesini karena kau gadis baik hati”. Bulan Jelita kemudian menunggu di tepi danau di tengah hutan dengan perasaan tidak keruan, khawatir, takut, dan heran. Kunang-kunang yang tadinya menjadi penerang Bulan Jelita satu demi satu terbang ke langit dan menghilang.</p><p>Keadaan sekitar kembali menjadi gelap gulita sehingga tidak satupun benda dapat dilihat oleh Bulan Jelita. Beberapa saat kemudian secercah cahaya bulan berwarna keemasan turun dari langit. Cahaya bulan terpantul ke permukaan danau. Bayangan bulan pada danau tersebut kemudian perlahan berubah menjadi sesosok wanita dengan paras cantik dan anggun mengenakan jubah berwarna emas.</p><p>Dengan perasaan cemas dan takut, Bulan Jelita bertanya “ Si.. siapakah engkau wahai wanita cantik?”. “Aku adalah Dewi Bulan yang akan membantumu menyembuhkan penyakit yang menutupi kecantikan wajahmu”, jawab Dewi Bulan. Mendengar jawaban Dewi Bulan, Bulan Jelita kemudian merasa sangat senang luar biasa karena akhirnya bisa bertemu dan meminta Dewi Bulan membantunya.</p><p>“Kau adalah gadis yang baik dan penyabar Bulan Jelita, kau telah mendapatkan dan melewati banyak sekali ujian hidup dan aku mampu melewatinya tanpa putus asa dan tetap bersemangat. Bahkan kau tidak pernah membalas kejahatan orang lain kepadamu. Aku akan membantumu mengembalikan wajah cantikmu sebagai imbalan karena selama ini kau selalu bersabar” terang Dewi Bulan.</p><p>Dewi Bulan kemudian memberikan Bulan Jelita air suci yang mampu mengembalikan wajah cantik Bulan Jelita. Bulan Jelita kemudian menerima air di dalam sebuah kendi kecil yang diberikan Dewi Bulan. “Basuhlah wajahmu dengan air ini maka wajahmu akan kembali cantik” perintah Dewi Bulan. Perlahan, tubuh Dewi Bulan kemudian menghilang dalam bayangan pantulan cahaya bulan diatas danau.</p><p>Bulan Jelita kemudian segera membasuh wajahnya dan seketika ia tidak sadarkan diri. Setelah sadar, ia mendapati dirinya terbaring di atas ranjang di dalam kamarnya. Betapa terkejutnya Bulan jelita ketika menyaksikan wajahnya di depan termin sampai ia tidak menyadari bahwa yang berada di depan cermin adalah dirinya. Wajahnya cantik, lembut, dan bersinar bagai cahaya bulan.</p><p>Sang ibu yang melihat wajah Bulan Jelita lantas terkejut dan tidak percaya bahwa yang berada di hadapannya adalah putrinya. Kini, Bulan Jelita menjadi gadis paling cantik di desanya. Semua orang mengagumi kecantikan Bulan Jelita hingga akhirnya pangeran yang ada dalam mimpi Bulan Jelita mendengar kabar bahwa ada seorang gadis desa yang memiliki wajah jelita dan baik hati.</p><p>Pangeran kemudian mendatangi Bulan Jelita karena ingin mengetahui lebih dalam tentang gadis itu. Karena kecantikan dan kebaikan Bulan Jelita, akhirnya pangeran jatuh cinta dan memilih untuk menikahi Bulan Jelita. Pangeran dan Bulan Jelita hidup bahagia bersama dan melahirkan putra putri yang cantik dan tampan. Meski demikian, Bulan Jelita tetap rendah hati dan tidak berbangga diri.</p>', 'Fantasi', 'Naldzy', '2022-05-08 08:21:25', 'Contoh-Cerita-Fantasi-panjang-700x500.jpg', 'legenda-dewi-bulan'),
(69, '10 Cara Menjaga Kesehatan Tubuh yang Sederhana dan Mudah Dilakukan Sehari-hari', '<p>Menjaga kesehatan menjadi hal yang sangat penting dilakukan semua kalangan. Apalagi dengan kondisi alam yang semakin tak tertebak cuacanya, tiba-tiba panas dan tiba-tiba dingin. Ditambah keadaan penyebaran virus dan bakteri yang semakin merebak setiap harinya.</p><p>Terkadang hal sederhana yang rutin dilakukan setiap hari, mampu menjadi penangkal yang hebat dalam menjaga tubuh.</p><p>Cara menjaga kesehatan tubuh biasanya tetap menyesuaikan dengan kebutuhan, usia, kesibukan, serta kemampuan seseorang. Asupan gizi menjadi perlu sebagai pendamping yang tepat, demi menjaga kesehatan tubuh dari dalam.</p><p>Kesahatan darah juga penting bagi kesehatan tubuh, oleh karena itu sebaiknya Anda mengetahui kondisi hemoglobin dalam tubuh Anda. Karena jumlah hemoglobin yang rendah dapat menyebabkan kekurangan zat besi, sehingga memicu anemia. Gejala umum jika tubuh anda mengalami anemia defisiensi besi antara lain mudah lelah, lesu, merasa pusing, rambut rontok, kulit pucat dan kuku mudah patah.</p><p>Berikut beberapa cara menjaga kesehatan tubuh yang sederhana dan mudah dilakukan setiap hari, dirangkum dari berbagai sumber.</p><h2><strong>Menjaga Asupan Nutrisi Seimbang</strong></h2><p>Pastikan tubuh Anda menerima asupan nutrisi yang seimbang, baik dari hewani dan sayuran. Konsumsi sayur dan buah yang mengandung serat prebiotik, vitamin, mineral, serta berbagai antioksidan.</p><p>Tambahkan asupan daging dan ikan. Apabila Anda tak suka dengan daging, bisa dialihkan pada telur sebagai ganti protein hewani.</p><h2><strong>Menjaga Berat Badan Ideal</strong></h2><p>Cara menjaga kesehatan tubuh yang bisa Anda terapksan selanjutnya ialah menjaga berat badan ideal. Jaga pola makan dan rutinitas gerak, demi menjaga diri dari obesitas atau berat terlalu rendah</p><h2><strong>Tidur yang Cukup</strong></h2><p>Kebutuhan waktu tidur disesuaikan dengan usia. Orang yang kurang dari 6 jam setiap malam, berisiko 4 kali lebih mudah mengalami flu karena virus, dibandingkan orang yang tidur 7 jam atau lebih.</p><p>Berdasarkan penelitian, orang yang tidur minimal 8 jam setiap harinya selama 2 minggu, menunjukkan sistem kekebalan tubuh yang lebih kebal.<br>Hal ini disebabkan sitokin dilepaskan selama tidur. Sitokin itu sejenis protein yang membantu melawan infeksi dan meningkatkan imun.</p><h2><strong>Sering Mencuci Tangan dengan Sabun</strong></h2><p>Cara menjaga kesehatan tubuh berikutnya yang kerap dielu-elukan saat ini. Sesering mungkin untuk mencuci tangan dengan sabun.</p><p>Sebab jika hanya menggunakan hand sanitizer, bakteri dan virus memang mati. Namun meninggalkan bekas. Saat mencuci tangan, bakteri dan virus akan ikut larut bersama sabun serta air yang mengalir.</p><h2><strong>Minum Cukup Air Putih dan Teh Hijau</strong></h2><p>Perbanyak minum air putih setiap hari, sesuaikan dengan kebutuhan berat badan. Semisal berat Anda 40 kg, dikali 30 ml. Maka jumlah air yang dibutuhkan setiap harinya sekitar 1200 ml.</p><p>Selain itu, sesekali minum teh hijau juga baik untuk menjaga kesehatan tubuh. Teh hijau tinggi akan antioksidan, yang disebut flavonoid. Sehingga bisa menurunkan tekanan darah dan mengurangi risiko penyakit kardiovaskular.</p><h2><strong>Olahraga Rutin, Minimal 5 Menit Per Hari</strong></h2><p>Cara menjaga kesehatan tubuh selanjutnya dengan rutin bergerak aktif. Selain itu, olahraga juga baik dalam mencegah dan mengelola masalah kesehatan, seperti stroke, diabetes, depresi, tekanan darah tinggi, osteoporosis, radang sendi, hingga kanker.</p><p>Sebagai permulaan, Anda bisa melakukan yoga dan olahraga ringan 5 menit per hari. Bertahap setiap harinya hingga 30 menit.</p><h2><strong>Hindari Junk Food dan Kurangi Soda</strong></h2><p>Cara menjaga kesehatan tubuh sederhana yang bisa Anda terapkan berikutnya, menghindari junk food dan kurangi soda. Sebab junk food memiliki kadar lemak dan yang tinggi.</p><p>Selain itu, minuman bersoda mengandung gula tambahan. Serta akan meningkatkan risiko terkena diabetes tipe-2 sebesar 26 persen lebih tinggi.</p><h2><strong>Mengelola Stres</strong></h2><p>Cara menjaga kesehatan tubuh berikutnya dengan mengelola stres. Keadaan yang stres akan memicu orang mudah terserang penyakit. Pelepasan hormon secara konstan pada orang yang mengalami stres kronis, ternyata dapat mengurangi kemampuan hormon.</p><p>Hal ini bisa mengakibatkan tubuh mengalami peradangan dan rentan terhadap penyakit. Cara sederhananya, Anda bisa melakukan yoga atau meditasi, serta tak terlalu membuat pikiran terbebani dengan hal sepele.</p><h2><strong>Menjaga Kebersihan</strong></h2><p>Cara menjaga kesehatan tubuh selanjutnya dengan menjaga kebersihan, baik dari tubuh sendiri serta lingkungan. Hal sederhana yang bisa dilakukan, seperti rajin mandi, membersihkan kamar dan rumah, selalu cuci tangan sebelum dan sesudah beraktivitas.</p><h2><strong>Hindari Alkohol dan Kurangi Merokok</strong></h2><p>Dari penelitian menunjukan, minum alkohol mampu merusak sel dendritik, yakni komponen penting dari sistem kekebalan tubuh.</p><p>Penelitian yang diterbitkan dalam di <i>Journal Clinical and Vaccine Immunology.</i> Dokter mengatakan bahwa penelitian ini membantu menjelaskan, mengapa vaksin kurang efektif untuk orang yang kecanduan alkohol.</p><p>Selain itu, sebaiknya mulai mengurangi paparan rokok. Seiring berjalannya waktu hingga benar-benar berhenti dari kecanduan merokok.</p><p>&nbsp;</p><p>Itulah beberapa cara menjaga kesehatan tubuh sederhana yang bisa Anda coba terapkan setiap hari. Semoga kesehatan selalu menyertai setiap langkah.</p>', 'Kesehatan', 'Naldzy', '2022-05-08 08:44:49', '15469357231160719097kiat-hidup-sehat-730x430-1.png', '10-cara-menjaga-kesehatan-tubuh-yang-sederhana-dan-mudah-dilakukan-sehari-hari'),
(70, 'Kembalikan Indonesia Untukku', '<p><i>Karya : Taufiq Ismail</i> (Paris, 1971)</p><p>&nbsp;</p><p>Masa depan Indonesia dua ratus juta mulut menganga,</p><p>Masa depan Indonesia adalah bola lampu 15 watt,</p><p>ada yang putih dan ada yang hitam,</p><p>yang menyala bergantian,</p><p>Masa depan Indonesia adalah pertandingan tenis meja siang malam</p><p>dengan bola berbentuk seperti telur angsa,</p><p>Masa depan Indonesia adalah pulau Jawa yang tenggelam</p><p>karena populasinya seratus juta,</p><p>&nbsp;</p><p>Kembalikan Indonesia padaku</p><p>&nbsp;</p><p>Masa depan Indonesia adalah satu juta orang bermain tenis meja siang dan malam</p><p>dengan bola telur angsa di bawah lampu 15 watt,</p><p>Masa depan Indonesia adalah pulau Jawa yang perlahan tenggelam</p><p>karena beratnya maka angsa berenang di atasnya,</p><p>Masa depan Indonesia dua ratus juta mulut menganga,</p><p>dan di mulut itu ada bola lampu 15 watt,</p><p>sebagian putih dan sebagian hitam, yang menyala bergantian,</p><p>Masa depan Indonesia adalah angsa putih yang berenang</p><p>saat bermain tenis meja di pulau jawa yang tenggelam</p><p>dan membawa seratus juta bola lampu 15 watt ke dasar laut,</p><p>&nbsp;</p><p>Kembalikan Indonesia padaku</p><p>&nbsp;</p><p>Masa depan Indonesia adalah pertandingan tenis meja siang malam</p><p>dengan bola berbentuk seperti telur angsa,</p><p>Masa depan Indonesia adalah pulau Jawa yang tenggelam</p><p>karena populasinya seratus juta,</p><p>Masa depan Indonesia adalah bola lampu 15 watt,</p><p>beberapa putih dan beberapa hitam, yang menyala bergantian,</p><p>Kembalikan Indonesia padaku</p>', 'Puisi', 'Hendamia', '2022-05-08 08:46:48', 'taufik2.jpg', 'kembalikan-indonesia-untukku'),
(71, 'Mengenal Lempar Lembing Sebagai Cabang Olahraga Atletik', '<p>Lempar lembing adalah salah satu cabang olahraga atletik yang dimainkan dengan cara melempar sebuah tombak dengan ujung yang runcing (lembing) sejauh mungkin. Teknik dasar melakukan olahraga ini berkutat pada cara memegang lembing, cara membawa lembing, teknik membuat awalan, cara melempar lembing.</p><p>&nbsp;</p><h2><strong>Sejarah lempar lembing</strong></h2><p>Di awal kemunculannya, lempar lembing bukanlah sebuah olahraga, melainkan cara masyarakat zaman dahulu berburu makanan. Lalu pada tahun 708 Sebelum Masehi periode Yunani kuno, barulah olahraga ini masuk sebagai salah satu cabang pentathlon.</p><p>Pada Olimpiade modern, lempar lembing mulai diperlombakan mulai tahun 1908 untuk nomor pria dan tahun 1932 untuk nomor wanita.</p><p>Lalu karena pada tahun 1984 atlet lempar lembing asal Jerman Timur Uwe Hohn memecahkan rekor lemparan sejauh 104,8 meter, asosiasi olahraga ini kemudian secara resmi mengubah rancangan lembing yang digunakan pada nomor pria di tahun 1986.</p><p>Hal ini dilakukan karena lemparan tersebut sudah melewati lapangan pertandingan dan membahayakan orang-orang yang ada di sekitar lapangan akibat ujung lembing yang tajam.</p><p>Perubahan yang dibuat adalah memperpanjang area pegang lembing sejauh 4 cm, sehingga jarak lemparan lembing bisa turun sekitar 10%. Perubahan yang sama juga dilakukan pada lembing yang digunakan untuk nomor wanita di tahun 1999.</p><h2><strong>Saranan dan prasarana lempar lembing</strong></h2><p>Aturan mengenai sarana dan prasarana yang digunakan dalam pertandingan resmi lempar lembing, dibuat oleh federasi atletik internasional International Athletic Federation (IAF). Berikut ini rinciannya.</p><h3><strong>• Ukuran lembing</strong></h3><p>Lembing yang digunakan pada olahraga lempar lembing terdiri dari dua bagian, yaitu ujung lembing yang terbuat dari logam dan badan lembing berbahan kayu atau metal.</p><p>Pada badan lembing, terdapat tali yang dililitkan pada titik seimbang atau titik gravitasi lembing. Ukuran lembing yang digunakan pada pertandingan resmi adalah sebagai berikut:</p><ul><li>Untuk nomor putra: berat lembing 800 gram dan panjang lembing 2,6-2,7 meter</li><li>Untuk nomor putri: berat lembing 600 gram dan panjang lembing 2,2-2,3 meter</li></ul><h3><strong>• Lapangan lempar lembing</strong></h3><p>Lapangan lempar lembing bisa dibagi menjadi beberapa area seperti berikut ini.</p><h3><strong>• Lintasan awal</strong></h3><p>Lintasan awal pada lapangan lempar lembing memiliki lebar 4 m dan panjang minimal 30 m. Lintasan ini digunakan sebagai area ancang-ancang dan berlari sebelum melempar lembing.</p><h3><strong>• Lengkung lemparan</strong></h3><p>Lengkung lemparan adalah batas akhir pemain bisa berlari sebelum melepaskan lembing dari genggaman. Sesuai namanya, bentuk dari batas ini adalah sebuah lengkungan yang ditempatkan di tanah.</p><p>Lengkungan tersebut dibuat dari potongan lingkaran yang berdiameter 8 m dan bisa dibuat dari kayu ataupun metal yang dicat putih.</p><h3><strong>• Sektor lemparan</strong></h3><p>Sektor lemparan adalah tempat lembing mendarat. Bentuknya seperti corong yang dibuat dengan lebar 29°.</p><p>&nbsp;</p><h2><strong>Teknik dasar lempar lembing</strong></h2><p>Berikut ini teknik dasar lempar lembing yang perlu dikuasai seorang pemain.</p><h3><strong>1. Cara memegang lembing</strong></h3><p>Ada tiga cara memegang lembing, yaitu:</p><h4><strong>• Cara biasa (gaya Amerika)</strong></h4><p>Pada cara ini, ibu jari dan jari telunjuk berada pada titik depan atau pangkal yang terlilit tali. Lalu, ketiga jari lainnya memegang badan lembing seperti biasa.</p><h4><strong>• Cara Finlandia (Fin style)</strong></h4><p>Posisi jari telunjuk lebih lurus ke atas, dengan ujung berada tepat di pangkal badan lembing yang dibalut tali. Ibu jari mengikuti posisi telunjuk dan ketiga jari lainnya menggenggam seperti biasa.</p><h4><strong>• Cara menjepit (tang style)</strong></h4><p>Posisi lembing berada di atara jari telunjuk dan jari tengah dan ketiga jari lainnya mengganggam seperti biasa.</p><h3><strong>2. Cara membawa lembing</strong></h3><p>Lembing bisa dibawa menggunakan tiga cara, yaitu:</p><ul><li>Dibawa di atas pundak</li><li>Dibawa dengan posisi mata lembing serong menghadap ke atas dengan sudut 40 derajat</li><li>Siku kanan menghadap ke depan</li></ul><h3><strong>3. Cara melempar lembing</strong></h3><ul><li>Setelah posisi siap dan lembing sudah dipegang dengan cara benar, maka bersiaplah untuk mulai berlari sebagai ancang-ancang melempar.</li><li>Saat akan melempar, berlarilah secepatnya hingga mencapai batas lengkung lingkaran.</li><li>Saat berlari, usahakan berat badan ditumpukan di kaki kanan.</li><li>Ketika mencapai titik batas lengkung lingkaran, berhenti berlari dan berdiri dengan tegak dengan kedua kaki dibuka.</li><li>Posisikan kaki kiri di depan kaki kanan dengan lutut kaki kanan sedikit ditekuk ke depan.</li><li>Condongkan badan ke belakang dengan pandangan tetap lurus ke arah lemparan.</li><li>Tangan yang memegang lembing lurus ke belakang hingga mata lembing berada hampir sejajar dengan mata.</li><li>Condongkan lembing sedikit ke atas hingga membentuk sudur kurang lebih 40 derajat dari permukaan tanah.</li><li>Lempar lembing sekuat-kuatnya .</li></ul><p>&nbsp;</p><h2><strong>Aturan dalam pertandingan lempar lembing</strong></h2><p>Dalam pertandingan lempar lembing, berikut ini aturan yang harus diikuti para pemain:</p><ul><li>Pelemparan lembing harus dilakukan menggunakan satu tangan.</li><li>Pemain yang berhasil menghasilkan lemparan terjauh berhak keluar sebagai pemenang.</li><li>Agar lemparan dianggap sah, pemain yang bertanding tidak boleh berbalik membelakangi lapangan sebelum lembing jatuh di area pertandingan dan jarak mendaratnya siap dihitung.</li><li>Saat melempar, posisi lembing harus lebih di atas dari lengan atas dan kaki tidak boleh melewati garis batas ancang-ancang lemparan.</li><li>Saat mendarat, lembing harus jatuh dalam posisi ujung yang tajam terlebih dahulu di dalam lapangan pertandingan.</li><li>Pemain biasanya akan diberikan kesempatan melempar sebanyak empat atau enam kali per kompetisi.</li><li>Jika terdapat hasil seri, maka akan ada tambahan satu kali kesempatan dan pemain yang melempar paling jauh lah yang keluar sebagai pemenang</li></ul><p>Olahraga lempar lembing adalah salah satu cabang olahraga atletik yang sudah dipertandingkan sejak zaman Yunani kuno. Lebih dari sekadar melempar, untuk bisa menjadi juara di cabang ini Anda perlu memahami setiap teknik dasarnya dengan tepat.</p>', 'Sport', 'Naldzy', '2022-05-08 08:50:42', 'Lempar-Lembing.jpg', 'mengenal-lempar-lembing-sebagai-cabang-olahraga-atletik'),
(72, '9 Tips berpakaian saat interview yang membuat HRD terkesan', '<p><i>Interview</i> bukan sekadar datang, lalu menjawab beberapa pertanyaan pewawancara. Pasalnya, pada saat itu penampilanmu juga menjadi salah satu&nbsp;nilai tambah. Jadi pastikan kamu memahami <strong>tips berpakaian saat </strong><i><strong>interview</strong> </i>dengan baik dan benar. Ada dua tipe berpakaian saat interview, yaitu formal dan kasual.</p><p>Hal ini tentu disesuaikan dengan tipe perusahaan tempat menjalani <i>interview</i>. Misalnya, apakah perusahaan tergolong korporat yang kaku, atau perusahaan <i>startup </i>yang santai. Meski begitu, kunci dari keduanya adalah berpakaian dengan rapih, tidak kusam, atau bahkan asal-asalan.</p><p>Sekalipun perusahaan tersebut adalah perusahaan <i>startup </i>yang santai, pastikan kamu memberikan kesan yang baik dengan memilih tipe pakaian seperti <i>smart casual</i> atau semi formal. Semakin lengkap, berikut ini adalah beberapa <strong>tips berpakaian saat</strong><i><strong> interview</strong></i> yang perlu kamu ketahui.</p><h2><strong>1. Hindari celana berbahan denim</strong></h2><p><img src=\"https://s3-ap-southeast-1.amazonaws.com/ekrutassets/home/deploy/ekrut/releases/20200910010216/public/ckeditor_assets/pictures/4487/content_tips-berpakaian-saat-interview-EKRUT.jpg\" alt=\"tips berpakaian saat interview EKRUT\"></p><p>Celana berbahan denim atau yang dikenal dengan <i>jeans </i>memang nyaman dikenakan dan modis di segala suasana, kecuali <i>interview</i>.</p><p>Untuk wawancara formal, jangan pernah datang dengan mengenakan celana seperti ini. Meski Kamu bekerja di industri kreatif atau media, pastikan kamu memberikan tampilan yang terbaik.</p><p>Bagi pria, pilihlah celana bahan yang tidak mudah kusut. Bagi wanita, pilihlah rok yang menutupi lutut dengan warna tidak mencolok. Hindari memberi kesan yang kurang baik kepada pewawancara, dari cara kamu berpakaian.</p><h2><strong>2. Kenakan kemeja</strong></h2><figure class=\"image\"><img src=\"https://s3-ap-southeast-1.amazonaws.com/ekrutassets/home/deploy/ekrut/releases/20200910010216/public/ckeditor_assets/pictures/4488/content_tips-berpakaian-saat-interview-EKRUT.jpg\" alt=\"tips berpakaian saat interview EKRUT\"></figure><p>Kemeja merupakan pakaian formal yang bisa dipakai saat <i>interview</i>. Pilihan kemeja ada beragam. Kamu bisa memilih kemeja berbahan katun, sifon, atau bahkan sutra.</p><p>Bukalah kancing atas kemeja kamu. Ini memberi kesan sederhana, tetapi tetap formal. Hindari memakai kemeja yang terlalu ketat, dan terkesan seksi. Kemeja yang dikenakan haruslah membuat kamu nyaman.</p><h2><strong>3. Pakai kardigan atau jas</strong></h2><figure class=\"image\"><img src=\"https://s3-ap-southeast-1.amazonaws.com/ekrutassets/home/deploy/ekrut/releases/20200910010216/public/ckeditor_assets/pictures/4490/content_tips-berpakaian-saat-interview-EKRUT.jpg\" alt=\"tips berpakaian saat interview EKRUT\"></figure><p>Kedua item <i>fashion </i>ini mampu menjadi atribut pelengkap yang pas&nbsp;untuk menghadiri <i>interview</i>.</p><p>Ketika kamu mengenakannya, pasti kesan profesional akan semakin terlihat. Hindari motif atau warna jas dan kardigan yang terlalu menonjol. Warna gelap adalah pilihan yang aman.</p><h2><strong>4. Perhatikan motif pakaian</strong></h2><figure class=\"image\"><img src=\"https://s3-ap-southeast-1.amazonaws.com/ekrutassets/home/deploy/ekrut/releases/20200910010216/public/ckeditor_assets/pictures/4489/content_tips-berpakaian-saat-interview-EKRUT.jpg\" alt=\"tips berpakaian saat interview EKRUT\"></figure><p>Hindari motif pakaian yang terlalu berkesan meriah. Motif-motif pakaian seperti bunga, binatang, dan abstrak bisa mendistraksi pewawancara. Jadi, pilihlah motif pakaian yang lebih sederhana, seperti motif garis atau bahkan tidak bermotif sama sekali.</p><h2><strong>5. Perhatikan warna pakaian</strong></h2><figure class=\"image\"><img src=\"https://s3-ap-southeast-1.amazonaws.com/ekrutassets/home/deploy/ekrut/releases/20200910010216/public/ckeditor_assets/pictures/4491/content_tips-berpakaian-saat-interview-EKRUT.jpg\" alt=\"tips berpakaian saat interview EKRUT\"></figure><p>Tahukah kamu,&nbsp;bahwa ternyata ada beberapa warna yang sebaiknya kamu gunakan saat wawancara. Karena ada yang namanya psikologi warna. Berikut ini adalah beberapa warna dan kesan tidak langsung yang diberikan.</p><ul><li>Biru: Memberikan kesan percaya diri, kejujuran, kesetiaan, stabil, dan kredibilitas.</li><li>Hitam: Merepresentasikan kekuatan dan kepemimpinan.</li><li>Abu-abu: Memberikan kesan profesionalisme, kurang mengintimidasi daripada hitam.</li><li>Cokelat: Memberikan kesan percaya diri, dapat diandalkan, dan fleksibel.</li></ul><h2><strong>6. Pemilihan sepatu</strong></h2><figure class=\"image\"><img src=\"https://s3-ap-southeast-1.amazonaws.com/ekrutassets/home/deploy/ekrut/releases/20200910010216/public/ckeditor_assets/pictures/4492/content_tips-berpakaian-saat-interview-EKRUT.jpg\" alt=\"tips berpakaian saat interview EKRUT\"></figure><p>Meski lokasinya berada di paling bawah, bukan berarti ini akan luput dari perhatian pewawancara. Jadi, cobalah untuk memastikan kamu memerhatikan pemilihan sepatu dengan baik.</p><p>Misalnya untuk wanita, kamu bisa mengenakan sepatu dengan ujung tertutup. Jari kaki yang terlihat diujung sepatu akan memberi kesan tak formal.</p><p>Sedangkan untuk pria, pastikan kamu tidak menggunakan sandal, dan tidak menggunakan sepatu yang terlalu kotor. Ingat, kebersihan adalah salah satu kunci dalam memberikan penampilan terbaik.</p><h2><strong>7. Perhatikan juga gaya rambut</strong></h2><figure class=\"image\"><img src=\"https://s3-ap-southeast-1.amazonaws.com/ekrutassets/home/deploy/ekrut/releases/20200910010216/public/ckeditor_assets/pictures/4493/content_tips-berpakaian-saat-interview-EKRUT.jpg\" alt=\"tips berpakaian saat interview EKRUT\"></figure><p>Gaya rambut juga tidak kalah penting saat menjalani <i>interview</i>. Pastikan rambutmu rapih, dan nampak profesional. Agar kamu bisa lebih memastikan rambutmu rapih, dan kamu tidak terlihat kusam, cobalah untuk datang lebih awal dari jadwal <i>interview</i>.</p><p>Dengan begini, kamu bisa mengaca dan menyisir rambutmu, atau bahkan menggunakan <i>pomade </i>bagi pria.&nbsp;</p><h2><strong>8. Jangan memakai&nbsp;parfum atau </strong><i><strong>cologne </strong></i><strong>yang berat</strong></h2><figure class=\"image\"><img src=\"https://s3-ap-southeast-1.amazonaws.com/ekrutassets/home/deploy/ekrut/releases/20201221104633/public/ckeditor_assets/pictures/6109/content_Jangan-kenakan-parfum-atau-cologne-yang-berat---EKRUT.jpg\" alt=\"Jangan kenakan parfum atau cologne yang berat - EKRUT\"></figure><p>Wajar rasanya&nbsp;memakai parfum atau <i>cologne </i>saat akan menghadiri interview, sekedar untuk menyegarkan badan dan meningkatkan kepercayaan diri. Namun, sebaiknya perhatikan&nbsp;juga jenis<i> cologne</i> atau parfum yang dipakai.&nbsp;</p><p>Hindari menggunakan parfum yang berat dan memiliki wangi&nbsp;menyengat, sebab ini justru bisa mengganggu suasana interview kamu.</p><p>Di samping mungkin perekrut memiliki alergi terhadap wangi parfum tertentu. Jadi, sebaiknya pilihlah jenis parfum yang memiliki wangi yang lembut saja.&nbsp;</p><h2><strong>9. Tetap sederhana dan nyaman&nbsp;</strong></h2><figure class=\"image\"><img src=\"https://s3-ap-southeast-1.amazonaws.com/ekrutassets/home/deploy/ekrut/releases/20200910010216/public/ckeditor_assets/pictures/4494/content_tips-berpakaian-saat-interview-EKRUT.jpg\" alt=\"tips berpakaian saat interview EKRUT\"></figure><p><strong>Tips berpakaian saat </strong><i><strong>interview </strong></i>yang terakhir dan harus kamu perhatikan yaitu kenyamanan dan kesederhanaan saat kamu mengenakan pakaian tersebut.&nbsp;</p><p>Sebab&nbsp;bila kamu tidak nyaman, kamu juga tidak akan dapat berkonsentrasi menjawab &nbsp;pertanyaan-pertanyaan interview<i> </i>yang diberikan oleh perekrut.</p><p>&nbsp;</p><p><i>Nah</i>, sekarang kamu sudah tahu apa saja tips berpakaian saat <i>interview</i>, <i>bukan?</i> Pastikan kamu mempersiapkannya dengan baik, <i>ya.</i> Ingat, wawancara bukan sekadar tanya jawab dengan pewawancara, kamu juga perlu memberikan kesan yang baik melalui penampilanmu.</p><p>Semoga berhasil!</p>', 'Fashion', 'Naldzy', '2022-05-08 09:00:54', 'interview-2211354__340.jpg', '9-tips-berpakaian-saat-interview-yang-membuat-hrd-terkesan'),
(73, 'Puisi Chairil Anwar - Aku: Aku Mau Hidup Seribu Tahun Lagi', '<p>AKU</p><p>Kalau sampai waktuku<br>\'Ku mau tak seorang kan merayu<br>Tidak juga kau</p><p>Tak perlu sedu sedan itu</p><p>Aku ini binatang jalang<br>Dari kumpulannya terbuang</p><p>Biar peluru menembus kulitku<br>Aku tetap meradang menerjang</p><p>Luka dan bisa kubawa berlari<br>Berlari<br>Hingga hilang pedih peri</p><p>Dan aku akan lebih tidak perduli<br>Aku mau hidup seribu tahun lagi</p><p>Chairil Anwar<br>Maret 1943.</p>', 'Puisi', 'Dodi Devrian', '2022-05-08 11:51:39', '3756179030.jpeg', 'puisi-chairil-anwar-aku-aku-mau-hidup-seribu-tahun-lagi'),
(74, 'Cerita Rakyat Lampung : ASal Usul Kota Lampung', '<p>Ada empat bersaudara bernama Ompung Silamponga, Ompung Silitonga, Ompung Silatoa, clan Ompung Sintalaga yang berusaha pergi menyelamatkan diri dari Tapanuli ke arah tenggara. Mereka pergi menyeberangi lautan dengan menggunakan rakit. Berhari-hari mereka terombang-ambing tanpa arah di tengah laut dengan persediaan makanan yang semakin menipis. Sesekali ketika menemukan daratan, mereka berhenti untuk mencari bahan makanan dan kembali berlayar.</p><p>Suatu saat, Ompung Silamponga jatuh sakit. Kondisinya semakin lemah. Namun, ia tetap berniat meneruskan perjalanan. Sementara itu, ketiga saudaranya telah letih dan memutuskan untuk berhenti berlayar.</p><p>Tiba-tiba, terlihat sebuat rakit terombang-ambing di dekat mereka. Ketiga bersaudara yang sehat memutuskan untuk berpisah dengan Ompung Silamponga. Dengan hati-hati, mereka menggotong saudaranya yang sedang sakit parah tersebut ke rakit yang baru mereka temukon don mendorongnya, sehingga terbawa arus menjauh dari mereka.</p><p>Ompung Silamponga sendirian terombang-ambing dengan rakitnya. Tubuhnya lemah sekali. Setelah sekian lama, rakitnya menghantam sebuah benda keras. Ompung Silamponga pun terbangun. Ia mendapati dirinya sudah terdampar di sebuah pantai yang ombaknya tidak begitu besar. Entah mengapa ia merasakan tubuhnya menjadi kuat dan sehat. Ia lalu berjalan menyusuri pantai. Ia menemukan sebuah sungai dengan air yang jernih. Ompung Silamponga pun berpikir untuk tinggal di daerah itu.</p><p>Setelah sekian lama tinggal di daerah itu, Ompong Silamponga merasa bosan. Lalu, is pergi menjelajahi pulau tersebut. Ompong Silamponga menjelajahi hutan lebat.</p><p>Akhirnya, ia berdiri di sebuah puncak bukit, pemandangan dari sana sangat indah dan ia bisa melihat ada penduduk yang tinggal di kaki bukit.</p><p>Dengan perasaan gembira, tanpa sadar ia pun berteriak dengan kencang, “Lappung! Lappung! Lappung!” (Dalam bahasa Tapanuli, lappung berarti luas).</p><p>Ompung Silamponga turun dari bukit dan membuka perkampungan baru di sana. Ia menamakan tempat tersebut dengan nama Lappung. Ternyata di sekitarnya, tinggal juga sekelompok penduduk yang hidup sangat terbelakang. Ompung Silamponga menjalin hubungan baik dengan penduduk asli tersebut.</p><p>Semakin lama daerah itu semakin berkembang. Ompung Silamponga menghabiskan hidupnya disana sampai meninggal dunia.</p><p>Nama Lampung diakui berasal dari dua hal. Pertama, dari kata-kata yang diteriakkan Ompung Simaponga di atas bukit ketika pertama kali menemukan daerah itu. Kedua, berasal dari sebagian nama Ompung Silamponga.</p><p>&nbsp;</p><p><i><strong>Pesan moral dari Cerita Rakyat Lampung</strong> : ASal Usul Kota Lampung adalah dalam hidup klta tldak boleh gampang menyerah.</i></p>', 'Cerita Rakyat', 'Dodi Devrian', '2022-05-08 12:28:32', 'maxresdefault.jpg', 'cerita-rakyat-lampung-asal-usul-kota-lampung');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_04_22_051719_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sinaga@gmail.com', '$2y$10$YMo04uHbZy2zeEa1KyYPL.A5qJ3kHYENxaUsHzAtcVtftpaPlfVwy', '2022-05-07 14:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `request_laporan`
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
-- Dumping data for table `request_laporan`
--

INSERT INTO `request_laporan` (`id_laporan`, `judul_laporan`, `isi_laporan`, `image_laporan`, `waktu`, `name`, `status`, `id_user`) VALUES
(15, 'Ingin memperbarui foto postingan', '<p>Hallo Admin saya ingin memperbarui foto pada postingan “Burung Bangau yang Angkuh”. Saya melampirkan foto penggantinya.</p>', 'bangau1.jpg', '2022-05-07 04:52:58.847592', 'Naldzy', 'Diterima', '2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'joy', 'joy@gmail.com', NULL, '$2y$10$mKWpROFySmmg6r7zR9qC4utGI1ubxz9KpxXf5c8k5zC7EEazgJTnS', NULL, '2022-04-22 01:21:14', '2022-04-22 01:21:14'),
(2, 'Naldzy', 'sinaga@gmail.com', NULL, '$2y$10$YXhmkeX/w9GLV2/0WiRbUejQe0dM13zLkQX6pwixwichWeTQe5XFu', 'bmb1aYjvlolR9TS7xvwi6HkVBRoDrIylP7DOSzfuswgB6NlkQuFifVv17Zw5', '2022-04-23 21:10:34', '2022-04-23 21:10:34'),
(12, 'Anda', 'a@gmail.com', NULL, '$2y$10$Jsg7h9h69UMoKmfaY1k94eWbeIet3j32O61qyCJtrJlmiNbWjUx2q', NULL, '2022-05-03 07:30:41', '2022-05-03 07:30:41'),
(13, 'Dodi Devrian', 'asiap@gmail.com', NULL, '$2y$10$srJNLOk0rDiUWX.R3Sfaku1sMQWBTcZrg/JxA4VolUd9iP7DEmVgy', NULL, '2022-05-06 13:36:14', '2022-05-06 13:36:14'),
(14, 'fahriza', 'fahriza361@gmail.com', NULL, '$2y$10$.1hhhjqdPj8WFbQ3pqSY0eP3x1nHktksRmhADklmNC6SxFlonwZtW', NULL, '2022-05-07 02:46:07', '2022-05-07 02:46:07'),
(15, 'Hendamia', 'hendamiayohana@gmail.com', NULL, '$2y$10$CNsV2NbH4kr.LzVm32UvGOW4/1T1/9Rt0z89zjwb506zj8HeQ9twK', NULL, '2022-05-08 08:39:42', '2022-05-08 08:39:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `literasi`
--
ALTER TABLE `literasi`
  ADD PRIMARY KEY (`id_literasi`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `request_laporan`
--
ALTER TABLE `request_laporan`
  ADD PRIMARY KEY (`id_laporan`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `literasi`
--
ALTER TABLE `literasi`
  MODIFY `id_literasi` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_laporan`
--
ALTER TABLE `request_laporan`
  MODIFY `id_laporan` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
