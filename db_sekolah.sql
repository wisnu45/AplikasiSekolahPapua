-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 27 Agu 2022 pada 11.44
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

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
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategoriberita_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `judul`, `author`, `tanggal`, `isi`, `foto`, `kategoriberita_id`, `created_at`, `updated_at`) VALUES
(1, 'H.U.T RI ke-77', 'smandel', '2022-08-22', 'Partisipasi SMADEL-TIKEP pada lomba gerak jalan yang diadakan PGRI Kecamatan Oba Utara dalam rangka Semarak HUT RI KE-77 tahun 2022,\r\n#HUT RI KE-77\r\n#PULIH\r\n#LEBIH CEPAT\r\n#BANGKIT \r\n#LEBIH KUAT', 'image_berita/9vd62P6KhBTAqUoo2iRz99viTalKrd7bbrJ1slhg.jpg', 1, '2022-08-22 02:35:58', '2022-08-22 02:35:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_siswa`
--

CREATE TABLE `calon_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pcs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `panitia_id` bigint(20) UNSIGNED NOT NULL DEFAULT '2',
  `nama_siswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_daftar` date NOT NULL,
  `tahun_ajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_raport` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `calon_siswa`
--

INSERT INTO `calon_siswa` (`id`, `kode_pcs`, `user_id`, `jurusan_id`, `panitia_id`, `nama_siswa`, `asal_sekolah`, `tempat_lahir`, `tgl_lahir`, `agama`, `jk`, `tgl_daftar`, `tahun_ajaran`, `file_raport`, `no_tlp`, `email`, `alamat`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PCS-0001', 4, 1, 2, 'Muhammad H Djamaludin', 'SMP N 11 TIKEP', 'Sofifi', '1999-12-31', 'Islam', 'Laki-laki', '2022-08-04', '2021/2022', 'image_pendaftaran/B50txp4PU85Nn8psboeIroGy5blZHQnV9AMMlbBw.png', 82398712753, 'amadnare1004@gmail.com', 'jln. bimoli, desa oba kec. oba utara', 'Di seleksi', '2022-08-04 03:50:26', '2022-08-04 03:51:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_ajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kuota` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `tahun_ajaran`, `nama`, `kuota`, `created_at`, `updated_at`) VALUES
(1, '2021/2022', 'IPA', 50, '2022-08-04 00:44:42', '2022-08-04 00:44:42'),
(2, '2021/2022', 'IPS', 50, '2022-08-04 00:45:04', '2022-08-04 00:45:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoriberita`
--

CREATE TABLE `kategoriberita` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoriberita`
--

INSERT INTO `kategoriberita` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'H.U.T RI ke-17', '2022-08-22 02:31:43', '2022-08-22 02:31:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `komentar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_04_19_152215_create_berita_table', 1),
(5, '2022_04_20_140300_create_jurusan_table', 1),
(6, '2022_04_22_134914_create_kontak_table', 1),
(7, '2022_04_25_152735_create_panitia_table', 1),
(8, '2022_04_29_181638_create_galeri_table', 1),
(9, '2022_05_03_062420_create_kategoriberita_table', 1),
(10, '2022_06_29_014651_create_calon_siswa_table', 1),
(11, '2022_07_05_071735_create_pengumuman_table', 1),
(12, '2022_07_12_073340_create_registrasi_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `panitia`
--

CREATE TABLE `panitia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pgn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calon_siswa_id` bigint(20) UNSIGNED NOT NULL,
  `judul_pengumuman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `kode_pgn`, `calon_siswa_id`, `judul_pengumuman`, `deskripsi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PGN-0001', 1, 'PSB', 'Hasil Seleksi', 'Di Terima', '2022-08-04 03:51:53', '2022-08-04 03:51:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `registrasi`
--

CREATE TABLE `registrasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_rus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calon_siswa_id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_seri_ijazah` bigint(20) NOT NULL,
  `file_skhun` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_ortu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_wali` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_wali` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinggal_bersama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_kecematan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_kabupaten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` bigint(20) NOT NULL,
  `rw` bigint(20) NOT NULL,
  `golongan_darah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_registrasi` date NOT NULL,
  `jmlh_saudara_kandung` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `registrasi`
--

INSERT INTO `registrasi` (`id`, `kode_rus`, `calon_siswa_id`, `nis`, `no_seri_ijazah`, `file_skhun`, `nama_ayah`, `pekerjaan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `alamat_ortu`, `nama_wali`, `alamat_wali`, `tinggal_bersama`, `asal_kelurahan`, `asal_kecematan`, `asal_kabupaten`, `asal_provinsi`, `rt`, `rw`, `golongan_darah`, `tgl_registrasi`, `jmlh_saudara_kandung`, `created_at`, `updated_at`) VALUES
(1, 'RUS-0001', 4, 'NIS-0001', 32432432, 'image_registrasi/hT3x7MUkpn37ml4tXT40kMTwudCL98usWkkqV2Dk.png', 'jems', 'pengusaha', 'amelia', 'pengusaha', 'desa ampera', 'yongki', 'ampera', 'OrangTua', 'desa oba', 'oba utara', 'Tidore Kepulauan', 'Maluku Utara', 2, 2, 'O', '2022-08-04', 3, '2022-08-04 03:55:54', '2022-08-04 03:55:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `jk`, `no_tlp`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Laki-laki', 85236135592, 'admin_smandel@gmail.com', NULL, '$2y$10$Qv6JKPWX.lmCxA/fYjasHeDx0VgQc8NutsnTocIsoPJSXFesoPPtG', 'admin', NULL, NULL, NULL),
(2, 'panitia', 'Laki-laki', 85236135592, 'panitia_PSB_smandel@gmail.com', NULL, '$2y$10$M4Cv3qq.pDworZg6C25dwelKFvECpwFWffgWbTrslxWFi1YlL4ZEG', 'panitia', NULL, NULL, NULL),
(3, 'siswa', 'Laki-laki', 85236135592, 'siswa@gmail.com', NULL, '$2y$10$po//t3a1hObqVUZOWcHx8uASvv6bTzaJVMH3XJ821lhtKE5Pk9BwS', 'siswa', NULL, NULL, NULL),
(4, 'm djamaludin', 'Laki-laki', 82398712753, 'amadnare1004@gmail.com', NULL, '$2y$10$Yftexd5zdwbrCeDMlRa9bevYnwtKbYP.Geum10VBCYPS/0U5blnVm', 'siswa', NULL, '2022-08-04 03:44:56', '2022-08-04 03:44:56'),
(5, 'm djmaludin', 'Laki-laki', 82398712753, 'mdjamaludin1004@gmail.com', NULL, '$2y$10$lJsipKbYytVJwvASkgBHsOGI76MS1Tv1GKS9xGryoXzk55mfiyAV.', 'admin', NULL, '2022-08-22 01:47:31', '2022-08-22 01:47:31'),
(6, 'panitia2', 'Perempuan', 82398712765, 'panitia@gmail.com', NULL, '$2y$10$uT8S1dcijA.LN.n90FzXHeTTQtfu2Qz7.61hmn.g17TWt.C3ceLoq', 'panitia', NULL, '2022-08-22 01:49:12', '2022-08-22 01:49:12');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `calon_siswa`
--
ALTER TABLE `calon_siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calon_siswa_user_id_unique` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoriberita`
--
ALTER TABLE `kategoriberita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `panitia`
--
ALTER TABLE `panitia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `panitia_email_unique` (`email`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registrasi_calon_siswa_id_unique` (`calon_siswa_id`);

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
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `calon_siswa`
--
ALTER TABLE `calon_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategoriberita`
--
ALTER TABLE `kategoriberita`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `panitia`
--
ALTER TABLE `panitia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `registrasi`
--
ALTER TABLE `registrasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
