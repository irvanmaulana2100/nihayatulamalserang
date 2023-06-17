-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2023 pada 18.31
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `keterangan`, `created_at`, `updated_at`) VALUES
(6, 'galeri1686331428.jpg', 'Pembangunan Gedung Baru', '2023-06-09 17:23:48', NULL),
(7, 'galeri1686331474.jpeg', 'Akhirussanah PP./MTs Nihayatul Amal Serang 2021/22', '2023-06-09 17:24:34', NULL),
(8, 'galeri1686331504.jpeg', 'Pimpinan, Pengasuh, Dewan Guru PP.', '2023-06-09 17:25:04', NULL),
(9, 'galeri1686332949.jpeg', 'Drum Band Nihayatul Amal Serang', '2023-06-09 17:49:09', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `judul`, `keterangan`, `gambar`, `created_at`, `updated_at`, `created_by`) VALUES
(4, 'Persyaratan PPDB Pesantren, MTs Dan MA', '<p>Syarat Pendaftaran :</p>\r\n<p>1. Mengisi Formulir Pendaftaran di Panitia PPDB</p>\r\n<p>2. Fotokopi STTB/Ijazah Legalisir 3 Lembar</p>\r\n<p>3. Fotokopi SKHUN Legalisir 3 Lembar</p>\r\n<p>4. Pas Foto 2x3, 3x4, 4x6 3 Lembar</p>\r\n<p>5. NISN untuk Lulusan SD/MI dan SMP/MTs</p>\r\n<p>6. Fotokopi KK, KTP Kedua Orang Tua dan Akte Kelahiran 3 Lembar</p>\r\n<p>7. Surat Keterangan Sehat dari Dokter</p>\r\n<p>8. Mengisi Surat Pernyataan Sanggup Mentaati Peraturan/Tata Tertib</p>', 'informasi1686331332.png', '2023-06-09 17:22:12', NULL, 2),
(5, 'Ekstrakurikuler Nihayatul Amal Serang', '<p>- Ceramah Agama</p>\r\n<p>- Hadhroh</p>\r\n<p>- Marawis</p>\r\n<p>- Pramuka</p>\r\n<p>- Drum Band</p>', 'informasi1686332886.jpeg', '2023-06-09 17:48:06', NULL, 2),
(6, 'BLKK Nurul Islam Assayrony', '<p>Update terbaru mengenai informasi BLKK Nurul Islam Assayrony.</p>', 'informasi1686333511.jpeg', '2023-06-09 17:58:31', NULL, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `tentang_sekolah` text NOT NULL,
  `foto_sekolah` varchar(50) NOT NULL,
  `google_maps` text NOT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `foto_kepsek` varchar(50) NOT NULL,
  `sambutan_kepsek` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `email`, `telepon`, `alamat`, `logo`, `favicon`, `tentang_sekolah`, `foto_sekolah`, `google_maps`, `nama_kepsek`, `foto_kepsek`, `sambutan_kepsek`, `created_at`, `updated_at`) VALUES
(1, 'Nihayatul Amal Serang', 'nihayatulamalserang@gmail.com', '0812-8060-1400', 'Kp. Serang RT 01/RW 01 Desa Serang, Kec. Cikarang Selatan, Kab. Bekasi', 'logo1686330909.jpeg', 'favicon1686330909.jpeg', '<p style=\"text-align: center;\"><strong>PRINSIP</strong></p>\r\n<p style=\"text-align: left;\">- ISLAM AGAMA KAMI</p>\r\n<p style=\"text-align: left;\">- UKHUWAH ISLAMIYAH IKATAN KAMI</p>\r\n<p style=\"text-align: left;\">- ILMU TAQWA BEKAL KAMI</p>\r\n<p style=\"text-align: left;\">- IKHLAS LANDASAN KAMI</p>\r\n<p style=\"text-align: left;\">- SABAR KEKUATAN KAMI</p>\r\n<p style=\"text-align: left;\">- ISTIQOMAH PEMBERHENTIAN KAMI</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><strong>VISI</strong></p>\r\n<p style=\"text-align: center;\">Menciptakan generasi-generasi Islam dan bangsa yang unggul dalam ilmu dan berprestasi, santun dalam berakhlak, amanah dan berkarakter.</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><strong>MISI</strong></p>\r\n<p style=\"text-align: left;\">- Mewujudkan perilaku santri, siswa/i yang dilandasi nilai-nilai islami</p>\r\n<p style=\"text-align: left;\">- Menanamkan, menumbuhkan dan menyebarkan tauladan dalam kehidupan bermasyarakat.</p>\r\n<p style=\"text-align: left;\">- Mencetak ulamaul alimin, amilin, muttaqin dan mustaqimin dalam ibadah, kehidupan dan perjuangan agama.</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><strong>MOTTO</strong></p>\r\n<p style=\"text-align: center;\">Dengan generasi-generasi islam dan bangsa yang berilmu, bertaqwa cerminan bangsa yang maju, selamat dan bahagia.</p>', 'sekolah1686331862.png', 'https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3965.255288604576!2d107.11719921476985!3d-6.360995895396978!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zNsKwMjEnMzkuNiJTIDEwN8KwMDcnMDkuOCJF!5e0!3m2!1sid!2sid!4v1686330925346!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', 'KH. Masduqi', 'kepsek1686331881.png', '<p style=\"text-align: justify;\">Assalamualaikum Wr. Wb.,</p>\r\n<p style=\"text-align: justify;\">Pondok Pesantren, Madrasah Tsanawiyyah (MTs) dan Madrasah Aliyah (MA) Nihayatul Amal Serang berdiri diatas tanah wakah pesantren seluas kurang lebih 7500m<sup>2</sup>. Adapun kegiatan belajar mengajarnya merupakan gabungan dari kurikulum pondok pesantren salaf/klasik (kitab-kitab kuning) dan sekolah umum, dengan tujuan dan harapan semua santri dan siswa/i mampu memahami, menguasai, mendalami dan mengamalkan ilmu-ilmu yang dibutuhkan guna bekal dunia dan akhirat. Aamiin yaa Robbal Alamiin.</p>\r\n<p style=\"text-align: justify;\">Ucapan terimakasih yang setinggi-tingginya atas kepercayaan, dukungan partisipasi dan peran serta semua pihak kepada lembaga pendidikan islam yang kita cintai ini demi sama-sama kita berjuang berkontribusi untuk mempersiapkan, mengarahkan, memberikan peluang dan kesempatan serta memfasilitasi generasi-generasi islam dan bangsa kita dalam meraih dan menggapai tujuan hidup yang mulia, sukses, selamat, bahagia dan barokah dunia akhirat.</p>\r\n<p style=\"text-align: justify;\">Jazakumullahu Ahsanal Jazaa.</p>\r\n<p style=\"text-align: justify;\">Wassalamualaikum Wr. Wb.</p>', '2021-08-14 15:24:49', '2023-06-10 00:49:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('Super Admin','Admin') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin', '2021-07-17 06:25:30', '2023-06-10 00:42:59'),
(3, 'Irvan', 'irvan', '81dc9bdb52d04dc20036dbd8313ed055', 'Super Admin', '2023-06-09 17:42:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
