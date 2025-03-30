-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql312.byetcluster.com
-- Waktu pembuatan: 30 Mar 2025 pada 00.52
-- Versi server: 10.6.19-MariaDB
-- Versi PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expert_system`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `conditions`
--

CREATE TABLE `conditions` (
  `id` int(11) NOT NULL,
  `condition_name` varchar(20) DEFAULT NULL,
  `condition_value` float DEFAULT NULL
);

--
-- Dumping data untuk tabel `conditions`
--

INSERT INTO `conditions` (`id`, `condition_name`, `condition_value`) VALUES
(1, 'Tidak', 0),
(2, 'Tidak Tahu', 0.2),
(3, 'Mungkin', 0.4),
(4, 'Kemungkinan Besar', 0.6),
(5, 'Pasti', 0.8),
(6, 'Sangat Pasti', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `consultations`
--

CREATE TABLE `consultations` (
  `id` int(11) NOT NULL,
  `consultation_date` datetime DEFAULT NULL,
  `disease` text DEFAULT NULL,
  `symptom` text DEFAULT NULL
);

--
-- Dumping data untuk tabel `consultations`
--

INSERT INTO `consultations` (`id`, `consultation_date`, `disease`, `symptom`) VALUES
(1, '2025-03-29 23:34:33', '[{\"disease_id\":2,\"confidence\":1,\"disease_name\":\"Kolera Ayam (Fowl Cholera)\"},{\"disease_id\":10,\"confidence\":1,\"disease_name\":\"Busung Ayam (Lymphoid Leukosis)\"},{\"disease_id\":8,\"confidence\":0.36,\"disease_name\":\"Salesma Ayam (Infectious Coryza)\"},{\"disease_id\":11,\"confidence\":0.36,\"disease_name\":\"Batuk Darah (Infectious Laryngo Tracheitis)\"},{\"disease_id\":4,\"confidence\":0.12,\"disease_name\":\"Tetelo (Newcastle Disease)\"},{\"disease_id\":5,\"confidence\":0,\"disease_name\":\"Tipus Ayam (Fowl Typhoid)\"},{\"disease_id\":7,\"confidence\":0,\"disease_name\":\"Gumboro (Infectious Bursal Disease)\"},{\"disease_id\":9,\"confidence\":0,\"disease_name\":\"Batuk Ayam Menahun (Infectious Bronchitis)\"},{\"disease_id\":13,\"confidence\":0,\"disease_name\":\"Produksi Telur (Egg Drop Syndrome 76/EDS 76)\"},{\"disease_id\":12,\"confidence\":0,\"disease_name\":\"Mareks (Mareks Disease)\"}]', '[{\"symptom_id\":1,\"condition_value\":\"0\"},{\"symptom_id\":2,\"condition_value\":\"0.6\"},{\"symptom_id\":3,\"condition_value\":\"0\"},{\"symptom_id\":15,\"condition_value\":\"1\"},{\"symptom_id\":22,\"condition_value\":\"1\"},{\"symptom_id\":34,\"condition_value\":\"0\"}]'),
(2, '2025-03-29 09:17:48', '[{\"disease_id\":5,\"confidence\":0.2399999999999999911182158029987476766109466552734375,\"disease_name\":\"Tipus Ayam (Fowl Typhoid)\"},{\"disease_id\":2,\"confidence\":0.11999999999999999555910790149937383830547332763671875,\"disease_name\":\"Kolera Ayam (Fowl Cholera)\"},{\"disease_id\":4,\"confidence\":0.11999999999999999555910790149937383830547332763671875,\"disease_name\":\"Tetelo (Newcastle Disease)\"},{\"disease_id\":7,\"confidence\":0.11999999999999999555910790149937383830547332763671875,\"disease_name\":\"Gumboro (Infectious Bursal Disease)\"},{\"disease_id\":9,\"confidence\":0.11999999999999999555910790149937383830547332763671875,\"disease_name\":\"Batuk Ayam Menahun (Infectious Bronchitis)\"},{\"disease_id\":10,\"confidence\":0.11999999999999999555910790149937383830547332763671875,\"disease_name\":\"Busung Ayam (Lymphoid Leukosis)\"},{\"disease_id\":12,\"confidence\":0.11999999999999999555910790149937383830547332763671875,\"disease_name\":\"Mareks (Mareks Disease)\"}]', '[{\"symptom_id\":1,\"condition_value\":\"0.6\"}]'),
(3, '2025-03-29 21:07:18', '[{\"disease_id\":2,\"confidence\":0.90000000000000002220446049250313080847263336181640625,\"disease_name\":\"Kolera Ayam (Fowl Cholera)\"},{\"disease_id\":6,\"confidence\":0.83999999999999996891375531049561686813831329345703125,\"disease_name\":\"Berak Darah (Coccidosis)\"},{\"disease_id\":9,\"confidence\":0.68000000000000004884981308350688777863979339599609375,\"disease_name\":\"Batuk Ayam Menahun (Infectious Bronchitis)\"},{\"disease_id\":3,\"confidence\":0.40000000000000002220446049250313080847263336181640625,\"disease_name\":\"Flu Burung (Avian Influenza)\"},{\"disease_id\":5,\"confidence\":0.40000000000000002220446049250313080847263336181640625,\"disease_name\":\"Tipus Ayam (Fowl Typhoid)\"},{\"disease_id\":4,\"confidence\":0.35999999999999998667732370449812151491641998291015625,\"disease_name\":\"Tetelo (Newcastle Disease)\"},{\"disease_id\":7,\"confidence\":0.200000000000000011102230246251565404236316680908203125,\"disease_name\":\"Gumboro (Infectious Bursal Disease)\"},{\"disease_id\":10,\"confidence\":0.200000000000000011102230246251565404236316680908203125,\"disease_name\":\"Busung Ayam (Lymphoid Leukosis)\"},{\"disease_id\":12,\"confidence\":0.200000000000000011102230246251565404236316680908203125,\"disease_name\":\"Mareks (Mareks Disease)\"}]', '[{\"symptom_id\":1,\"condition_value\":\"1\"},{\"symptom_id\":3,\"condition_value\":\"1\"},{\"symptom_id\":9,\"condition_value\":\"1\"},{\"symptom_id\":10,\"condition_value\":\"1\"},{\"symptom_id\":19,\"condition_value\":\"1\"},{\"symptom_id\":21,\"condition_value\":\"0.4\"}]'),
(4, '2025-03-29 21:07:54', '[{\"disease_id\":9,\"confidence\":1,\"disease_name\":\"Batuk Ayam Menahun (Infectious Bronchitis)\"},{\"disease_id\":10,\"confidence\":1,\"disease_name\":\"Busung Ayam (Lymphoid Leukosis)\"},{\"disease_id\":11,\"confidence\":1,\"disease_name\":\"Batuk Darah (Infectious Laryngo Tracheitis)\"},{\"disease_id\":12,\"confidence\":1,\"disease_name\":\"Mareks (Mareks Disease)\"}]', '[{\"symptom_id\":40,\"condition_value\":\"1\"},{\"symptom_id\":41,\"condition_value\":\"1\"},{\"symptom_id\":42,\"condition_value\":\"1\"},{\"symptom_id\":43,\"condition_value\":\"1\"}]'),
(5, '2025-03-29 21:11:35', '[{\"disease_id\":7,\"confidence\":0.93000000000000004884981308350688777863979339599609375,\"disease_name\":\"Gumboro (Infectious Bursal Disease)\"},{\"disease_id\":9,\"confidence\":0.92000000000000003996802888650563545525074005126953125,\"disease_name\":\"Batuk Ayam Menahun (Infectious Bronchitis)\"},{\"disease_id\":10,\"confidence\":0.8000000000000000444089209850062616169452667236328125,\"disease_name\":\"Busung Ayam (Lymphoid Leukosis)\"},{\"disease_id\":6,\"confidence\":0.79000000000000003552713678800500929355621337890625,\"disease_name\":\"Berak Darah (Coccidosis)\"},{\"disease_id\":2,\"confidence\":0.59999999999999997779553950749686919152736663818359375,\"disease_name\":\"Kolera Ayam (Fowl Cholera)\"},{\"disease_id\":11,\"confidence\":0.520000000000000017763568394002504646778106689453125,\"disease_name\":\"Batuk Darah (Infectious Laryngo Tracheitis)\"},{\"disease_id\":4,\"confidence\":0.460000000000000019984014443252817727625370025634765625,\"disease_name\":\"Tetelo (Newcastle Disease)\"},{\"disease_id\":12,\"confidence\":0.40000000000000002220446049250313080847263336181640625,\"disease_name\":\"Mareks (Mareks Disease)\"},{\"disease_id\":3,\"confidence\":0.2600000000000000088817841970012523233890533447265625,\"disease_name\":\"Flu Burung (Avian Influenza)\"},{\"disease_id\":1,\"confidence\":0.1600000000000000033306690738754696212708950042724609375,\"disease_name\":\"Berak Kapur (Pullorum Disease)\"},{\"disease_id\":5,\"confidence\":0,\"disease_name\":\"Tipus Ayam (Fowl Typhoid)\"},{\"disease_id\":8,\"confidence\":0,\"disease_name\":\"Salesma Ayam (Infectious Coryza)\"},{\"disease_id\":13,\"confidence\":0,\"disease_name\":\"Produksi Telur (Egg Drop Syndrome 76/EDS 76)\"}]', '[{\"symptom_id\":1,\"condition_value\":\"0\"},{\"symptom_id\":2,\"condition_value\":\"0\"},{\"symptom_id\":3,\"condition_value\":\"0\"},{\"symptom_id\":4,\"condition_value\":\"0\"},{\"symptom_id\":5,\"condition_value\":\"0.6\"},{\"symptom_id\":6,\"condition_value\":\"0.6\"},{\"symptom_id\":7,\"condition_value\":\"0\"},{\"symptom_id\":8,\"condition_value\":\"0\"},{\"symptom_id\":9,\"condition_value\":\"0\"},{\"symptom_id\":10,\"condition_value\":\"1\"},{\"symptom_id\":11,\"condition_value\":\"0.4\"},{\"symptom_id\":12,\"condition_value\":\"0.2\"},{\"symptom_id\":13,\"condition_value\":\"0.2\"},{\"symptom_id\":14,\"condition_value\":\"0.2\"},{\"symptom_id\":15,\"condition_value\":\"0.6\"},{\"symptom_id\":16,\"condition_value\":\"0\"},{\"symptom_id\":17,\"condition_value\":\"0\"},{\"symptom_id\":18,\"condition_value\":\"0\"},{\"symptom_id\":19,\"condition_value\":\"0\"},{\"symptom_id\":20,\"condition_value\":\"0\"},{\"symptom_id\":21,\"condition_value\":\"0\"},{\"symptom_id\":22,\"condition_value\":\"0\"},{\"symptom_id\":23,\"condition_value\":\"0\"},{\"symptom_id\":24,\"condition_value\":\"0\"},{\"symptom_id\":25,\"condition_value\":\"0\"},{\"symptom_id\":26,\"condition_value\":\"0\"},{\"symptom_id\":27,\"condition_value\":\"0\"},{\"symptom_id\":28,\"condition_value\":\"0\"},{\"symptom_id\":29,\"condition_value\":\"0\"},{\"symptom_id\":30,\"condition_value\":\"0\"},{\"symptom_id\":31,\"condition_value\":\"0\"},{\"symptom_id\":32,\"condition_value\":\"0\"},{\"symptom_id\":33,\"condition_value\":\"0\"},{\"symptom_id\":34,\"condition_value\":\"0\"},{\"symptom_id\":35,\"condition_value\":\"0\"},{\"symptom_id\":36,\"condition_value\":\"0\"},{\"symptom_id\":37,\"condition_value\":\"0.2\"},{\"symptom_id\":38,\"condition_value\":\"0.8\"},{\"symptom_id\":39,\"condition_value\":\"0.8\"},{\"symptom_id\":40,\"condition_value\":\"0.8\"},{\"symptom_id\":41,\"condition_value\":\"0.8\"},{\"symptom_id\":42,\"condition_value\":\"0.4\"},{\"symptom_id\":43,\"condition_value\":\"0.4\"}]'),
(6, '2025-03-29 21:23:47', '[{\"disease_id\":9,\"confidence\":0.83999999999999996891375531049561686813831329345703125,\"disease_name\":\"Batuk Ayam Menahun (Infectious Bronchitis)\"},{\"disease_id\":5,\"confidence\":0.40000000000000002220446049250313080847263336181640625,\"disease_name\":\"Tipus Ayam (Fowl Typhoid)\"},{\"disease_id\":2,\"confidence\":0.200000000000000011102230246251565404236316680908203125,\"disease_name\":\"Kolera Ayam (Fowl Cholera)\"},{\"disease_id\":4,\"confidence\":0.200000000000000011102230246251565404236316680908203125,\"disease_name\":\"Tetelo (Newcastle Disease)\"},{\"disease_id\":7,\"confidence\":0.200000000000000011102230246251565404236316680908203125,\"disease_name\":\"Gumboro (Infectious Bursal Disease)\"},{\"disease_id\":10,\"confidence\":0.200000000000000011102230246251565404236316680908203125,\"disease_name\":\"Busung Ayam (Lymphoid Leukosis)\"},{\"disease_id\":12,\"confidence\":0.200000000000000011102230246251565404236316680908203125,\"disease_name\":\"Mareks (Mareks Disease)\"}]', '[{\"symptom_id\":1,\"condition_value\":\"1\"},{\"symptom_id\":5,\"condition_value\":\"0.8\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `diseases`
--

CREATE TABLE `diseases` (
  `id` int(11) NOT NULL,
  `disease_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL
);

--
-- Dumping data untuk tabel `diseases`
--

INSERT INTO `diseases` (`id`, `disease_name`, `description`, `img`) VALUES
(1, 'Berak Kapur (Pullorum Disease)', '<p style=\"margin-left:0px;\">Ayam Berak Kapur, atau yang dikenal dengan Pullorum Disease, adalah penyakit infeksi pada ayam yang disebabkan oleh bakteri <i>Salmonella pullorum</i>. Penyakit ini terutama menyerang ayam muda, seperti ayam pedaging atau ayam petelur, yang berusia kurang dari 3 minggu. Gejala utama penyakit ini adalah diare berwarna putih seperti kapur (berak kapur), demam, lesu, dan penurunan nafsu makan. Infeksi ini dapat menyebar dengan cepat melalui kotoran ayam yang terinfeksi, dan dapat menyebabkan kematian pada ayam muda dalam waktu singkat jika tidak ditangani dengan tepat.</p><h5>Pencegahan:</h5><ul><li><strong>Sanitasi yang baik</strong>: Menjaga kebersihan kandang dan lingkungan sangat penting untuk mencegah penyebaran bakteri. Rutin membersihkan kandang dan peralatan ayam dapat mengurangi risiko infeksi.</li><li><strong>Vaksinasi</strong>: Vaksinasi terhadap <i>Salmonella pullorum</i> dapat membantu mencegah penyakit ini, terutama pada ayam yang dipelihara dalam jumlah besar.</li><li><strong>Pembelian bibit ayam sehat</strong>: Pastikan membeli ayam dari peternakan yang terjamin bebas dari penyakit ini. Ayam yang baru datang sebaiknya dipisahkan sementara dan dipantau kondisinya.</li><li><strong>Penyuluhan dan pelatihan</strong>: Memberikan informasi dan pelatihan kepada peternak mengenai cara mencegah dan mengenali gejala penyakit ini sangat penting.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi ayam yang terinfeksi</strong>: Segera pisahkan ayam yang menunjukkan gejala penyakit untuk mencegah penyebaran lebih lanjut ke ayam lain.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Segera konsultasikan dengan dokter hewan untuk diagnosis dan pengobatan yang tepat. Pengobatan dengan antibiotik mungkin diperlukan untuk mengatasi infeksi bakteri.</li><li><strong>Disinfeksi kandang dan perlengkapan</strong>: Setelah penanganan ayam yang terinfeksi, pastikan kandang dan semua perlengkapan yang digunakan disinfeksi untuk mencegah penyebaran lebih lanjut.</li><li><strong>Monitoring secara rutin</strong>: Lakukan pemantauan secara berkala terhadap kondisi ayam yang sehat untuk mendeteksi gejala lebih awal jika terjadi infeksi.</li></ul>', '67e8bb5103c2b.jpg'),
(2, 'Kolera Ayam (Fowl Cholera)', '<p style=\"margin-left:0px;\">Kolera Ayam, atau Fowl Cholera, adalah penyakit infeksi yang disebabkan oleh bakteri <i>Pasteurella multocida</i>. Penyakit ini dapat menyerang ayam dan unggas lainnya, baik yang muda maupun dewasa, dengan gejala yang bervariasi tergantung pada tingkat keparahan infeksi. Gejala umum yang terlihat adalah demam tinggi, penurunan nafsu makan, keluarnya cairan berlebihan dari hidung atau mulut, dan sesak napas. Pada kasus yang lebih parah, dapat terjadi peradangan pada organ tubuh seperti hati dan paru-paru, bahkan menyebabkan kematian mendadak. Penyakit ini sangat menular dan dapat menyebar melalui kontak langsung dengan ayam yang terinfeksi, serta melalui kotoran, makanan, atau air yang terkontaminasi.</p><h5>Pencegahan:</h5><ul><li><strong>Vaksinasi</strong>: Vaksinasi terhadap <i>Pasteurella multocida</i> sangat dianjurkan untuk mencegah infeksi pada ayam, terutama pada peternakan yang berisiko tinggi.</li><li><strong>Karantina ayam baru</strong>: Ayam yang baru masuk ke dalam peternakan harus menjalani masa karantina untuk memastikan tidak membawa bakteri penyebab kolera.</li><li><strong>Kebersihan dan sanitasi yang baik</strong>: Menjaga kebersihan kandang dan lingkungan sangat penting. Rutin membersihkan kandang, memberikan makanan dan air yang bersih, serta memastikan sanitasi yang baik dapat mengurangi risiko infeksi.</li><li><strong>Pengelolaan yang baik</strong>: Pengelolaan peternakan yang baik, seperti pengaturan kepadatan ayam, dapat mengurangi stres pada ayam dan memperkuat daya tahan tubuhnya terhadap penyakit.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi ayam yang terinfeksi</strong>: Pisahkan ayam yang terinfeksi untuk mencegah penularan kepada ayam lain. Ayam yang menunjukkan gejala sebaiknya segera dipisahkan dari yang sehat.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Segera hubungi dokter hewan untuk mendapatkan diagnosis dan pengobatan yang tepat. Biasanya, antibiotik seperti amoksisilin atau tetrasiklin akan digunakan untuk mengobati infeksi bakteri.</li><li><strong>Disinfeksi kandang dan perlengkapan</strong>: Lakukan disinfeksi menyeluruh pada kandang dan peralatan yang digunakan untuk mengurangi penyebaran bakteri.</li><li><strong>Pemantauan kondisi ayam lainnya</strong>: Lakukan pemeriksaan kesehatan secara rutin pada ayam yang tersisa untuk memastikan tidak ada gejala lebih lanjut. Jika ditemukan gejala lain, segera tangani dengan langkah yang tepat.</li></ul>', '67e8bb60dea48.png'),
(3, 'Flu Burung (Avian Influenza)', '<p>Flu Burung, atau Avian Influenza (AI), adalah penyakit infeksi yang disebabkan oleh virus influenza tipe A yang menyerang unggas, terutama ayam, itik, dan burung liar. Flu Burung dapat bermutasi menjadi varian yang sangat virulen (H5N1, H7N9, dll.), yang dapat menyebabkan kematian mendadak pada unggas yang terinfeksi. Gejala umum pada ayam yang terinfeksi termasuk demam tinggi, penurunan nafsu makan, pembengkakan pada kepala, leher, atau mata, serta adanya diare atau perubahan warna pada kulit. Pada kasus yang parah, penyakit ini dapat menyebabkan kematian dalam waktu singkat. Flu Burung dapat menular antar unggas melalui udara, kontak langsung, dan perantara seperti makanan atau air yang terkontaminasi. Dalam beberapa kasus, virus ini dapat menyebar ke manusia dan hewan lainnya, menjadikannya masalah kesehatan global.</p><h5>Pencegahan:</h5><ul><li><strong>Vaksinasi</strong>: Vaksinasi terhadap virus flu burung dapat dilakukan pada ayam dan unggas lain untuk mengurangi kemungkinan penularan dan dampak infeksi. Namun, vaksinasi hanya efektif untuk jenis virus tertentu.</li><li><strong>Pengawasan ketat</strong>: Pemantauan ketat terhadap kesehatan unggas sangat penting, terutama pada daerah yang berisiko tinggi terjangkit flu burung. Pemeriksaan rutin pada peternakan dan burung liar sangat dianjurkan.</li><li><strong>Karantina dan pengendalian lalu lintas unggas</strong>: Membatasi pergerakan unggas antar peternakan dan daerah sangat penting untuk mencegah penyebaran penyakit. Selain itu, jika ada kasus infeksi, karantina harus segera diterapkan untuk mencegah penularan lebih lanjut.</li><li><strong>Sanitasi dan kebersihan</strong>: Menjaga kebersihan kandang dan lingkungan adalah langkah penting dalam mencegah penularan flu burung. Pengelolaan yang baik terhadap pakan dan air juga dapat mengurangi risiko infeksi.</li><li><strong>Menghindari kontak dengan burung liar</strong>: Menghindari kontak langsung antara unggas peliharaan dengan burung liar yang berpotensi membawa virus sangat dianjurkan.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi unggas yang terinfeksi</strong>: Segera pisahkan unggas yang terinfeksi dari yang sehat untuk mencegah penularan. Semua ayam yang terinfeksi harus diberi perhatian khusus dan dipisahkan untuk mencegah wabah yang lebih besar.</li><li><strong>Lapor ke otoritas setempat</strong>: Jika ditemukan gejala flu burung pada unggas, segera laporkan ke otoritas pertanian atau dinas peternakan untuk tindakan lebih lanjut. Biasanya, tindakan karantina dan pengendalian akan dilakukan oleh pihak berwenang.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Segera hubungi dokter hewan untuk diagnosis dan pengobatan yang tepat. Pada kasus infeksi berat, biasanya unggas akan diberi perawatan suportif dan antibiotik untuk mencegah komplikasi sekunder.</li><li><strong>Disinfeksi kandang dan lingkungan</strong>: Lakukan disinfeksi menyeluruh pada kandang, peralatan, dan lingkungan untuk membasmi virus yang dapat bertahan di lingkungan sekitar. Semua barang yang digunakan dalam kontak dengan unggas harus dibersihkan dan didisinfeksi dengan baik.</li><li><strong>Pemusnahan unggas terinfeksi (jika diperlukan)</strong>: Pada kasus wabah yang sangat parah, pemusnahan unggas yang terinfeksi mungkin diperlukan untuk menghentikan penyebaran penyakit.</li></ul>', '67e8bb757476c.jpg'),
(4, 'Tetelo (Newcastle Disease)', '<p>Tetelo, atau penyakit Newcastle (Newcastle Disease), adalah penyakit virus yang sangat menular pada unggas, terutama ayam. Penyakit ini disebabkan oleh virus <i>Avian Paramyxovirus-1 (APMV-1)</i> dan dapat menyerang berbagai spesies unggas, termasuk ayam, itik, kalkun, dan burung lainnya. Gejala klinis yang paling umum meliputi penurunan nafsu makan, diare, gangguan pernapasan (seperti batuk dan bersin), serta kelumpuhan pada kaki atau sayap. Ayam yang terinfeksi juga dapat mengalami pembengkakan pada kepala dan leher, serta adanya cairan berlebihan di sekitar mata dan hidung. Pada kasus yang parah, tetelo dapat menyebabkan kematian mendadak. Penyakit ini memiliki tingkat keparahan yang bervariasi, tergantung pada jenis virus dan daya tahan tubuh unggas, dengan beberapa strain yang dapat menyebabkan kematian massal.</p><h5>Pencegahan:</h5><ul><li><strong>Vaksinasi</strong>: Vaksinasi merupakan langkah pencegahan yang sangat penting untuk melindungi ayam dari penyakit Tetelo. Vaksinasi rutin pada ayam dapat mencegah infeksi dan mengurangi dampak buruk dari virus Newcastle.</li><li><strong>Sanitasi yang baik</strong>: Menjaga kebersihan kandang dan lingkungan sangat penting untuk mencegah penyebaran virus. Rutin membersihkan kandang dan peralatan serta memastikan pakan dan air bersih dapat membantu mengurangi risiko infeksi.</li><li><strong>Karantina ayam baru</strong>: Ayam yang baru datang ke peternakan sebaiknya dikarantina terlebih dahulu untuk memastikan tidak membawa virus. Pemantauan terhadap ayam yang baru masuk juga penting untuk deteksi dini infeksi.</li><li><strong>Pengendalian pergerakan unggas</strong>: Pembatasan pergerakan unggas antar peternakan atau wilayah dapat mencegah penyebaran penyakit ini. Jika ada kasus infeksi, segera lakukan isolasi untuk menghindari penularan lebih lanjut.</li><li><strong>Penyuluhan dan pelatihan</strong>: Memberikan informasi yang tepat tentang gejala penyakit dan langkah pencegahannya kepada peternak akan membantu mencegah penyebaran penyakit ini.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi unggas yang terinfeksi</strong>: Ayam yang menunjukkan gejala Tetelo harus segera dipisahkan dari unggas yang sehat untuk mencegah penularan. Langkah ini sangat penting, mengingat tingkat penularannya yang tinggi.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Segera hubungi dokter hewan untuk mendapatkan diagnosis yang akurat dan pengobatan yang sesuai. Dalam beberapa kasus, terapi suportif dapat membantu mengurangi gejala dan memperbaiki kondisi ayam.</li><li><strong>Disinfeksi kandang dan lingkungan</strong>: Setelah menangani ayam yang terinfeksi, lakukan disinfeksi menyeluruh pada kandang dan peralatan yang digunakan. Virus Newcastle dapat bertahan di lingkungan, jadi penting untuk membersihkan dan mensterilkan kandang untuk menghindari penyebaran lebih lanjut.</li><li><strong>Pemantauan ayam lainnya</strong>: Lakukan pemeriksaan secara rutin terhadap ayam lainnya untuk mendeteksi adanya gejala penyakit lebih awal. Jika ditemukan tanda-tanda infeksi lain, segera lakukan langkah penanganan yang sesuai.</li><li><strong>Pemusnahan unggas terinfeksi (jika diperlukan)</strong>: Pada kasus yang parah dan jika wabah sudah meluas, pemusnahan unggas yang terinfeksi mungkin diperlukan untuk menghentikan penyebaran penyakit ini.</li></ul>', '67e8bb868aacc.jpg'),
(5, 'Tipus Ayam (Fowl Typhoid)', '<p>Tipus Ayam, atau Fowl Typhoid, adalah penyakit infeksi yang disebabkan oleh bakteri <i>Salmonella gallinarum</i>. Penyakit ini terutama menyerang ayam dewasa dan dapat menyebabkan penurunan produksi telur, penurunan berat badan, serta gejala klinis lain yang dapat mengarah pada kematian pada kasus yang parah. Gejala umum penyakit ini termasuk demam tinggi, nafsu makan menurun, diare (sering disertai dengan tinja hijau), kelemahan, dehidrasi, serta pembengkakan pada bagian tubuh tertentu, seperti perut. Bakteri ini menyebar melalui kotoran ayam yang terinfeksi, dan penyakit ini dapat menular melalui kontak langsung atau melalui pakan dan air yang terkontaminasi. Fowl Typhoid sering menjadi masalah pada peternakan ayam yang memiliki sanitasi yang buruk atau yang tidak menjalani program vaksinasi yang tepat.</p><h5>Pencegahan:</h5><ul><li><strong>Vaksinasi</strong>: Vaksinasi terhadap <i>Salmonella gallinarum</i> sangat dianjurkan untuk mencegah infeksi pada ayam, terutama di daerah dengan risiko tinggi. Vaksinasi ini membantu mengurangi tingkat mortalitas dan penurunan produksi pada ayam.</li><li><strong>Sanitasi yang baik</strong>: Menjaga kebersihan kandang dan lingkungan sangat penting untuk mencegah penyebaran bakteri. Rutin membersihkan kandang, peralatan, dan menyediakan pakan serta air yang bersih sangat membantu mengurangi risiko infeksi.</li><li><strong>Karantina ayam baru</strong>: Ayam yang baru datang ke peternakan harus menjalani masa karantina untuk memastikan tidak membawa bakteri penyebab penyakit ini. Pengawasan ketat terhadap ayam baru dapat mencegah penyebaran infeksi.</li><li><strong>Pengelolaan pakan dan air</strong>: Pastikan pakan dan air yang diberikan kepada ayam tidak tercemar dan selalu dalam kondisi bersih. Pengelolaan yang baik terhadap pakan dan air dapat mengurangi risiko kontaminasi.</li><li><strong>Monitoring kesehatan ayam secara rutin</strong>: Pemantauan kesehatan unggas secara berkala akan membantu mendeteksi gejala penyakit lebih awal, sehingga dapat diambil langkah pencegahan yang tepat.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi ayam yang terinfeksi</strong>: Segera pisahkan ayam yang menunjukkan gejala penyakit untuk mencegah penularan lebih lanjut. Ayam yang terinfeksi harus diperlakukan secara khusus dan dipisahkan dari ayam yang sehat.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Segera hubungi dokter hewan untuk mendapatkan diagnosis dan pengobatan yang tepat. Pengobatan dengan antibiotik seperti amoksisilin atau tetrasiklin mungkin diperlukan untuk mengatasi infeksi bakteri.</li><li><strong>Disinfeksi kandang dan peralatan</strong>: Setelah penanganan ayam yang terinfeksi, lakukan disinfeksi menyeluruh pada kandang dan semua peralatan yang digunakan. Membersihkan dan mensterilkan lingkungan sangat penting untuk menghindari penyebaran lebih lanjut.</li><li><strong>Pemantauan dan pengawasan lebih ketat</strong>: Lakukan pemeriksaan kesehatan secara rutin terhadap ayam yang sehat untuk mendeteksi gejala lebih awal jika terjadi infeksi. Pemantauan yang intensif pada seluruh peternakan akan membantu mencegah wabah lebih lanjut.</li></ul>', '67e8bb98c5675.jpg'),
(6, 'Berak Darah (Coccidosis)', '<p>Berak Darah, atau Coccidiosis, adalah penyakit parasitik yang disebabkan oleh protozoa <i>Eimeria</i> yang menyerang saluran pencernaan unggas, terutama ayam. Penyakit ini sering menyerang ayam muda dan dapat menyebabkan diare berdarah, penurunan nafsu makan, penurunan berat badan, dan dehidrasi. Coccidiosis umumnya terjadi ketika unggas terinfeksi oleh oosista (kista) <i>Eimeria</i> yang terdapat pada kotoran ayam yang terkontaminasi. Proses infeksi dapat merusak lapisan usus ayam, menyebabkan perdarahan, dan mengganggu penyerapan nutrisi. Gejala utama penyakit ini adalah diare berwarna merah atau darah, kelemahan, bulu kusam, serta ayam yang terkesan lesu dan sulit bergerak. Jika tidak segera ditangani, penyakit ini dapat menyebabkan kematian pada ayam.</p><h5>Pencegahan:</h5><ul><li><strong>Pemberian obat anti-coccidia</strong>: Obat coccidiostat atau obat anti-coccidia dapat diberikan pada pakan atau air minum untuk mencegah infeksi. Penggunaan obat ini sangat membantu dalam pengendalian penyakit di peternakan ayam.</li><li><strong>Sanitasi yang baik</strong>: Menjaga kebersihan kandang dan lingkungan sangat penting untuk mencegah penyebaran oosista <i>Eimeria</i>. Rutin membersihkan kandang, mengganti litter atau alas tidur, serta mendisinfeksi peralatan peternakan dapat mengurangi risiko penyebaran parasit.</li><li><strong>Pengelolaan pakan dan air</strong>: Pastikan pakan dan air yang diberikan kepada ayam selalu bersih dan tidak tercemar. Mencegah kontaminasi pakan dan air dengan oosista dapat mengurangi risiko infeksi.</li><li><strong>Pemisahan ayam yang sakit</strong>: Segera pisahkan ayam yang terinfeksi dari yang sehat untuk menghindari penyebaran parasit. Ayam yang menunjukkan gejala Coccidiosis harus diisolasi agar tidak menular ke ayam lainnya.</li><li><strong>Vaksinasi</strong>: Beberapa jenis vaksin untuk coccidiosis sudah tersedia, dan vaksinasi dapat menjadi langkah pencegahan tambahan, terutama pada ayam yang rentan terhadap infeksi.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi ayam yang terinfeksi</strong>: Ayam yang menunjukkan gejala Coccidiosis harus segera dipisahkan untuk mencegah penularan lebih lanjut ke ayam lain yang sehat.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Segera hubungi dokter hewan untuk mendapatkan diagnosis dan pengobatan yang tepat. Biasanya, pengobatan dengan obat anti-coccidia seperti amprolium, sulfonamida, atau toltrazuril akan digunakan untuk mengatasi infeksi.</li><li><strong>Disinfeksi kandang dan peralatan</strong>: Setelah menangani ayam yang terinfeksi, lakukan disinfeksi menyeluruh pada kandang dan perlengkapan yang digunakan untuk mengurangi penyebaran oosista <i>Eimeria</i>.</li><li><strong>Perbaiki kebersihan pakan dan air</strong>: Pastikan pakan dan air yang diberikan bersih dan tidak tercemar. Penanganan yang baik terhadap pakan dan air sangat penting untuk mencegah penyebaran penyakit.</li><li><strong>Monitoring ayam lainnya</strong>: Lakukan pemantauan secara rutin terhadap ayam yang sehat untuk mendeteksi gejala lebih awal jika ada infeksi. Jika ditemukan ayam yang terinfeksi, segera lakukan langkah penanganan yang sesuai.</li></ul>', '67e8bba75300f.jpeg'),
(7, 'Gumboro (Infectious Bursal Disease)', '<p>Gumboro, atau Infectious Bursal Disease (IBD), adalah penyakit viral yang disebabkan oleh virus <i>Infectious Bursal Disease Virus</i> (IBDV), yang menyerang sistem kekebalan tubuh unggas, terutama ayam. Penyakit ini mempengaruhi Bursa Fabricius, organ yang berperan penting dalam perkembangan sistem kekebalan ayam. Gumboro terutama menyerang ayam muda, terutama yang berusia antara 3 hingga 6 minggu. Gejala klinis yang dapat muncul termasuk diare cair, penurunan nafsu makan, penurunan berat badan, dehidrasi, dan kelemahan. Pada kasus yang parah, penyakit ini dapat menyebabkan kematian mendadak, terutama pada ayam yang daya tahan tubuhnya lemah akibat infeksi. Gumboro dapat menyebar dengan cepat melalui kontak langsung antar ayam, melalui kotoran, dan udara.</p><h5>Pencegahan:</h5><ul><li><strong>Vaksinasi</strong>: Vaksinasi adalah langkah pencegahan yang sangat penting untuk melindungi ayam dari Gumboro. Vaksinasi dapat dilakukan melalui pakan atau air minum, dan dapat diberikan pada ayam muda untuk membantu meningkatkan daya tahan tubuh mereka terhadap infeksi.</li><li><strong>Karantina ayam baru</strong>: Ayam yang baru datang ke peternakan sebaiknya dikarantina terlebih dahulu untuk memastikan tidak membawa virus. Pengawasan ketat terhadap ayam baru akan membantu mencegah penyebaran infeksi.</li><li><strong>Sanitasi yang baik</strong>: Menjaga kebersihan kandang, peralatan, serta lingkungan sekitar sangat penting untuk mengurangi risiko penyebaran virus. Rutin membersihkan kandang dan mengganti alas tidur sangat membantu dalam pencegahan.</li><li><strong>Pengelolaan pakan dan air</strong>: Pakan dan air yang diberikan kepada ayam harus selalu dalam kondisi bersih dan bebas dari kontaminasi. Penyediaan pakan dan air yang bersih membantu mencegah penyebaran virus melalui media tersebut.</li><li><strong>Pemisahan ayam sakit</strong>: Jika ditemukan ayam yang terinfeksi, segera pisahkan ayam tersebut dari ayam sehat untuk mencegah penyebaran penyakit lebih lanjut.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi ayam yang terinfeksi</strong>: Pisahkan ayam yang menunjukkan gejala Gumboro untuk mencegah penularan lebih lanjut ke ayam yang sehat.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Segera hubungi dokter hewan untuk mendapatkan diagnosis yang akurat dan perawatan yang tepat. Tidak ada pengobatan spesifik untuk Gumboro, namun perawatan suportif seperti pemberian cairan dan elektrolit dapat membantu ayam yang terinfeksi.</li><li><strong>Disinfeksi kandang dan perlengkapan</strong>: Setelah penanganan ayam yang terinfeksi, lakukan disinfeksi menyeluruh pada kandang dan peralatan yang digunakan. Membersihkan dan mensterilkan lingkungan sangat penting untuk mencegah penyebaran virus lebih lanjut.</li><li><strong>Monitoring ayam lainnya</strong>: Lakukan pemantauan secara rutin terhadap ayam yang sehat untuk mendeteksi gejala lebih awal jika ada infeksi. Pemantauan dan penanganan yang cepat dapat membantu mengurangi dampak infeksi.</li></ul>', '67e8bbb6aa013.jpg'),
(8, 'Salesma Ayam (Infectious Coryza)', '<p>Salesma Ayam, atau Infectious Coryza, adalah penyakit saluran pernapasan akut yang disebabkan oleh bakteri <i>Avibacterium paragallinarum</i>. Penyakit ini menyerang ayam dan unggas lainnya, menyebabkan gejala pernapasan yang mirip dengan flu pada manusia. Ayam yang terinfeksi biasanya menunjukkan gejala seperti pilek, hidung berair, bersin, pembengkakan pada mata dan wajah, serta kesulitan bernapas. Gejala tambahan dapat mencakup penurunan nafsu makan, penurunan produksi telur, dan demam. Penyakit ini menyebar melalui kontak langsung antara ayam yang terinfeksi atau melalui udara yang terkontaminasi. Meskipun tidak selalu fatal, Infectious Coryza dapat menurunkan produktivitas ayam dan menyebabkan kerugian pada peternakan jika tidak ditangani dengan tepat.</p><h5>Pencegahan:</h5><ul><li><strong>Sanitasi yang baik</strong>: Menjaga kebersihan kandang dan lingkungan sangat penting dalam mencegah penyebaran bakteri penyebab Infectious Coryza. Rutin membersihkan kandang dan mengganti alas tidur akan membantu mengurangi jumlah patogen di lingkungan.</li><li><strong>Vaksinasi</strong>: Vaksinasi terhadap <i>Avibacterium paragallinarum</i> dapat dilakukan pada ayam untuk mencegah infeksi, terutama pada peternakan yang berisiko tinggi. Vaksinasi dapat mengurangi tingkat infeksi dan dampaknya.</li><li><strong>Karantina ayam baru</strong>: Ayam yang baru masuk ke peternakan harus dikarantina terlebih dahulu untuk memastikan tidak membawa bakteri penyebab penyakit ini. Pengawasan ketat terhadap ayam yang baru masuk penting untuk deteksi dini infeksi.</li><li><strong>Pemisahan ayam yang sakit</strong>: Ayam yang terinfeksi harus segera dipisahkan dari yang sehat untuk mencegah penularan lebih lanjut. Mengisolasi ayam yang terinfeksi dapat mencegah wabah besar di peternakan.</li><li><strong>Pengelolaan pakan dan air yang baik</strong>: Pastikan pakan dan air yang diberikan bersih dan tidak tercemar. Kontaminasi pakan dan air dapat memperburuk penyebaran penyakit.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi ayam yang terinfeksi</strong>: Segera pisahkan ayam yang menunjukkan gejala Salesma Ayam (Infectious Coryza) untuk menghindari penularan lebih lanjut. Ayam yang terinfeksi perlu diisolasi agar penyakit tidak menyebar ke ayam sehat.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Segera hubungi dokter hewan untuk diagnosis yang tepat dan perawatan yang sesuai. Pengobatan umumnya melibatkan antibiotik seperti tetrasiklin atau sulfonamida untuk mengatasi infeksi bakteri.</li><li><strong>Perawatan suportif</strong>: Berikan cairan dan nutrisi tambahan pada ayam yang terinfeksi untuk membantu mereka pulih. Penanganan suportif dapat mempercepat pemulihan ayam dan mengurangi dampak penyakit.</li><li><strong>Disinfeksi kandang dan perlengkapan</strong>: Setelah penanganan ayam yang terinfeksi, lakukan disinfeksi menyeluruh pada kandang dan peralatan untuk mengurangi risiko penyebaran bakteri.</li><li><strong>Pemantauan ayam lainnya</strong>: Lakukan pemantauan secara rutin terhadap ayam yang sehat untuk mendeteksi adanya gejala lebih awal. Langkah ini akan membantu dalam penanganan dini dan mencegah penyebaran penyakit.</li></ul>', '67e8bbc5d2853.jpg'),
(9, 'Batuk Ayam Menahun (Infectious Bronchitis)', '<p>Batuk Ayam Menahun, atau Infectious Bronchitis (IB), adalah penyakit pernapasan yang sangat menular pada ayam, disebabkan oleh virus <i>Avian Coronavirus</i>. Penyakit ini dapat menyerang sistem pernapasan atas ayam dan menyebabkan gejala seperti batuk, bersin, hidung berair, serta gangguan pernapasan lainnya. Selain gejala pernapasan, Infectious Bronchitis juga dapat mempengaruhi sistem reproduksi ayam, menyebabkan penurunan produksi telur yang signifikan, terutama pada ayam petelur. Beberapa strain virus dapat menyebabkan kerusakan pada ginjal, yang mengarah pada masalah kesehatan lebih lanjut. Penyakit ini menyebar melalui udara, kotoran ayam yang terinfeksi, dan kontak langsung antar ayam. Meskipun tidak selalu menyebabkan kematian, IB dapat menurunkan produktivitas dan menyebabkan kerugian ekonomi pada peternakan unggas.</p><h5>Pencegahan:</h5><ul><li><strong>Vaksinasi</strong>: Vaksinasi adalah langkah utama dalam mencegah penyebaran virus Infectious Bronchitis pada ayam. Vaksin yang sesuai harus diberikan pada ayam muda untuk membangun kekebalan terhadap virus ini. Vaksinasi dapat membantu mengurangi gejala dan dampak infeksi.</li><li><strong>Sanitasi yang baik</strong>: Menjaga kebersihan kandang dan lingkungan sangat penting untuk mencegah penyebaran virus. Disinfeksi rutin pada kandang dan peralatan, serta menjaga kebersihan pakan dan air sangat membantu dalam pengendalian penyakit.</li><li><strong>Karantina ayam baru</strong>: Ayam yang baru datang ke peternakan sebaiknya dikarantina terlebih dahulu untuk memastikan tidak membawa virus. Pengawasan terhadap ayam baru dapat mencegah penyebaran virus lebih lanjut.</li><li><strong>Pengelolaan pergerakan unggas</strong>: Pembatasan pergerakan ayam antar peternakan sangat penting untuk mencegah penyebaran penyakit, terutama jika ada kasus IB di daerah tertentu.</li><li><strong>Pengelolaan udara dan ventilasi yang baik</strong>: Pastikan kandang memiliki ventilasi yang baik untuk mengurangi penyebaran virus melalui udara. Pengaturan suhu dan kelembapan yang tepat juga dapat membantu mengurangi risiko infeksi.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi ayam yang terinfeksi</strong>: Pisahkan ayam yang menunjukkan gejala Batuk Ayam Menahun (Infectious Bronchitis) dari ayam yang sehat untuk mencegah penularan lebih lanjut. Ayam yang terinfeksi harus diisolasi agar tidak menularkan virus ke ayam lain.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Segera hubungi dokter hewan untuk mendapatkan diagnosis yang akurat dan pengobatan yang tepat. Meskipun tidak ada obat spesifik untuk virus ini, pengobatan suportif seperti pemberian cairan, antibiotik untuk infeksi sekunder, dan pengelolaan stres dapat membantu ayam yang terinfeksi.</li><li><strong>Perawatan suportif</strong>: Berikan cairan tambahan dan nutrisi untuk mendukung pemulihan ayam. Ayam yang terinfeksi mungkin membutuhkan perawatan intensif untuk mencegah dehidrasi dan untuk menjaga kondisi tubuh mereka.</li><li><strong>Disinfeksi kandang dan peralatan</strong>: Setelah menangani ayam yang terinfeksi, pastikan untuk membersihkan dan mendisinfeksi kandang serta peralatan yang digunakan untuk mencegah penyebaran virus lebih lanjut.</li><li><strong>Monitoring ayam lainnya</strong>: Lakukan pemeriksaan secara rutin terhadap ayam lainnya untuk mendeteksi gejala lebih awal jika ada infeksi. Pemantauan yang ketat akan membantu dalam penanganan lebih cepat dan mencegah wabah besar.</li></ul>', '67e8bc3081c68.jpg'),
(10, 'Busung Ayam (Lymphoid Leukosis)', '<p>Busung Ayam, atau Lymphoid Leukosis (LL), adalah penyakit kanker pada ayam yang disebabkan oleh virus <i>Avian Leukosis Virus</i> (ALV). Virus ini menyerang sel-sel limfatik dan dapat menyebabkan pembengkakan organ, terutama hati, limpa, dan ginjal. Penyakit ini dapat menyebabkan tumor atau pembentukan massa di berbagai organ tubuh ayam, yang mengarah pada penurunan fungsi organ tersebut. Ayam yang terinfeksi sering menunjukkan gejala seperti penurunan berat badan, pembengkakan perut (terutama pada bagian organ dalam), pucat, dan penurunan nafsu makan. Meskipun penyakit ini bersifat kronis dan biasanya tidak menyebabkan kematian mendadak, infeksi jangka panjang dapat mengurangi produktivitas ayam dan memperburuk kondisi kesehatan mereka. Virus ini dapat menyebar melalui telur yang terinfeksi atau kontak langsung antar ayam.</p><h5>Pencegahan:</h5><ul><li><strong>Vaksinasi</strong>: Tidak ada vaksin yang tersedia untuk Lymphoid Leukosis, tetapi penggunaan vaksin untuk penyakit lainnya dan pengelolaan yang baik di peternakan dapat membantu mencegah infeksi sekunder yang dapat memperburuk kondisi ayam.</li><li><strong>Pemilihan bibit unggul</strong>: Pilih ayam dari strain yang telah terbukti bebas dari infeksi <i>Avian Leukosis Virus</i> (ALV) atau memiliki resistansi terhadap penyakit ini. Ayam yang terinfeksi sejak dini bisa menularkan virus ke keturunannya melalui telur.</li><li><strong>Sanitasi yang baik</strong>: Menjaga kebersihan kandang dan peralatan sangat penting untuk mencegah penyebaran virus. Pastikan kandang selalu bersih dan tidak terkontaminasi dengan virus yang dapat ditularkan antar ayam.</li><li><strong>Karantina ayam baru</strong>: Ayam yang baru datang ke peternakan harus melalui masa karantina untuk memastikan mereka tidak membawa virus yang dapat menularkan Lymphoid Leukosis ke ayam lainnya. Pengawasan ketat terhadap ayam baru akan membantu mencegah penyebaran infeksi.</li><li><strong>Pemantauan kesehatan unggas secara rutin</strong>: Melakukan pemeriksaan kesehatan ayam secara berkala dapat membantu mendeteksi gejala dini penyakit ini dan memisahkan ayam yang terinfeksi sebelum virus menyebar.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi ayam yang terinfeksi</strong>: Pisahkan ayam yang menunjukkan gejala Busung Ayam (Lymphoid Leukosis) untuk mencegah penularan lebih lanjut ke ayam sehat. Ayam yang terinfeksi harus diisolasi agar tidak menyebarkan virus ke ayam lainnya.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Segera hubungi dokter hewan untuk mendapatkan diagnosis yang tepat. Meskipun tidak ada pengobatan khusus untuk Lymphoid Leukosis, perawatan suportif seperti pemberian cairan dan nutrisi tambahan dapat membantu ayam bertahan lebih lama.</li><li><strong>Disinfeksi kandang dan peralatan</strong>: Setelah penanganan ayam yang terinfeksi, lakukan disinfeksi menyeluruh pada kandang dan peralatan yang digunakan untuk mencegah penyebaran virus lebih lanjut.</li><li><strong>Pemantauan dan seleksi ketat pada ayam lainnya</strong>: Lakukan pemantauan lebih intensif terhadap ayam yang sehat untuk mendeteksi kemungkinan infeksi lebih lanjut. Pemisahan ayam yang terinfeksi sejak dini dapat membantu mengurangi dampak dari penyakit ini.</li></ul>', '67e8bcb3051ee.jpg'),
(11, 'Batuk Darah (Infectious Laryngo Tracheitis)', '<p>Batuk Darah, atau Infectious Laryngo Tracheitis (ILT), adalah penyakit pernapasan akut yang disebabkan oleh virus <i>Gallid Herpesvirus 1</i> (GHV-1). Penyakit ini terutama menyerang saluran pernapasan bagian atas ayam, terutama laring dan trakea. Gejala klinis yang umum terjadi pada ayam yang terinfeksi meliputi batuk berdarah, keluar cairan atau darah dari hidung, kesulitan bernapas, serta suara pernapasan yang abnormal (seperti suara mendesis). Ayam yang terinfeksi juga dapat menunjukkan penurunan nafsu makan, penurunan produksi telur, dan penurunan berat badan. Penyakit ini sangat menular dan dapat menyebar melalui kontak langsung antar ayam, serta melalui udara atau kotoran ayam yang terinfeksi. Batuk Darah (ILT) dapat menyebabkan kerusakan permanen pada saluran pernapasan ayam, dan pada kasus yang parah, dapat menyebabkan kematian.</p><h5>Pencegahan:</h5><ul><li><strong>Vaksinasi</strong>: Vaksinasi merupakan langkah pencegahan utama dalam mengendalikan penyebaran penyakit ini. Vaksin yang tersedia untuk ILT dapat diberikan pada ayam muda untuk membangun kekebalan terhadap virus ini. Vaksinasi biasanya dilakukan secara aerosol atau dengan pemberian melalui mata atau hidung ayam.</li><li><strong>Karantina ayam baru</strong>: Ayam yang baru masuk ke peternakan harus dikarantina terlebih dahulu untuk memastikan bahwa mereka tidak membawa virus penyebab ILT. Ini penting untuk mencegah penularan penyakit ke ayam sehat.</li><li><strong>Sanitasi yang baik</strong>: Menjaga kebersihan kandang, alat-alat peternakan, dan lingkungan sangat penting untuk mengurangi penyebaran virus. Pengelolaan kotoran dan limbah ayam yang baik juga dapat mencegah penyebaran penyakit.</li><li><strong>Pemisahan ayam yang sakit</strong>: Ayam yang terinfeksi harus segera dipisahkan dari ayam sehat untuk mencegah penyebaran lebih lanjut. Penyakit ini menyebar dengan cepat, sehingga pemisahan yang cepat sangat penting.</li><li><strong>Pengelolaan ventilasi</strong>: Pastikan ventilasi yang baik di dalam kandang untuk mengurangi penyebaran virus melalui udara. Ventilasi yang buruk dapat memperburuk kondisi dan meningkatkan risiko penularan.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi ayam yang terinfeksi</strong>: Pisahkan ayam yang menunjukkan gejala Batuk Darah (Infectious Laryngo Tracheitis) untuk menghindari penularan lebih lanjut ke ayam lain. Ayam yang terinfeksi harus diisolasi sampai sembuh atau sampai dokter hewan memberi instruksi lebih lanjut.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Segera hubungi dokter hewan untuk mendapatkan diagnosis dan pengobatan yang tepat. Meskipun tidak ada obat spesifik untuk virus ini, perawatan suportif seperti pemberian cairan, antibiotik untuk infeksi sekunder, dan perawatan pernapasan dapat membantu mengurangi gejala.</li><li><strong>Perawatan suportif</strong>: Berikan cairan tambahan dan makanan yang mudah dicerna untuk mendukung pemulihan ayam. Pengelolaan pernapasan yang baik dan mengurangi stres juga dapat membantu ayam dalam pemulihan.</li><li><strong>Disinfeksi kandang dan peralatan</strong>: Setelah ayam yang terinfeksi dipisahkan, lakukan disinfeksi menyeluruh pada kandang dan peralatan untuk mencegah penyebaran virus lebih lanjut.</li><li><strong>Pemantauan ayam lainnya</strong>: Lakukan pemantauan secara berkala terhadap ayam lainnya untuk mendeteksi gejala lebih awal jika ada infeksi. Pemantauan yang cepat akan membantu mengurangi dampak penyebaran penyakit.</li></ul>', '67e8bcc4c4a01.jpg'),
(12, 'Mareks (Mareks Disease)', '<p>Mareks Disease adalah penyakit viral yang disebabkan oleh <i>Marek\'s Disease Virus</i> (MDV), virus yang termasuk dalam kelompok herpesvirus. Penyakit ini menyerang sistem saraf, organ internal, dan jaringan tubuh ayam, terutama yang berusia muda, sekitar 3 hingga 4 minggu. Mareks dapat menyebabkan tumor pada berbagai organ, kelumpuhan anggota tubuh, dan masalah pada sistem saraf, termasuk saraf spinal. Gejala klinis yang umum meliputi kelumpuhan pada kaki atau sayap, penurunan berat badan, kulit yang pucat, dan pupil mata yang menyempit. Pada kasus yang parah, penyakit ini bisa menyebabkan kematian mendadak. Penyakit Mareks menyebar melalui debu atau sel-sel yang terinfeksi dari kotoran ayam, serta melalui kontak langsung antar ayam. Virus ini sangat tahan lama di lingkungan dan dapat bertahan dalam bentuk infeksi pada ayam lainnya untuk waktu yang lama.</p><h5>Pencegahan:</h5><ul><li><strong>Vaksinasi</strong>: Vaksinasi adalah cara utama untuk mencegah penyakit Mareks pada ayam. Vaksin biasanya diberikan pada ayam sejak usia satu hari dan memberikan perlindungan yang sangat efektif terhadap virus ini. Vaksinasi harus dilakukan dengan hati-hati untuk memastikan kekebalan yang optimal pada ayam.</li><li><strong>Sanitasi yang baik</strong>: Menjaga kebersihan kandang, peralatan, dan lingkungan sangat penting dalam mencegah penyebaran virus. Membersihkan dan mendisinfeksi kandang secara rutin dapat mengurangi risiko infeksi.</li><li><strong>Pemisahan ayam yang sakit</strong>: Ayam yang terinfeksi dengan Mareks harus segera dipisahkan untuk mencegah penularan ke ayam lain. Mengisolasi ayam yang terinfeksi membantu mengurangi dampak penyebaran penyakit.</li><li><strong>Pengelolaan kualitas udara</strong>: Mareks dapat menyebar melalui debu dan partikel udara yang terkontaminasi. Oleh karena itu, kandang harus memiliki ventilasi yang baik untuk mengurangi konsentrasi virus dalam udara.</li><li><strong>Pemilihan bibit unggul</strong>: Pilih bibit ayam yang memiliki ketahanan terhadap penyakit Mareks, atau yang telah divaksinasi dengan baik. Pemilihan ayam yang tepat dapat mengurangi kemungkinan penularan penyakit di peternakan.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi ayam yang terinfeksi</strong>: Segera pisahkan ayam yang terinfeksi dengan penyakit Mareks untuk mencegah penyebaran lebih lanjut ke ayam sehat. Pada tahap lanjut, ayam yang terinfeksi mungkin mengalami kelumpuhan atau gangguan saraf, dan pemisahan sangat penting.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Segera hubungi dokter hewan jika ada ayam yang menunjukkan gejala penyakit Mareks. Diagnosis yang tepat dapat membantu dalam penanganan yang lebih efektif. Meskipun tidak ada pengobatan khusus untuk Mareks, pengobatan suportif seperti pemberian cairan dan perawatan lainnya dapat membantu.</li><li><strong>Disinfeksi kandang dan peralatan</strong>: Setelah penanganan ayam yang terinfeksi, lakukan disinfeksi menyeluruh pada kandang dan peralatan untuk mencegah penyebaran virus ke ayam lain.</li><li><strong>Pemantauan terhadap ayam lainnya</strong>: Lakukan pemantauan secara rutin terhadap ayam yang sehat untuk mendeteksi gejala lebih awal. Pemantauan dini akan membantu mencegah wabah besar di peternakan.</li></ul>', '67e8bcd494bff.jpg'),
(13, 'Produksi Telur (Egg Drop Syndrome 76/EDS 76)', '<p>Produksi Telur atau Egg Drop Syndrome 76 (EDS 76) adalah penyakit yang disebabkan oleh virus <i>Adenovirus</i> yang menginfeksi ayam dan unggas lainnya. Penyakit ini dikenal karena menyebabkan penurunan drastis dalam produksi telur. Ayam yang terinfeksi dengan virus EDS 76 sering kali menghasilkan telur dengan kulit yang tipis atau tanpa kulit sama sekali, serta telur yang cacat atau abnormal. Selain penurunan jumlah telur, gejala lain yang dapat terjadi pada ayam yang terinfeksi termasuk penurunan nafsu makan, lemas, dan penurunan kualitas kesehatan umum. Penyakit ini dapat menyebar dengan cepat melalui kotoran ayam yang terinfeksi, pakan, serta peralatan yang terkontaminasi. Meskipun EDS 76 jarang menyebabkan kematian langsung pada ayam, dampaknya pada produktivitas dapat sangat merugikan bagi peternakan unggas, terutama pada peternakan ayam petelur.</p><h5>Pencegahan:</h5><ul><li><strong>Vaksinasi</strong>: Vaksinasi terhadap virus EDS 76 dapat dilakukan untuk mencegah infeksi pada ayam. Vaksin biasanya diberikan pada ayam muda untuk membangun kekebalan terhadap penyakit ini, dan dapat mencegah penurunan drastis dalam produksi telur.</li><li><strong>Sanitasi yang baik</strong>: Menjaga kebersihan kandang, peralatan, dan lingkungan sangat penting dalam mencegah penyebaran virus EDS 76. Pengelolaan kotoran ayam yang baik serta desinfeksi rutin akan mengurangi risiko penyebaran penyakit.</li><li><strong>Karantina ayam baru</strong>: Ayam yang baru masuk ke peternakan sebaiknya dikarantina terlebih dahulu untuk memastikan mereka bebas dari infeksi EDS 76. Karantina membantu mencegah virus dibawa ke peternakan yang sehat.</li><li><strong>Pengelolaan pakan dan air yang baik</strong>: Pastikan pakan dan air yang diberikan kepada ayam terjaga kebersihannya dan bebas dari kontaminasi. Virus EDS 76 dapat menyebar melalui pakan yang terkontaminasi, jadi pengelolaan pakan yang baik sangat penting untuk mencegah penyebaran penyakit.</li><li><strong>Pemilihan bibit unggul</strong>: Pilih ayam dari strain yang telah terbukti bebas dari infeksi EDS 76 atau memiliki kekebalan terhadap penyakit ini untuk mengurangi risiko penyebaran virus di peternakan.</li></ul><h5>Saran (Jika Terkena):</h5><ul><li><strong>Isolasi ayam yang terinfeksi</strong>: Pisahkan ayam yang menunjukkan gejala EDS 76 seperti penurunan produksi telur dan telur cacat. Pengisolasian ayam yang terinfeksi membantu mencegah penyebaran virus ke ayam sehat.</li><li><strong>Konsultasi dengan dokter hewan</strong>: Jika ada penurunan produksi telur yang signifikan, segera hubungi dokter hewan untuk mendapatkan diagnosis yang tepat. Pengobatan yang tepat dapat membantu mengurangi dampak penyakit pada ayam dan meningkatkan pemulihan produksi telur.</li><li><strong>Perawatan suportif</strong>: Berikan pakan yang bergizi dan mudah dicerna untuk ayam yang terinfeksi guna mendukung pemulihan. Mengurangi stres pada ayam dan memastikan mereka mendapatkan cukup air juga dapat membantu pemulihan kesehatan ayam.</li><li><strong>Disinfeksi kandang dan peralatan</strong>: Lakukan disinfeksi menyeluruh pada kandang dan semua peralatan yang digunakan untuk mencegah penyebaran virus lebih lanjut.</li><li><strong>Pemantauan produksi telur</strong>: Lakukan pemantauan terhadap produksi telur secara rutin untuk mendeteksi adanya penurunan produksi telur atau telur yang abnormal. Pemantauan yang cepat akan membantu dalam penanganan dini terhadap penyebaran penyakit ini.</li></ul>', '67e8bce4bea6e.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `histories`
--

CREATE TABLE `histories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `consultation_id` int(11) DEFAULT NULL,
  `disease_id` int(11) DEFAULT NULL,
  `accuracy` float DEFAULT NULL
);

--
-- Dumping data untuk tabel `histories`
--

INSERT INTO `histories` (`id`, `user_id`, `consultation_id`, `disease_id`, `accuracy`) VALUES
(1, 2, 1, 2, 1),
(2, 2, 1, 10, 1),
(3, 2, 1, 8, 0.36),
(4, 2, 1, 11, 0.36),
(5, 2, 1, 4, 0.12),
(6, 2, 1, 5, 0),
(7, 2, 1, 7, 0),
(8, 2, 1, 9, 0),
(9, 2, 1, 13, 0),
(10, 2, 1, 12, 0),
(11, 2, 2, 5, 0.24),
(12, 2, 2, 2, 0.12),
(13, 2, 2, 4, 0.12),
(14, 2, 2, 7, 0.12),
(15, 2, 2, 9, 0.12),
(16, 2, 2, 10, 0.12),
(17, 2, 2, 12, 0.12),
(18, 2, 3, 2, 0.9),
(19, 2, 3, 6, 0.84),
(20, 2, 3, 9, 0.68),
(21, 2, 3, 3, 0.4),
(22, 2, 3, 5, 0.4),
(23, 2, 3, 4, 0.36),
(24, 2, 3, 7, 0.2),
(25, 2, 3, 10, 0.2),
(26, 2, 3, 12, 0.2),
(27, 2, 4, 9, 1),
(28, 2, 4, 10, 1),
(29, 2, 4, 11, 1),
(30, 2, 4, 12, 1),
(31, 2, 5, 7, 0.93),
(32, 2, 5, 9, 0.92),
(33, 2, 5, 10, 0.8),
(34, 2, 5, 6, 0.79),
(35, 2, 5, 2, 0.6),
(36, 2, 5, 11, 0.52),
(37, 2, 5, 4, 0.46),
(38, 2, 5, 12, 0.4),
(39, 2, 5, 3, 0.26),
(40, 2, 5, 1, 0.16),
(41, 2, 5, 5, 0),
(42, 2, 5, 8, 0),
(43, 2, 5, 13, 0),
(44, 41, 6, 9, 0.84),
(45, 41, 6, 5, 0.4),
(46, 41, 6, 2, 0.2),
(47, 41, 6, 4, 0.2),
(48, 41, 6, 7, 0.2),
(49, 41, 6, 10, 0.2),
(50, 41, 6, 12, 0.2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `knowledge_bases`
--

CREATE TABLE `knowledge_bases` (
  `id` int(11) NOT NULL,
  `disease_id` int(11) DEFAULT NULL,
  `symptom_id` int(11) DEFAULT NULL,
  `mb_value` float DEFAULT NULL,
  `md_value` float DEFAULT NULL
);

--
-- Dumping data untuk tabel `knowledge_bases`
--

INSERT INTO `knowledge_bases` (`id`, `disease_id`, `symptom_id`, `mb_value`, `md_value`) VALUES
(1, 1, 12, 0.8, 0),
(2, 1, 23, 0.6, 0.2),
(3, 1, 24, 1, 0),
(4, 2, 1, 0.4, 0.2),
(5, 2, 3, 1, 0.2),
(6, 2, 15, 1, 0),
(7, 2, 21, 1, 0),
(8, 3, 13, 0.6, 0.2),
(9, 3, 14, 1, 0),
(10, 3, 19, 0.6, 0.2),
(11, 3, 25, 1, 0),
(12, 4, 1, 0.4, 0.2),
(13, 4, 2, 0.4, 0.2),
(14, 4, 4, 0.8, 0.2),
(15, 4, 10, 0.4, 0.2),
(16, 4, 11, 0.8, 0),
(17, 4, 20, 0.8, 0.2),
(18, 5, 1, 0.6, 0.2),
(19, 5, 16, 1, 0.2),
(20, 5, 23, 0.8, 0.2),
(21, 5, 28, 1, 0),
(22, 6, 6, 1, 0.2),
(23, 6, 9, 0.8, 0.2),
(24, 6, 10, 0.8, 0.2),
(25, 6, 30, 1, 0),
(26, 6, 31, 0.8, 0.2),
(27, 7, 1, 0.4, 0.2),
(28, 7, 32, 1, 0),
(29, 7, 38, 1, 0),
(30, 7, 39, 1, 0.2),
(31, 8, 2, 0.8, 0.2),
(32, 8, 18, 0.8, 0),
(33, 8, 29, 1, 0),
(34, 9, 1, 0.4, 0.2),
(35, 9, 5, 1, 0),
(36, 13, 34, 0.6, 0.2),
(37, 9, 9, 0.8, 0.2),
(38, 9, 40, 1, 0),
(39, 10, 1, 0.4, 0.2),
(40, 10, 2, 0.8, 0.2),
(41, 10, 22, 1, 0),
(42, 10, 41, 1, 0),
(43, 11, 2, 0.8, 0.2),
(44, 11, 36, 1, 0.2),
(45, 11, 37, 1, 0),
(46, 11, 42, 1, 0),
(47, 12, 1, 0.4, 0.2),
(48, 12, 17, 0.8, 0.2),
(49, 12, 35, 0.8, 0),
(50, 12, 43, 1, 0),
(51, 13, 7, 0.8, 0.2),
(52, 13, 8, 1, 0),
(53, 13, 26, 0.8, 0.2),
(54, 13, 27, 0.8, 0.2),
(55, 13, 33, 0.4, 0.2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `message_date` datetime DEFAULT NULL,
  `status` enum('Belum Dibaca','Dibaca') NOT NULL
);

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `email`, `fullname`, `subject`, `message`, `message_date`, `status`) VALUES
(1, 'budi.setiawan@gmail.com', 'Budi Setiawan', 'Pengembangan Fitur Akurasi', 'Ingin menyarankan peningkatan akurasi hasil analisis dalam sistem pakar ini. Mohon pertimbangkan fitur tambahan untuk meningkatkan kinerja.', '2025-03-29 23:44:26', 'Dibaca'),
(2, 'maria.smith@example.com', 'Maria Smith', 'Fitur Pengembangan User Interface', 'Saya rasa antarmuka bisa lebih diperbaiki untuk meningkatkan kenyamanan pengguna. Mohon pertimbangkan perubahan desain yang lebih modern.', '2025-03-30 11:58:06', 'Dibaca'),
(3, 'budi.santoso@example.com', 'Budi Santoso', 'Integrasi dengan Sistem Lain', 'Sistem ini sangat membantu, namun akan lebih baik jika bisa diintegrasikan dengan sistem lain yang kami gunakan.', '2025-03-30 11:58:49', 'Dibaca'),
(4, 'rina.pratama@example.com', 'Rina Pratama', 'Penambahan Fitur Analisis Data', 'Menambahkan fitur untuk menganalisis data lebih dalam akan sangat bermanfaat. Mohon dipertimbangkan dalam pembaruan mendatang.', '2025-03-30 11:59:37', 'Dibaca'),
(5, 'andi.wijaya@example.com', 'Andi Wijaya', 'Perbaikan Kecepatan Sistem', 'Kecepatan analisis terkadang agak lambat. Saya berharap ada peningkatan performa untuk meningkatkan efisiensi sistem.', '2025-03-30 12:00:17', 'Dibaca'),
(6, 'diana.kusuma@example.com', 'Diana Kusuma', 'Pembaruan Algoritma Certainty Factor', 'Mengoptimalkan algoritma certainty factor akan memberikan hasil yang lebih akurat. Mohon pertimbangkan untuk pembaruan algoritma di versi berikutnya.', '2025-03-30 12:01:03', 'Dibaca'),
(7, 'ahmad.fajar@example.com', 'Ahmad Fajar', 'Pengembangan Laporan Hasil', 'Fitur laporan hasil analisis bisa lebih diperjelas dan diberi detail tambahan untuk memudahkan pemahaman pengguna.', '2025-03-30 12:03:15', 'Dibaca'),
(8, 'gilang.raka@gmail.com', 'Gilang Raka', 'Grafik Untuk Mempermudah Analisis', 'Tambahkan fitur grafik seperti \"Area Chart\", \"Pie Chart\", atau \"Bar Chart\", untuk meningkatkan variasi UI yang lebih modern.', '2025-03-30 12:39:31', 'Dibaca');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `consultation_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `testimonial_id` int(11) DEFAULT NULL,
  `status` enum('Dilihat','Belum Dilihat') NOT NULL
);

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `consultation_id`, `message_id`, `testimonial_id`, `status`) VALUES
(1, 1, NULL, NULL, 'Dilihat'),
(2, NULL, NULL, 1, 'Dilihat'),
(3, NULL, 1, NULL, 'Dilihat'),
(4, NULL, NULL, 2, 'Dilihat'),
(5, NULL, NULL, 3, 'Dilihat'),
(6, NULL, NULL, 4, 'Dilihat'),
(7, NULL, NULL, 5, 'Dilihat'),
(8, NULL, NULL, 6, 'Dilihat'),
(9, NULL, NULL, 7, 'Dilihat'),
(10, NULL, NULL, 8, 'Dilihat'),
(11, NULL, NULL, 9, 'Dilihat'),
(12, NULL, NULL, 10, 'Dilihat'),
(13, NULL, NULL, 11, 'Dilihat'),
(14, NULL, NULL, 12, 'Dilihat'),
(15, 2, NULL, NULL, 'Dilihat'),
(16, NULL, 2, NULL, 'Dilihat'),
(17, NULL, 3, NULL, 'Dilihat'),
(18, NULL, 4, NULL, 'Dilihat'),
(19, NULL, 5, NULL, 'Dilihat'),
(20, NULL, 6, NULL, 'Dilihat'),
(21, NULL, 7, NULL, 'Dilihat'),
(22, 3, NULL, NULL, 'Dilihat'),
(23, 4, NULL, NULL, 'Dilihat'),
(24, 5, NULL, NULL, 'Dilihat'),
(25, 6, NULL, NULL, 'Dilihat'),
(26, NULL, 8, NULL, 'Dilihat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `site_contacts`
--

CREATE TABLE `site_contacts` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
);

--
-- Dumping data untuk tabel `site_contacts`
--

INSERT INTO `site_contacts` (`id`, `owner`, `email`, `phone`, `instagram`, `facebook`, `twitter`, `tiktok`, `youtube`, `address`) VALUES
(1, 'Developer', 'developer@gmail.com', '+6281234567890', 'https://www.instagram.com', 'https://www.facebook.com', 'https://www.x.com', 'https://www.tiktok.com', 'https://www.youtube.com', 'Jalan Merdeka No. 10, Jakarta, DKI Jakarta 10110');

-- --------------------------------------------------------

--
-- Struktur dari tabel `symptoms`
--

CREATE TABLE `symptoms` (
  `id` int(11) NOT NULL,
  `symptom_name` varchar(255) DEFAULT NULL
);

--
-- Dumping data untuk tabel `symptoms`
--

INSERT INTO `symptoms` (`id`, `symptom_name`) VALUES
(1, 'Nafsu makan berkurang'),
(2, 'Nafas sesak / megap-megap'),
(3, 'Nafas ngorok basah'),
(4, 'Bersin-bersin'),
(5, 'Batuk'),
(6, 'Kerabang telur pucat'),
(7, 'Bulu kusam dan berkerut'),
(8, 'Diare'),
(9, 'Produksi telur menurun'),
(10, 'Kedinginan'),
(11, 'Tampak lesu'),
(12, 'Mencret kehijau-hijauan'),
(13, 'Mencret keputih-putihan'),
(14, 'Muka pucat'),
(15, 'Nampak membiru'),
(16, 'Pembengkakan pial'),
(17, 'Jengger pucat'),
(18, 'Kaki dan sayap lumpuh'),
(19, 'Keluar cairan dari mata dan hidung'),
(20, 'Kepala bengkak'),
(21, 'Kepala terputar'),
(22, 'Pembengkakan dari sinus dan mata'),
(23, 'Perut membesar'),
(24, 'Sayap menggantung'),
(25, 'Terdapat kotoran putih menempel disekitar anus'),
(26, 'Mati secara mendadak'),
(27, 'Kerabang telur kasar'),
(28, 'Putih Telur Encer'),
(29, 'Kotoran kuning kehijauan'),
(30, 'Pembengkakan daerah fasial dan sekitar mata'),
(31, 'Kotoran atau feses berdarah'),
(32, 'Bergerombol di sudut kandang'),
(33, 'Mematuk daerah kloaka'),
(34, 'Telur lebih kecil'),
(35, 'Kelumpuhan pada tembolok'),
(36, 'Bernafas dengan mulut sambil menjulurkan leher'),
(37, 'Batuk berdarah'),
(38, 'Tidur paruhnya diletakkan dilantai'),
(39, 'Duduk dengan sikap membungkuk'),
(40, 'Kelihatan mengantuk dengan bulu berdiri'),
(41, 'Badan kurus'),
(42, 'Terdapat lendir bercampur darah pada rongga mulut'),
(43, 'Kaki pincang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `review_date` datetime DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` text DEFAULT NULL
);

--
-- Dumping data untuk tabel `testimonials`
--

INSERT INTO `testimonials` (`id`, `user_id`, `review_date`, `rating`, `review`) VALUES
(1, 2, '2025-03-29 23:38:43', 5, 'Sistem pakar ini sangat membantu dalam pengambilan keputusan. Hasil yang diberikan sangat akurat dan relevan, membuat proses analisis lebih efisien dan efektif.'),
(2, 10, '2025-03-29 23:38:43', 5, 'Dengan menggunakan sistem pakar ini, keputusan menjadi lebih terinformasi dan tepat. Hasil analisis berdasarkan data yang jelas, memberikan kepercayaan lebih dalam membuat keputusan.'),
(3, 11, '2025-03-29 23:38:43', 5, 'Sangat puas dengan sistem pakar ini! Memberikan hasil yang sangat akurat dan relevan, serta sangat membantu dalam menyelesaikan masalah dengan cara yang lebih efisien.'),
(4, 12, '2025-03-29 23:38:43', 5, 'Sistem pakar ini memudahkan dalam menganalisis masalah dan memberikan solusi tepat. Proses pengambilan keputusan menjadi lebih cepat, efisien, dan berbasis data yang akurat.'),
(5, 13, '2025-03-29 23:38:43', 5, 'Penggunaan sistem pakar ini sangat menguntungkan. Keputusan yang diambil menjadi lebih tepat dan berbasis data, memberikan hasil yang cepat dan sesuai dengan kebutuhan.'),
(6, 14, '2025-03-29 23:38:43', 5, 'Sistem ini sangat membantu dalam pengambilan keputusan yang lebih baik. Akurasi hasil yang diberikan sangat tinggi dan relevansi solusinya sesuai dengan kebutuhan kami.'),
(7, 15, '2025-03-29 23:38:43', 5, 'Sistem pakar ini luar biasa, sangat berguna dalam menganalisis data dan memberikan solusi tepat. Membantu kami membuat keputusan lebih cepat dan lebih akurat.'),
(8, 16, '2025-03-29 23:38:43', 5, 'Sangat puas dengan hasil yang diberikan. Sistem pakar ini memberikan rekomendasi yang sangat akurat, efisien, dan memudahkan dalam proses pengambilan keputusan penting.'),
(9, 17, '2025-03-29 23:38:43', 4, 'Sistem pakar ini cukup membantu, meski terkadang hasil yang diberikan kurang sesuai dengan ekspektasi. Namun, cukup efisien dalam memberi solusi dan memudahkan analisis.'),
(10, 18, '2025-03-29 23:38:43', 4, 'Secara keseluruhan, sistem pakar ini cukup bagus. Beberapa kali hasilnya kurang akurat, tetapi sangat membantu dalam mempercepat pengambilan keputusan dan menghemat waktu.'),
(11, 19, '2025-03-29 23:38:43', 3, 'Sistem pakar ini memudahkan analisis, namun terkadang hasil yang diberikan tidak sepenuhnya akurat. Perlu beberapa peningkatan untuk hasil yang lebih memuaskan.'),
(12, 20, '2025-03-29 23:38:43', 3, 'Sistem ini memberikan gambaran yang baik, meskipun hasilnya kadang tidak sepenuhnya tepat. Namun, masih cukup membantu dalam pengambilan keputusan yang lebih cepat.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `role` enum('Admin','Pakar','Pengguna') NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL,
  `phone` varchar(15) DEFAULT NULL
);

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `fullname`, `role`, `status`, `phone`) VALUES
(1, 'admin@gmail.com', '$2y$10$Zao1FouUyeDZtWIUWLyHQu5BfWM6pl8vDW9UBYvt3EscjnOQcg/M2', 'Jhon Wick', 'Admin', 'Aktif', '+6281234567890'),
(2, 'user@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Keyla Shafira', 'Pengguna', 'Aktif', '+6281234567890'),
(3, 'budi.santoso@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Budi Santoso', 'Admin', 'Aktif', '+6281234567890'),
(4, 'siti.aminah@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Siti Aminah', 'Admin', 'Aktif', '+6281234567891'),
(5, 'andi.pratama@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Andi Pratama', 'Admin', 'Aktif', '+6281234567892'),
(6, 'diana.putri@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Diana Putri', 'Admin', 'Aktif', '+6281234567893'),
(7, 'rini.sulastri@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Rini Sulastri', 'Pakar', 'Aktif', '+6281234567894'),
(8, 'joko.santoso@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Joko Santoso', 'Pakar', 'Aktif', '+6281234567895'),
(9, 'maya.rahmawati@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Maya Rahmawati', 'Pakar', 'Aktif', '+6281234567896'),
(10, 'tono.haryanto@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Tono Haryanto', 'Pakar', 'Aktif', '+6281234567897'),
(11, 'eka.susanti@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Eka Susanti', 'Pengguna', 'Aktif', '+6281234567898'),
(12, 'farah.adelia@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Farah Adelia', 'Pengguna', 'Aktif', '+6281234567899'),
(13, 'bagus.saputra@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Bagus Saputra', 'Pengguna', 'Aktif', '+6281234567900'),
(14, 'citra.pertiwi@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Citra Pertiwi', 'Pengguna', 'Aktif', '+6281234567901'),
(15, 'hadi.purwanto@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Hadi Purwanto', 'Pengguna', 'Aktif', '+6281234567902'),
(16, 'lina.novita@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Lina Novita', 'Pengguna', 'Aktif', '+6281234567903'),
(17, 'miko.wahyudi@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Miko Wahyudi', 'Pengguna', 'Aktif', '+6281234567904'),
(18, 'putri.kartika@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Putri Kartika', 'Pengguna', 'Aktif', '+6281234567905'),
(19, 'siti.sumarni@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Siti Sumarni', 'Pengguna', 'Aktif', '+6281234567906'),
(20, 'fahri.ramadhan@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Fahri Ramadhan', 'Pengguna', 'Aktif', '+6281234567907'),
(21, 'ayu.puspita@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Ayu Puspita', 'Pengguna', 'Aktif', '+6281234567908'),
(22, 'alvin.hadi@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Alvin Hadi', 'Pengguna', 'Aktif', '+6281234567909'),
(23, 'ira.maulani@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Ira Maulani', 'Pengguna', 'Aktif', '+6281234567910'),
(24, 'rena.ayu@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Rena Ayu', 'Pengguna', 'Aktif', '+6281234567911'),
(25, 'dwi.kurnia@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Dwi Kurnia', 'Pengguna', 'Aktif', '+6281234567912'),
(26, 'fira.andriana@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Fira Andriana', 'Pengguna', 'Aktif', '+6281234567913'),
(27, 'dedi.kurniawan@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Dedi Kurniawan', 'Pengguna', 'Aktif', '+6281234567914'),
(28, 'alina.rahyu@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Alina Rahayu', 'Pengguna', 'Aktif', '+6281234567915'),
(29, 'lestari.yanti@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Lestari Yanti', 'Pengguna', 'Aktif', '+6281234567916'),
(30, 'rudi.wira@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Rudi Wira', 'Pakar', 'Aktif', '+6281234567917'),
(31, 'fahri.sulaiman@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Fahri Sulaiman', 'Pengguna', 'Aktif', '+6281234567918'),
(32, 'zizi.aulia@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Zizi Aulia', 'Pengguna', 'Aktif', '+6281234567919'),
(33, 'ika.putri@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Ika Putri', 'Pengguna', 'Aktif', '+6281234567920'),
(34, 'maya.hidayah@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Maya Hidayah', 'Pengguna', 'Aktif', '+6281234567921'),
(35, 'rendy.kusuma@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Rendy Kusuma', 'Pengguna', 'Aktif', '+6281234567922'),
(36, 'vina.lestari@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Vina Lestari', 'Pengguna', 'Aktif', '+6281234567923'),
(37, 'farhan.alfarizi@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Farhan Alfarizi', 'Pengguna', 'Aktif', '+6281234567924'),
(38, 'budi.hermawan@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Budi Hermawan', 'Pengguna', 'Aktif', '+6281234567925'),
(39, 'indra.kurniawan@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Indra Kurniawan', 'Pengguna', 'Aktif', '+6281234567926'),
(40, 'agus.pratama@gmail.com', '$2y$10$OirgpJqHenPnyntQxgivKu4K/mBouuhjnBESXU5FYcJNNVaWVNjnG', 'Agus Pratama', 'Pengguna', 'Aktif', '+6281234567927'),
(41, 'gilang.raka@gmail.com', '$2y$10$t7U87utH7OZdvRLW2UEvRel4WV9PakVMIiyf1X/Z63vvmA3GzBxku', 'Gilang Raka', 'Pengguna', 'Aktif', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`consultation_id`,`disease_id`),
  ADD KEY `consultation_id` (`consultation_id`),
  ADD KEY `disease_id` (`disease_id`);

--
-- Indeks untuk tabel `knowledge_bases`
--
ALTER TABLE `knowledge_bases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disease_id` (`disease_id`,`symptom_id`),
  ADD KEY `symptom_id` (`symptom_id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consultation_id` (`consultation_id`,`message_id`,`testimonial_id`),
  ADD KEY `testimonial_id` (`testimonial_id`),
  ADD KEY `message_id` (`message_id`);

--
-- Indeks untuk tabel `site_contacts`
--
ALTER TABLE `site_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `consultations`
--
ALTER TABLE `consultations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `knowledge_bases`
--
ALTER TABLE `knowledge_bases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `site_contacts`
--
ALTER TABLE `site_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
