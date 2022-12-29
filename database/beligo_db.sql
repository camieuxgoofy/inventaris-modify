-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 29 Des 2022 pada 23.00
-- Versi server: 8.0.31-0ubuntu0.22.04.1
-- Versi PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beligo_db`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `detailbarang`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `detailbarang` (
`foto_merek` varchar(50)
,`gambar` varchar(255)
,`harga_barang` int
,`kd_barang` varchar(7)
,`kd_distributor` varchar(7)
,`kd_merek` varchar(7)
,`keterangan` varchar(200)
,`merek` varchar(30)
,`nama_barang` varchar(40)
,`nama_distributor` varchar(40)
,`no_telp` varchar(13)
,`stok_barang` int
,`stok_masuk` int
,`tanggal_masuk` date
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `detailbarangmasuk`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `detailbarangmasuk` (
`foto_merek` varchar(50)
,`gambar` varchar(255)
,`harga_barang` int
,`kd_barang` varchar(7)
,`kd_barang_masuk` varchar(7)
,`kd_distributor` varchar(7)
,`kd_merek` varchar(7)
,`keterangan` varchar(200)
,`merek` varchar(30)
,`nama_barang` varchar(40)
,`nama_distributor` varchar(40)
,`no_telp` varchar(13)
,`stok_barang` int
,`stok_masuk` int
,`tanggal_masuk` date
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `detailtransaksi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `detailtransaksi` (
`harga_barang` int
,`jumlah` int
,`jumlah_beli` int
,`kd_barang` varchar(11)
,`kd_pretransaksi` varchar(7)
,`kd_transaksi` varchar(7)
,`nama_barang` varchar(40)
,`sub_total` int
,`tanggal_beli` date
,`total_harga` int
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_barang`
--

CREATE TABLE `table_barang` (
  `kd_barang` varchar(7) NOT NULL,
  `nama_barang` varchar(40) NOT NULL,
  `kd_merek` varchar(7) NOT NULL,
  `kd_distributor` varchar(7) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `harga_barang` int NOT NULL,
  `stok_barang` int NOT NULL,
  `stok_masuk` int NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_barang`
--

INSERT INTO `table_barang` (`kd_barang`, `nama_barang`, `kd_merek`, `kd_distributor`, `tanggal_masuk`, `harga_barang`, `stok_barang`, `stok_masuk`, `gambar`, `keterangan`) VALUES
('BR001', 'Monitor', 'ME001', 'DS001', '2022-12-29', 450000, 0, 15, '1672327721993.png', 'Monitor Samsung 22Inch'),
('BR002', 'Keyboard', 'ME003', 'DS001', '2022-12-29', 250000, 15, 15, '1672329244593.png', 'Mechanical'),
('BR003', 'Permen', 'ME001', 'DS001', '2022-12-29', 500, 25, 25, '1672329538159.png', 'Permen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_barang_masuk`
--

CREATE TABLE `table_barang_masuk` (
  `kd_barang_masuk` varchar(7) NOT NULL,
  `kd_barang` varchar(7) NOT NULL,
  `nama_barang` varchar(40) NOT NULL,
  `kd_merek` varchar(7) NOT NULL,
  `kd_distributor` varchar(7) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `harga_barang` int NOT NULL,
  `stok_barang` int NOT NULL,
  `stok_masuk` int NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_barang_masuk`
--

INSERT INTO `table_barang_masuk` (`kd_barang_masuk`, `kd_barang`, `nama_barang`, `kd_merek`, `kd_distributor`, `tanggal_masuk`, `harga_barang`, `stok_barang`, `stok_masuk`, `gambar`, `keterangan`) VALUES
('BM001', 'BR001', 'Monitor', 'ME001', 'DS001', '2022-12-29', 450000, 15, 15, '', 'Monitor Samsung 22Inch'),
('BM002', 'BR001', 'Monitor', 'ME001', 'DS001', '2022-12-29', 450000, 40, 25, '', 'Monitor Samsung 22Inch'),
('BM003', 'BR001', 'Monitor', 'ME001', 'DS001', '2022-12-29', 450000, 45, 5, '', 'Monitor Samsung 22Inch'),
('BM004', 'BR002', 'Keyboard', 'ME003', 'DS001', '2022-12-29', 120000, 10, 10, '', 'Mechanical'),
('BM005', 'BR002', 'Keyboard', 'ME003', 'DS001', '2022-12-29', 250000, 15, 15, '', 'Mechanical'),
('BM006', 'BR003', 'Permen', 'ME001', 'DS001', '2022-12-29', 500, 25, 25, '', 'Permen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_distributor`
--

CREATE TABLE `table_distributor` (
  `kd_distributor` varchar(7) NOT NULL,
  `nama_distributor` varchar(40) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_distributor`
--

INSERT INTO `table_distributor` (`kd_distributor`, `nama_distributor`, `alamat`, `no_telp`) VALUES
('DS001', 'Lee Dorian', 'New York', '08888888888');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_merek`
--

CREATE TABLE `table_merek` (
  `kd_merek` varchar(7) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `foto_merek` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_merek`
--

INSERT INTO `table_merek` (`kd_merek`, `merek`, `foto_merek`) VALUES
('ME001', 'Nutrifood', '1537759572977.jpg'),
('ME002', 'CBA', '1671974713120.png'),
('ME003', 'Indofood', '1537761246445.jpg'),
('ME004', 'WEWE', '1539528847974.png'),
('ME005', 'Barrons', '1548945399328.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_pretransaksi`
--

CREATE TABLE `table_pretransaksi` (
  `kd_pretransaksi` varchar(7) NOT NULL,
  `kd_transaksi` varchar(7) NOT NULL,
  `kd_barang` varchar(11) NOT NULL,
  `jumlah` int NOT NULL,
  `sub_total` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_pretransaksi`
--

INSERT INTO `table_pretransaksi` (`kd_pretransaksi`, `kd_transaksi`, `kd_barang`, `jumlah`, `sub_total`) VALUES
('AN001', 'TR001', 'BR001', 52, 23400000),
('AN002', 'TR002', 'BR001', 4, 1800000);

--
-- Trigger `table_pretransaksi`
--
DELIMITER $$
CREATE TRIGGER `batal_beli` AFTER DELETE ON `table_pretransaksi` FOR EACH ROW UPDATE table_barang SET
stok_barang = stok_barang + OLD.jumlah
WHERE kd_barang = OLD.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `transaksi` AFTER INSERT ON `table_pretransaksi` FOR EACH ROW UPDATE table_barang SET
stok_barang = stok_barang - new.jumlah
WHERE kd_barang = new.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_beli` AFTER UPDATE ON `table_pretransaksi` FOR EACH ROW UPDATE table_barang SET
stok_barang = stok_barang + OLD.jumlah - NEW.jumlah
WHERE kd_barang = new.kd_barang
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_transaksi`
--

CREATE TABLE `table_transaksi` (
  `kd_transaksi` varchar(7) NOT NULL,
  `kd_user` varchar(7) NOT NULL,
  `jumlah_beli` int NOT NULL,
  `total_harga` int NOT NULL,
  `tanggal_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_transaksi`
--

INSERT INTO `table_transaksi` (`kd_transaksi`, `kd_user`, `jumlah_beli`, `total_harga`, `tanggal_beli`) VALUES
('TR001', 'US001', 52, 23400000, '2022-12-29'),
('TR002', 'US001', 4, 1800000, '2022-12-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_user`
--

CREATE TABLE `table_user` (
  `kd_user` varchar(7) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `foto_user` varchar(50) NOT NULL,
  `level` enum('Admin','Kasir','Manager') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_user`
--

INSERT INTO `table_user` (`kd_user`, `nama_user`, `username`, `password`, `foto_user`, `level`) VALUES
('US001', 'M. Bayu Pradana', 'manager', 'bWFuYWdlcjEyMw==', '1538303665653.png', 'Manager'),
('US002', 'Fajar Subeki', 'admin123', 'YWRtaW4xMjM=', '153777087384.png', 'Admin'),
('US003', 'Dinda Nur Insani', 'kasir123', 'a2FzaXIxMjM=', '1537840377928.png', 'Kasir'),
('US005', 'newyorknyc', 'newyorknyc', 'bmV3eW9ya255Yw==', '167197400385.jpeg', 'Manager'),
('US006', 'Anon', 'anon123', 'YW5vbjEyMw==', '1672067482125.png', 'Manager');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `transaksi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `transaksi` (
`jumlah` int
,`kd_barang` varchar(11)
,`kd_pretransaksi` varchar(7)
,`kd_transaksi` varchar(7)
,`nama_barang` varchar(40)
,`sub_total` int
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `transaksi_terbaru`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `transaksi_terbaru` (
`jumlah_beli` int
,`kd_transaksi` varchar(7)
,`kd_user` varchar(7)
,`nama_user` varchar(20)
,`tanggal_beli` date
,`total_harga` int
);

-- --------------------------------------------------------

--
-- Struktur untuk view `detailbarang`
--
DROP TABLE IF EXISTS `detailbarang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detailbarang`  AS SELECT `table_barang`.`kd_barang` AS `kd_barang`, `table_barang`.`nama_barang` AS `nama_barang`, `table_barang`.`kd_merek` AS `kd_merek`, `table_barang`.`kd_distributor` AS `kd_distributor`, `table_barang`.`tanggal_masuk` AS `tanggal_masuk`, `table_barang`.`harga_barang` AS `harga_barang`, `table_barang`.`stok_barang` AS `stok_barang`, `table_barang`.`stok_masuk` AS `stok_masuk`, `table_barang`.`gambar` AS `gambar`, `table_barang`.`keterangan` AS `keterangan`, `table_merek`.`merek` AS `merek`, `table_merek`.`foto_merek` AS `foto_merek`, `table_distributor`.`nama_distributor` AS `nama_distributor`, `table_distributor`.`no_telp` AS `no_telp` FROM ((`table_barang` join `table_merek` on((`table_barang`.`kd_merek` = `table_merek`.`kd_merek`))) join `table_distributor` on((`table_barang`.`kd_distributor` = `table_distributor`.`kd_distributor`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `detailbarangmasuk`
--
DROP TABLE IF EXISTS `detailbarangmasuk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detailbarangmasuk`  AS SELECT `table_barang_masuk`.`kd_barang_masuk` AS `kd_barang_masuk`, `table_barang_masuk`.`kd_barang` AS `kd_barang`, `table_barang_masuk`.`nama_barang` AS `nama_barang`, `table_barang_masuk`.`kd_merek` AS `kd_merek`, `table_barang_masuk`.`kd_distributor` AS `kd_distributor`, `table_barang_masuk`.`tanggal_masuk` AS `tanggal_masuk`, `table_barang_masuk`.`harga_barang` AS `harga_barang`, `table_barang_masuk`.`stok_barang` AS `stok_barang`, `table_barang_masuk`.`stok_masuk` AS `stok_masuk`, `table_barang_masuk`.`gambar` AS `gambar`, `table_barang_masuk`.`keterangan` AS `keterangan`, `table_merek`.`merek` AS `merek`, `table_merek`.`foto_merek` AS `foto_merek`, `table_distributor`.`nama_distributor` AS `nama_distributor`, `table_distributor`.`no_telp` AS `no_telp` FROM ((`table_barang_masuk` join `table_merek` on((`table_barang_masuk`.`kd_merek` = `table_merek`.`kd_merek`))) join `table_distributor` on((`table_barang_masuk`.`kd_distributor` = `table_distributor`.`kd_distributor`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `detailtransaksi`
--
DROP TABLE IF EXISTS `detailtransaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detailtransaksi`  AS SELECT `table_pretransaksi`.`kd_pretransaksi` AS `kd_pretransaksi`, `table_pretransaksi`.`kd_transaksi` AS `kd_transaksi`, `table_pretransaksi`.`kd_barang` AS `kd_barang`, `table_pretransaksi`.`jumlah` AS `jumlah`, `table_pretransaksi`.`sub_total` AS `sub_total`, `table_barang`.`nama_barang` AS `nama_barang`, `table_barang`.`harga_barang` AS `harga_barang`, `table_transaksi`.`jumlah_beli` AS `jumlah_beli`, `table_transaksi`.`total_harga` AS `total_harga`, `table_transaksi`.`tanggal_beli` AS `tanggal_beli` FROM ((`table_pretransaksi` join `table_barang` on((`table_pretransaksi`.`kd_barang` = `table_barang`.`kd_barang`))) join `table_transaksi` on((`table_transaksi`.`kd_transaksi` = `table_pretransaksi`.`kd_transaksi`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `transaksi`
--
DROP TABLE IF EXISTS `transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transaksi`  AS SELECT `table_pretransaksi`.`kd_pretransaksi` AS `kd_pretransaksi`, `table_pretransaksi`.`kd_transaksi` AS `kd_transaksi`, `table_pretransaksi`.`kd_barang` AS `kd_barang`, `table_pretransaksi`.`jumlah` AS `jumlah`, `table_pretransaksi`.`sub_total` AS `sub_total`, `table_barang`.`nama_barang` AS `nama_barang` FROM (`table_pretransaksi` join `table_barang` on((`table_pretransaksi`.`kd_barang` = `table_barang`.`kd_barang`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `transaksi_terbaru`
--
DROP TABLE IF EXISTS `transaksi_terbaru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transaksi_terbaru`  AS SELECT `table_transaksi`.`kd_transaksi` AS `kd_transaksi`, `table_transaksi`.`kd_user` AS `kd_user`, `table_transaksi`.`jumlah_beli` AS `jumlah_beli`, `table_transaksi`.`total_harga` AS `total_harga`, `table_transaksi`.`tanggal_beli` AS `tanggal_beli`, `table_user`.`nama_user` AS `nama_user` FROM (`table_transaksi` join `table_user` on((`table_transaksi`.`kd_user` = `table_user`.`kd_user`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `table_barang`
--
ALTER TABLE `table_barang`
  ADD PRIMARY KEY (`kd_barang`),
  ADD KEY `kd_distributor` (`kd_distributor`),
  ADD KEY `kd_merek` (`kd_merek`);

--
-- Indeks untuk tabel `table_barang_masuk`
--
ALTER TABLE `table_barang_masuk`
  ADD PRIMARY KEY (`kd_barang_masuk`),
  ADD KEY `kd_barang` (`kd_barang`),
  ADD KEY `kd_merek` (`kd_merek`),
  ADD KEY `kd_distributor` (`kd_distributor`);

--
-- Indeks untuk tabel `table_distributor`
--
ALTER TABLE `table_distributor`
  ADD PRIMARY KEY (`kd_distributor`);

--
-- Indeks untuk tabel `table_merek`
--
ALTER TABLE `table_merek`
  ADD PRIMARY KEY (`kd_merek`);

--
-- Indeks untuk tabel `table_pretransaksi`
--
ALTER TABLE `table_pretransaksi`
  ADD PRIMARY KEY (`kd_pretransaksi`);

--
-- Indeks untuk tabel `table_transaksi`
--
ALTER TABLE `table_transaksi`
  ADD PRIMARY KEY (`kd_transaksi`),
  ADD KEY `kd_user` (`kd_user`);

--
-- Indeks untuk tabel `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`kd_user`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `table_transaksi`
--
ALTER TABLE `table_transaksi`
  ADD CONSTRAINT `table_transaksi_ibfk_1` FOREIGN KEY (`kd_user`) REFERENCES `table_user` (`kd_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
